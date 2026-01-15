Return-Path: <devicetree+bounces-255387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0136D22A4E
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:51:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE03E30AF9F5
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 06:49:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D4A62F6193;
	Thu, 15 Jan 2026 06:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E/Rx1+/g";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kojdhDX3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CB42F1FE2
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768459770; cv=none; b=Z7jEKeEH8/3USFz8L0U1BAYaLcUUED3Qkqk+35TAP7A/oDFgwcKFyodQr0ucwOjzF4O8nEUPYPhVEJsFwkPl89pYhyA0Oc2/Jr0VvAnOAciuhrmOroRAXu3a5QaYYX7h90Zv8XGuVLnDUDqzu88X8UAtnj94Bm4/bcpPWttzpu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768459770; c=relaxed/simple;
	bh=5DnXk2S52sWEVtNJ/ttHYGdMW9L6THeQWIL1S1NCvgM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aMIeRdaW4K/vNc8d42c9mLFdHHe9tClWo08+On1UdQ7XtXwjYYTAXyMZTuS1RQd80lCPAiYM4pFfxQvg6wT1FWd5w7x9AEk/0k3Ctv2hy2ktfyC6e7AwJrQnB8/tYlSQvK+e07HqtHT6GXAzymZDSYkDBQotSfUb7jKHt88/Quw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E/Rx1+/g; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kojdhDX3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6g1ps1055253
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:49:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	myE3VXCg3Qv3AsV6Oh5PQqG5rOIKLZUBUr0dVAJi+80=; b=E/Rx1+/gdLAPc+k4
	mmTLXnjtHJy9fKtgxLcTjylFel05MYixzkoZJ8bYcntNnBGBY44qQ9G4haKCWb8Q
	n1z7Avu4Q+LjB4r6QIBWxCNrhh6ZuIklveZn9jKNSy1IHxopBP+l2o2Onn09Cc4H
	wWfv56cA0+64OfidAdi9eM6hxvt2vVm36jVOLz/Tzy4+l6UHWqfSHktc/Gk3BtwB
	YFAhxCR0KQHmEfOmnLNiY33cJI2zJUNTYc/fCgo88f5AZnlqAH3Ql7UfglL/Ee9s
	ZGXSoKuawUxZzcR8U7A2rdiXAfjHiQj6qCXrMRu1PofPig7bQGDe5vVIlyKiJmqr
	DxhYTg==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp8d33mnn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:49:22 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2ae26a77b76so1254735eec.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 22:49:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768459762; x=1769064562; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=myE3VXCg3Qv3AsV6Oh5PQqG5rOIKLZUBUr0dVAJi+80=;
        b=kojdhDX3lFQkFkEVHBVCnmayqBkReX9mKngd+cQZygFdi3VJU240ChLKpeK8jsgsZ4
         9Nb9w3TeJRoPuJbLwABxvYhiI8ZN5aLT0CDi8HDy+ZzwntFER2g10yM/H6DS5K4iA0Ji
         oGYNGO+fmAGz87cetErw8kY4JyKmCShlmlD5Gj+Cm+aXfhgXQnOxlq5mbe/QWuknmybz
         KZ8gJtAq5YzG/HGIGQuntgZBJy34oaqz64hYGwBwlznG6JiFYuQasnbLnwkTHR8XiJb9
         o5ne7N7XV/R5/7fTJFu905VE4Pi5/nsrKjcAm552nYVgmrkE2UpSwXPTAs3snz/G2jYZ
         4g8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768459762; x=1769064562;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=myE3VXCg3Qv3AsV6Oh5PQqG5rOIKLZUBUr0dVAJi+80=;
        b=BBkzPNGO035T87k1rB/ck32AcocmfH7WwLZ3996mbZxrPZMHOFWwoC+FEgNKs3gqzg
         B+3+Ml4TgkBG/AAp4gwdQ/0UxxX3iX2S9ojiMRqYw/vtC3kCI2T62HenaAAQqz94H/TJ
         1tRS3x5RomgBwG6ETjtyytyaFAAgxxQJcHJ2Z42na0SZNDn1tqZbtIJdUAcsPvzIDj/m
         VmnkW2nOY3yeKskzynodIbbhXd+TcvdIIXmkZFuNChcfPDusKJoD3Zf5pG+8MfGGK1Qu
         VGRNcKsSP3tZ5eqibxCkpeTEHulp42Kq4u2A9ZyqSnnZS9KpJ3QZWuVb1eI013kcWEtA
         n7MA==
X-Forwarded-Encrypted: i=1; AJvYcCXlMcJGPO9tW8WeM2XGQGwdKknQPMs9HH4tQGNHRdKu2h3ArKRHqweCGKv33wOhMuMawsw8e4pQLRBF@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7WJnE0Mx/XNUx3mKGFjj3448uJ6ueij2X/5DnS/C0KLwE4/Qe
	8ioEeRCDnGwo7cKpP9P7FG6eSY4F3hwRdYvvivs9LzxskNjoXpLDofd/UdnldG5hctqLPFsOeC1
	VT3kMMu9KTWjamS1uR0DaoHRatbNVv71SYIdCF6O8UM1tmNF2IG8evZMHfcPqV3eu
X-Gm-Gg: AY/fxX7k6+Sa4lJFtpZKQA2NpBVagMPzJhLb4ALuy+aKvY02dtiNYWDYFblFDjWqLsu
	3GPnoXEWs+dfaohSI5OCi7+LBBUgqJ8+3rFe71mWGveSisoumb7a+4SLCAeBuFBJcTGCG8CKuaV
	IGA9UlPlwsNxKt59Da0dhQevj2CUpx1FVbE5scQeZKr4gfqHh8r/32C342fq4ynF/4CCi7UYfUg
	SUZGtDOL+84kHN1jfatlmipFz75hAXr4p13HOacBKO8Af4nCjETy0Tug0zBAStAkuFZTsXYAMzI
	wfrdnleINd36mFJNi03Ch24fVCDo3NFgdEOtE7arFpCcdH13kvEl7iEmhKYQLKevcAIwfGftN8g
	Z7a/6kPeyuMzaS7OblkS/M2qVdwu4f30jLeXz+/ZUn2sp85AkVfAnJdsDF5VN
X-Received: by 2002:a05:7301:5795:b0:2ae:565e:719 with SMTP id 5a478bee46e88-2b486b7294cmr6098601eec.4.1768459761751;
        Wed, 14 Jan 2026 22:49:21 -0800 (PST)
X-Received: by 2002:a05:7301:5795:b0:2ae:565e:719 with SMTP id 5a478bee46e88-2b486b7294cmr6098579eec.4.1768459761230;
        Wed, 14 Jan 2026 22:49:21 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b480dea94fsm3259143eec.24.2026.01.14.22.49.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 22:49:20 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 22:49:08 -0800
Subject: [PATCH v3 06/10] arm64: dts: qcom: kaanapali-mtp: Enable ADSP and
 CDSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-knp-dts-misc-v3-6-a6cc9e45de93@oss.qualcomm.com>
References: <20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com>
In-Reply-To: <20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768459754; l=887;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=5DnXk2S52sWEVtNJ/ttHYGdMW9L6THeQWIL1S1NCvgM=;
 b=RP41dZIPtI1R2J9rWmyKyAmXl226G3UAF/S19R24SjFYOmQgsqv7PCFruAo/OSgN94iHYknJq
 /Kg99I2vnRDCa1SMRBeygaIv2VboJ0cCEfHPcMAxmZQsCpCCkgmpzaR
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: hoBJyDX949sS6IG7axPqOROrHjpwMdqj
X-Authority-Analysis: v=2.4 cv=fbWgCkQF c=1 sm=1 tr=0 ts=69688df2 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6pSOtZClNuHiBGgWezYA:9
 a=QEXdDO2ut3YA:10 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-ORIG-GUID: hoBJyDX949sS6IG7axPqOROrHjpwMdqj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA0MyBTYWx0ZWRfX7p3TPoCAXeJb
 pNVH/evwxetGBSRo28GT063gWUPkUfFh4NjPwmlVcSSIrvoC9pZDCnAGwbC5oTdOrC2BDWla1lS
 roGU/4fjtspkOVes6Wr1QgFYoBWTnDjHBN2Q4fI/bFmo73hCmykLgOdeVpQu+idFlYvY8KpO7/y
 sAhXNYkWVJtXDvDbf81vkVRexsxmHFK9ilKMPlOpbVDDVPYKIX6oZOdmNLLovfHikSAN9pqCW7p
 F/6E4kX0F4C+EknqdTkC2ZFIWINHIr1D6CQcgYvM7rBgCWCf/saDxQPQxiJzArjiRS3DM0h8vRw
 6Y78As7SSdtMnpkhQxRjTfFTf25i3wAowRuSoOFwxuNwTtl1hrhIHhIJgtBc3oIJb07b1vCnPxR
 gxQtLes4C7YvUhpsXoJHp9AffGhWCqQeLweySHGOO+GH/h+0YTbfH8RZRam8UZrIaZXqaaOU61u
 eRggFNZfHWQe5ObiRmg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150043

Enable ADSP and CDSP on Kaanapali MTP board.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
index 32a082598434..3544f744fd1d 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
@@ -684,6 +684,20 @@ &pcie_port0 {
 	reset-gpios = <&tlmm 102 GPIO_ACTIVE_LOW>;
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/kaanapali/adsp.mbn",
+			"qcom/kaanapali/adsp_dtb.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/kaanapali/cdsp.mbn",
+			"qcom/kaanapali/cdsp_dtb.mbn";
+
+	status = "okay";
+};
+
 &sdhc_2 {
 	cd-gpios = <&tlmm 55 GPIO_ACTIVE_LOW>;
 

-- 
2.25.1


