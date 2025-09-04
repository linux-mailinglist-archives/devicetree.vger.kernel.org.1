Return-Path: <devicetree+bounces-212716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6F8B43959
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 12:57:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CAE131C80222
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 10:57:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 168D62FC02E;
	Thu,  4 Sep 2025 10:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FTatAGbY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B2492FC00C
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 10:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756983412; cv=none; b=pmeYdNuEmvVAL/utSV24sQkBA9oAm18QqLHxR7VtdpwsVxTom5MFY5mQofrYvlrBOsif4BgGkki7FP3ml7CIA/e7CuWjC0lduMDIhtj+z5dWk1giqrkGaNi/HVsUMCeqb6dDiLWTFqPRK3DOcK6DJzu1LEmjs7YKmgdqpKdrRJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756983412; c=relaxed/simple;
	bh=HG+b+jRIRTWPpc1sxXtE1A4aG886oTSQcaj4r4e1v4U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GAF1jzlOABLOALw3NJWs1WSDITya4fPempS1GIuR63M83UuMRTJ47bxVzLlHAdMIG9kQBaESSnl6R7Ixhy1afajq2EmJk5h6z6uq2eW/NP5Xh3P2O2vlmvACWnvVSyhU1LF81Cqp8Jta8nQlW4DP+w+Z6HLUBwEV1nmZ3uYmrg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FTatAGbY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849X946008136
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 10:56:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=XfwpEgA5iMz
	nAO8LzxBPMwKlKMUGeLCboiF0FAzcPH4=; b=FTatAGbY3Z50wOqnOaNxgxBKGDx
	8WZwFlE2e3jBv3kAkbBZ9RUWRj4sZCB3wmhSkfVYbnsp2h3XstMa3AzLng+2+9w1
	jB75pqT50tFfAUFTMqw0BFxqF/L1oQ995AZfaStNCYTngCkhDUrvRdlTYQRs89jh
	zuW6YZxGrWIxP8hQ3gBBmCoDGw3WMTm169Wb6PCYBX+gZ3XV7EbWbvTjEHT2DFed
	S8fDajpAfMLtvkgeqtUTTEpUfOx3USpfxHQf8zHag34XWcM2ssXQJRnXkDnGD6Ry
	+PvTMPyRcmghNugU0smm1QKYkOVWQAqS8DIK51eQU3YVVHOPGU0ibFSl6sA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjq5u3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 10:56:49 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b335bd70b8so15847361cf.3
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 03:56:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756983408; x=1757588208;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XfwpEgA5iMznAO8LzxBPMwKlKMUGeLCboiF0FAzcPH4=;
        b=AY+A6YjCgn3SO7uOwtFq7pofu7Xty9DZOXStIhc241ptm3t6EtgGM0NT6a3p5tih+r
         PMxE2JgiViH8QYRtwJ2awKzRb/c8B5zG1oufGcgpcEa6dIM3nYvoVkQKZMu83VUgVBL8
         rKo5w8LRzHjDbYHv4VfPDeG7/oOaXHObpbSrdrrOO+nCqJHy1qmDhA/Pt870BO8d/7kX
         +dReQemLY3SBNK6pPycT3d4WWOfAegDdo3TaZ624LwYFUfCDCEsSfyky2fSiEnrrP5X2
         fMs3x/9mFY8SCutugOgrL5Jyrt2Mka5K7VgbXPzfyRc9vuf3aONS2tNfW9yuDoffLgpo
         OXFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWeOt3fGx5QSMLyfwuDfyRSQUUGqAstwiCMjA7lNTccZeoZ0lFamLgu8wumBfMVy3WLXiGBz35kDKN7@vger.kernel.org
X-Gm-Message-State: AOJu0Ywf45CISWBk15nG9BJ3EfouglXMx5OdKg4rBXGXLlVKi17174v1
	8fM5rQBHKI3BR3U3KNs8APr3voHICo2/J6ugh266aPQAHarSauJvJeHCfElONaOzojLk81tyUVX
	anIqigzGWBsaQH5VtjJT3ajs9D/mBGZ/EFOHX4cMU2u7y0THpgk+2FKTOR5WQf8hu
X-Gm-Gg: ASbGncvYySvKbjJ+EXujQ4+OsE1fFTed5Hl6K9jSUVEekNjV5fBgWfMWPS6XBf1hSGI
	nICLQksTB001i2ApMpfuhP8D9h/CZ7+vcBqkgq6jVlFcSsFU8ei8oHN0FW0xZON8L26GvQbTY//
	ToCbUEvGqoOy5Za4w6YNb0XFNPp6Aum8wW7Avb28Jzhv3/Z3tgQwTILTLIR7updMoVBR9eYHEeI
	yJOH4jbA5EYRT22XRJ++jk6LwenFW42642PlnyBxFrxWSyqe+vCB0smQkU9dwzLQhERs+ue35xx
	eMmLGmWRrTHqQzDLv9q4nLSA9O+X5GQMOdzvAAm7dK5i0SujMYMBbA==
X-Received: by 2002:ac8:5852:0:b0:4b4:8f35:c908 with SMTP id d75a77b69052e-4b48f35cb13mr55843891cf.55.1756983408445;
        Thu, 04 Sep 2025 03:56:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMXspTwpY0S0bTLaJEpZgt7pNOpeSmQyZlUtp4ZrGY6tTLhs9q4+WmumIbVs00Nh4PBO5FNg==
X-Received: by 2002:ac8:5852:0:b0:4b4:8f35:c908 with SMTP id d75a77b69052e-4b48f35cb13mr55843691cf.55.1756983408029;
        Thu, 04 Sep 2025 03:56:48 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d0a1f807f9sm26462334f8f.38.2025.09.04.03.56.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 03:56:46 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 3/7] dt-bindings: soundwire: qcom: deprecate qcom,din/out-ports
Date: Thu,  4 Sep 2025 11:56:12 +0100
Message-ID: <20250904105616.39178-4-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250904105616.39178-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250904105616.39178-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b97071 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=9b2JUy4lzbIbXjLhPvkA:9
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: I7u9PWrTbyMkTuFVIA90xHzsAYKHU1ns
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX8C10NZctxm8q
 hKlS07LH8CkiKTqFHdk56bn/u29uqalFEPCAWN8T7Nr6pvwKGoaIrz0+v+dgLE/yNCBRjEQj+Ae
 ge2Mg/pSsH5rYWdBRaXiwb9lyzQTrvZudfDaYK0/obtSZ/gEa0+57KwvdPOR19zkuFcpSyXXKZ5
 KqLs4vptF2Kmc33nwvgnjDUxC2/4L55rFvq0dMcNSCIGX5aR5RcXupLXTaRXbIHaLyoF+wfXJFY
 qlpZzkSf9EZGDNlH58lIzdx5T3OB6y29bcZfoEmI6lfHTbZ7ebC4VrS6LCrBhZqSIKiLPRdDVUK
 Ssb2Jjlw8LIHnW+RT2Sjcrb0K3Ant85wBjlMUIgRJwlfUkSPs6NVVeP5el8kKPlG4pe2005hn1N
 XPTPb7YK
X-Proofpoint-ORIG-GUID: I7u9PWrTbyMkTuFVIA90xHzsAYKHU1ns
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024

Number of input and output ports can be dynamically read from the
controller registers, getting this value from Device Tree is redundant
and potentially lead to bugs.

Mark these two properties as deprecated in device tree bindings.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/soundwire/qcom,soundwire.yaml      | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
index 95d947fda6a7..7ea491f7e828 100644
--- a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
+++ b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
@@ -73,10 +73,12 @@ properties:
   qcom,din-ports:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: count of data in ports
+    deprecated: true
 
   qcom,dout-ports:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: count of data out ports
+    deprecated: true
 
   qcom,ports-word-length:
     $ref: /schemas/types.yaml#/definitions/uint8-array
@@ -223,8 +225,6 @@ required:
   - '#sound-dai-cells'
   - '#address-cells'
   - '#size-cells'
-  - qcom,dout-ports
-  - qcom,din-ports
   - qcom,ports-offset1
   - qcom,ports-offset2
 
@@ -257,9 +257,6 @@ examples:
         clocks = <&lpass_rx_macro>;
         clock-names = "iface";
 
-        qcom,din-ports = <0>;
-        qcom,dout-ports = <5>;
-
         resets = <&lpass_audiocc LPASS_AUDIO_SWR_RX_CGCR>;
         reset-names = "swr_audio_cgcr";
 
-- 
2.50.0


