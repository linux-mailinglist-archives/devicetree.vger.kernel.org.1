Return-Path: <devicetree+bounces-265015-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJ4/FjivjWmz5wAAu9opvQ
	(envelope-from <devicetree+bounces-265015-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:45:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B42F612CA5F
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:45:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7F56930BBE35
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:44:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59AE22EDD6C;
	Thu, 12 Feb 2026 10:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vx4mjYzp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MuoBGYJQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039622BDC1C
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770893073; cv=none; b=eC04L0kv4pVOGhQ1Q3YOUyojXUK2qKZOOHG9qy7vSfgXGArKNQp5HZJwk/OEFIerbKYlyjuLAGpw30ZbMUP9m0qk1hvREm614CptHLyIkTNtd41ngo3r8QyuFG+mqOB2Y82nWOvcMn16oRSXkPSQ3o46qMiMtzQ1eVnrY0qSdDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770893073; c=relaxed/simple;
	bh=3/A6GRE1/3+Eg/c3/WCPO3ArI08bR9hvTP+A00w9wo0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d3PKxudYIoEiGrm+A+1FcA9auDiulM0yE771mIukn5ikFjIcKutJBWKiekyTJIMMwFXiQVfYwQjhYcUdKfG0MnbtMjuAFxcaJ2s9N3cghkd/NIVMvHKbZr3fHb6CG2tZlUrclMjxYx0eFmu8o9OhedUcPSxa7Dep/y8QAGiuzDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vx4mjYzp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MuoBGYJQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CAQan92545095
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:44:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bvYzaSe3Sw0LWFTDRt+J64ZasD/UrhxsdcUzaILBJtk=; b=Vx4mjYzp/LKGZtoX
	sVKTfSZHi0Z3AP239wQAqO3N9K87yGrcJGiogZp2nTiiy6pOZYp3qtsmCF8p1rdZ
	HrAGXfZHUIy7+A5/DtNwWtGe30zNvNJZySe1ccQVQzH4rS3C48EJobN7PYysBxWK
	lhN+2RxNfP2xiDlBlAbEGxPx7gHL+VdNRKwIJ2uNlTuZXwq/5SVsg/IiSqtDPkTp
	TcRPCd5/SabdvV7Sd99F2ZSUKHbrPL5RIrJPKemOrooIqShfiVfUE0jtFWLfe4mV
	FupkJKG+w+RonutYe5MDfQKT8++KcJHPJjWGxoYCXZRM41xja55DSzfyhb2XuUFk
	/bU2Qw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8wtpjy2q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:44:30 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-354c44bf176so5610675a91.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 02:44:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770893070; x=1771497870; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bvYzaSe3Sw0LWFTDRt+J64ZasD/UrhxsdcUzaILBJtk=;
        b=MuoBGYJQ1zedEwG2IG7sradAwvrlzv9HAqYE5hKrN8YYCY0r+prOrLinbWeS22R2Lo
         WSeAj03/xwI+C0aPEEvVGMdRhThTsnUMkFwBe3TKl34VgooZOpD8D4xzL9NkW05Ba/05
         oD0MoBlohl61Co9XwC2dSkpJbwnm/Tg4kBR5C/rfEfujkT0R+CaiA8N8YnjxGtFl9IrT
         jRj2o9q9hJRQEXpV6kQB6F41wbhiVBlnjPEgDdysjuT29tj1JK7I/7rDCu42CxlaLdZF
         jZHVk35+ph9kfuMxo1QmJj2H6xvabnslYaR9bepB40KX+BFC233xXnXyRBUT8F2v170A
         0vGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770893070; x=1771497870;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bvYzaSe3Sw0LWFTDRt+J64ZasD/UrhxsdcUzaILBJtk=;
        b=iraAqcAN0Wx34scZ3L5vMmrg10ixWDy0BAuLZ8EOJETiDxZ454S46F5br7+vw5Li9T
         icbMkywf8rMdNZLlILidvjz394lDjNez97h/55xSShAE3KeaQSWIBLk9YE22VP1DeKhy
         PBfgPgQXySICxoR/osoJC/m2Lzffy3wLfb3DXrM9p3sJS/mrl/iwc4JbKFeIgIz1/y8a
         BK28ufq+pdKAUYs30yJL5cL8OMwmbiiRFc6x26PdYQOCpFTR1Cn/nqeebunUig7Izhyg
         gVd7Vmtnzr5gFgzTtQQwzeQy8SHcjC7hR2oF6ofqqRKB7wB6Piic9M7AuqOO9p7i+OfE
         57pg==
X-Forwarded-Encrypted: i=1; AJvYcCV53R74+dfjLGka59BxQb2W49UmROuOlCrtvERz2Fw1zpxWRS0GUWpL73MQbJKcgVvmYp2F3M3OT5MR@vger.kernel.org
X-Gm-Message-State: AOJu0YwiWniuU1nRnNi3pTDVa6T7zqFCfCc4ZCb4SFRJ/0BLeGCJo9qz
	/I1JwAActjahxRWZs+Zh9iO2y6SV6Vcw0EAWG/GMWRbVwNQ1f5ypS7yMp25yhHsuwYILVNNk0HY
	kjKGWIySBW+DxrFAuXIgoD2DghA86SGdd9V1vUde+s0pAh6dtBoELhRfQryED6P54
X-Gm-Gg: AZuq6aJrnQyhmYB4JmeNtsGF3V/Li3hm9kkj5i0EuT9o8rOv4BywW5nwbslXa3eV7X8
	pBG1geEwMQMTw4Njj9hTbzQKbJQPJLVaZDlQrRb0ds6ckQioBOL8DvM2PaEvRU8uyaCgR4y231k
	p2gfXYZfgnCOd5d1Zey9vXfYZlRiyh0XzHxIuFlJzrgZCXfByUfbz/y41I0iPOdj8FZIYY54nUU
	pa9ySP2bmKQyROKe9PfJws+fHOytC//PvYY4lBc1ZJgmvVQYWiXCi+39MAtxPPvgw/TDC7gotcr
	/Pmx7sDFUxX95tuUSXtOHi5gMmR9d9uqmSaDUnNw37PMDOengEWFIsJkTuFym0haeSNjvVjqBGY
	dmp7zcyBxa+hCH9mh3nLRDSJnJssFq5v1+NfOE5GtReju7Y8Xj00CFeTW3w==
X-Received: by 2002:a17:90b:1b43:b0:356:2132:67bf with SMTP id 98e67ed59e1d1-3568f3eed82mr1938948a91.18.1770893070009;
        Thu, 12 Feb 2026 02:44:30 -0800 (PST)
X-Received: by 2002:a17:90b:1b43:b0:356:2132:67bf with SMTP id 98e67ed59e1d1-3568f3eed82mr1938934a91.18.1770893069540;
        Thu, 12 Feb 2026 02:44:29 -0800 (PST)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3567e7d9537sm4983375a91.4.2026.02.12.02.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 02:44:29 -0800 (PST)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 16:14:02 +0530
Subject: [PATCH v3 2/2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: Add second TC9563 PCIe switch node
 for PCIe1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-industrial-mezzanine-pcie-v3-2-1e152937a76a@oss.qualcomm.com>
References: <20260212-industrial-mezzanine-pcie-v3-0-1e152937a76a@oss.qualcomm.com>
In-Reply-To: <20260212-industrial-mezzanine-pcie-v3-0-1e152937a76a@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770893058; l=4309;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=3/A6GRE1/3+Eg/c3/WCPO3ArI08bR9hvTP+A00w9wo0=;
 b=jqccJ8qaFq0Ai1Z6aqCgjlxJcyZC175CWkRkjITiBledJ/0o1b7ceafRZguklbbj63r6leet1
 3UxG0jJW5ESAp88bXZpW/L0BqtW1tYGpOo0L1fT1PJVUT5GwOsXaHyN
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Authority-Analysis: v=2.4 cv=baxmkePB c=1 sm=1 tr=0 ts=698daf0f cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=bvgCVipTNhjOeuzF1ioA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: Fd81QzBoILISIGmnhGfH9EZf6gRTrW9H
X-Proofpoint-ORIG-GUID: Fd81QzBoILISIGmnhGfH9EZf6gRTrW9H
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA4MCBTYWx0ZWRfX5YvNly8PD3BZ
 2ok5OtRfwC9Ru8hu2gwKMh+vBTe+Y0a+1JkazjE5JeSa5rCij+X8BQUsJTxaB5IBSpG/FB80iZq
 Y1AV56/KJDMDEU6QorrVI9DKMrdnUBSkaGf6XyBHnmw2y+y9IPET5ZJhR9mxnSDSmv+zUUfr2U8
 AuP6tA2oGPLvNrvdrnohsVZ8JCNBKVr9JoSDKnQ0Qje9YoZBXKol/PhXUX66p6wCid9Wd9B6gpS
 BjjpQrWo1iYn+x0y9bdmw6uzVdl2x1oGvJBH/aZdwErt1V+n5zYNdkhi6d34s0n+b6Q1AmuZS9p
 8zp2sN3RTxoUgiyStWAzRpDBfrNs2yL9g2TQn5HrhfUds8cstPI/ykx4icWB+9bTV/FHBF7anKz
 60/OsUriVrtOe0H07NDck6P3w26k2/G+pLX/bsdDbUKpPPLINLPfQnDSV1UFN9YPpUZMXE3e+Lg
 Ui1eM7VwuLBh3pe5xTw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 adultscore=0 phishscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120080
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.2:email,0.0.0.0:email,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.3:email];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265015-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[sushrut.trivedi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B42F612CA5F
X-Rspamd-Action: no action

Add a node for the second TC9563 PCIe switch on PCIe1, which is connected
in cascade to the first TC9563 switch via the former's downstream port.

Two embedded Ethernet devices are present on one of the downstream
ports of this second switch as well. All the ports present in the
node represent the downstream ports and embedded endpoints.

The second TC9563 is powered up via the same LDO regulators as the first
one, and these can be controlled via two GPIOs, which are already present
as fixed regulators. This TC9563 can also be configured through I2C.

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
 .../qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso | 105 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts       |   2 +-
 2 files changed, 106 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
index 0fb89e71bf7f..a8ccb9d8f6e2 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
@@ -153,6 +153,100 @@ pci@0,1 {
 	};
 };
 
+&pcie1 {
+	iommu-map = <0x0 &apps_smmu 0x1c80 0x1>,
+		    <0x100 &apps_smmu 0x1c81 0x1>,
+		    <0x208 &apps_smmu 0x1c84 0x1>,
+		    <0x210 &apps_smmu 0x1c85 0x1>,
+		    <0x218 &apps_smmu 0x1c86 0x1>,
+		    <0x300 &apps_smmu 0x1c87 0x1>,
+		    <0x408 &apps_smmu 0x1c90 0x1>,
+		    <0x410 &apps_smmu 0x1c91 0x1>,
+		    <0x418 &apps_smmu 0x1c92 0x1>,
+		    <0x500 &apps_smmu 0x1c93 0x1>,
+		    <0x600 &apps_smmu 0x1c94 0x1>,
+		    <0x700 &apps_smmu 0x1c95 0x1>,
+		    <0x701 &apps_smmu 0x1c96 0x1>,
+		    <0x800 &apps_smmu 0x1c97 0x1>,
+		    <0x900 &apps_smmu 0x1c98 0x1>,
+		    <0x901 &apps_smmu 0x1c99 0x1>;
+};
+
+&pcie1_switch0_dsp1 {
+	#address-cells = <3>;
+	#size-cells = <2>;
+
+	pcie@0,0 {
+		compatible = "pci1179,0623";
+		reg = <0x30000 0x0 0x0 0x0 0x0>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+
+		device_type = "pci";
+		ranges;
+		bus-range = <0x2 0xff>;
+
+		vddc-supply = <&vdd_ntn_0p9>;
+		vdd18-supply = <&vdd_ntn_1p8>;
+		vdd09-supply = <&vdd_ntn_0p9>;
+		vddio1-supply = <&vdd_ntn_1p8>;
+		vddio2-supply = <&vdd_ntn_1p8>;
+		vddio18-supply = <&vdd_ntn_1p8>;
+
+		i2c-parent = <&i2c1 0x33>;
+
+		resx-gpios = <&tlmm 124 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&pcie1_tc9563_resx_n>;
+		pinctrl-names = "default";
+
+		pcie@1,0 {
+			reg = <0x40800 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			device_type = "pci";
+			ranges;
+			bus-range = <0x3 0xff>;
+		};
+
+		pcie@2,0 {
+			reg = <0x41000 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			device_type = "pci";
+			ranges;
+			bus-range = <0x4 0xff>;
+		};
+
+		pcie@3,0 {
+			reg = <0x41800 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			ranges;
+			bus-range = <0x5 0xff>;
+
+			pci@0,0 {
+				reg = <0x50000 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				ranges;
+			};
+
+			pci@0,1 {
+				reg = <0x50100 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				ranges;
+			};
+		};
+	};
+};
+
 &tlmm {
 	pcie0_tc9563_resx_n: pcie0-tc9563-resx-state {
 		pins = "gpio78";
@@ -163,4 +257,15 @@ pcie0_tc9563_resx_n: pcie0-tc9563-resx-state {
 		output-enable;
 		power-source = <0>;
 	};
+
+	pcie1_tc9563_resx_n: pcie1-tc9563-resx-state {
+		pins = "gpio124";
+		function = "gpio";
+
+		bias-disable;
+		input-disable;
+		output-enable;
+		power-source = <0>;
+	};
+
 };
diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index e3d2f01881ae..cd54525e45e0 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -852,7 +852,7 @@ pcie@0,0 {
 		pinctrl-0 = <&tc9563_resx_n>;
 		pinctrl-names = "default";
 
-		pcie@1,0 {
+		pcie1_switch0_dsp1: pcie@1,0 {
 			reg = <0x20800 0x0 0x0 0x0 0x0>;
 			#address-cells = <3>;
 			#size-cells = <2>;

-- 
2.25.1


