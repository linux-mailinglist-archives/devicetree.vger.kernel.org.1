Return-Path: <devicetree+bounces-224011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74168BC0357
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 07:45:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6C223BE3BB
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 05:45:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1573B21CC71;
	Tue,  7 Oct 2025 05:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GOmEItS6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 749B6221714
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 05:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759815910; cv=none; b=KW3yGLvzCGNdAnC2YVqe9Lo7X5B1jNaz+Ie6bW0OcIEuqAWoRCaakGVpFfRG+XEAK6m6iKDVOaiNRfYrTDS2LoUOUGzKfJvrqEuxBEDofngWZx14lyernpyrSYzBnw3ONJUdtNbAPcr/kfzEyFMrCyzRQj719N8QYxxM2MvjThQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759815910; c=relaxed/simple;
	bh=OUUu6/gerX1YHi0u5e5w1G3QfwIy6Dp/7L+64GjSvBQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=erNvJI5oxVKGGyDRZHa4g3t/61xoUpd3Q6pey7oDwWV6hIAeKn9yudZ9Y5lBp/QtVwYma1+B6znrYFtX9i1ZtatkJ7mK/iPQxsD5s+zxsI3ES5ex3I6RhC7va0Q/dumWWl1TUoJNbJZoUSG2LVHoU1+UFsRD1GauNLFuDIFc6jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GOmEItS6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5972s78H000300
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 05:45:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=haboOX8nrE8
	6yirNHVVxZwV9MxNGuoLfRh/h1+xbQzc=; b=GOmEItS60q0mnXZxKKLGR1rw12Z
	ufyTbKzqgW0qCm/ZS7D+M29MdXZ1MXSJfAoM+PfDOKcZFa+YWY2iYheRaioqKgCX
	s+FgRVWhlWZHHQaTl7pI6K2fqvgQHwPuosTkW2brU141gmYdrRlUZI7nugjTs2Xa
	NQ+I9E0KGQgohMwLVB2qaMwrY9GUaOnMTcrgkzG24cbyIfwPJwFrCc7Ry+DWJho2
	xyBlN9JWSS5Fo/nDwDNcWvnvXzLyKSsLXbvUe3H9EZWeCDDMLo9nz6E+4Kp05plp
	fHiO4+Hye3uxhiODT3r+NsMRuas+jWUcUJvEPsKrvcpB6rlJvcddvsGAfZg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jut1p3du-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 05:45:07 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3383d1ce439so1880509a91.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 22:45:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759815907; x=1760420707;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=haboOX8nrE86yirNHVVxZwV9MxNGuoLfRh/h1+xbQzc=;
        b=NadLTu7XVELhs9IX4URGM0wvvQ8VDdICvsDQ5C16e5WKbVFwS11BWFC3TxlDoY8gWA
         Zf10+xBznx7v0pJBSH2v1TM8SYYcWBW0thd4h7iYotMfYYgq+Niqrq9VzKFubeHBX4dj
         g2z0AP41xnFeEtmuxSMGAX4pVO1Vg6w9oU5xZJbjwBuOM3rLdHTssbX3vVpXzx71LEdY
         yEdgsBdGH8jyH/kfkcdyokC9WcUE9go+k5GrakQPskNM278MJUlshbTaCI6ag1r3GDXb
         kejrJ6i2yEFc8fTc+3TTH5iDH3lTKr3SIvQrSm930mqRipX3o9oY7IKBfr19Z8ET6V0u
         jUqA==
X-Forwarded-Encrypted: i=1; AJvYcCV/u8AlK4KUIr0LGkZ2IRsCMk3DpXBQoDNoSIStab+6I8JfcioYwEHPFPoIjjnArkYAOf3xF/C2C++u@vger.kernel.org
X-Gm-Message-State: AOJu0YzEHgKqwfIMxQumKPRmGAJd19yCsIw/Ol5JHfGpqsLErYvDurlH
	+64iHpwKAXp8qv+28Ep0B36YaCX5Xx6GNUtW37hw/34ZPMZMm5qAl8lDQV9M0hyrzmHW+RrEuDt
	9N713saWLi1/5D/WeCkU4fDayPOVS308LF0+pAeWEEZwZnVd3eoC4YuotwHdMMGA=
X-Gm-Gg: ASbGncubD8Hf0bh/q8S+R2wb9t7YIB6YqdO33dK0C+khPF9eAFLCGiQTycTNGHCyBgL
	Nkn4Yjj88Sy76fMU1we1QWWBlTlhKaMtPWA7mo66NBphmr+6NJW+xQYdRhs3sbbCVBIlXUWkC8c
	oUDDYfXdAw0/jj6+dPE+AM3Y8ds5qucaeM+ExLi2UU9jcK6pZDoPfuV3POUwWwDI0y3OIyw+CU8
	35uTx0m/zr5M8/bzHBLyXf8Q4mHI87rz73A9P35zFJkqiiL8Z5f9WBPOu60T8qHGG7fPpRIOX/y
	ru+1i5C7QZd4RhQhE1QF+XRA7N8ZUx1jpk56Yy8nmZv/iP82G9tUzh3b9J4UjCXAOIB9cHyllKp
	k
X-Received: by 2002:a17:90b:1b0d:b0:32b:aed4:aa1a with SMTP id 98e67ed59e1d1-339c27a2515mr9170477a91.4.1759815906692;
        Mon, 06 Oct 2025 22:45:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFKsGj2BOgSxlhze96cMSKXMXiS5pzEqDmUCSy2lI8W3FBFiISmCnIBYUBPxWKNp8p8yTm7aw==
X-Received: by 2002:a17:90b:1b0d:b0:32b:aed4:aa1a with SMTP id 98e67ed59e1d1-339c27a2515mr9170455a91.4.1759815906116;
        Mon, 06 Oct 2025 22:45:06 -0700 (PDT)
Received: from hu-sartgarg-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339ee976b81sm502624a91.6.2025.10.06.22.45.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 22:45:05 -0700 (PDT)
From: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com,
        quic_pragalla@quicinc.com, quic_sayalil@quicinc.com,
        quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com,
        kernel@oss.qualcomm.com, Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Subject: [PATCH V1 1/3] dt-bindings: mmc: sdhci-msm: Add sm8750 compatible
Date: Tue,  7 Oct 2025 11:14:43 +0530
Message-Id: <20251007054445.4096630-2-sarthak.garg@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251007054445.4096630-1-sarthak.garg@oss.qualcomm.com>
References: <20251007054445.4096630-1-sarthak.garg@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: moXUGl7_kk7kfeehRFuvvR370JblU1MP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyNyBTYWx0ZWRfXxsPmXUHqs3sd
 x2rMmKE+GYkPMygohQLfgn4dQPVTotA/3Ow7pv61c8mD0Rfkn6N1jDFMZqC9IYr+L0je5nvij74
 F/HxNRU1TxBdxaMDUJ72Cih4hy9FE5EiMomqwkRgiEdXqFHnYuyz5R1hWL5PiHt1BQj9Uoaj+d5
 brxTR5YJ1ZcQ7UzL5X2ET2vy4LIE6EN/SYkeeuQLzwwxR9jpEIJa2ZYKP7/3rXDARPn4sXjdTZY
 D117FvvVfqykc25N4ISHHomsJ7wp21AypB4gldtIlDLiJbdHam9caWG8fr1Y2ws+AIFD+XF+jvf
 fW6+kPWKs7N+FH+r7WJJ2Fg6xNDxivFilfz9CIsy7p0gYnG52EB3MQjKH2xZIDN3wxhi+Ha8uh7
 40TsEyYBbku0CGBbBS6tYKaEsCV/nQ==
X-Authority-Analysis: v=2.4 cv=Vqcuwu2n c=1 sm=1 tr=0 ts=68e4a8e3 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=CJ-gMd5DwmXuTr6oK5AA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: moXUGl7_kk7kfeehRFuvvR370JblU1MP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_07,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040027

Document the compatible string for the SDHCI controller on the
sm8750 platform.

Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index 594bd174ff21..027011223368 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -70,6 +70,7 @@ properties:
               - qcom,sm8450-sdhci
               - qcom,sm8550-sdhci
               - qcom,sm8650-sdhci
+              - qcom,sm8750-sdhci
               - qcom,x1e80100-sdhci
           - const: qcom,sdhci-msm-v5 # for sdcc version 5.0
 
-- 
2.34.1


