Return-Path: <devicetree+bounces-187872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EAFAE18DE
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 12:31:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF9073A4616
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 10:30:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F5CE25F7AE;
	Fri, 20 Jun 2025 10:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gaVgOEKH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293E4285CB2
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 10:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750415444; cv=none; b=IO3gWGjVU/cIpaXWMKZasAWf+/uSTR184vGon3AVQ+XZzp6K3I9j7EKU6s07xlA7o+7kSptJwnmMdooAUUkQaYVYcMb/VjYVPLst4Hk9Us3hw5ZYX0c6JFsbxN3YqMkwM0pgnEj6I8cuPBTfsfoi0ZKZC8+2E5cGp0vEbH77Sq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750415444; c=relaxed/simple;
	bh=FACaevhjabj+99RoTiQQq1b2jCviQK1t6Im1KybJtjk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ldcmvC1qkZrEIBy803GVEaQIB/vSH3OtErbjTF+MAY4J8+FOXHorsZgtru7Z7CFa25OBGiTaJhLwHv35/xPLySypxR5AnMPKcP9E59ighirQkpdJO649r9IhiZesW/MkdpA3/YG8XYEwhSMldhIEh05XvS/NXPdS+UIW5g0geeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gaVgOEKH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55K760hF005319
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 10:30:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=D4WuNA6VbsB
	h8tPmc7Kh2HUVGz6QFTY4VzYqj8L1/+k=; b=gaVgOEKHZoPuF83f2WXzGvAqQnB
	vlQWW1Xv8ZtbT0YxCQdC/ZmvWPWdCmdHBnq+n5T2RGd7pfoybSLDissfsmtRuE4R
	+ydx8Ml+bxF7+k4TrwvsKnO2I/R10mIk5R/qf8jNHjJpi1KPl9l3S0MSX0AA8+a8
	hDR5Cl2qaN/MNIgkBG975tg8FkEPp+ekc168h6Ytri0QMRDgu+uS6A7l60UCQN9u
	oSp9r25oZnauUhg7RWwonko++1GixvXLouiHAWR7TTJdaSrgWundwsM5HKH5QNDM
	65R8MAzx7uv82FZdN03IF7sC2ppX4K8C5LSozBHpfiDomFeIjIZFl02JXAw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ag23ex8y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 10:30:39 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b31bc3128fcso2339695a12.0
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 03:30:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750415438; x=1751020238;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D4WuNA6VbsBh8tPmc7Kh2HUVGz6QFTY4VzYqj8L1/+k=;
        b=w1Jh4jcXNe1SkK/xWhe+SG7OEK39RAmjfx5V8qfHhl5PdZIhxYdMslWjCdTRAn2ZcN
         FheDIdV7RxABcT1DLFV9HZ8iEd8wxZpbdkuEVp2wekbKxtvU7m5dpxQVxP9t6xQ5YDL3
         I2P5IhTFYP46vaGYrRMG36ctxxh9ssQB4Yorcf3fGYsZuMjN7W4XXmqPxNkNk9MHYcV9
         n5ZXNtiDaR8SaParwr4LaTtlV3R80C6RoyWBiwYcds9yidPGVraG1c1bBuJD1pYfKrTI
         kh/ed1MZjJyusgrYMjdxfJdAlwZ78qKG/VuzUW2DY39LRAIouBYIUjUIFGbWYnohHfd+
         jUsA==
X-Forwarded-Encrypted: i=1; AJvYcCXY8Ak+fqEkfr5wecEGOsa77oxXyxEcNsDfSqX8u8DlESx7kNoVH3SLKWlIM0GYLrHZCiAUNNCfcxWQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxfut4MaF/nnHFUL3sBzwIJ1OAg4BHtzBYI/DvZh1+lSUDLEmW7
	tieUfqkCYPQZa4ATSY4oIzN+m1p1rB6gKi1cfvuO4ZCeKmvSUp+/gJHtufzjy18tCtKx8mbNu6g
	6/cfPPHBkvHeoyjYTXkt89peMXRVjo/1fJsF2Mx11ldhhj+GO6+DxZ2IatIJe5bdR
X-Gm-Gg: ASbGncsvUVDBskXXyOW2FzCWhH/4brd+EY7/Rl0NiuDpUimmvsK0misHXUi2S1ZzjcQ
	cKeswehKn4sQIbRn7iwkWBB4xQb8V/b+IXUGvwdto95cZXAab2lk2j6RtWdSb2vMwFnxMLZ3shG
	OnTuhuZDVfQVDANag5DYfCzFRJztGbtXmbr5UYQqFwZPpgiFJZSxD5LZh1eHkxLZLfr3MoCUyf0
	vK6pU/giZbX/SbtmJeFyfW7o8ifMfWu7IAlkouK7L/cpOsa5fzHjPo/3PSUp4hO3ZrhQz3U3M50
	DLiwr4hM4QiIoTAxPPcqKdHb+etdiZSRbbYycZevW4h540hpcxcRGoX8DW8=
X-Received: by 2002:a05:6a20:7350:b0:21f:ebfd:def2 with SMTP id adf61e73a8af0-22026e4f496mr3560297637.10.1750415438496;
        Fri, 20 Jun 2025 03:30:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFsRepHQERqynj9bksMS2WBRfE9QQUxy9vlASK1Gx1FVkJz/k4AGWV4kq6UMQPyMo0LynP3AA==
X-Received: by 2002:a05:6a20:7350:b0:21f:ebfd:def2 with SMTP id adf61e73a8af0-22026e4f496mr3560253637.10.1750415438066;
        Fri, 20 Jun 2025 03:30:38 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7490a69f3e2sm1651347b3a.159.2025.06.20.03.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 03:30:37 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
Subject: [PATCH v1 1/2] ASoC: dt-bindings: qcom,wsa8830: Add reset-gpios for shared line
Date: Fri, 20 Jun 2025 16:00:11 +0530
Message-Id: <20250620103012.360794-2-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250620103012.360794-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20250620103012.360794-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: aFfv4iK1ocl_pN0MjWaYoPm5GyuYWcNL
X-Authority-Analysis: v=2.4 cv=edY9f6EH c=1 sm=1 tr=0 ts=6855384f cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=WN4HfKPq_xmDaqbUiLYA:9
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIwMDA3NiBTYWx0ZWRfX3l7aihJSjdtt
 gjzxhU9MrVctDVFK6aeKc3kUvpqeoloOqVGMg/kxUuvNh062/FHD6k8pL+Fg7P4e8mpQrIyfOmt
 gZJ2khdR/wzX/OBljbVvWPyEvcMqyHxpSLxrR+u7PwlsQCS2GxmoOdjEDRTz5tmvwEvcJTed3az
 3giTY/KODJI94oLUC2SGkrpa+0A2Fn/idqFl4l79OkgdGosko1MeUSDXgV/xJYoK1TqRer2xi3z
 smv/LE0FXW2DY/CM4lQ2upO9KsbxyUqlc3mYYgH7UKcex5KoQnwj9Gq8KVsiqW0UGOKQB19fSaq
 jKLkfC1xch0Z0UmuFXuLUs97EnxBOQugd6WfPpE8sYlyAgGBTWc0NzE2uJMRWZ8TV/I7n511KdO
 +tCf/Ztlw+phZrqxDrXuOOE6ptW+iiKEHx3qGKY2WdkoskW+bT//3xDEIYNeGN00SOUdTaRo
X-Proofpoint-GUID: aFfv4iK1ocl_pN0MjWaYoPm5GyuYWcNL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-20_04,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 spamscore=0 bulkscore=0
 impostorscore=0 mlxscore=0 clxscore=1015 mlxlogscore=999 malwarescore=0
 phishscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506200076

On Qualcomm platforms, like QCS6490-RB3Gen2 and QCM6490-IDP, the
WSA884x speakers share SD_N GPIOs between two speakers, thus
a coordinated assertion is needed.  Linux supports handling shared
GPIO lines through "reset-gpios"property, thus allow specifying
either powerdown or reset GPIOs (these are the same).

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
---
 .../devicetree/bindings/sound/qcom,wsa883x.yaml       | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,wsa883x.yaml b/Documentation/devicetree/bindings/sound/qcom,wsa883x.yaml
index 14d312f9c345..098f1df62c8c 100644
--- a/Documentation/devicetree/bindings/sound/qcom,wsa883x.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,wsa883x.yaml
@@ -29,6 +29,10 @@ properties:
     description: GPIO spec for Powerdown/Shutdown line to use (pin SD_N)
     maxItems: 1
 
+  reset-gpios:
+    description: Powerdown/Shutdown line to use (pin SD_N)
+    maxItems: 1
+
   vdd-supply:
     description: VDD Supply for the Codec
 
@@ -50,10 +54,15 @@ required:
   - compatible
   - reg
   - vdd-supply
-  - powerdown-gpios
   - "#thermal-sensor-cells"
   - "#sound-dai-cells"
 
+oneOf:
+  - required:
+      - powerdown-gpios
+  - required:
+      - reset-gpios
+
 unevaluatedProperties: false
 
 examples:
-- 
2.34.1


