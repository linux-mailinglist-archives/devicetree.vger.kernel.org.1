Return-Path: <devicetree+bounces-277841-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOFNCSQSvGnbrwIAu9opvQ
	(envelope-from <devicetree+bounces-277841-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:11:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0AF2CD759
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:11:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 65EAF304D149
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:10:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B2663E121A;
	Thu, 19 Mar 2026 15:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XDLLbvCC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EB2xMpLC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6803E0C42
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773933009; cv=none; b=jzcwMB+j5RKhr/QMVFS8f7etejCQUOVS8Wbs+PmLn4wsvzudZOvNhMtucrWK5euT/8K2j2SqNnnSOk0E9KKySbgkWZriGESYu2mpc2Zj423MpPnpFUk3Pv2ZZ3K35h0sXgxWQFcbqE8wppyymGQBDwt6S59pmAuPLEV3zv9j3Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773933009; c=relaxed/simple;
	bh=mOgfXRl81hOJwcYDjzJBuIbruaf40Di35fB16CeQMQc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bGtes/SvdWVBH1fA1Ru7Ta3PUxXfDgCrZGERK54bZf0y50xlCinOhvRmsClt6bqCkxseaQ3Pi/RSTxXVjFv89LDdT4UiZr80ceD7Fd43uQll//AdFctutsx3SJeIoZwitCq4sR/FLwtuXxnEkHxCe4+PrEItkrSUSn/5fWh/uGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XDLLbvCC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EB2xMpLC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62JEqF3b1567283
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:10:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WjLHXN0ueaHupIOpN7I8RFk/oZAT69/Q62Ehk5Z01PE=; b=XDLLbvCCVaePZhMw
	zAItQY4XhLn5m9nRsdOhfrcWDGzZDtKYXJhSHokCEjKzdP5jhoBM4cDRfhOdDjhd
	7RFhLFtUg2Gl7MGO6Zoxtm+x1+6/l0WPM1dxMEcXxwio81tZDySYRdD+5vvlpKRC
	7Hjd8yYWy/MqN/Fs8tOfnZSmXGcnErhvMAD6QutAy0Tj/+KzWyalfVCppbKrNFeI
	DV4s43u1fSV2OOwNtQFUNnlkYPfmzcEchGboZeK8NVvHYrqJJf9B2lk9LjhizJbT
	xHT5RXsU7M2T/K5LG4e+0mYzubFRKBTa4RZ0/jnVpKrE181SYMegxE/eYLXceZmg
	uAMnYA==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0akxhuk5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:10:06 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-6028957144bso1568022137.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773933006; x=1774537806; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WjLHXN0ueaHupIOpN7I8RFk/oZAT69/Q62Ehk5Z01PE=;
        b=EB2xMpLCpp9mLKJDzfDt2YSoeHg3nc0IsDsI6HA34QCwYzVFcMTZUzM3NNJ6kjNw/W
         l8/j6cLh+FmzuXGJG1SR+DCd96fA0NqfgSLlcdurB/VRc8LX3vYPd+W+FzjxeWVi7Atu
         eXxNdILDBfv7LQFSA5+wbSesIIagwc2gRMl9wv+D26FBQQ95ThynZiBqtdbh8H6GxBU5
         R122UUTt7iH608Oly1t6dPk9dwqfZsHaekQUhtx0cThwMd7pjrtYTH8E+a1TeCGxFLfA
         mTk96FO7zUPWwF32YJuiiI8JmE1O0eCZh+EX8A9RIoat6FCMiHJ6NCV7kkQtBIvT5hpB
         9wdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773933006; x=1774537806;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WjLHXN0ueaHupIOpN7I8RFk/oZAT69/Q62Ehk5Z01PE=;
        b=IYiBTFY+5suIN5w7X4DtY8CopoqrAaYRRKaPgWIQx1b/jbkC5Ojy1zYDOailEEbmMv
         Odmcl7wan/NRfjLd0UH6NYX/Pi7Ls3I9HMfg+mvj9Lmzg42DVaS8tw6afus6/ql4pihr
         rrIcFLQKSa433736OV52ZyphK3fBuz/1m6N2UEuiD+8U+oa4LjVsewOgjVLeu+iOg4Kb
         shEquWIvQ9Qi/UdLaVX2l/q4ZM/FUKtig5l0hpT1KBFIBAKMMndxIpprzicD8iNthowM
         x2igXZXCqTgBYPGrWvWESkjlC30rhF6ZOU5SHzyz97lSQcAFsTicVKGJJ+hM12QM661o
         jDBw==
X-Forwarded-Encrypted: i=1; AJvYcCVhXYGI8H+jSJoEeq0ehLi//JRPeLgr9JWhaKi4UN8GGjHBu+pK13gzFNXrXlmtYHTfUhIX4Dka+Lz9@vger.kernel.org
X-Gm-Message-State: AOJu0YzzCP0QLRiZw3FWymgz66riDy0dCkIVJXdISLeEiuWl+79pD6cx
	46MPHTJW9BDl0WyLZuRfTPSdOMwRXZI81C62EPGCX8g7UcmFQop55+FCBe3wI2sYMZDWKITRaOh
	NysUaamQ9vbvP/PpjAgElPHM0Kz19aAxaYcWy/fFMFZHtY2OrY9HC9Rw6RaB7CST0
X-Gm-Gg: ATEYQzytGtE4FIt2vVtw3GOWAEUmAqIXvdvXwr5YpVaTOiMDacjpLdEVByVpvKmgVPO
	ycK97D5aAI4d05EOrcbw5PvIQByjL3AizeVl6dCIIrmEnBlyPPhji/kTrUJiWFXpzzPXNJzBbon
	n6JxlHy6FEzjqtq0mRk8ZplwFAKKqLeZHoOLESEixB5qjTJp/w1K2fnl2XBDU2lUXu6ldUJ0q/5
	JqxtT+TXjtcCLEx/YeYpREaC/NGZt+YwYx1IGifbRLFeAh8GQqtpYZYxpvmk+CK8KxURZKx22lZ
	9tPS0m628buHjURjsrVb/2pJ2GO15b161TlUSmSNL3edW5EXmze4Hy0ir4wqiZfliyPZRA6AHF2
	HMP+9U8CICXc21/yg427H6uKDHL8=
X-Received: by 2002:a05:6102:84dc:20b0:602:93db:7fa with SMTP id ada2fe7eead31-60293db343amr1389664137.33.1773933005314;
        Thu, 19 Mar 2026 08:10:05 -0700 (PDT)
X-Received: by 2002:a05:6102:84dc:20b0:602:93db:7fa with SMTP id ada2fe7eead31-60293db343amr1389639137.33.1773933004672;
        Thu, 19 Mar 2026 08:10:04 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486fc61dd4asm32274565e9.14.2026.03.19.08.10.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 08:10:03 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 17:09:50 +0200
Subject: [PATCH v6 1/2] arm64: dts: qcom: glymur: Add USB related nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-dts-qcom-glymur-add-usb-support-v6-1-fa305b40a90c@oss.qualcomm.com>
References: <20260319-dts-qcom-glymur-add-usb-support-v6-0-fa305b40a90c@oss.qualcomm.com>
In-Reply-To: <20260319-dts-qcom-glymur-add-usb-support-v6-0-fa305b40a90c@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-7ae85
X-Developer-Signature: v=1; a=openpgp-sha256; l=19158;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=T5JX5zGgTI4i0n8NmM6c2yiTUq6TgOd1Msm7S6LrRtM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpvBHFfhcSfhIpO7UPEsL4z5qSB79Y6SdtQjEDT
 9J06aekR16JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabwRxQAKCRAbX0TJAJUV
 VoF2EADKJ1tilrXbPL5Zoc9yV67E/FQp8a/e377cS1Xq3fUw3UOsKWu4WCWdrugxESDOx7qZNGk
 VfaSO4ONu6OiSoberjIwlOGGko3OZaPXFTgifs1gzy8YRskdNeqI7LdPyd3QtywWxIwuHYuuPDm
 SYOJXQQOPmI28A1Jy/ymz7uXRXMFZZfeUd+VZmPpwjgweV33xZ6hY8iKiKwOJMD/6W5WBEglv3Y
 4gbypATEYRp5muNiBo6Q6H1F08anTnd5uMB/++lEbogGbhq9VDCe0AIt3Zk+zwExmdiAolC6FhZ
 1Rxl88DH3TwXpfydF/1oPtklTda3EVy+nUDvP+AVINCyZcr/YdGN2I0u45kIPA0BWE5PXvkexb4
 8SPAklDPbohz2X65Sv0cS0cezCiIt/pQeccxt0SArUzu9FkRLTtj12yz5DvKbZk1qcW8PMV7cY9
 G1V8+W9Y9K32HkOpIvwAimlpqgnc+iflXG2Yb/MW/cWxj9hF2Zc92U2TfiVpoFJtAIQReKZk/bv
 xj0m5vhqeBHbsuWTN1iivebv1pkA7RiW84/1W8yv7ZFGVW2NHKWFVE7IV12NC2z6S+4dBINJIEM
 e9vQUujasWffEJNx5LzSmtFDMdMJETqC/aa17XFlozHod/VyATixOBNBp6b07un+lNRGM07W1lf
 m3dH2aifyF3VIhA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDEyMCBTYWx0ZWRfX8tpVVOryIjJz
 wuV9HEmf9qyedBcJK4daWi2MXZNh/8hJpT+ZiK43OUpyg56nM5JgCZwUNY8RXWA3s7fnEbLB4CI
 SKgNqytf313v6znB4niTB4i45M+JC8RxfOQYOcs2D4udp5yZFzsor3Ui+zuu66pmRQmMMk6v/jc
 vMSmNhmuiO+KHhKZbZZSyPIveus+rx1CVL1DWxFNb9cyhtCbAPggpC6i3/Hw2jVj1OI1l65C9v3
 2/Yz+RPTsVVuaF2Z4KsDyg8VGhm3wJ3F+VQeZ7uOLVg0AJEYZanxT6a+2vVyTLO8CGUT2C2lud7
 TUStUOO/7Kz5eyzCrZRwBtMCDtD7Cbdj3Cn3vOr4N5akCBW6e04s60MnM7MjFFJEqiU7ulNF1yL
 jMoWCfljm6EXUZ9x34u0LSl1ihga8XNqjueuQjD/e3k9yZ1+DbAoTvTBdeSZ4LDzY6igtpauZ9+
 rhz63bcdpcA4usWd0TA==
X-Proofpoint-GUID: nLl_XYSnpAvKoTgJrDs7W1IUq3xB2G1J
X-Authority-Analysis: v=2.4 cv=ZeMQ98VA c=1 sm=1 tr=0 ts=69bc11ce cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=8wER65Pd3tfT56eRIC8A:9 a=QEXdDO2ut3YA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-ORIG-GUID: nLl_XYSnpAvKoTgJrDs7W1IUq3xB2G1J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 bulkscore=0 clxscore=1015 spamscore=0 suspectscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603190120
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277841-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CD0AF2CD759
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>

The Glymur USB subsystem contains three USB 3.2 Gen 2 controllers,
one USB 3.2 multi-port controller, and one USB 2.0-only controller.
This includes five SS USB QMP PHYs (three combo and two UNI) and six M31
eUSB2 PHYs.

All controllers are based on SNPS DWC3, so describe them as Qualcomm
flattened DWC3 nodes.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Co-developed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Tested-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 691 ++++++++++++++++++++++++++++++++++-
 1 file changed, 686 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index e269cec7942c..2aa9af8c96ce 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -750,11 +750,11 @@ gcc: clock-controller@100000 {
 				 <0>,				/* UFS PHY RX Symbol 0 */
 				 <0>,				/* UFS PHY RX Symbol 1 */
 				 <0>,				/* UFS PHY TX Symbol 0 */
-				 <0>,				/* USB3 PHY 0 */
-				 <0>,				/* USB3 PHY 1 */
-				 <0>,				/* USB3 PHY 2 */
-				 <0>,				/* USB3 UNI PHY pipe 0 */
-				 <0>,				/* USB3 UNI PHY pipe 1 */
+				 <&usb_0_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
+				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
+				 <&usb_2_qmpphy QMP_USB43DP_USB3_PIPE_CLK>,
+				 <&usb_mp_qmpphy0 QMP_USB43DP_USB3_PIPE_CLK>,
+				 <&usb_mp_qmpphy1 QMP_USB43DP_USB3_PIPE_CLK>,
 				 <0>,				/* USB4 PHY 0 pcie pipe */
 				 <0>,				/* USB4 PHY 0 Max pipe */
 				 <0>,				/* USB4 PHY 1 pcie pipe */
@@ -2264,6 +2264,254 @@ &config_noc SLAVE_QUP_0 QCOM_ICC_TAG_ALWAYS>,
 			};
 		};
 
+		usb_hs_phy: phy@fa0000 {
+			compatible = "qcom,glymur-m31-eusb2-phy",
+				     "qcom,sm8750-m31-eusb2-phy";
+			reg = <0x0 0x00fa0000 0x0 0x154>;
+			#phy-cells = <0>;
+
+			clocks = <&tcsr TCSR_USB2_1_CLKREF_EN>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_USB20_HS_BCR>;
+
+			status = "disabled";
+		};
+
+		usb_mp_hsphy0: phy@fa1000 {
+			compatible = "qcom,glymur-m31-eusb2-phy",
+				     "qcom,sm8750-m31-eusb2-phy";
+
+			reg = <0x0 0x00fa1000 0x0 0x29c>;
+			#phy-cells = <0>;
+
+			clocks = <&tcsr TCSR_USB2_1_CLKREF_EN>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_HS0_MP_BCR>;
+
+			status = "disabled";
+		};
+
+		usb_mp_hsphy1: phy@fa2000  {
+			compatible = "qcom,glymur-m31-eusb2-phy",
+				     "qcom,sm8750-m31-eusb2-phy";
+
+			reg = <0x0 0x00fa2000 0x0 0x29c>;
+			#phy-cells = <0>;
+
+			clocks = <&tcsr TCSR_USB2_2_CLKREF_EN>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_HS1_MP_BCR>;
+
+			status = "disabled";
+		};
+
+		usb_mp_qmpphy0: phy@fa3000 {
+			compatible = "qcom,glymur-qmp-usb3-uni-phy";
+			reg = <0x0 0x00fa3000 0x0 0x2000>;
+
+			clocks = <&gcc GCC_USB3_MP_PHY_AUX_CLK>,
+				 <&tcsr TCSR_USB3_0_CLKREF_EN>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_USB3_MP_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_MP_PHY_PIPE_0_CLK>;
+			clock-names = "aux",
+				      "clkref",
+				      "ref",
+				      "com_aux",
+				      "pipe";
+
+			power-domains = <&gcc GCC_USB3_MP_SS0_PHY_GDSC>;
+
+			resets = <&gcc GCC_USB3_MP_SS0_PHY_BCR>,
+				 <&gcc GCC_USB3UNIPHY_PHY_MP0_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
+
+			clock-output-names = "usb3_uni_phy_0_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		usb_mp_qmpphy1: phy@fa5000 {
+			compatible = "qcom,glymur-qmp-usb3-uni-phy";
+			reg = <0x0 0x00fa5000 0x0 0x2000>;
+
+			clocks = <&gcc GCC_USB3_MP_PHY_AUX_CLK>,
+				 <&tcsr TCSR_USB3_1_CLKREF_EN>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_USB3_MP_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_MP_PHY_PIPE_1_CLK>;
+			clock-names = "aux",
+				      "clkref",
+				      "ref",
+				      "com_aux",
+				      "pipe";
+
+			power-domains = <&gcc GCC_USB3_MP_SS1_PHY_GDSC>;
+
+			resets = <&gcc GCC_USB3_MP_SS1_PHY_BCR>,
+				 <&gcc GCC_USB3UNIPHY_PHY_MP1_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
+
+			clock-output-names = "usb3_uni_phy_1_pipe_clk_src";
+
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		usb_0_hsphy: phy@fd3000 {
+			compatible = "qcom,glymur-m31-eusb2-phy",
+				     "qcom,sm8750-m31-eusb2-phy";
+
+			reg = <0x0 0x00fd3000 0x0 0x29c>;
+			#phy-cells = <0>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
+
+			status = "disabled";
+		};
+
+		usb_0_qmpphy: phy@fd5000 {
+			compatible = "qcom,glymur-qmp-usb3-dp-phy";
+			reg = <0x0 0x00fd5000 0x0 0x8000>;
+
+			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "usb3_pipe";
+
+			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_PRIM_BCR>;
+
+			reset-names = "phy",
+				      "common";
+
+			power-domains = <&gcc GCC_USB_0_PHY_GDSC>;
+
+			#clock-cells = <1>;
+			#phy-cells = <1>;
+
+			mode-switch;
+			orientation-switch;
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_0_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_0_qmpphy_usb_ss_in: endpoint {
+						remote-endpoint = <&usb_0_dwc3_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_dp_qmpphy_dp_in: endpoint {
+					};
+				};
+			};
+		};
+
+		usb_1_hsphy: phy@fdd000  {
+			compatible = "qcom,glymur-m31-eusb2-phy",
+				     "qcom,sm8750-m31-eusb2-phy";
+
+			reg = <0x0 0x00fdd000 0x0 0x29c>;
+			#phy-cells = <0>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_SEC_BCR>;
+
+			status = "disabled";
+		};
+
+		usb_1_qmpphy: phy@fde000 {
+			compatible = "qcom,glymur-qmp-usb3-dp-phy";
+			reg = <0x0 0x00fde000 0x0 0x8000>;
+
+			clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>,
+				 <&tcsr TCSR_USB4_1_CLKREF_EN>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "usb3_pipe",
+				      "clkref";
+
+			power-domains = <&gcc GCC_USB_1_PHY_GDSC>;
+
+			resets = <&gcc GCC_USB3_PHY_SEC_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_SEC_BCR>;
+			reset-names = "phy",
+				      "common";
+
+			#clock-cells = <1>;
+			#phy-cells = <1>;
+
+			mode-switch;
+			orientation-switch;
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_1_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_1_qmpphy_usb_ss_in: endpoint {
+						remote-endpoint = <&usb_1_dwc3_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_1_qmpphy_dp_in: endpoint {
+					};
+				};
+			};
+		};
+
 		cnoc_main: interconnect@1500000 {
 			compatible = "qcom,glymur-cnoc-main";
 			reg = <0x0 0x01500000 0x0 0x17080>;
@@ -3367,6 +3615,439 @@ lpass_ag_noc: interconnect@7e40000 {
 			#interconnect-cells = <2>;
 		};
 
+		usb_2_hsphy: phy@88e0000  {
+			compatible = "qcom,glymur-m31-eusb2-phy",
+				     "qcom,sm8750-m31-eusb2-phy";
+
+			reg = <0x0 0x088e0000 0x0 0x29c>;
+			#phy-cells = <0>;
+
+			clocks = <&tcsr TCSR_USB2_4_CLKREF_EN>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_TERT_BCR>;
+
+			status = "disabled";
+		};
+
+		usb_2_qmpphy: phy@88e1000 {
+			compatible = "qcom,glymur-qmp-usb3-dp-phy";
+			reg = <0x0 0x088e1000 0x0 0x8000>;
+
+			clocks = <&gcc GCC_USB3_TERT_PHY_AUX_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_USB3_TERT_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_TERT_PHY_PIPE_CLK>,
+				 <&tcsr TCSR_USB4_2_CLKREF_EN>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "usb3_pipe",
+				      "clkref";
+
+			power-domains = <&gcc GCC_USB_2_PHY_GDSC>;
+
+			resets = <&gcc GCC_USB3_PHY_TERT_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_TERT_BCR>;
+			reset-names = "phy",
+				      "common";
+
+			#clock-cells = <1>;
+			#phy-cells = <1>;
+
+			mode-switch;
+			orientation-switch;
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_2_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_2_qmpphy_usb_ss_in: endpoint {
+						remote-endpoint = <&usb_2_dwc3_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_2_qmpphy_dp_in: endpoint {
+					};
+				};
+			};
+		};
+
+		usb_0: usb@a600000 {
+			compatible = "qcom,glymur-dwc3", "qcom,snps-dwc3";
+			reg = <0x0 0x0a600000 0x0 0xfc100>;
+
+			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
+				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
+				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
+				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>,
+				 <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
+				 <&gcc GCC_CFG_NOC_USB_ANOC_AHB_CLK>,
+				 <&gcc GCC_CFG_NOC_USB_ANOC_SOUTH_AHB_CLK>;
+			clock-names = "cfg_noc",
+				      "core",
+				      "iface",
+				      "sleep",
+				      "mock_utmi",
+				      "noc_aggr_north",
+				      "noc_aggr_south";
+
+			interrupts-extended = <&intc GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 371 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 90 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 60 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 17 IRQ_TYPE_EDGE_BOTH>;
+			interrupt-names = "dwc_usb3",
+					  "pwr_event",
+					  "dp_hs_phy_irq",
+					  "dm_hs_phy_irq",
+					  "ss_phy_irq";
+
+			power-domains = <&gcc GCC_USB30_PRIM_GDSC>;
+			resets = <&gcc GCC_USB30_PRIM_BCR>;
+
+			iommus = <&apps_smmu 0x1420 0x0>;
+			phys = <&usb_0_hsphy>,
+			       <&usb_0_qmpphy QMP_USB43DP_USB3_PHY>;
+			phy-names = "usb2-phy",
+				    "usb3-phy";
+
+			snps,hird-threshold = /bits/ 8 <0x0>;
+			snps,dis-u1-entry-quirk;
+			snps,dis-u2-entry-quirk;
+			snps,is-utmi-l1-suspend;
+			snps,usb3_lpm_capable;
+			snps,has-lpm-erratum;
+			tx-fifo-resize;
+			snps,dis_u2_susphy_quirk;
+			snps,dis_enblslpm_quirk;
+
+			usb-role-switch;
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_0_dwc3_hs: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_0_dwc3_ss: endpoint {
+						remote-endpoint = <&usb_0_qmpphy_usb_ss_in>;
+					};
+				};
+			};
+		};
+
+		usb_1: usb@a800000 {
+			compatible = "qcom,glymur-dwc3", "qcom,snps-dwc3";
+			reg = <0x0 0x0a800000 0x0 0xfc100>;
+
+			clocks = <&gcc GCC_CFG_NOC_USB3_SEC_AXI_CLK>,
+				 <&gcc GCC_USB30_SEC_MASTER_CLK>,
+				 <&gcc GCC_AGGRE_USB3_SEC_AXI_CLK>,
+				 <&gcc GCC_USB30_SEC_SLEEP_CLK>,
+				 <&gcc GCC_USB30_SEC_MOCK_UTMI_CLK>,
+				 <&gcc GCC_CFG_NOC_USB_ANOC_AHB_CLK>,
+				 <&gcc GCC_CFG_NOC_USB_ANOC_SOUTH_AHB_CLK>;
+			clock-names = "cfg_noc",
+				      "core",
+				      "iface",
+				      "sleep",
+				      "mock_utmi",
+				      "noc_aggr_north",
+				      "noc_aggr_south";
+
+			interrupts-extended = <&intc GIC_SPI 875 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 369 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 88 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 87 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 76 IRQ_TYPE_EDGE_BOTH>;
+			interrupt-names = "dwc_usb3",
+					  "pwr_event",
+					  "dp_hs_phy_irq",
+					  "dm_hs_phy_irq",
+					  "ss_phy_irq";
+
+			resets = <&gcc GCC_USB30_SEC_BCR>;
+			power-domains = <&gcc GCC_USB30_SEC_GDSC>;
+
+			iommus = <&apps_smmu 0x1460 0x0>;
+
+			phys = <&usb_1_hsphy>,
+			       <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
+			phy-names = "usb2-phy",
+				    "usb3-phy";
+
+			snps,hird-threshold = /bits/ 8 <0x0>;
+			snps,dis-u1-entry-quirk;
+			snps,dis-u2-entry-quirk;
+			snps,is-utmi-l1-suspend;
+			snps,usb3_lpm_capable;
+			snps,has-lpm-erratum;
+			tx-fifo-resize;
+			snps,dis_u2_susphy_quirk;
+			snps,dis_enblslpm_quirk;
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_1_dwc3_hs: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_1_dwc3_ss: endpoint {
+						remote-endpoint = <&usb_1_qmpphy_usb_ss_in>;
+					};
+				};
+			};
+		};
+
+		usb_2: usb@a000000 {
+			compatible = "qcom,glymur-dwc3", "qcom,snps-dwc3";
+			reg = <0x0 0x0a000000 0x0 0xfc100>;
+
+			clocks = <&gcc GCC_CFG_NOC_USB3_TERT_AXI_CLK>,
+				 <&gcc GCC_USB30_TERT_MASTER_CLK>,
+				 <&gcc GCC_AGGRE_USB3_TERT_AXI_CLK>,
+				 <&gcc GCC_USB30_TERT_SLEEP_CLK>,
+				 <&gcc GCC_USB30_TERT_MOCK_UTMI_CLK>,
+				 <&gcc GCC_CFG_NOC_USB_ANOC_AHB_CLK>,
+				 <&gcc GCC_CFG_NOC_USB_ANOC_SOUTH_AHB_CLK>;
+			clock-names = "cfg_noc",
+				      "core",
+				      "iface",
+				      "sleep",
+				      "mock_utmi",
+				      "noc_aggr_north",
+				      "noc_aggr_south";
+
+			interrupts-extended = <&intc GIC_SPI 871 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 370 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 89 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 81 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 75 IRQ_TYPE_EDGE_BOTH>;
+			interrupt-names = "dwc_usb3",
+					  "pwr_event",
+					  "dp_hs_phy_irq",
+					  "dm_hs_phy_irq",
+					  "ss_phy_irq";
+
+			resets = <&gcc GCC_USB30_TERT_BCR>;
+			power-domains = <&gcc GCC_USB30_TERT_GDSC>;
+
+			iommus = <&apps_smmu 0x420 0x0>;
+
+			phys = <&usb_2_hsphy>,
+			       <&usb_2_qmpphy QMP_USB43DP_USB3_PHY>;
+			phy-names = "usb2-phy",
+				    "usb3-phy";
+
+			snps,hird-threshold = /bits/ 8 <0x0>;
+			snps,dis-u1-entry-quirk;
+			snps,dis-u2-entry-quirk;
+			snps,is-utmi-l1-suspend;
+			snps,usb3_lpm_capable;
+			snps,has-lpm-erratum;
+			tx-fifo-resize;
+			snps,dis_u2_susphy_quirk;
+			snps,dis_enblslpm_quirk;
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_2_dwc3_hs: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_2_dwc3_ss: endpoint {
+						remote-endpoint = <&usb_2_qmpphy_usb_ss_in>;
+					};
+				};
+			};
+		};
+
+		usb_hs: usb@a2f8800 {
+			compatible = "qcom,glymur-dwc3", "qcom,snps-dwc3";
+			reg = <0x0 0x0a200000 0x0 0xfc100>;
+
+			clocks = <&gcc GCC_CFG_NOC_USB2_PRIM_AXI_CLK>,
+				 <&gcc GCC_USB20_MASTER_CLK>,
+				 <&gcc GCC_AGGRE_USB2_PRIM_AXI_CLK>,
+				 <&gcc GCC_USB20_SLEEP_CLK>,
+				 <&gcc GCC_USB20_MOCK_UTMI_CLK>,
+				 <&gcc GCC_CFG_NOC_USB_ANOC_AHB_CLK>,
+				 <&gcc GCC_CFG_NOC_USB_ANOC_SOUTH_AHB_CLK>;
+			clock-names = "cfg_noc",
+				      "core",
+				      "iface",
+				      "sleep",
+				      "mock_utmi",
+				      "noc_aggr_north",
+				      "noc_aggr_south";
+
+			assigned-clocks = <&gcc GCC_USB20_MOCK_UTMI_CLK>,
+					  <&gcc GCC_USB20_MASTER_CLK>;
+			assigned-clock-rates = <19200000>, <200000000>;
+
+			interrupts-extended = <&intc GIC_SPI 240 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 246 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 92 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 57 IRQ_TYPE_EDGE_BOTH>,
+					      <&intc GIC_SPI 239 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "dwc_usb3",
+					  "pwr_event",
+					  "dp_hs_phy_irq",
+					  "dm_hs_phy_irq",
+					  "hs_phy_irq";
+
+			resets = <&gcc GCC_USB20_PRIM_BCR>;
+
+			power-domains = <&gcc GCC_USB20_PRIM_GDSC>;
+			required-opps = <&rpmhpd_opp_nom>;
+
+			iommus = <&apps_smmu 0x0ce0 0x0>;
+
+			interconnects = <&aggre3_noc MASTER_USB2 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_USB2 QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "usb-ddr",
+					     "apps-usb";
+
+			phys = <&usb_hs_phy>;
+			phy-names = "usb2-phy";
+
+			snps,hird-threshold = /bits/ 8 <0x0>;
+			snps,dis-u1-entry-quirk;
+			snps,dis-u2-entry-quirk;
+			snps,is-utmi-l1-suspend;
+			snps,usb3_lpm_capable;
+			snps,has-lpm-erratum;
+			tx-fifo-resize;
+			snps,dis_u2_susphy_quirk;
+			snps,dis_enblslpm_quirk;
+
+			dr_mode = "host";
+
+			maximum-speed = "high-speed";
+
+			status = "disabled";
+		};
+
+		usb_mp: usb@a400000 {
+			compatible = "qcom,glymur-dwc3-mp", "qcom,snps-dwc3";
+			reg = <0x0 0x0a400000 0x0 0xfc100>;
+
+			clocks = <&gcc GCC_CFG_NOC_USB3_MP_AXI_CLK>,
+				 <&gcc GCC_USB30_MP_MASTER_CLK>,
+				 <&gcc GCC_AGGRE_USB3_MP_AXI_CLK>,
+				 <&gcc GCC_USB30_MP_SLEEP_CLK>,
+				 <&gcc GCC_USB30_MP_MOCK_UTMI_CLK>,
+				 <&gcc GCC_CFG_NOC_USB_ANOC_AHB_CLK>,
+				 <&gcc GCC_CFG_NOC_USB_ANOC_SOUTH_AHB_CLK>;
+			clock-names = "cfg_noc",
+				      "core",
+				      "iface",
+				      "sleep",
+				      "mock_utmi",
+				      "noc_aggr_north",
+				      "noc_aggr_south";
+
+			interrupts-extended = <&intc GIC_SPI 132 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 345 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 346 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 12 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 11 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 14 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 13 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 78 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 77 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "dwc_usb3",
+					  "pwr_event_1",
+					  "pwr_event_2",
+					  "hs_phy_1",
+					  "hs_phy_2",
+					  "dp_hs_phy_1",
+					  "dm_hs_phy_1",
+					  "dp_hs_phy_2",
+					  "dm_hs_phy_2",
+					  "ss_phy_1",
+					  "ss_phy_2";
+
+			resets = <&gcc GCC_USB30_MP_BCR>;
+			power-domains = <&gcc GCC_USB30_MP_GDSC>;
+
+			iommus = <&apps_smmu 0xda0 0x0>;
+
+			phys = <&usb_mp_hsphy0>,
+			       <&usb_mp_qmpphy0>,
+			       <&usb_mp_hsphy1>,
+			       <&usb_mp_qmpphy1>;
+			phy-names = "usb2-0",
+				    "usb3-0",
+				    "usb2-1",
+				    "usb3-1";
+
+			snps,hird-threshold = /bits/ 8 <0x0>;
+			snps,dis-u1-entry-quirk;
+			snps,dis-u2-entry-quirk;
+			snps,is-utmi-l1-suspend;
+			snps,usb3_lpm_capable;
+			snps,has-lpm-erratum;
+			tx-fifo-resize;
+			snps,dis_u2_susphy_quirk;
+			snps,dis_enblslpm_quirk;
+
+			dr_mode = "host";
+
+			status = "disabled";
+		};
+
+
 		dispcc: clock-controller@af00000 {
 			compatible = "qcom,glymur-dispcc";
 			reg = <0x0 0x0af00000 0x0 0x20000>;

-- 
2.48.1


