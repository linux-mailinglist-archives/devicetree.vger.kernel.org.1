Return-Path: <devicetree+bounces-275048-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJdsC8/Ts2l5bQAAu9opvQ
	(envelope-from <devicetree+bounces-275048-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:07:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E704280317
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:07:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 32E35310B0A7
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:03:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B4EB388393;
	Fri, 13 Mar 2026 09:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NQJ0Oq2b";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bJ/WuoaD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A583386C37
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773392595; cv=none; b=b01aGMs4RYkudc1C2Xrgc3cyJ2R3HYm2t0/AyFwQzSiWcoeevVXRbNIAlGfgj0WqdCqzBWcKT3XaL5sghqSqHlsYGE1E8ewbyYEyHUQ1Gtj0sjTE3K0QG2eE0Rwc5Yx6cXD0Khq/2TXPttIqvx89bAHwu9PVU2pb2tz9sJzcYt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773392595; c=relaxed/simple;
	bh=0MADiRxGeDkPQDc+D4cOyR9YpPfqVXFTQN8hJDo+rxc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FtGGS0EzTqxmwyjZAeaHxEJap6mE3+IKCQChiOcRjsGHU8h5GaNWLD1fNYKh467smxEGBzxr6/z5pw20IfW0r9wCIN/q3gWgokwUWADfgRlz+HjavuYJZqxKhkF2vU8882tzmuV7cSNLKM5sw5v8eQo4NxGlb3ILo7G9TzOuiIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NQJ0Oq2b; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bJ/WuoaD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D5te7o3342525
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:03:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q+6sbBvItLVDaaK2nVoqlOqVJ4lF02bwo0WaOVku2Og=; b=NQJ0Oq2bkwRyQVLJ
	BR1oHmMsDFtWsex7Ume+LsDBbjvLk3yfXFCOP/VwtGecbTEF4KBZMhhH3JUTPqeH
	ESqBBfG5A2XRGNczBEK1R3cXtV7si+QGr4qMeY5pc1JGXOH/ow5PjKDC/sUNT12Y
	Kpv73SjimpWogy6DSkQX7Y2qhJrrO2e1GqTalcDsuThr+3T7CiyY+nhZstG+LX/f
	NwczdH+K45T5zlrztpghLcI3DqB/LTT6CV/99DO82vpgFS0lOBshZsZW8im1y1i8
	aK7Hm39aCk2llXt3z5YrV+r6JMmv/j9Y4KyvPMRfqTJTWYtdKaR1e+nbEJE7FOMl
	McUiuQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cus9w42pd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:03:13 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-82a18d37a91so485449b3a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 02:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773392592; x=1773997392; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q+6sbBvItLVDaaK2nVoqlOqVJ4lF02bwo0WaOVku2Og=;
        b=bJ/WuoaDX/ABLDBXQf4Pk+Ct2TQs/A0l38cmZ9G2pv38AqDbpWhfJjIp+WzTZXWbDU
         okFMLfHn/2nA6B6YW3piRV++6MF3M88BB/zA3ppl7sQS7eJUrXM6AZQ1svkbGtp64IC3
         CnTgy3xKcgNhaM7PpgUOja1sHReJYrs63jdNQxKfCbpgX4gTFfMeKWhWIyd1X346jDau
         m62gEwUXdPPEtx5hozIQ7ccSWR4ARAjfIiLQZWbhOMV/ykKud0StHao6s1ymw3ctGH0X
         cA07uKbPTawZ4KfPL6RhcOZ6Xi+ecuOJ0jDZyucuYrWvA/DZnoZtIl0U8yTlk8NjeW5t
         NcRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773392592; x=1773997392;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q+6sbBvItLVDaaK2nVoqlOqVJ4lF02bwo0WaOVku2Og=;
        b=YgMQF9jx9wgDCz5UW/y+bsLDutynPdzyb49tfArhbZukJMBn2VjA0wtXCY3wbebS2b
         LL7OFuWp9bDt6ZMnISOXvLiwrD9iaz2Ehne5GxuUBoef8ZsLVlVKL6zIISBCHTpaKJGp
         2h2Zx6cHFwOMgxpJitbQAieh/z2rxpVrHSRDuHf8avhl4+HS4s3xb1rKyfEUHt3LEacX
         E3kjP5Fx8i20hesar/P399EmnuMc+byUwBhDSy1cM9pRBAmNer/aM+83CaA9dMhqYfPe
         /GzvOjofh6Jbro/zC/GPFQIxrP9wc8jGpu3gnKW+P8q6M1GZvGORTEbjSn85OV1oGjWd
         fjRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjwrNtNW4OVdldo6D5p64KGYco22KiK/awhH0Pwtrf5Lyc8b7fZANF1wjuFusApZvUAtQH+JrWUmze@vger.kernel.org
X-Gm-Message-State: AOJu0YzgfPRy2kGYWakrcOoh496VqTb51HMAa6qAvJ7heBClmP+g9P8B
	wOwpIfdd6FIp37gR8Uy8aDNDVB4oCvXqHueLcFXl9iHKU000ELSkHxKNrIPJrGojnZRXnVcFszx
	LBOFn4uYuNeSYyOkZsb9koTgTpCDYAvRl5oElVWcefjJax6nen4vylIX9wtYbZdmS
X-Gm-Gg: ATEYQzzlVe48ywOAVURrHzkjd4b7Kb9sMDk4xm1YUfbJaCUlV8Gw6RTr7gh0a/lMx+4
	usM/NozVCh+fVEGnl3/ODUXa4nfy+OKewvKPnM6y3NdpugvDWhmC4yj/5F6xk1u9vf9CKEs6lHD
	FkuUk1pAUVEHg4lg2qp0TDDZMpLSJELh1dGg7ne4u6EZe9OEzfNrZ+Ub3/YEeiiOMxCyPLHCf9/
	6OcRrtWKQ5VIRSAwu5soZSr/ohiqSj8IgQALhTeYW/NVB14Xg1POyuw8YoR70tc+eUaqbYWqSi6
	aDZj6IZbN5rtVgwjHkIn3tNTEJeyaDzOMSw6HBOCqqp6kdLc1n6vzHqlVecRPwsflHYmC5ujJst
	ricUY9vTwluVdNurywm7NW+saTP87izLDgJeO10mQyhEZ5UFl2NyAXUr4QLsndERy57SEpneddD
	xb1iW0AlPj
X-Received: by 2002:a05:6a21:687:b0:398:aaac:a079 with SMTP id adf61e73a8af0-398ecd38582mr2136357637.45.1773392592348;
        Fri, 13 Mar 2026 02:03:12 -0700 (PDT)
X-Received: by 2002:a05:6a21:687:b0:398:aaac:a079 with SMTP id adf61e73a8af0-398ecd38582mr2136304637.45.1773392591858;
        Fri, 13 Mar 2026 02:03:11 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73ebb9ed44sm1269275a12.34.2026.03.13.02.03.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 02:03:11 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 17:02:10 +0800
Subject: [PATCH v15 7/7] arm64: dts: qcom: lemans: add interrupts to CTCU
 device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-enable-byte-cntr-for-ctcu-v15-7-1777f14ed319@oss.qualcomm.com>
References: <20260313-enable-byte-cntr-for-ctcu-v15-0-1777f14ed319@oss.qualcomm.com>
In-Reply-To: <20260313-enable-byte-cntr-for-ctcu-v15-0-1777f14ed319@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach <mike.leach@arm.com>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773392553; l=769;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=0MADiRxGeDkPQDc+D4cOyR9YpPfqVXFTQN8hJDo+rxc=;
 b=0J85xbyTY/0MHfnvcKJXG9ENgHTZhO2hLfyhFJl+vQIbDZagnd8thni9l+8CaOt5aokMxSfV4
 roVmSvGh3bUBQKAQdiG+hg30af1ewsWBVxZTWSJDeGw7GSgX9kSCU28
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-GUID: oNzcpOVrl9QCXeoBs-vlR4KHQ43qYrQh
X-Authority-Analysis: v=2.4 cv=IIIPywvG c=1 sm=1 tr=0 ts=69b3d2d1 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=gBkj9RZkAcI1HbXH1KoA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA2OSBTYWx0ZWRfX6TB4I+0Jpf0o
 hK0fVg2KvDdfFrxXZ57lcWrnRjWlBJUgJ7JTUZfzblcVVLs6W81FvbmcMKx9RBuppsy2Yce7Srv
 ajpHcqOCQHiW+Yk5W/XUaxUy8q6b5qa74YTn46H5EJVgR6Xa0fpUvDLnsrHzFcWIFXhX8RzrBkP
 FvI5DeqmE3WeXQBfsZqtuWbSVe3O/MR7ylNG5UBzvWwQIRu56poDNNid3HdYsKFRzup4pyWSmY5
 WpbJnHTwNb8VcORFDybQ6qTSSONEvP+XyvYIF7S7LEY39IgqC/bd7xd/5js0efiSSJMAyyG5ZOO
 JMW2piNSEU5PR7aFlW5g2pyiHHMVNf2q+BGsCfTsdy7dxCqisMy1gmrhe1k2rASohaqRzoG5Yeo
 wmWGW++cpnr7vxhaq6ayCThmVQNqGJ9jqJuK1T7tdkeEsB4Paj5cFDHa2KmzNFs39PG+N8263o2
 RfC/tNxyrGEz05CK7rA==
X-Proofpoint-ORIG-GUID: oNzcpOVrl9QCXeoBs-vlR4KHQ43qYrQh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130069
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275048-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.61.12.232:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7E704280317
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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


