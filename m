Return-Path: <devicetree+bounces-72681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F04DB8FC81E
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 11:42:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F1A91F2393C
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 09:42:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30E2318FDAF;
	Wed,  5 Jun 2024 09:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jbu9YUaR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F2218FC68
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 09:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717580457; cv=none; b=bAdrULn1+wPz9KU4q6y1HkuNdRYaQNIeJOyMtb17VLw71KLOc3sT+sGmhWIKdQaaLQbb1eDU2rSFPvJJVNuhD+fCa3bw/sQFjClHw6YimKpbv2272xUSNoLmp/HhX98hTLVHS7rTBlQNFZYOv7diT3x/sAsOjpW4fPX/W3DL38E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717580457; c=relaxed/simple;
	bh=Hcboqt/mCTVI1F3jHOS4TQJM3QuLm78ZsIrceEwB3No=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=t/QCFKeC4fs3+vGbbf8A1M1n8YShnYqOAGNdzKW3+w0xQLk68K6lNhVoT62jcBK/ocCVc7S5Ozet6X8IpP7/kzJIArAHNy5QW23zP54uoPzsKjq0TbSY+JFt8Zj6Yvs/SyhJNoDyS2f1mpr2k/ZUFhnaVohrqi/Ye5o8yEPpqMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jbu9YUaR; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2e72b8931caso71979631fa.0
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 02:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717580453; x=1718185253; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N2ukym6a7idvbhiMPUeFxPFQ9JMmthq9JaArWccCKyo=;
        b=Jbu9YUaR4QPToEztJ9P+fXEv2G184YAflRHyH+D8sWxAd+Z0UOXbX/4UNmZJCAnwGK
         IB8wf5PYPFtR+3zet1M8NVpjbvNH0QfxJ/fNcbGibAc87903X9fCar6LxXyI+IAtCze/
         ye23SG4GSrCExe+7jwO6RI7I6IXZyaP1N8SdcGKYGzAcw6Dwr3OzreqDI3M1/pg68b8F
         EoJpORdag7w9yHdrthJv6bIYWiv/a6ucF2OZzQ+XJ/e4eikrua/amYfYJdeKCwhZDInB
         a3f1+X9nAVaBouvD+prvnfH9Q6DEJTXS1CXttztLnDb8WruaBbHHBZwWY85SlqnskMwO
         q9oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717580453; x=1718185253;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N2ukym6a7idvbhiMPUeFxPFQ9JMmthq9JaArWccCKyo=;
        b=CyWQTHf0PsFfH5ux0JM3+jTKvG6ANyWO8UW54TMcC8pxC8MxJfee4nX+/vpi7yjtfK
         WxkN7VWMWdYVSDAH5YM96nAlbBsS7Faad7qZWiQLQsyEM50mt9iPiT5hvAlALzyKfxSf
         oaLRTsJVRL51SnaYZR6j3Im3oxty10cnArfOriFo+EM+Q0niy7/nDynhOJj8WgdRXnUH
         TDae+m2XtNONR8mRaval70X0cSW+nkDoeWkPSIAME6CVHJad6hUwDxx1Y3+t279AVTSV
         hes9pccupyOqhHMuODp474RoLKsfOa7pp+yM3TR4TuZvdwiP7ZHIskF5B9Ap7quJJppL
         ix+w==
X-Forwarded-Encrypted: i=1; AJvYcCXp5MgbetlrKC+arPdTCBtgV65ZB4x+vsIAa33FokUFt9VuAmYJXPPBLItJYTZODOkgeIrD3fdkR52zHXd4oHutV4dmcZmCVYySvQ==
X-Gm-Message-State: AOJu0YxZZhZiQ0DEAIUnbT74cvWKMi/DZfQqRruY0a4qkMBeaB23C6FJ
	wnxd7S0poO4S4SMBY7V8Q2Qs8SansaLzc55+rkksfexts0ltRc7SjmILDGDdgL8=
X-Google-Smtp-Source: AGHT+IFMcjnS3DnsYbqQlASFRzhCm5EUynN8y8SEbAtGYnAGKbONFNfagI8RnrgkTFcQSK2RQsYS/g==
X-Received: by 2002:a2e:3c0f:0:b0:2ea:7a2a:c044 with SMTP id 38308e7fff4ca-2eac7a54157mr10681711fa.37.1717580453531;
        Wed, 05 Jun 2024 02:40:53 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4215814f0besm14561375e9.43.2024.06.05.02.40.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 02:40:53 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 05 Jun 2024 11:40:51 +0200
Subject: [PATCH] ASoC: dt-bindings: amlogic,gx-sound-card: drop minItems
 for audio-widgets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240605-topic-amlogic-upstream-bindings-fixes-audio-widgets-v1-1-65bd7cc2e09b@linaro.org>
X-B4-Tracking: v=1; b=H4sIAKIyYGYC/x2MQQrCMBAAv1L27MKmqAe/Ih62yTYu2CRkUxVK/
 97Q0zAwzAYmVcXgMWxQ5aumOXVxlwH8m1MU1NAdRhqvdKcbtlzUIy+fHDvXYq0KLzhpCpqi4ax
 /MeQ1aMafhijNkEgczz6wown6uVQ5sz5+vvb9AKX1oeaFAAAA
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: alsa-devel@alsa-project.org, linux-sound@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1312;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Hcboqt/mCTVI1F3jHOS4TQJM3QuLm78ZsIrceEwB3No=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmYDKkt2DGUfinkqCMwZEThmnPMR3bgoN1YFiAvLEI
 czAZEUeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZmAypAAKCRB33NvayMhJ0aPrEA
 CuKabcMnfZApG9Ja4UOCYeP0CSfWmNy2Y7L2lZfzWotJsMv4VpYAuKJ8itU2PgMfzoR1CX+UL7zPFU
 Mg+vioYU2EJ6P4CGDlYfl/35ZWobModRrHWugri3CgoecgPWqDPm0o6pwyKTy8SibKvVtS+Y+eJgI3
 FznWEHipHGIqi54kjex98EPJyPogfKS7z1YI+7pjKb8p33uvgKEbqDx9lRv21vAXwCHyQBvY4iSDc7
 ohq/FhOlDt84sRC3aR9sse+qMK9/Ca1OsEVVpLeODncPM7QHwkQA8851CGFbTkCS/C0cvpGew1UjGJ
 QdC+kPB4L4iTjmK+ptzbL2DJM6eYbY1yI9lSbJ+jPcJeGZph/D0KMp2Vap2KfFlG+ie9f1IN43xOQm
 fgofKD9pML5aAutw+451YZQbo6Tc2QoQpRZBjto+IpTFt6FuBaC2uahR0yBE+I5Il0IvqUIooxihOl
 M3y0tv5+fNmeEbnLAOlD9+7TWyd3h8nfo0LBVx4kSz/FnmQo0rsR7oL2SrXEcHhr5T8uXoxiKAUYHC
 vqwQaOBBSwMNeyW2jvJee0ARwJVm3HhTk3GtFS/fPh2VZvdJrA0b6scDmsVcmOsIHELP0bPY2OK0sN
 9WVwvlKF42oOaTuBA5r6HLDwXWr37rfKyKnJLuX5LQK73vw5f2VbS/y/SmJA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Like "audio-routing" drop the minItems: 2 from the "audio-widgets", because
any limit here - lower or upper- is rather meaningless.

This will also fix `dtbs_check` warnings like:
sound: audio-widgets: ['Speaker', '7J4-14 LEFT', 'Speaker', '7J4-11 RIGHT'] is too long

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml b/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml
index d4277d342e69..0ecdaf7190e9 100644
--- a/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml
+++ b/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml
@@ -23,7 +23,6 @@ properties:
 
   audio-widgets:
     $ref: /schemas/types.yaml#/definitions/non-unique-string-array
-    minItems: 2
     description: |-
       A list off component DAPM widget. Each entry is a pair of strings,
       the first being the widget type, the second being the widget name

---
base-commit: c3f38fa61af77b49866b006939479069cd451173
change-id: 20240605-topic-amlogic-upstream-bindings-fixes-audio-widgets-00e1afcda10b

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


