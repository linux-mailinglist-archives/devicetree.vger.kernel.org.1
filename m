Return-Path: <devicetree+bounces-271579-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kFs7Lu2HqWki+gAAu9opvQ
	(envelope-from <devicetree+bounces-271579-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 14:41:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5AD212AE9
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 14:41:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7845230498C0
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 13:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4198F255F2C;
	Thu,  5 Mar 2026 13:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NplH6MbA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hU12wpoc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F6239FCCA
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 13:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772717992; cv=none; b=Rs+0SAONkBu/21fAJEgtk3B+FuvreSnYFBv5ar6rF/8mmshsh0n/dzPY3JtZ/TmUY91qr18Cv1zMjA520xMJnt83NFmMCUMZn/8AmG9Jz/mLi+pmoO62+1P1gHWUR9iuJD9C4v5Ppdjoo67Qp+1woqcLsHVA7m6G59kgwtNNVVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772717992; c=relaxed/simple;
	bh=EKv8wOSJGRlhpeUGi+dyApwOnzSEKJGSXglpAxxJlcQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Dm1Bvz6z3ODnMpTO83fu9Q/Pw1AClAM9yoSrpu99OiEEM4+E6aCb8C1ymCpuO+ljo2HAPnxmnuE5VCMCloWq/hNXaN8YICNpstVtiZjQTxM4XoEOFnGqq02YjseJWjcNweYh5D6rTuQjso1/WB8Nv7C4zSdm8fByNmijxxENNtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NplH6MbA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hU12wpoc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625CN2lw720066
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 13:39:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xcpYEMXP4Nu8WtXRYSEcQ0DhOhHdqMNhLIC2zKaCrR4=; b=NplH6MbAbRtklWuA
	9mGLvkyzqj7w0e80dmakLOFcrW4wQxiH+BNX6TiCBmnnwQyylj/6rFvZ2s9ZofNx
	expHyBvIPF287lqiBLknS0q0EHX8LewJsZBo04u8Nu41Uk2RHYUA/EMr/Qk6iWZo
	mIjrgJUHXQZx9J09rlzQ8VEG9bz3DzyPSbpBrXePiCTMTQhs2dfSYVEngTEkv6vu
	//3mRm+d6Oxahacf5dOY6//kJbLQXWXSFXKHWyFwwggcFHAP8LtCQVczewSsDZL0
	biPx2rIC8IKAVlCVQUeBS/eVxNC3PDSJnM+7I1sOK3aF57l6DfFW73OU+KZEL0pE
	u9MXDg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cq9srg6vc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 13:39:49 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b6ce1b57b9cso6431674a12.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 05:39:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772717989; x=1773322789; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xcpYEMXP4Nu8WtXRYSEcQ0DhOhHdqMNhLIC2zKaCrR4=;
        b=hU12wpocAT/43bTLXNMqrGyGBzcZqdqGdiZsC+WELnIwooOWrtMWXNAN9gA4XKaRqt
         X0FjFUV98pmCGKcLr6zgNlZs8zfxEwnvdIOdVQRltI3QFs7aep7TioCbhea37DjyBHSv
         2TkLbr0CcNYjoR9JlruQoLmMO8K+1xxqFoQ5Gu25RrDwTXbNLo9hCS+IWHcDbepEWmV0
         c/DmMc5Oy7JXiAMC0L67qOYEVZd4MaX7nF+eOFB9sVa736pSl/GmYZxXvS/jiqOR5wFi
         oGHZom4GxQxGDHEitX9kCdqUNU3DiaFTd9R2ER3dfhevJfbEPD2Ec3qZCKkGEuQ44y7d
         pqAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772717989; x=1773322789;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xcpYEMXP4Nu8WtXRYSEcQ0DhOhHdqMNhLIC2zKaCrR4=;
        b=JNhDm8H4AbQ/tCrJ//P7WfeYuw6Dra8GXbqWYenkJfV+v94VlX9DoJuVNUgLVLButg
         CSi8LCaWMenQjROGEBvCeFwhu3BVl74KMyKVQ5H+kpjkWQFrVi0NqJmGcjjpHJniu7jx
         Zp1SY/70BH4NbGg1cfTHe3bQsvjg0c2QQqWpr3ewZR2/NQDuhOlGi93/9U11Ve5A8KRE
         vCTP7cfvK+206+8BCrnrKniW8Ma4jZ6hq7s5c/2RCJHKpNs1ka2haUKzuyyJcTu9b96g
         Bt3w3hCh/gEnuyhDQn5DPVc2VOVUN9EsGmadQoN4AD4Il3eurYBUuUmQ06U9X3RQKzEA
         qgHw==
X-Forwarded-Encrypted: i=1; AJvYcCVdeg9EsgpX+nuoMPsypGaM8miyBJgURSrfhU1QwlI/jRk3OMnxE02AGCx9J7itFZm745VdMnab5WIP@vger.kernel.org
X-Gm-Message-State: AOJu0YxfdDjXN26xGprYNTFi+FrB04ArvKU0OZQcEFekJ5zAj8Tg6AgS
	CTwAO4u3W5DddqrkezWI3lf3WfU9tKEj6JDPKFKng/1O2rRpanVeZigclRczxscPBTnY2KP5vr6
	XJkGUTZ/IcznorJYdXlBIAnrxBzAY9ico747mdT672o9LSY6KlwVHZa+4fE2hLFn1
X-Gm-Gg: ATEYQzwPa7j4HKZHbIpJdA0gxywbLbGMMrxeLrZHI/pNOvPgQky3USo8cLOsCN4Ha0y
	fdw8d7V8v9U/a/s9At6JCxtWIfdnwYYMBA5BDhiycLg2sESkmNi08ZrYzzjnBWJU6DD2j4JUJWd
	FrRv2ygXHYfH9uapqPFdDeRRaV7z6Q6V3Q56JD+tT9BFy5b4i26byh2JLIqA91KBu70xNyd3EBH
	gwcYNizSkmnPaDBRAhZ4JL9geX4Nr0OUL4FcI84doJLlSXHQgaMOfeArqL+5+/rxg9MUgJ9ae1h
	qW+iy7VC+RThDEujyPAPJBa05iWjqEqdNbFSy2X+C6thQ8bPlRK+MTk/2pwTL5rAULUnlXNvkOu
	oBkJqztEMlI/TAPWFKNdFxjOooJT7m8lDut9SZR4opYoArICVGVHzDZgfJQ==
X-Received: by 2002:a17:90b:2c90:b0:359:8d70:c4ed with SMTP id 98e67ed59e1d1-359a69a26c1mr5088421a91.7.1772717988592;
        Thu, 05 Mar 2026 05:39:48 -0800 (PST)
X-Received: by 2002:a17:90b:2c90:b0:359:8d70:c4ed with SMTP id 98e67ed59e1d1-359a69a26c1mr5088397a91.7.1772717988039;
        Thu, 05 Mar 2026 05:39:48 -0800 (PST)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359b2d5fe2dsm2195236a91.7.2026.03.05.05.39.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 05:39:47 -0800 (PST)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Date: Thu, 05 Mar 2026 19:09:32 +0530
Subject: [PATCH v4 2/2] arm64: dts: qcom:
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
Message-Id: <20260305-industrial-mezzanine-pcie-v4-2-1f2c9d1344d7@oss.qualcomm.com>
References: <20260305-industrial-mezzanine-pcie-v4-0-1f2c9d1344d7@oss.qualcomm.com>
In-Reply-To: <20260305-industrial-mezzanine-pcie-v4-0-1f2c9d1344d7@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772717976; l=4306;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=EKv8wOSJGRlhpeUGi+dyApwOnzSEKJGSXglpAxxJlcQ=;
 b=57Rdh+0nw//YsAa0uXxLianwueKyTEtSnAGRJzh93o6DwK2vIc/0PL+lkjF63P0W0jwq83uEL
 0Q02AUNUkIWCaDFacs4D1YkmkfrnbRCEfiGogvRlWhv0lDAC4YyFl6F
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Authority-Analysis: v=2.4 cv=a/I9NESF c=1 sm=1 tr=0 ts=69a987a5 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=bvgCVipTNhjOeuzF1ioA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: PE9WRil3w40djrw2F1V9gwSYfmaj8MPj
X-Proofpoint-ORIG-GUID: PE9WRil3w40djrw2F1V9gwSYfmaj8MPj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDEwOSBTYWx0ZWRfX5XRsSEumhPMz
 jLmUkEmebk8SweebOnH4oSs4OoFofDefpjL+b3d7VigXk4D54T8ysQr1cyDwexomL3++V/xa+tC
 Wna1BtPjT61FZ+9qYp7GN9x29xiamprEYiwO08S35R0eN+4rCdsQlkzFTBjLNsRYYWOVLn07qZn
 0CvMAFWzHWDCe02jMwliEuPX0BwmtmHvIuKDbpAzElIAv9cJPi9bCFVxT+wWs3BpBOzzvOxxnqq
 zpo50SFuhRa+tib6KiShqN/X7ClRJdk1cbUXkK2ftbkikDekbliaSElJESHzIyY0D6RvOkmNB3+
 +9cqcEZ820G+5xB2YXWsGQ/AuoSZQOXxEa7n7JYrFKd/W9jtBLKgQLJS1K6H0WK17CtFwlk6TFP
 +yPbhro8rm3qIo9SaPUs6MGfttEfkQTC2qbqMypzQg5khLzli/OiftKNsMc7YNqzL+3qGJhVEEK
 Ka5jsLD81uXyGLxWKYA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_04,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 impostorscore=0 phishscore=0 bulkscore=0
 suspectscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050109
X-Rspamd-Queue-Id: 2F5AD212AE9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-271579-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,0.0.0.3:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,0.0.0.2:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sushrut.trivedi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
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
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 .../qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso | 102 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts       |   2 +-
 2 files changed, 103 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
index c58a9ad5c331..2a2b7c2f9210 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
@@ -146,6 +146,100 @@ pci@0,1 {
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
+		i2c-parent = <&i2c1 0x77>;
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
@@ -177,4 +271,12 @@ pcie0_wake_n: pcie0-wake-n-state {
 		bias-pull-up;
 	};
 
+	pcie1_tc9563_resx_n: pcie1-tc9563-resx-state {
+		pins = "gpio124";
+		function = "gpio";
+		bias-disable;
+		input-disable;
+		output-enable;
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


