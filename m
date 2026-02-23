Return-Path: <devicetree+bounces-267287-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yN/kLNz6m2l5+gMAu9opvQ
	(envelope-from <devicetree+bounces-267287-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:59:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D431727A1
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:59:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E95DA300B759
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:57:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C653034A785;
	Mon, 23 Feb 2026 06:56:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NMnOTOg8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B0Ka3+wx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E8F934B66F
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829817; cv=none; b=LgoycCPGCLVEKBmyd1TL91hq4XB7EnnTAvs5vRjwHfFX2YJed/fAG+CoeSocqMz81yYIb6Tt36jWY6MMzwduX2CLZnZXrC4hnJ9fx1q83nZmOFw/gtgYBllC1y56t6uDGIwEfZUNGNSnm80cyV6WJ0RzZMaLMUbCq3eyBUtC93M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829817; c=relaxed/simple;
	bh=0MADiRxGeDkPQDc+D4cOyR9YpPfqVXFTQN8hJDo+rxc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=c//V7VjvL3pL4n4ZkREhVqW3H1+kMqe1/b5W/aOW1U0zX2Pn+iuejeYtQ9ZVFfdUx6hPyghsI6VN1ZoadwtV6UZXfcR11u/bx/ii80qDZ0Zua3lzmiKCJxawT34KHkLtPAtphZsfLV35bmqKyAP2DDRNHbLS1JhVHSvUCvPa13k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NMnOTOg8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B0Ka3+wx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MMHeaT3533786
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:56:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q+6sbBvItLVDaaK2nVoqlOqVJ4lF02bwo0WaOVku2Og=; b=NMnOTOg8mEg4mUwM
	+uxs0q8YpfCYoMEJW/HfOOd9t7NEHdEsUdLU01alD8pQjNnr/8McNPr++AyTTmts
	1ey5VUqSRdOhmbKeo/yBXy+sy3dXcepqzxnT/EZa7vjODppbTh5gO40f8WynGPzj
	3OC5rDllHnHhslcurWpwWriSAKXp8lessI2iFpotMkaG79wGZOmSDwJAk38A55bP
	2LdDBIzKmXuKNOD7FtBkhRkLnAn2o6FvrqCInNM/3X6s1PjUMPsBTo5zpSMDJWmz
	0xPFJ8mYQJC9sWrbbm5xJIz2UyyLD9MHXoKDitF2IikG3lSKlNBBzrlDtnb1ukHA
	2xamHg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5u8kpsp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:56:55 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-35641c14663so4324301a91.2
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771829814; x=1772434614; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q+6sbBvItLVDaaK2nVoqlOqVJ4lF02bwo0WaOVku2Og=;
        b=B0Ka3+wxqRMezWnnFGE4Z0BGBMbPDPCUjV+b4LM4ZY3DHPrfQrlH/BmqAEKehLbKcd
         7Jg6MlrIfpDcYBNNTAjeATGrRUR4+IVwka2MDFVfV/XnfVwEogGqdzCsA2a0oXLrdPaX
         gL9MrDGDz2jGPKFWLDrr8akuWgDjtOpo9DONMYrMnGP7sB7aZH0D4X6SJkAUNugV4FzS
         t+s6RKcxnwjgZuR2iuYFmag2SNToko2CgAnP2PdmzGT8zkMcXQRiTKYYlSv6OHS6OY4v
         ArhH5yhPhhpHWVPi4MhVqR4hY0sUkp2YDgE26LvQciBgGq3kFTh+QGzVF/pWIZ3AYyss
         1+8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829814; x=1772434614;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q+6sbBvItLVDaaK2nVoqlOqVJ4lF02bwo0WaOVku2Og=;
        b=ejnpl9MDkPHKp4tzrIuudcZB+EZAyHwBPHUZmLomONJcbAXvJRiW/mJO2d3Fu07nKD
         3npQOIKp2a0p9vVfbyitMNzo3VjpjChEuZoISbVg+yte167OMxEOkGGNaNy0qqnvqX5P
         Vbc/Z1e5x16MFD3cfVJqjryGQndSoVFz8qnOQeTnpuceLIYX3GTtbVVZdUTT70lFa7fo
         hy8CZysi7Zv2dMSr/oUwc0rXf8/yraAV2hyiL40XXty2jGVPs2xtoo6dRTSP6sce2aDW
         1mAAv5URQrmi0QEwwn3+47Xf10eNNe8vR0eWNdFaSBPRPoODJynPjFcXgl9YLu+0I9xY
         allw==
X-Forwarded-Encrypted: i=1; AJvYcCWy0Bcizg3vZ/mr0WrASVDfEeZCjeEhzEDRT0I0zpnKPae0314M3azZFaFbbt7oKfb/Ansh7DT91l9j@vger.kernel.org
X-Gm-Message-State: AOJu0YxBZFgGXxTDuKn4aLFUN72wF7Xg3BYQjD914l6HB4nJ3/5mLEU1
	IOyljWo8a/cS2XZ7S1PwfZd+uYh/b8PtvZJYNTGk4U92eCk5FFT1BDmeZA2MsocC1IHd6lzppNy
	YsSebn0t4pnudDVNM2jTyWVyRAr3vMHjRWkYBcQ9qO4gatwsujTR7C0ZOOcpaX6bi
X-Gm-Gg: ATEYQzwbvtIq8dQrEEqrfpUW91UoHoPArnMD7UwHVRYd+tQI+9FzV5J+bNpgT8qSXsM
	YXu9wJ9RKoJrhQv1DJWJzL5SbR5aDcaP0l5MfO7fzFzhE52CaT11dH3CCJ2dRd922cPCoH0fxB1
	+lQnNi2T/8p+Gg3IVWMd+AgGVTuXlbjI/YR36HbkCmehe2qV2pTuqB9e4wu/+GdCcjsnOraLzBg
	9ad+uto5u21UIT2VKzn3vaSG6q3diRYuQhhNe9yiudjKXaZFIdVWB+xGZjFZZnnsIBwYEQT7Xfc
	RnfUdQ9xFHcZ4zUrXIaArlLvE4Cn1u7adompZ4Ys3AJ578MuYR5mGHwzwaX4fdpxFnnKuliUmJI
	uhr+qJ7LSCpybW2Z8HcY2J7Idtv+WA6zx3Sz2fRVlzpXJN8cMLIN8oqQk1QVRjonu0KrRRPuBAV
	erklxx4zjh12Y+
X-Received: by 2002:a17:903:11cc:b0:2a9:629d:b618 with SMTP id d9443c01a7336-2ad744583eamr70523955ad.15.1771829814419;
        Sun, 22 Feb 2026 22:56:54 -0800 (PST)
X-Received: by 2002:a17:903:11cc:b0:2a9:629d:b618 with SMTP id d9443c01a7336-2ad744583eamr70523785ad.15.1771829813940;
        Sun, 22 Feb 2026 22:56:53 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74f619f8sm62249225ad.36.2026.02.22.22.56.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:56:53 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 14:55:48 +0800
Subject: [PATCH v13 8/8] arm64: dts: qcom: lemans: add interrupts to CTCU
 device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-enable-byte-cntr-for-ctcu-v13-8-9cb44178b250@oss.qualcomm.com>
References: <20260223-enable-byte-cntr-for-ctcu-v13-0-9cb44178b250@oss.qualcomm.com>
In-Reply-To: <20260223-enable-byte-cntr-for-ctcu-v13-0-9cb44178b250@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach <Mike.Leach@arm.com>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771829767; l=769;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=0MADiRxGeDkPQDc+D4cOyR9YpPfqVXFTQN8hJDo+rxc=;
 b=GYKSp48HIz9/NsR+p3K2MrJDn8ftD02desZ2tTn7TWMAjbQfG1cLRr9feCJsN/9hFhbMnHlEt
 1C3IX2UzLqJAaPZTJ7Z9DqjHdhMe9s37Qx6TqkJYy28M/S+hDjQq1uV
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-GUID: P3-COqbZamXOG-cqeTFoog5Rm8KGvRFE
X-Authority-Analysis: v=2.4 cv=cJftc1eN c=1 sm=1 tr=0 ts=699bfa37 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=gBkj9RZkAcI1HbXH1KoA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: P3-COqbZamXOG-cqeTFoog5Rm8KGvRFE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDA1OSBTYWx0ZWRfX52jR5YYHWo84
 6dYlimGLFAeXJHFd2J9LRQ58rE2eiduj/IYmgtxDNPSMvwpJu/yFcbUBxfTqZ1WdPe4Vy8VTHkZ
 gcVkZckc0afGUJpl7cjLPFtfyto0QgCubznpo6sLE0QYfx1X+JuN+VO1sR2Vh5Op0STAFTAN7dy
 +C4r0ue0Z4Ef4Q2TCA3vxYEewKyBqXjlepwLOgTSkcW4okPv5X69s895LudcPB7DutbeMf9hTem
 KamJ+TL8cURQUGILX/eX3JUMP8tNIz7hIHWXS39rdYlaXX/2aJo+bB/a+fqIt7bwMoYPuqPQVPM
 BJzbLh6rlEB47Ql5FWcNz4Lml7CmZrRcSvRgRgmBhzhoaMtvhJnoZ2SrZB8GudsQ2wbBa5PZVQJ
 zXq46fekFtF+R1EjZ4lTGM20WHK8TScUPZs/aIsjJKN+7yNlqPvkjvxDgOvFBeANiKdRnCtj0S6
 AxO8/22b02skM7UWyBw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230059
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267287-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,0.61.12.232:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 76D431727A1
X-Rspamd-Action: no action

Add interrupts to enable byte-cntr function for TMC ETR devices.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 808827b83553..e8a20789cd58 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -2800,6 +2800,9 @@ ctcu@4001000 {
 			clocks = <&aoss_qmp>;
 			clock-names = "apb";
 
+			interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
+
 			in-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;

-- 
2.34.1


