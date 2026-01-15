Return-Path: <devicetree+bounces-255390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 78419D22A0F
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:49:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 918F030476AE
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 06:49:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 441A12FC893;
	Thu, 15 Jan 2026 06:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fej63xzf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gp41Wmhb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E1B2F39C1
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768459774; cv=none; b=VwJLHNIsEK8QCPN/DgVetC+7E9aLqnPncLjQYlqrqwPIM/fPvTw+YFjDPQla8eYCDnsOiiCDUFwmSyFFQATIUnj5KI7h86TMtF/OK9U0XjhW7BMr7/F/qnCWKlW5aJf6VjpW3J41fa0mjJta9EAYFiCVJuWmqinGB45sS8kHeFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768459774; c=relaxed/simple;
	bh=7MSa+jAIKGOb6mqw2g6TItCsw02/UKwHGTw92N2gMWo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kCiJQjjFFlwomRk0c3XWv7FbFZgBGDvoEirzajoWMt+C9NUCpXufJcNl33FQausOI1sE2kVo1bHmwSykb1wkE6y9YBJZNQMBF11Jyxe0lAYyef83EHUEU5ZDN0LSx4/yZHNnLbDlQyk/tTCt8L/uJ8KkRpr/3XwG0pJMhv5RHQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fej63xzf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gp41Wmhb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6gFnu3419955
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:49:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rEQh2H3cN11SyVCtNDfW2btIoJekDRXrgWkZySYSUeI=; b=fej63xzfwdrVPWop
	fmO72126GcpL7EOsG/dNq2OhMG6+Oqg5+qg9+3hsuXqaG0hdb12cj715kZzdTghh
	KcdfOaBuWSw9NDm3vC9InGeLRkEUadah78jxlbmyoXbd0sutjFFQveVQwS0PuOxv
	E/OHw6xYXhjzhLDd5zLSopjaQTiWZs1KGNVUQJuCAOqfz2M4rmBmK9yKKJxSKS5w
	vs4lFVC8+d3UrKaz90fKzir295qfhluk1Z/QO+CoaqpiOHzidN++Lj8+sYzuYIL+
	HMbbEsl2gmjdEGj/sXIzYLp3hT58/K8AquDHNkBl0wizXBNDPsS4TqgdcL2u6T6L
	gJGyIQ==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpjj89emp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:49:23 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2ac39bd5501so656419eec.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 22:49:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768459763; x=1769064563; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rEQh2H3cN11SyVCtNDfW2btIoJekDRXrgWkZySYSUeI=;
        b=gp41WmhbOuz1elpsS2IHG7tAfWHciTpW8F+sRdYCEVguFEWfoLKr21WyrvPWF7t5XP
         qMwy/s4QS+wHHyuoLrgob3WgBp2ClfA2D360gXYwnV3sZZLoVI9u0wAAgkvITNQc4o1a
         ZCe1aBIvQyj33U39a6CtphAr+VhaRl3omxY9PqUx/zr2k/NBTS2hH1WuAtwPrLk7dxfE
         AuLZ7xj5H736bKZJM98iimyk8hhPXiYPF2dQ/+NfV/C9wBI5iBnQgAgUD2QM+QKGo6TO
         oaLYyeUKUOQ1uzyMSMUbbzPyzIyiTuWm/rL7uDdxrYqEsOdCLSOGTZQs/C5y4Uj1fIes
         0JCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768459763; x=1769064563;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rEQh2H3cN11SyVCtNDfW2btIoJekDRXrgWkZySYSUeI=;
        b=Mrab0rAhK9JaJhIdvidmB76recGd54aMVQOAwP6AgBZw4UsSXMWMgt27ocVmU8LYZf
         IFO+szg4pQDTC6ABSvhwgRHDN4O1uf4l2v/2uMaeg4/QvRiCOgPtxDL2M/K0cAUuwIbA
         HY5J+dpMW+mYHL7BSgpwdiKigIQEYiTGXKBCaWtJl4VRPRDTXRGGQWZKIyhxMz3gv1Za
         SDfndtOAGoIQZk/G/PjlfYCIq0ZJCr0tMhKqo+kJJeLRidCsL5IVm7KxjnbTXbkFIxbT
         OpJ1N89ib6M7slysXdGdIrfqaH9hkWMpgXdJaxThcGtCHUIeiH1Q7BLmeeisg08GnUZ2
         wIuQ==
X-Forwarded-Encrypted: i=1; AJvYcCU25UHSD+gP4PfPpqJmlJG7ruqtmaucIhVDplhKqi80V7lLTzaVlo2x5O5QxhwVu8EWWr3XvSLo2b9c@vger.kernel.org
X-Gm-Message-State: AOJu0YwxD/o1mrpir/2FdAvNwNvHuHM0aK5vucvAH8HFBKc9SjvKurUA
	CF274Xl0XZzRmdhgCXNyOwqZOdpyM6wgVmtUT/5U/aFgiJQnODzfxn/Skn2N9CyT75hepCbPkJe
	t0qbzuJ1CDquQx3c4sYyTm5yLuNFwEkDCymZ/gsOv2UUWRvuGNsO4M7y+Mg96AtIY
X-Gm-Gg: AY/fxX7PKGh46TjcsRw0CWFEgE1iyVBIC38E0jdtjrBIslsUr7phXedCBY0f7G3KLqS
	6dsA1Sks6ErUXt+Y82VwunegjIQd4XmISV4iqydWa+XrfiZZl37r+pwjgbEeyoCKMoRgo/lkqto
	5sSAzqyZ2+k1XW5At4tsbQU1X9dTPo0aHssGqnxnWTEbcRp5dH4ocDY0SRbZgy6a0M9ZRQCLsQm
	NVFEYuc9zH7R6wQE+Ebr6vtS1QSPJPDwf9jtzYG03NI5Bhaf/vqpfEuMl6+HJLqaAKvqmRWRs8d
	PNP8M7Shm9BJNLccCSoEDn40SArmWNwbgi+Y/0oWluT77g2h9rXv8i+R5fzXjWlVaFgB5/heSgO
	PrkDCxmejbJFGeTu5Q/3y0f5hKlNLOtfWjVZSBNXDGj18o/b2V11+m5eZbUM+
X-Received: by 2002:a05:7300:e781:b0:2b0:5735:25a1 with SMTP id 5a478bee46e88-2b486b72774mr8396984eec.7.1768459762552;
        Wed, 14 Jan 2026 22:49:22 -0800 (PST)
X-Received: by 2002:a05:7300:e781:b0:2b0:5735:25a1 with SMTP id 5a478bee46e88-2b486b72774mr8396953eec.7.1768459762054;
        Wed, 14 Jan 2026 22:49:22 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b480dea94fsm3259143eec.24.2026.01.14.22.49.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 22:49:21 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 22:49:09 -0800
Subject: [PATCH v3 07/10] arm64: dts: qcom: kaanapali-qrd: Enable ADSP and
 CDSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-knp-dts-misc-v3-7-a6cc9e45de93@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768459754; l=892;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=7MSa+jAIKGOb6mqw2g6TItCsw02/UKwHGTw92N2gMWo=;
 b=SDDcD+xqZwxogCJ8q3k/XWqQfX8MmZloxesW2BTf1N+K2tSKFlni39diJZ2i8z9X3O75Me3I4
 VZOKmqT18XiAx8tzv1JTLMf1Asc3qs4oykPG5/nVnd+/8Gi5tMlrIhU
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: -ILbedhRwQl5VAW2r_Q6rO_cewGfeVgQ
X-Proofpoint-ORIG-GUID: -ILbedhRwQl5VAW2r_Q6rO_cewGfeVgQ
X-Authority-Analysis: v=2.4 cv=EIELElZC c=1 sm=1 tr=0 ts=69688df3 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=lIVsHN_WdLZ9tVWbX6YA:9
 a=QEXdDO2ut3YA:10 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA0MyBTYWx0ZWRfX0+OaxbJmvS0L
 y4cRPNfpbM67RwY96VA+NRnZ7+OTSCpGpEsrpp9Q048v6d9lP7DWX7wqpfrZMJOH4dwY/1lcP4S
 H/MDCcQsfPR8sL3QRXfadaF8rNvqgpX1KnVVbkIjEIc2wP6ZZSst6XExwdA6kAqHtFKeKW1KpRO
 3W2+WKbZX0XN5h6/j16eqO7z4ypUa5B9ENgQXnjCib9nSe9tlNW1PlsZIGt9r+Vkw/MjCZUwRre
 S/drt7hNLC3s/pAA915b+KLCZh6ooXOUEFenrxBNMJXgP3eE4P6Ga3al6+pGNHjeHNX3DUrFgfy
 u7QRfBBtFMuWKZKCFmmzvny1EjSG8tjm9Ze8cGrKVAswoRYpu4SqVFDebkGzLiAGV0igBW3gGaG
 JJuIM1obLjtLFjBxY9uDjz2/GLzdYZjHqa53LyITTZFZnKqphX9rp2Azs/DzNsw9h4mg1y+ZaWi
 A3BSRzYKltUKurLUlhA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0 suspectscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150043

Enable ADSP and CDSP on Kaanapali QRD board.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali-qrd.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali-qrd.dts b/arch/arm64/boot/dts/qcom/kaanapali-qrd.dts
index 66b423a497b3..32034eed03eb 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/kaanapali-qrd.dts
@@ -682,6 +682,20 @@ &sdhc_2 {
 	status = "okay";
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
 &tlmm {
 	gpio-reserved-ranges = <36 4>, /* NFC eSE SPI */
 			       <74 1>, /* eSE */

-- 
2.25.1


