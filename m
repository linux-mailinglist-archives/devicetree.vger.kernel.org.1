Return-Path: <devicetree+bounces-245343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F52CAF746
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 10:33:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42E9F309207D
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 09:31:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B131A2F0C70;
	Tue,  9 Dec 2025 09:31:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FaX8B4WX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317BB272E63
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 09:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765272710; cv=none; b=WRSm1vNhBn3XKQLQpvAwRHJy/yI4Moj457vPSKT53vPtoqNPc7WPtkOJS+zWEPv0ow6C8Jw0on4TgtXF2pLKryEQ9g7WBMv8r/Z7HNhKDDlOUE6izV0s+PdO2T6cyQxjG05URfjEV707MutjyLoOiW9DsXUzBGwc8aCvP+V7iNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765272710; c=relaxed/simple;
	bh=T8nQRaJTMEOE7oGRiZt2UVDQ6WuLodWd+RVxZirYEM4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ksi6f9LnlVqlGCmzpbn4RlA/powPQD9YPV8xdYgy9gK2LngfKz96fu78/gsKSlHQHethGfG+i6j3pWOT2y8ftCZHRFM9EyYKOFax2z/tFUUfNgtHYocBtG5nSndEu1/o/VFcyJyliXQSad6yc/fqwwMcgg/KDnb5lTDl0C2Knac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FaX8B4WX; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-3438d4ae152so5131447a91.1
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 01:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765272706; x=1765877506; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=loXzTpy4uaY53uDDt2VMesUwjrO1zUQ0ph7MJ5jGnW0=;
        b=FaX8B4WX+HHTShwudqnE4f5MPe9UHgupLmcOyFkdlrexWk/fbr+nkL2SnlGud1JKch
         vAyprFofZBAMXw3hFPB0vT9JrIB28LPRo+zGgyAfeJ4SthkAXj6gJYcPE26nV3TfA/A4
         gdqfT+4Uv/00vlwYobRNHIoeAhvBhX5KDnMyoKLEjPk29XbBaV+YqikBKqIaTD1VxdpM
         H5JuVH6BdfjbUXCLr3AbE1I7l6OemUq6XpMapV72UElGvMTcS2hBa6zHgn/u5I3TGpme
         33tI2iz3tmOK4FatnK0UEM0KdnFk1p9HgIJQEbzO8JaDKHodp0Z757CuH7+aspg6Wsg/
         y+FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765272706; x=1765877506;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=loXzTpy4uaY53uDDt2VMesUwjrO1zUQ0ph7MJ5jGnW0=;
        b=llAqSSXj9HXElJ8+4u3Ne9VrHJvapZJquig9PS/eDd6MpytfILtWxcVdm3Kz/yKktW
         ZYjvmVHQ+t2nWGgeEuzRDJV8BoQIzN2lNxLm0v772wPG2agAyiKdpQ9XYZc5Q+yF7gre
         /9iv98eqw18zp5L4AazYAfj00EK2uyBpfY5Z3P2BsKNzO4DWDJZN7kIS1PG1irHKSGvm
         EjnE6NDDWLhTQx5vvTauQfR7he39nO83E2YZASeU2oVruj4al674noXQ5YoQbOOZcVdP
         t3U/VagCzIM9kALlRruUM+QSzNU1hi+5Khlcz8Zmp66xQIOc37O3u3UWWv2e/b5YRZzk
         PiBg==
X-Forwarded-Encrypted: i=1; AJvYcCWUOUcHUBl4IrVAUESI4W0PaCyCW2eL4d+lC1Z3JBGX4qplZ0hW9dsO5Le3dfOoPlxHyT8C5sDDLFVk@vger.kernel.org
X-Gm-Message-State: AOJu0YyeIxkg5p92Lf5RXGlMXYXidQl+Qytr7RiflTP9x+yD38x59Ir+
	Dw0+pP+yfRrm0RKxr8VdgTk/NY0nJes9KgSdEVtsvCvBljuwcMEoYphq
X-Gm-Gg: ASbGncvo4hiI8Q95OLTZGei9h1y0BDLOVcqVb9gLTaEV+BvT2AwPDNAaMeBi+IOuWWz
	+oGhmIWqi5GWlijhLRFujnmxiHrXcfPiO6hV1Pe/a8UL/KfJEFTeJzsotBkbI5CzHCKHAOd1zrh
	x97zXp7R/Mi7fYJF44rFNnURS9DF+llVRcqSLDyWTbi14Ub3a2SJFuxcsp4lnYEvpoBGV3SfKa/
	s4Lpf3Rm4KrIcP14cpl8tNjdVfSbbZgRlCdUMj3sH/8sVdGLb+BmH73bjRtgQZQ+ulJ89opV6eO
	7heYRvO3vGI5nSNhTYdHloEl84oLDmsETwqxFqzsp9evD2wjLCtpw4wyPfbRGglXYmfWcyIVJje
	TcEZUfDW/qN2EvUcemzTXB3iumv33wO4SGc91ehgc0MylwbDdVWdtB8d/zdadjlh32KRaCV1wGX
	t2Cg5Xa01dielR2PcpnhtstnfwKqMdbnVuJpvPI/w11b33kGYDUe9kWMR9bYOXZwiemSHAk8bO0
	RHTVNp+opfIYaFB7ksYcmIcRRlcei/Tci8dQvHT1RAZKW5fWyakM96GAf/38xZcTcF34z+8q9If
	Jj0cezCe7cb8ndlS9YiEUpgJVFLXKAYjEgKf5xJop1emjieoS3o=
X-Google-Smtp-Source: AGHT+IG5TjEW4C4GY4b2FxVYjWX8+gLJQmB4u4hl40+y/p7T7camtMTaOvWcdzyFLSuameifxgFCOA==
X-Received: by 2002:a17:90b:388b:b0:349:30b4:6367 with SMTP id 98e67ed59e1d1-349a25e5544mr9400724a91.30.1765272706467;
        Tue, 09 Dec 2025 01:31:46 -0800 (PST)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a49658704sm1800408a91.6.2025.12.09.01.31.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 01:31:46 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Tue, 09 Dec 2025 19:31:15 +1000
Subject: [PATCH 2/7] ASoC: dt-bindings: update tdm-slot.txt references to
 tdm-slot.yaml
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-tdm-idle-slots-v1-2-38dabf6bc01e@gmail.com>
References: <20251209-tdm-idle-slots-v1-0-38dabf6bc01e@gmail.com>
In-Reply-To: <20251209-tdm-idle-slots-v1-0-38dabf6bc01e@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1929;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=T8nQRaJTMEOE7oGRiZt2UVDQ6WuLodWd+RVxZirYEM4=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJnmb7KkF/kxcld/Mi+rkN61eYvaC++1gp6Kd3f2PDkmc
 6ji2/yEjoksDGJcDJZiiiwbmoQ8Zhux3ewXqdwLM4eVCWyISAMDELAw8OUm5pUa6RjpmWob6hka
 6hjrGDFwcQrAVG+9xPA/+vQ6/Zbm4286L67/xNKmU71vGRvHo9mqE/+6CX5UYWVawvDPuH3N2nN
 P3PacjbolrHEocOXlE+EuDzMXHzh9YKHFp9kz2AE=
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960

Ensure that all references to tdm-slot.txt have been updated to
tdm-slot.yaml.

Achieved by running "sed -i 's/tdm-slot.txt/tdm-slot.yaml/g' *"
against the bindings/sound. No other references to the file
were found in the tree.

Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 .../bindings/sound/imx-audio-card.yaml   | 4 ++--
 .../bindings/sound/simple-card.yaml      | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/imx-audio-card.yaml b/Documentation/devicetree/bindings/sound/imx-audio-card.yaml
index 3c75c8c78987..1df29a556120 100644
--- a/Documentation/devicetree/bindings/sound/imx-audio-card.yaml
+++ b/Documentation/devicetree/bindings/sound/imx-audio-card.yaml
@@ -39,11 +39,11 @@ patternProperties:
             - dsp_b
 
       dai-tdm-slot-num:
-        description: see tdm-slot.txt.
+        description: see tdm-slot.yaml.
         $ref: /schemas/types.yaml#/definitions/uint32
 
       dai-tdm-slot-width:
-        description: see tdm-slot.txt.
+        description: see tdm-slot.yaml.
         $ref: /schemas/types.yaml#/definitions/uint32
 
       playback-only:
diff --git a/Documentation/devicetree/bindings/sound/simple-card.yaml b/Documentation/devicetree/bindings/sound/simple-card.yaml
index 533d0a1da56e..2e1a5b3216c5 100644
--- a/Documentation/devicetree/bindings/sound/simple-card.yaml
+++ b/Documentation/devicetree/bindings/sound/simple-card.yaml
@@ -28,11 +28,11 @@ definitions:
     $ref: /schemas/types.yaml#/definitions/flag
 
   dai-tdm-slot-num:
-    description: see tdm-slot.txt.
+    description: see tdm-slot.yaml.
     $ref: /schemas/types.yaml#/definitions/uint32
 
   dai-tdm-slot-width:
-    description: see tdm-slot.txt.
+    description: see tdm-slot.yaml.
     $ref: /schemas/types.yaml#/definitions/uint32
 
   system-clock-frequency:

-- 
2.52.0


