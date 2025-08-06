Return-Path: <devicetree+bounces-202287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F56B1CBD0
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 20:19:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AFF5D5654AA
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 18:19:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEDF829CB4B;
	Wed,  6 Aug 2025 18:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kdcftEr8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B1229C335
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 18:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754504338; cv=none; b=RlJc207HeOygXNweQDhT1fVuQh1JOfk8i33mLebGB6XVFYwTlZcfuDJBjhc0m82V3OC1AdCnNS3+zoA8ACu2Mj+s1SAeZ8XIlJPkXmL0Ghg8vQ9iFXHX+5Bhwb564yr+4oJ5nw0UjlSdI50PaRFbAyNTXELYtrTNuaORXZPF8hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754504338; c=relaxed/simple;
	bh=NM5eUwufs9EQvxyH72fi6ouw9HbAH6xIggTFFBsajLc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=I3GUonuvwAHgBysRm4bXLRGXZHRoqWgv6JP1ets9bYG4R2fQuA0AwxwHXBWoH6AzaVVIttauToOvywFuplwyLVbM1aaDNOidj7UXaUyE8ufismhpzoafletc8i7TfEHW5CKE5klMy+316/8xPQwiD7KIQvNRiHA2BShyLKoMHRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kdcftEr8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 576D6fGG013273
	for <devicetree@vger.kernel.org>; Wed, 6 Aug 2025 18:18:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=AcwNi5jqAVS
	vH8zvGbAgdOcfk3Kkt+F28Tzsi0VVD74=; b=kdcftEr8krSd+IzqJ9tRWKlU3AS
	gRU8EIpWJU+T5GyInolsyLz9vx9jtKBHu0U2tEXQbsz7TipjNY2fO+V0YTj8tevr
	J0nx20qfMCxVgHrV8zjvLFyV2l/5200ir+qfygh/s6Jqkbb3dFA835jMQVKHSF0u
	zZFe47+zJRxOEBoTNniJLgI7NDE3MY2r+aXQHzyf2RfOKIPDcz1XYcsA9ooMAv/E
	aGrnNMAYQcQAAwyORO6VjZKURSeL2TrXcVcbtzHYFKpKMZSvKoeIiiQOTj7IO9A4
	9NMsakDaknLq6BHy3iuJj0Rfpd4KqZ9vpnuoZfITnL+5xMEDviBZoTYuLGQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpvvuph3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 18:18:56 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b42464016c3so78369a12.2
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 11:18:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754504336; x=1755109136;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AcwNi5jqAVSvH8zvGbAgdOcfk3Kkt+F28Tzsi0VVD74=;
        b=aYjA91sVFwGVLC04Yd4STLlTpt18s1Emq68AJazRqMdadeTYGOH/VeJ/l6u8Lt7pNz
         8kjrxyBHnxr7Q/V2Vf5uQDrf31/VFDUzXpajOTGrmMpO4+S28ZvsVO8O4DbL69EZE5TI
         zVLqKe4xfyKaodHeIBthYU9hQasDwWMY2rhI36jST4kqaM+0PPQheYkuETbfcEDqVTNa
         dbixQ17Ekox3sFKhGGY+bokcbX9UthBDYS+8Sn+mFrVS2+SPBwFtPWaF6njivLoYELVZ
         Bb6UQFZE4lUJz+4SBfg8fYRJjPPfzuyKt/gzqsUHTrEtmdek9BJIibJ7llg+Efuf1+6N
         dTmg==
X-Forwarded-Encrypted: i=1; AJvYcCW6KknWuuIHl2HfO5cFa6WMXyznVDZr2+UTkG3iljb73cLMNso80J+iuGfM2nbE8e+Fugg8tfMsTdxl@vger.kernel.org
X-Gm-Message-State: AOJu0YwCQclEwxM2Qu96XCUrqChdmT6GT5Od/jNlC+wDljgDXEI6U+K6
	6qi/nmsoAvvPKE8RxsTiw46I+xasTTODXR3lfOqyxEzd7UvrfvE7iZHtTOtCCB9MPzNxBz3FcGo
	lLgC3HB0tnafEZmyXa2BHrfozQUKxj9ZKz5tJ4piqp0lB6T0J2LM2pNIiwCFBPtBL
X-Gm-Gg: ASbGncu9/3oyziuQUd2qFEN9A+juY2VQYGDhspfPX+mmpjnVDVDUPlXj9vyPRv3RrCJ
	L3MWf3uS448hvqB45pAfmXODPTzUmHWNwXKMxhkx5AeaBnqBsVNgqzoi5NDOOf6qTtyR1dxzNxd
	CcY5qsnWQZg7wuI2YdfZFHJGeO1r9GWaamYh1waYLGr8bTqlOmgoKBdG7X9D5pIoBZvzfEKOL2K
	mMJHB6JmuozS4nBjP7otRd7oLE40mCueCaCP46Re+VHuodbkY+3TXgzZuadugG2RYaG5264iw1o
	GDV3eIqsxCWu3v8isNgjeAA5OoUr+2QxqNDccq9kH8DgGIoVi40FtPwkXvapzuPu4pkDFADU1R2
	o
X-Received: by 2002:a17:903:13c8:b0:236:6fbb:a5f3 with SMTP id d9443c01a7336-2429f54c7eamr61943655ad.40.1754504335617;
        Wed, 06 Aug 2025 11:18:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFtnljZKXOMWdBRC4f+HxW11Qf1guDBZHmC+q3fOK4zEG7lfva4EPwAY+d9RnC5k2MlPPZAyg==
X-Received: by 2002:a17:903:13c8:b0:236:6fbb:a5f3 with SMTP id d9443c01a7336-2429f54c7eamr61943105ad.40.1754504335141;
        Wed, 06 Aug 2025 11:18:55 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31f63f36311sm20235186a91.34.2025.08.06.11.18.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 11:18:54 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/2] ASoC: dt-bindings: qcom,wsa8830: Add reset-gpios for shared line
Date: Wed,  6 Aug 2025 23:48:17 +0530
Message-Id: <20250806181818.2817356-2-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250806181818.2817356-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20250806181818.2817356-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 4b10k6bp30FnfJGlKoqQXdCgy2FILo4k
X-Authority-Analysis: v=2.4 cv=GttC+l1C c=1 sm=1 tr=0 ts=68939c90 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Jjn-4_SfM33dySwp1_gA:9
 a=bFCP_H2QrGi7Okbo017w:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 4b10k6bp30FnfJGlKoqQXdCgy2FILo4k
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfXzviNiQ5VmQ69
 uhk1W4BI4R8ACfooOtuMMbn9eBSY01yFTy+KR3aa+WY5ETJhi4CWPSrRnUrvOTuj9Jhoh1L2a3s
 APn7ND8DXKFxjxZyc1pL4KWmkcd8msy/cRORE3qGZ5EHSFvaC8e7JFUrL86+YQYgD2Kqj0U/KQf
 /uIjbISqir0UFB8cCD+mS19AJ/Ky8bid4fqg6FG49pBaJKvSd26PnlYX6WfAC/Kjv6HWbkaLzJT
 PKWQ2wzqh9JNvwQwaelc04Drz8OeqI5F//PzaE6CRvrYwBzxZdfOrPu5tM5mHMjb8OPoMyQonTA
 nA2iVRG5sk9us2rfvphPDThu8tkM5oSFG1rLyRCkwihbfo2nN50GKRxu9ETs5Yt+V2m9ucqR5s9
 q578VA7f
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-06_04,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 impostorscore=0 clxscore=1015
 spamscore=0 suspectscore=0 malwarescore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009

On Qualcomm platforms such as QCS6490-RB3Gen2, the WSA883x speaker
amplifiers share the SD_N GPIO line between two speakers, thus
requires coordinated control when asserting the GPIO. Linux supports
shared GPIO handling via the "reset-gpios" property, which can be
used to specify either the powerdown or reset GPIOs.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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


