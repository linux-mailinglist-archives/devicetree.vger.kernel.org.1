Return-Path: <devicetree+bounces-207306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BC3B2F19D
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 10:30:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3806DAA4B2C
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 08:25:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 662602EB5B3;
	Thu, 21 Aug 2025 08:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iNGM4qrm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57AC82EA73F
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 08:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755764479; cv=none; b=J4Da4xMBM1Lr4cKhqSc9R3vE4tmNGFK6US6tj9TflkxOC8OAiJaU0PzVHz9qaPv3tm++lmN/nlYvx5iQKjxgZWg5lABqvc3jzXhmD8tgXMnwbdWnpZSnrZsAYq1kK1qmKnYh1+xtp8ZP2ItmHfbxNExQVpBSarQXvGpHC9UQQHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755764479; c=relaxed/simple;
	bh=ES0C/eHUJ0vZMSiE7e9k3eopudAsRoEFpDfAJn+GlGw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XW7AolH7lZcGWCIw7UnMaejSH73JzUD4t9uFJhRnW2mlEKNb3KiD1TBUVG3M0SJg1ZA9V4zCuTjfDjf4qgvsjNCkX7lr65WZDBKTGA+JT/95HcI3bQPG+jVmfP0GeqWAHp+YEOSSlqo58aly4XcIgGJS32XFOmt3kQaSmtPLeN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iNGM4qrm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L6Zijq001012
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 08:21:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jWgEnfKM2T8SN4ZowpfF7xlxhdEVJCQ/+pQl9CKBY4Q=; b=iNGM4qrmsZwkB+zr
	f5CAp2WyI/Ta3V6F/HMKUIRdVMuNekopp0G94rFqhSK+cEUGtmlQui1pJ04+rNZN
	CgkdpIv4CjlAz64A1EooPwSsHrLmZBzuA6KDRpFg8KVYbwqnPV7dJ0ZZZgrNT2dN
	PIT51M+iHe2RpBlCLou6+obH8lVE7Fov0E1zJbyxgPNTSIp/EOSabCreqq3F6yyu
	40nNhhbfZWie/eI2Hyxef/TvHpUj9YVtL7/mf6OuVGVh2gEwYcKFB9PefvuV7f58
	quUF++3+agg9g9RuHoUgqV5zdIYmMtMOpfTjN9gG1OdHiD8yD0FgZDHV80axUhOW
	bDBGjA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52dmkxp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 08:21:15 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-76e2ebafe0aso800767b3a.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 01:21:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755764474; x=1756369274;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jWgEnfKM2T8SN4ZowpfF7xlxhdEVJCQ/+pQl9CKBY4Q=;
        b=mPw9beJvrv6BtLEzOJ5lklzj0YD2Kr0GCCKiEVYhKli7JDu5EeGN0G4kyKtcheBR2k
         qY+HBEIlVEAPUB+zpzHwZmPKt5DZaiv0g1iCmXSXBfOsC7IVz+cGDb7v75SmW6AP2Z5X
         pTMufpCdkRoASCTpPBjbPakn3auXZRhWoPMMojOpHVFJAvOQCSPmYkyADRGihpBHE5Cu
         NnvjWF9RYEJE6vr8/OZv8tj/Qyf9EMOv1g66qIg1suoBFnAVp+FV4WYMdbA5ZTg3+Trd
         AMDn1FfvSRWAYdBr0vahy1YXBWOVOllzUTNUo0DUJ/6T/FxlGSj6Qgtq5RN/k5H5dT6h
         YxUg==
X-Forwarded-Encrypted: i=1; AJvYcCW22YXea5xiEoZK1gd65+ErqyFh2exAFlQ+JYbcvLG/sAag4HQ+uzr6U4r/72j6dNFtAgyvrKzbSHxq@vger.kernel.org
X-Gm-Message-State: AOJu0YzZzJsZXtKcnQblorjSpfMGul6wF+Hftg41lpA1PDtGxgMNYuAG
	VIsseUB/6Ocw6KxF52KFqMPGpZdtKBVu04RokpLLmWcahvd0MfygaFRRu98a6NMVmCd5YYUjyRC
	vxkyrekB5bVxM5gzRJL+bvVAlMCZaz0G5S3b0aZB5rL1EZ3MsSnOHNVcmQ21Ch3ac
X-Gm-Gg: ASbGncsFgSLF+mvYctZvymVTHNaXdqF3Q8IRB8ZPckimkRaf8vcaSuRdXHyTgjK16Vh
	h0zMkyt97Z21W06+Lwlj5mD5BiRws/9MPffXEqNCJ/W56F0SuYI3nLE51ajqK+CBNF74vpwxJAH
	T5NoFEP06eg9SL+QtSC0dnMzZw32/bMQXSNIAciOhDh+HA6xqAFf8tzhmdb41aB+oTA1XZgVaWn
	+m/qewJtDMAKhwp1OWSlch5cx3bRvNKmLj1IgcbF3SZK0ArO1BPeWXuypqhw1OhlZ4Yg5eHIW0P
	GmbIJt+sBu8FqoDeVoajTRli/BNbZu0xqBKXkbRfiwfJfZnKD2sJLCnPJE7uKMTsjycLpRbfQS2
	WsE6HnFerijaCugmHoUh6LEya1etnNtR46A==
X-Received: by 2002:a05:6a00:1304:b0:76b:c882:e0a with SMTP id d2e1a72fcca58-76ea3158eadmr1981953b3a.5.1755764473947;
        Thu, 21 Aug 2025 01:21:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IExQWvGUYVR7FpRA23GECMY/ZJWDx/O5PjHPa43nIM1xLoiZabU7zXN/xe8IPCGKxVvnekxXQ==
X-Received: by 2002:a05:6a00:1304:b0:76b:c882:e0a with SMTP id d2e1a72fcca58-76ea3158eadmr1981919b3a.5.1755764473476;
        Thu, 21 Aug 2025 01:21:13 -0700 (PDT)
Received: from yijiyang-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7d52c7f2sm7468238b3a.87.2025.08.21.01.21.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 01:21:13 -0700 (PDT)
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
Date: Thu, 21 Aug 2025 16:20:22 +0800
Subject: [PATCH v6 1/3] dt-bindings: arm: qcom: Document HAMOA-IOT-EVK
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-hamoa_initial-v6-1-72e4e01a55d0@oss.qualcomm.com>
References: <20250821-hamoa_initial-v6-0-72e4e01a55d0@oss.qualcomm.com>
In-Reply-To: <20250821-hamoa_initial-v6-0-72e4e01a55d0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.15-dev-5bbf5
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755764464; l=1177;
 i=yijie.yang@oss.qualcomm.com; s=20240408; h=from:subject:message-id;
 bh=ES0C/eHUJ0vZMSiE7e9k3eopudAsRoEFpDfAJn+GlGw=;
 b=rxPgNDKUD77jdVkhCq3vW6y8IP8u/z9/7nuPRT2Kr924Q5kpi+l5w6bzSStWB465X6Ri8p3DF
 185UGswVt4xBN4TmwwyjXwrNl92sVgUj01xWdj43hv0QWkKYcQRtZZh
X-Developer-Key: i=yijie.yang@oss.qualcomm.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX5WAF3HDEUXry
 ozAZdsULJgQ4bYkmgy40MPqkZ8rnoyDtZzb+5T4rTP8ph8QhDx47mMVoNTDujsIBm6At+t0mBD7
 juRUW5Az5t81XdhZwDFHw3A7YGF8rbxPoSN3Q9MOfQDx8UYAcd7J0KrO638xVStAWFcfNz2J0fI
 IPproy0+E0T6ZePfNu+l49a+CnLNl6cmrRmsR/axNOX7zeqd+ps94WjAEZKV2FsPSvqkuuVnK3G
 iwuj6WNi7vzgBWhCZBLKVyq/lZUN/RJ2V5hCQ4RB+qmJDfn+v7+QvQ2qkZ+NFHymTpXDrxJ/Vqw
 iMI+bcDPD3DSWFf+BkGx5uLT5alFk41fyCWv+jxl7XcVM5lypUKsVU4ybF1QjrfHJMw14Hw6E29
 fI1dyADj/CTQaHiTcLSYKmstbQvPtg==
X-Proofpoint-ORIG-GUID: _mZHGLx5w46IqGEMhgjSenXvKq3TmNJV
X-Proofpoint-GUID: _mZHGLx5w46IqGEMhgjSenXvKq3TmNJV
X-Authority-Analysis: v=2.4 cv=SoXJKPO0 c=1 sm=1 tr=0 ts=68a6d6fb cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Bh1HEMNN3wmc11-eFpoA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_01,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

Document the device tree binding for the HAMOA-IOT-EVK board, which uses
the Qualcomm X1E80100 SoC.

The EVK consists of a carrier board and a modular System-on-Module (SoM).
The SoM integrates the SoC, PMICs, and essential GPIOs, while the EVK
carrier board provides additional peripherals such as UART and USB
interfaces.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 55e5eb75af89..6b6503181ad6 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1069,6 +1069,12 @@ properties:
               - qcom,x1e80100-qcp
           - const: qcom,x1e80100
 
+      - items:
+          - enum:
+              - qcom,hamoa-iot-evk
+          - const: qcom,hamoa-iot-som
+          - const: qcom,x1e80100
+
       - items:
           - enum:
               - asus,zenbook-a14-ux3407qa

-- 
2.34.1


