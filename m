Return-Path: <devicetree+bounces-248551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C00EACD3DE4
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 10:37:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2EBF0301FC30
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 09:36:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4152727F754;
	Sun, 21 Dec 2025 09:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Up9WZMzA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CEE27FD54
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 09:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766309813; cv=none; b=nK+BVT48+RZZDkXZstgK5iOz2FveIqjFSeREVKvwLElNqcNhNkMZCzvS9Gt1Nd9DB2sB3NrNYr+0A0dRNgPDjP23obC6Sm7QYP0d1OkubQKNICJjoq8ZCB2A8vHNH9iAFysMStHnSuKy6GoFe+Px6KHeEeb5FlvEPOX41HxKqQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766309813; c=relaxed/simple;
	bh=WG5E/HC2YxDy3oxNYC3bZbjudxqByJP3FjNkgk9QQKc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LH7caEjOD6BuwkwzjRFrtFN/Ohm560rjrbdnWVX+Qsapc/n61uMAz4KSm6gM6WgsRP5m+1cGhfjS5miDs+zBELfayIqoPVOCzexDKCHM9plltYryDnZrujQtYoKlOAyuHcRaEE9wcHjIC8X1k+PgDdxVZ1ti1mzJrVnO7+5tazk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Up9WZMzA; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-29f1bc40b35so55269635ad.2
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 01:36:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766309810; x=1766914610; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z8X+CGg6X2TQewpD16dhdCQA0CgAU6ZNu4lyH/rNjLw=;
        b=Up9WZMzAje2jZMDCPa6venfMhq/OwW97evTE2Eu2REtdcNBllov28nhhEaO/zXiioL
         dktnWWx5oqAa/ZNiRvxJua7AIz8+v0iPtxNOWr1rqMK+Oqq0dTmRbMyPuUqQJsg4FDFW
         WpmK4JUME/QDjh1r5bdWJw8Zz0LWTP7HrB4PcI/1wUK+pvbq9sbQzlj1yiO88/qiBDk3
         JL7zCy+bxvrNcyp78wGp+Gl9XldFflfSJevz1PHkhy8Z8AnA9Cv9tNlIxT0E+AW9rr0l
         dMz70CUOx6xS2LQVIOREZVciy1lye061ymgJMlnxO79rT5XwcnOWx0gpjbSiNytHBdrW
         jj5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766309810; x=1766914610;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z8X+CGg6X2TQewpD16dhdCQA0CgAU6ZNu4lyH/rNjLw=;
        b=ZnGhAXNp035NuEW5JmAHprHkMCrbjPFdA2nbHNo2sd75uyksTRsgnqNmyAr9ZN07Sh
         yeswiQDoo+n2H3WNlfTT24bLdbYtRfk9ZiyECOCC3AJnff3/5dtNhWBamwdZVHgkT1Bt
         Y9izBwE4WITx7/+uZELHNP0yNCOhsFxCIyNYFibJhecR/mibDa1ILjUqxtIUPu8jnbXz
         ibSdKx6C+H1BDC55zDNKVIxWTRfE/e590FGeYoTM1V/EO6cU3lEhMmiVf64k+xoeJLMw
         DKZr4YovdHHrzULNyWTSsi7E2jiGaFCkI+SjputoJj9v/NBY+RPEMlGKWlBx9sSXHhLF
         ga2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUgfaYJ898k/7PZwA2fLTqvf48Oghqq9V2Bregrw9A9FUlLY0h7GgJ6KQit1PlXWO81V3Y9TlnoGNEH@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9z45j87ucHI3J6rtuKwUMgzYxdoqlg/RNIT8xLHHfnbNh4eH0
	GAfWWNubw+U2XMXq5tPGla2lenEEQNkcPgXKToNWUaBeS8lkr+UMSv58
X-Gm-Gg: AY/fxX4BFCC5i7L3n1rL6sWKRRpnWouvrxVGdoFkLqy8Lb3AMP36URSNxnol/w3wGKt
	tes360A/qsS8fcDdj4PH/rDKtKPJmLGyXMv1QTqnsgXC6otnB2i9VYULSfjoSuEi9i8zT9ATrDe
	NvPEAiu5sR52qOyj/WWEwD/pru3PoWTbymOV48i3K+POcOEjH28a6FblBLkmSUeUf+D3cpPUDol
	OxkNpkoMniGBT/3tfjNfKWrfsmzqi2EjwdX4tGB5kxIZ8ofHKV3Qn5PRrMyA2ke30ocjHhhj9bI
	sukzOSSuzPAF+p0RjHfx4L8zRA+i908YgQu27BmWgA6ovWz5Jpgyo7QEMXq731Eaijs4p+ozR+R
	zsVcLoBFJA3/9VExCnMvpdIk83nK8o/JHoDM1SRTn16L1sadjHRjdadk/CglaJ6DlqFLyxCoqdU
	Ken12LyypyEtouPUcows/WVJDT0rSNdICTNLXf/cxxTO2O+VBTWboV6jUd95o1vvFkc+3tCajxA
	RMcyYDgP+nrj4C/CdtkfCHAvkuLHLR1LyKVo2RLcXUzCT399F9df7cY8Or/mvlEjolQ4UMIz5BT
	/2w/2ePzMkHQIkhXHe0uXU09VdV8YBPJDAAKBz/98ih7Xc0klsQ=
X-Google-Smtp-Source: AGHT+IE8jH5CF7+AN79OkklOKmx/JMvaSoEQ+RMtmm98sJVMFFzecpBHy1QLye0QOgZLDfrXbuUvuA==
X-Received: by 2002:a17:903:ac4:b0:298:2afa:796d with SMTP id d9443c01a7336-2a2f2a56707mr72049865ad.61.1766309810032;
        Sun, 21 Dec 2025 01:36:50 -0800 (PST)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d4d363sm67629495ad.62.2025.12.21.01.36.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 01:36:49 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Sun, 21 Dec 2025 19:35:59 +1000
Subject: [PATCH v2 3/7] ASoC: dt-bindings: add TDM slot idle mode
 properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251221-tdm-idle-slots-v2-3-ed4d96413aec@gmail.com>
References: <20251221-tdm-idle-slots-v2-0-ed4d96413aec@gmail.com>
In-Reply-To: <20251221-tdm-idle-slots-v2-0-ed4d96413aec@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
 Shengjiu Wang <shengjiu.wang@nxp.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Shenghao Ding <shenghao-ding@ti.com>, 
 Kevin Lu <kevin-lu@ti.com>, Baojun Xu <baojun.xu@ti.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
 James Calligeros <jcalligeros99@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2393;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=WG5E/HC2YxDy3oxNYC3bZbjudxqByJP3FjNkgk9QQKc=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJnu+yfrGR48+UOQteLYKruZFvVKuT2pb3sY230nqCaUG
 UpI7DvQMZGFQYyLwVJMkWVDk5DHbCO2m/0ilXth5rAygQyRFmlgAAIWBr7cxLxSIx0jPVNtQz1D
 Qx1jHSMGLk4BmOqzCowMPecqt8ecjPT+cT8yyy9z9/n5x3WvxfH3eX5gLJd9p/PlIyNDu2reTcm
 pK7IkV3w9ln6vMD8xT/VD8t/FQl+vqLe6M5owAwA=
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960

Add properties to describe TDM slot idle behaviour. These properties can
be used to describe how a DAI is supposed to behave when not active.

For example, Apple Silicon laptops split a single I2S bus between two
physical lines which are combined at an OR gate in front of the
receiving port. One codec on each line is expected to transmit zeroes
during the active TDM slots of the opposite line, or we will have corrupted
data at the receiver.

Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 .../bindings/sound/tdm-slot.yaml         | 33 +++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/tdm-slot.yaml b/Documentation/devicetree/bindings/sound/tdm-slot.yaml
index 5bc46048d689..e8b2d35a7c37 100644
--- a/Documentation/devicetree/bindings/sound/tdm-slot.yaml
+++ b/Documentation/devicetree/bindings/sound/tdm-slot.yaml
@@ -33,6 +33,17 @@ $defs:
     $ref: /schemas/types.yaml#/definitions/uint32-array
     description: Receive direction slot mask. Optional. Identical to TX mask.
 
+  dai-tdm-idle-mode:
+    $ref: /schemas/types.yaml#/definitions/string
+    enum:
+      - none
+      - off
+      - zero
+      - pulldown
+      - hiz
+      - pullup
+      - drivehigh
+
 properties:
   dai-tdm-slot-num:
     $ref: "#/$defs/dai-tdm-slot-num"
@@ -46,4 +57,26 @@ properties:
   dai-tdm-slot-rx-mask:
     $ref: "#/$defs/dai-tdm-slot-rx-mask"
 
+  dai-tdm-slot-tx-idle-mode:
+    $ref: "#/$defs/dai-tdm-idle-mode"
+    description: Transmit direction idle slot mode. Optional. For hardware
+      that can configure its behaviour during idle TDM slots via
+      .set_tdm_idle(). "None" represents UB/unspecified behaviour and is the
+      same as not setting this property.
+
+  dai-tdm-slot-rx-idle-mode:
+    $ref: "#/$defs/dai-tdm-idle-mode"
+    description: Receive direction idle slot mode. Optional. Identical to TX
+      idle slot mode.
+
+  dai-tdm-slot-tx-idle-mask:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Transmit direction idle slot mask. Optional. 1 represents
+      an idle slot.
+
+  dai-tdm-slot-rx-idle-mask:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Receive direction idle slot mask. Optional. Identical to
+      TX mask.
+
 additionalProperties: true

-- 
2.52.0


