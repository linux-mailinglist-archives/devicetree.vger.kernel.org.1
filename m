Return-Path: <devicetree+bounces-97552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D8E96295A
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 15:54:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 71F87283494
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 13:54:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AB9B189528;
	Wed, 28 Aug 2024 13:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s84GIa2R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E6DD18801A
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 13:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724853246; cv=none; b=coLoprwXBrZGfAHgdWWv2yCX/GHY/BIBWyV/1AGy5oXKugabZECQnaPZqdD15ib7aXZux9m9VU5/g6DlJihyl6gzR76pgukdNG0cWs6snTJymAbuuuSj5y1tKpYSDLBmQrYUE98+oQtRxU9oCmvbXFN3maih7C5mSrUvqkGavVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724853246; c=relaxed/simple;
	bh=H+G0uR0uGtkQ/5/97rdsSRom5F7Ggvn+WvWc7nnJ2JY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=btG+w2SUC6L2456n68bTVmZVW8Eivzc6RvCl5LhGgtsjNXqfdxj59bSrE3lfsPKhktdY3CkK6F25t8kx3MA3GWuVhVg9D/7obpYMwalfYGJ54kBUkLba2ak8/u6WAFDcSodM2nvgE96aL6fR0MYYuwTwH73ZuQZxPJmcIOAAiHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s84GIa2R; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-371ba7e46easo3944179f8f.0
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 06:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724853243; x=1725458043; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TTWHuW86NTs+103uuN2zaYjUY11Ov5iBD80i8ni2ivs=;
        b=s84GIa2R+6VyQInZkDYOOYHekI7YfagJX5SuXZBWljMQJJ6Y2OfkErbLK7HFzcRuqN
         6aXxqbGCHOtzYBOB4PoIJB74JyNFYPbz5HZfoSFi1ZeEEVMMJBpHj71OSpJe3vuq4WzM
         IG8gYUiwrXSlSCdX34txiHJEiWx/1HxyYWSL7UvIxix9zfQwlf0TfzGDo/WwjniERHPv
         LHgyoPCxxqUZX9Bl1V886DDAsjV48sE7WWGGf2dUdKagyAv5nv9TU43Uo7GrFifFy4Ke
         nsyxeJEnobHDC9oCH1hScZXzTOtdr8TmgEHyIhgyaI2AFU4zWeKtmWaxL/UGz3L67Gl6
         +8jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724853243; x=1725458043;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TTWHuW86NTs+103uuN2zaYjUY11Ov5iBD80i8ni2ivs=;
        b=NQ3tMgU7xiK4Wtx0mzYANH+qEOGJZzFAcCf7gNWiWlVQnDupoYNaukijnDRhQAjAo8
         yLkyXjZ4HMFptm0dmk2SoNgO4Bj21iE+6k8o1Lp9iDw/TX/cOFkgTFpXbynhx8k+4/66
         NCJiZrf0S76N12cSiHsEQInjbt5uFCkjAcJZaJwP9BAUX+FK7BHp9v+Z7xlSycrKgZdX
         SiS2o81+6+K2jYZbAZs3ZSYtSqaLhiOnseLb/zb5zN8P13rdDPGkTi65qW/c5sITt3aX
         m6ZDthN61NATzh49L+6Ipt86iCaB1Ui1k2fW7SODUAymI7NSNO/zoAqJw3/GGCoa48ZA
         Mdrg==
X-Forwarded-Encrypted: i=1; AJvYcCXjkAcQoCZVqsGsFKRFzMXjcNzNUvvKM3R3unvzGkDYXBUSbdAq/6Jy2L/b8aODm9STIDEYB/jM7MD5@vger.kernel.org
X-Gm-Message-State: AOJu0YybsV58i+/Y6519+j1xWyxzJCmks/QS1JAZGWhteGTceoVZ/86n
	dZIBtNDZsSWOnDFfZ1ytKOlZDyrwHMGzSosoVBgPfZwhc4JkjspLhQ8bUgcLQQg=
X-Google-Smtp-Source: AGHT+IEIRP7AywU7RW8H7GuK91sm441qq/B1K30YGS/4flS761qiJ+wLNYFmEH4P9KhRRx0bXPBEsg==
X-Received: by 2002:adf:a416:0:b0:371:8d47:c174 with SMTP id ffacd0b85a97d-37311865093mr10293637f8f.30.1724853242544;
        Wed, 28 Aug 2024 06:54:02 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3730813c44asm15613395f8f.34.2024.08.28.06.54.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 06:54:02 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 28 Aug 2024 15:53:55 +0200
Subject: [PATCH v2 2/3] ASoC: dt-bindings: amlogic,gx-sound-card: document
 clocks property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240828-topic-amlogic-upstream-bindings-fixes-audio-snd-card-v2-2-58159abf0779@linaro.org>
References: <20240828-topic-amlogic-upstream-bindings-fixes-audio-snd-card-v2-0-58159abf0779@linaro.org>
In-Reply-To: <20240828-topic-amlogic-upstream-bindings-fixes-audio-snd-card-v2-0-58159abf0779@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: alsa-devel@alsa-project.org, linux-sound@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1722;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=H+G0uR0uGtkQ/5/97rdsSRom5F7Ggvn+WvWc7nnJ2JY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmzyv2GqTu1q87S0Q2rSDxbQeeYYgHw/Riu2gqWSyE
 6fyZXPGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZs8r9gAKCRB33NvayMhJ0QPDD/
 9WZk9izqKs6sRDdw/RiFAlLH3jgXyr8Oen2cHF65E/3nU+f0raTKs8LFYUXB4keLMiIPjka4JMJ+qT
 Kq7U0XPlmrLBw+975gaJMTgvS347fDb9Lyy5925kgoniTSsUiQ7dFxSC8jHi8ag/FRTAE7hVDsy344
 pYCtFpDbcGbdFIqe4XiIBasUsV5d4cr0aMpde+pWil+jzt0fV3vUw4m0ZHO8u54FxV8vFApmMuqIpv
 oeOQdoUIzP3hmOFDjwV5N/CeX2fEB5YOcHupvL1toZyr1Z9cG1ih1IGQg4okSvoxeP/u9o1/hB5GX6
 atENd4NA66+Aa/uDTzZZS+VNIhkDxrhtLiA1RV1kgnnZ3TyeZogfz+hlTRLrWK1L6AM8s9A+DMtCHW
 zp4lL22MVI0tobGLNnzUAFdoF79ywKYXF8hGJj50NUOOSWWXddV/5I5mbDDi+kWUi+1WeUemaGeqTy
 O5e1X90OQP8GwSQ+1O1pLSSTHGPfVABg/NWSOzKytNNK8CVbTrMmLPHwAZTp2gssbn3Z06fayAKDxg
 GuTpXrh0m2b/gWmrqxaYDOz30LO2OrZnAZGufIpgiEZhou0WRyh4FmFdGOMeOsIe3mP9H5oKGaHesx
 WgrGpPI7vhohkcivoGL9ksfQ7YFP+fBABfp2a8u97oT2ZJJTqcASilQYZiYw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The sound card design is based on reference PLL frequencies that
are the root of all clock rates calculations.

Today, those frequencies are currently specified in DT via assigned-clocks,
because they correspond to the basic audio use-case.

It makes no sense to setup clock rates for a sound card without
referencing the clocks for the sound card, mainly because at
some point more complex audio use cases will be supported
and those root rates would need to change.

To solve this situation, let's legitimize the presence of assigned-clocks
in the sound card by documenting those clocks, as it describes a true
dependency of the sound card and paths the way of more complex
audio uses-cases involving those root frequencies.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml b/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml
index 0ecdaf7190e9..413b47778181 100644
--- a/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml
+++ b/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml
@@ -27,6 +27,13 @@ properties:
       A list off component DAPM widget. Each entry is a pair of strings,
       the first being the widget type, the second being the widget name
 
+  clocks:
+    minItems: 1
+    maxItems: 3
+    description:
+      Base PLL clocks of audio susbsytem, used to configure base clock
+      frequencies for different audio use-cases.
+
 patternProperties:
   "^dai-link-[0-9]+$":
     type: object

-- 
2.34.1


