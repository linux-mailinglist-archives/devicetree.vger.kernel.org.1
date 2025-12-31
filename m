Return-Path: <devicetree+bounces-250776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 86105CEBC43
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:19:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C7123051E89
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 10:18:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5290531D372;
	Wed, 31 Dec 2025 10:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gat5sku2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SQ6y8780"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B901E31BCAE
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767176337; cv=none; b=eC8Lg37a5V3QFqSwTbU92VhlJZ1zq8NpIQSJlIMrJ5ypj0fCEtrEYsWEfoaR1nl9HUI2oBF+kHiyPpnpzF/1MCAvJDWWR7x3lefdURLP3vjl0sd9LxhPZ4/1EH3CynMigTBlzJA6Py3wdvzF8Wh6eoU/95NiTQREZ8nkAflfYIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767176337; c=relaxed/simple;
	bh=ycxSLZjMJY1W2d6A5QmlmqRTD0JmQNz0hfJsNqjDZ6g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tLMBNJkc2kQ9K34GzB4vzKdZ2PyNG3qvCCEPLQaua91KkHnY0E05oTwqgxRxeGszp5O6W6g8V/yCCmhWaMKBnV1FVw0JxVvrm0Sxwwhcusc70p628MUZIDkBzR4dx+PJbF8P8hsotzY/Kjhi1gdqzkvySId3QCRgAnm+3U5kj5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gat5sku2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SQ6y8780; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV5Ve2a3540266
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:18:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s8heZWDaHOOakvifWxZ5NB2Q5Bb6eZzFBAgGLW2eE8Y=; b=gat5sku2tDCAl5UT
	HmlJEkglY5bkUjlZxntdWU0C1q4ILcxihq4wuh7CaQPE6v4ln2gBmsAgZm9nqh7t
	x7yv4uhTdcYDVTIWffurDF3MXbYkMtOlOS+Uk1O6M2V7B1HULvu9YfJlGe8k7nDJ
	D1FAz/ELKlzZO/MeDq1398s1mwG6yVMruZ1qPUYXM1XF49FY/q66KSWD3QHHmGHD
	4kd4K8t0brycFTygteIyC4Lw03WTVXc8eFRgJvblhG7jTQ7h1ugq1j1KWJcF2Ykg
	KDXDiAcVfMckO1xXWTCWHE5o9VJc1/koJdw03AD6TKnDvCBFf0fnqH2drCo0ZNX5
	2+YEJg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc88ykb7q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:18:54 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b9208e1976so19618806b3a.1
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 02:18:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767176334; x=1767781134; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s8heZWDaHOOakvifWxZ5NB2Q5Bb6eZzFBAgGLW2eE8Y=;
        b=SQ6y87806n45GTc9YQXkxDhKc6+si3D/fZhBhAv2aZLop43I05CpTp5LQKPP+ZIe3Y
         KCQTc4mGBYbdliSxdVc/hTGMkL5s4cA4GnUGE+1Xi9gsgghc9KX1duedOKF7AYEFAk1Q
         8i0qUb/km/4KEcXQ2WTv9i8S5wmA8t3gYwQidG34zNqbAjIDsuRndh3HVbZ7vizXlplx
         Z7sfUEkejj2sPK+FWtmSPd1UR9ESw+xa0v1BdBmlCcjjYHC3WSxC+kRoq9BSTROilJvU
         VCb7i3Ub6riWRpW5DH40z2hXTzj/P6G2oVuuvLDy5vUgkFx/6tX8+/e/sBrke0ciynLw
         N0Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767176334; x=1767781134;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=s8heZWDaHOOakvifWxZ5NB2Q5Bb6eZzFBAgGLW2eE8Y=;
        b=J4Q+MXgLiIcx87B9LB4upAgb/KpT5bhZfntqHD0Kmybpq32XLQZQJdoBYUOGgAaibP
         MPoRI/Je1u/STutqtm07wpPI4v7Df8FLeeGlDKmAxotDmdpgxy+BaO2RbFSRyBN4+jBQ
         HAg3Rf5KvC4vvD/43iCTw3evTgArgR8tkpwbgZXICFcCGiUbfNeemFBpzAWnSdR5OTlL
         ao+3NxC2rC/uqRNyPdLwNw6xVnwwAW7v0xBQMKcGLlRCvCbx+wiMRJ3DuPW21VuaxaD3
         kB6chM5sN4ZErtnozAlzt7tMt15oQplDiHEE/PFJa2JBckCLF9jFhQzi0z7sXO8sjVqm
         4gEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUNiETKABuSuaJck6/PR7Y5h2bg00sbnxUN1zBrz00INRAQ19vEO3zBAvBXzqBSs2dSxZiiVpMTfl4Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs/cesDqcVw55Ay+LK1JpJN7T/16Qn9DXwSBG2xb9qG9K/Yg07
	lKBHhsRIWzaxuKeL92xJYUF8p29efIPdzKsR4XMIUn/wchWcHhrmP88hZGSgbFbaqmOnF+CecwU
	10JBz7Q8EWOMSZZF/ELtal4BWZiVYK2v9bdEI6Fnm72FsveWE3HWnAMh3fwD/UR1+
X-Gm-Gg: AY/fxX7EchLdnnYdPecVSISj0kMtOJEewo39arO6HgHmgbss1zjvPTmcsAozZco8fpJ
	SSAdkuXuAbC+FyE8c89xsSEbYEsYz/J5Y4QdL5z+z5ZMuPplR0WnCN3T2r7K/vVWQKM9lgGkZ+m
	yErxuXRXxYCVI3P616eGFIzgZGQf7NbaO9WBf4Q/KBP6cpQD5B2PvECxVIBpzHJemRYC9IpKD13
	rBch4++XoBn4CFAn2q3e3IvjLh3+Ib8vqllAu0xVMB0YGpR2wvzWXslDVmA5aWs5PoUwDQ2A4cN
	y+Q8NlGV2y7cffBmCCcKrPxs3XCPxZGB/X0RUaEYfVevGfVWM+nFrlk3MDPygiUfd/UKkj+g+ko
	blZI/+NY4gK0AGqbHTF6Q3nwJOKBqkNzRhu0d5w==
X-Received: by 2002:a05:6a20:7489:b0:366:1953:1d30 with SMTP id adf61e73a8af0-376a81e2ab5mr30841916637.5.1767176334043;
        Wed, 31 Dec 2025 02:18:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEbVD2tnvXayer5KlqL9Yjpj7hw/s4UeRBkJLNIkLJX9P+PbQBgWwAyPvl6syrmkZLsdsjPsA==
X-Received: by 2002:a05:6a20:7489:b0:366:1953:1d30 with SMTP id adf61e73a8af0-376a81e2ab5mr30841906637.5.1767176333539;
        Wed, 31 Dec 2025 02:18:53 -0800 (PST)
Received: from hu-mkshah-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7bd61b4csm30085504a12.18.2025.12.31.02.18.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 02:18:53 -0800 (PST)
From: Maulik Shah <maulik.shah@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 15:48:45 +0530
Subject: [PATCH 1/2] dt-bindings: interrupt-controller: qcom,pdc: Document
 x1p42100 PDC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251231-purwa_pdc-v1-1-2b4979dd88ad@oss.qualcomm.com>
References: <20251231-purwa_pdc-v1-0-2b4979dd88ad@oss.qualcomm.com>
In-Reply-To: <20251231-purwa_pdc-v1-0-2b4979dd88ad@oss.qualcomm.com>
To: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Maulik Shah <maulik.shah@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767176326; l=1213;
 i=maulik.shah@oss.qualcomm.com; s=20240109; h=from:subject:message-id;
 bh=ycxSLZjMJY1W2d6A5QmlmqRTD0JmQNz0hfJsNqjDZ6g=;
 b=l8k3/S0fsFnaJjXHXSRzZXc4u2UjE/Xc5jmQy/pL/8rE3D6uBTKbH+9q5fjchJcda7UZ95U1z
 7Revqf2H1KRCKIFLP/LGv8IZ5rZHOlw5OAyG0Z5Uz0/Jjm7uulCbMPw
X-Developer-Key: i=maulik.shah@oss.qualcomm.com; a=ed25519;
 pk=bd9h5FIIliUddIk8p3BlQWBlzKEQ/YW5V+fe759hTWQ=
X-Authority-Analysis: v=2.4 cv=POcCOPqC c=1 sm=1 tr=0 ts=6954f88e cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=CaasDedagTLKq8XiIZkA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: 2gRmg9T2CtM59dTI8ZEY_nGYh2HNiTvN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDA5MCBTYWx0ZWRfX72A04Gk0KfEp
 AzJvtUrrK2MrTAFWJgnT/V7Imjprb5+6NmaWjlrreuZvKN2QP2OpiVrReQ7aO1e8035sbXowo/r
 9NFhk5G/78r7+Svg5sS3N86sStssSAsD5bkbQix1NDuq4avhPCWhxgf334629ySms38F71RqqFC
 qdtLGWfdxYwPF20neRdgRQA6ljHq/hxKmvXaHydES8nOr8IqqWR7GG3lNLjlOtFMIG0aFF0JO1R
 n7jSwrShJtW0JB9s94k7JD7KtzGFUu1+b4CeWnccRRvOTKsuh1S9ckIID94CTj4cXzLFRPCrWF6
 /iI08Gm0KvleFGV9soB2G67aQ8+gqQoxSZui2uQIMQYxG2bsHV0R7XCKyoafIYFuvFPHJPIZhb2
 DUFTLm/fJgDMNE92cO0TubCI0oXYu7NI7z49rzrfP5AV96Zkw30DRLehScX0b1tD/7rdD4cPFJ5
 9On29VfZ4t/WR0BZsCQ==
X-Proofpoint-GUID: 2gRmg9T2CtM59dTI8ZEY_nGYh2HNiTvN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 phishscore=0 clxscore=1011 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310090

Purwa shares the Hamoa (X1E80100) PDC device, but the hardware register
bug addressed in commit e9a48ea4d90b ("irqchip/qcom-pdc: Workaround
hardware register bug on X1E80100") is already fixed in Purwa silicon.

Hamoa compatible forces the software workaround. Add PDC compatible
for purwa as "qcom,x1p42100-pdc" to remove the workaround from Purwa.

Fixes: f08edb529916 ("arm64: dts: qcom: Add X1P42100 SoC and CRD")
Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
index b26246de31862dadd1bfb2a3a93a64ca9fb1c2e8..01abbb980e11152d2fca84507c9587c3a025c39a 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
@@ -53,6 +53,7 @@ properties:
           - qcom,sm8650-pdc
           - qcom,sm8750-pdc
           - qcom,x1e80100-pdc
+          - qcom,x1p42100-pdc
       - const: qcom,pdc
 
   reg:

-- 
2.34.1


