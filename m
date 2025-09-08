Return-Path: <devicetree+bounces-214217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EF5B48697
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 10:21:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 30822188C671
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 08:22:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3411D2F0C61;
	Mon,  8 Sep 2025 08:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="laV/wtme"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E72F2F0698
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 08:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757319639; cv=none; b=rUgvh7fb+TuCPnQ8bLmWHJ98gyPPYC7fq9uVJbvwCTeFzdu+/jsJkqb9BEIvMiq8pW+gxeoPRssY2/jBFiXZnm2w0UCa/fF4XaSo4u4zo1oTm1G4AXvxzaRshqtQrB+Z88gGyDvGiN2UMOc3wWclFPBFWRt/5cjmltNHxmJK580=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757319639; c=relaxed/simple;
	bh=uCabQVoOFgq1iT3EqXI3YF5nGk8yhaFHTlv/+rDaZ34=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AtVwcqrzTIZ/qMPG8yFdPIuRu/Hg479f5cAXu/hn8SQ4elKiLUU6vqmy8mK/VREEUVE80+G6QOsP7C17XyfQeIS15VPlg6anXUfAi09ZG+yexFhq8ricc9s+CcCAb1itHab/i81auYtdN4ooKjbWqOmBPyc9VYVA8/a+U80bcro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=laV/wtme; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5880P1Ja001510
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 08:20:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/fYjgV0Vl5rUIq58+6skm/bOKinBzNn1z6h0/KEQ/Qc=; b=laV/wtmejxmrY2Yu
	PMgJUVmdOJlKq3MgpznXRTu54pF/ltxlNQYsfeJXsYDhOv8aP57vBuAUkFBlgKQI
	9r0vdzrPD2ParOsdSMfhT1NmG9+fdGDYoOf0MIaTX5mOEetwtLGVe57FjO2JRb27
	GevzX1txTbu1YUZI7w5hUipCwIC3ds1rZ7lbFQ9vzwaYItpTciMMUKEdRey0va1M
	3tsvptHLW7cpKxjRKT6Qgk4eccmRbOg+KHRWq2SsoPhKtQqYPs5ktz3DmYCUgdj8
	nSlPCyNhABGnlcB5LFouHD0kr7hbnkdPrwhd/uHflhsJ8Xo4TFyjIW7LdPOQonUK
	kN3Iwg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490by8uvd4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 08:20:36 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-244582bc5e4so50247075ad.2
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 01:20:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757319635; x=1757924435;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/fYjgV0Vl5rUIq58+6skm/bOKinBzNn1z6h0/KEQ/Qc=;
        b=embAgzD4V8AvCG8BIwSCMEYWr2vq4hpKrzDMb1mkLOWZpjkk79zkfphZBf8b6g6NIc
         YGZyc/o4P7861FqjJckLWFfMMnTlxke8KxUP7dG/Okj9TYchDGVPuUv7LnFAlqcFfgsU
         o7o7PLGWBy0FFG8+xZ1XaaY34wUQErGqPaBaOx0AOzHVjNFm3rW7xDZgkW++DaewI0Da
         VeptV7RRUQbNX9eleFYJJStuBQsu4atLS+lcNSxNJCTxkDsSMeVTFjX6jVKmuXdLIxpL
         U1vHZnSGoTtNqGehFaP5I7azX0gxcoxFUA2B4uvGetEVl6RKflJGswtF9pmhudIZM79T
         siWg==
X-Forwarded-Encrypted: i=1; AJvYcCXiVs1UHatlbvL+JJSOFLi2/2zZc9ZKseLuCSxn/ULMP6FzVuIB04iDrCAQj/X1JlkR24FkDAnAycrb@vger.kernel.org
X-Gm-Message-State: AOJu0YznzYTO+qxoJKD5p7n6hyfdastmvtvTYZZLGhnK2VogSjjgC+c/
	jdSOdIu/GZuFCOujJTY3YwedLwIUkidtNqceF1Ng3ekc/TrKxSb7xatoG0zpgCtclbd7MDdlcT5
	nORhyDR8rbcLBAw6hsoak3swjm3c15r7uSp4cAtZLgXnjcr9+/xfXA8zTM0qt02Dj
X-Gm-Gg: ASbGncu55F/pAO0DW+8+2Yz7K+gocIMReuZMuZJd2lER2Znas7NuXCQTwmUQ/EBMeKr
	pBGtB27iDyLVegoaZRWdPghP6GTSwwBg0w+cQZRPIFOPaIclVNapukAxpBx5Mr4wi+/ODxIBLI6
	4vbQB2z64kxjRhYcUEdzxyz/R275WO7TmDUTTtYsPCBm03uqey23abwE61gPl4ZGqiWPLDX2OPH
	pPruEPJ4bApldH0zBZi0aWVMHGPfaR7dlLpCMZiFOcMVL4YVR/i9aA7Oszp/kg7EQCokEukUvm0
	+/DwHzu+p+cM3y4jD7F6tCFp9AP8F6TWjgIQW5C9shsFi6ZX4AG0uxLB4lV3JLFkSy/T
X-Received: by 2002:a17:902:f68a:b0:24c:9c5c:30b7 with SMTP id d9443c01a7336-251736df08emr101411325ad.47.1757319635296;
        Mon, 08 Sep 2025 01:20:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHKrtFSazAkcLdqZ1WPZZaD95ov6pQ8rl95v1Iw+xmoRmwhbaj9ZEWSRTt6f3p2ZxSAOucybw==
X-Received: by 2002:a17:902:f68a:b0:24c:9c5c:30b7 with SMTP id d9443c01a7336-251736df08emr101410865ad.47.1757319634799;
        Mon, 08 Sep 2025 01:20:34 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24ccfc7f988sm104852845ad.144.2025.09.08.01.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 01:20:34 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Mon, 08 Sep 2025 13:49:55 +0530
Subject: [PATCH v4 05/14] dt-bindings: eeprom: at24: Add compatible for
 Giantec GT24C256C
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250908-lemans-evk-bu-v4-5-5c319c696a7d@oss.qualcomm.com>
References: <20250908-lemans-evk-bu-v4-0-5c319c696a7d@oss.qualcomm.com>
In-Reply-To: <20250908-lemans-evk-bu-v4-0-5c319c696a7d@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        linux-i2c@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757319602; l=988;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=uCabQVoOFgq1iT3EqXI3YF5nGk8yhaFHTlv/+rDaZ34=;
 b=IhpJ+58y31LYj7Hpt5kOaw/sdFIzhsHjVVE8uCnp9wndKJancFej1ClINAR6Q9BToUuPIreGg
 yJhq6NN1fIjAWfT8LoDh78/Y90MXDnxM4pV1qiyr2xupVu5h3bPa2PO
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Authority-Analysis: v=2.4 cv=Yv8PR5YX c=1 sm=1 tr=0 ts=68be91d4 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=phLo9lBTfqDeDZSmmEMA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: m7Q_AxvIeaQxZsof3oIxhC2PjDXriMTV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX+EcbBNASzTI1
 3DQGTdVEuu/hCV8OSWW6nHSLZI3ikmxUt7VtZQC6b94gRvpr9+WBC4xH+wGpd1WqJoBgk5Ndm3H
 UPbAWVz+/dDoZt6C8UxFjnZFJO0TaIkwMxJoEajCVIEt8onB2J+3QOWzczrtHpN67OjQKEf0nJt
 N0ANcJt3DdRF4y0eHxnqi4bjcYDA+ADTNaFu1yd90IdqBYbmnY34rTvxM4SiGWq0McDyxD5GzL+
 EfwdKD0V8pyUym2OUkXzRWwGLu9CdOwHTHV0uu/jPYUwx0jdzltXR2AKlsDGB1rDaNhUxAfkl2M
 u7XbqnlQZPT/PKa51vVHV+8n/CG1oUBWPF68ZhsUImPdYndgRTeFNBJcghr//VwFOY/le8PAeSs
 JRSiQ5qy
X-Proofpoint-ORIG-GUID: m7Q_AxvIeaQxZsof3oIxhC2PjDXriMTV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_02,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018

The gt24c256c is another 24c256 compatible EEPROM, and does not
follow the generic name matching, so add a separate compatible for it.
This ensures accurate device-tree representation and enables proper
kernel support for systems using this part.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/eeprom/at24.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Documentation/devicetree/bindings/eeprom/at24.yaml
index 0ac68646c077..50af7ccf6e21 100644
--- a/Documentation/devicetree/bindings/eeprom/at24.yaml
+++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
@@ -143,6 +143,7 @@ properties:
           - const: atmel,24c128
       - items:
           - enum:
+              - giantec,gt24c256c
               - puya,p24c256c
           - const: atmel,24c256
       - items:

-- 
2.51.0


