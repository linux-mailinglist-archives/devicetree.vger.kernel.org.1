Return-Path: <devicetree+bounces-250823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 778B3CEC17C
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 15:36:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 85362302A114
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 14:35:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C0F22765C4;
	Wed, 31 Dec 2025 14:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="BEgwypps"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8BD2741DF
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 14:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767191748; cv=none; b=ueLRENqlEoth8jGBm6z0yD4UuXZADFtN+jAO7HcJrvdwLEXEWt/Whjgl10c+ofinqFGEKsgdC4mWgfp9y4wkSSKbNCYKyUWoJIm+bE6vTPjHWiWq//tRRbCtL2sVTzAGKB3FXS/SctHndZ9y7LIwMq+z9CW2Hjp4sNRnjK+doGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767191748; c=relaxed/simple;
	bh=1vH4KrFv8xvMv8rpRWUougXl8BcRT5RLGVtAo9ej2xw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DxWCfakAFmQ2GPpqXefD1+0d6OUltGWZV0uxVStWfFvJmVIfsYXll+U8KmuxKMZOT4JsdiaCVjN+hrlEAeKRL7T9Ismx076dZ6/4DzpQgg+TMcmlxsCSnyPB5nrUEGu9lUrIR7P8c1s/k2PILJTv9YVaodiR751savpTS7PWN64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=BEgwypps; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47d63594f7eso2568925e9.0
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 06:35:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1767191744; x=1767796544; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=34pYk6l1cH16LeyZVvdM/XV6wo+Nk0j+m4GLCKEWRwU=;
        b=BEgwyppsTO/ChZlahFILnUfRCD3bUMzIHos/mixzW184xMmpqdJ0JITUQb6QX+owhW
         nbuaLfFmuzPJ+An09DnY41cPAGMPtBvIrfQpzrVvz0q1I8RBAbtPXD55JR7IRqvjtUCP
         csZWWjfj65RpaLurWldrumjwUW/nC3Rx1GUM8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767191744; x=1767796544;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=34pYk6l1cH16LeyZVvdM/XV6wo+Nk0j+m4GLCKEWRwU=;
        b=Wm6thJsN6jcNhIr2HR3gWqjWxUgP87AITS2BiFzKapKRz6U3HRUW3Yqm/pUT1ReYqi
         AVnLoDpZ5YfiPiUjteJ7x/+jaFDxrX72dk9q3Kjg7PYWiHuF0zuLtEU2RwMqnsG+VCjX
         VBqAMEPo0lY/pY29r5OZZscsZAQOgOs+eu+zlvt3Z0ft4C/wXvqL4YoFt6Sts38LqV/V
         lOyN7K0LHs1bbVHsStxqs1GDmZdW5slJpNnsxtDLnzUHssxobl+YaPd7zqly+lc4sucF
         p3JnHmJvTZYEG+B1n45SbhzMBJjCo3TLiKjxA2GndqhvjQZ5xaNJr+c3eEzLvU1pEMOl
         nWQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvpOirA1EL8qruEf4EHlsdOh/9yqme2g8y+S85mFPBkEMloRfE1HA5bykYIg2L0tnUKZ/OREPvcw0x@vger.kernel.org
X-Gm-Message-State: AOJu0YzE1iSacLZk56Ae4Ngtip9gvmepELTPH8GAphyx2VgtxK/Hbsti
	NFW1b6AeHIiiKn4yhQ99SHTI6YUBowG9tgX7SvYZVZDs0j3fVtF+JU4zMcujux82IA==
X-Gm-Gg: AY/fxX5AfcZw+BSdnylKks/rWCA9KmHrnKn7fswJuNbiv0QNL+AS+4wBMcP++mou7D/
	OEpis43JHFUo4q6+PK2Bz0UsfVpI9p17l7djdMmdREYrUleqFEyKS1lI0qi21Vt67S04Z3wiGyT
	/liLhKRH/3uoKlbk8mQYOO13NrQOQyL5Td4ti9uMBYAhho9381flc1oeScGAgyuZ6GfOD8EdbhO
	QZgOFT9CAsIbkicRkL5wTolpltrPZeEpKwEERPXg+ZUj7bks4puENhwpcFJDQieunXvAciSNn/L
	dPSePwW+ltYROtcujRQAsJck4sHwv307/tppZdxGf0xNwFKcQhqbBEICl3h8wZJrRtFzmkSm6UT
	9ORqJINv0zB1+/uLnjRWoTLd+uoGjsuustlpLUUrKbcnDagkpsvudEG5LLROwVVhBISOr2cUrU+
	1bQxQhfl98+OUVe2eZ+BQ0Wl6cvw==
X-Google-Smtp-Source: AGHT+IEiRq6V4CAH/S2a6MvgduONiJuKUV1PONniN7Ix1f5FJkAX+d5WlgDqPZJkgHzRkh3uELoZxg==
X-Received: by 2002:a05:600c:470a:b0:479:3a86:dc1f with SMTP id 5b1f17b1804b1-47d1958e43emr342849195e9.37.1767191744550;
        Wed, 31 Dec 2025 06:35:44 -0800 (PST)
Received: from balto-ws ([37.228.206.31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d193d4e91sm630300935e9.13.2025.12.31.06.35.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 06:35:44 -0800 (PST)
From: Fabio Baltieri <fabiobaltieri@chromium.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>
Cc: Fabio Baltieri <fabiobaltieri@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Simon Glass <sjg@chromium.org>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: google,cros-ec-keyb: add has-fn-map prop
Date: Wed, 31 Dec 2025 14:35:37 +0000
Message-ID: <20251231143538.37483-2-fabiobaltieri@chromium.org>
X-Mailer: git-send-email 2.52.0.351.gbe84eed79e-goog
In-Reply-To: <20251231143538.37483-1-fabiobaltieri@chromium.org>
References: <20251231143538.37483-1-fabiobaltieri@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding documentation for the has-fn-map property.

Signed-off-by: Fabio Baltieri <fabiobaltieri@chromium.org>
---
 .../devicetree/bindings/input/google,cros-ec-keyb.yaml    | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
index fefaaf46a240..fa24b1cbc788 100644
--- a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
+++ b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
@@ -44,6 +44,14 @@ properties:
       where the lower 16 bits are reserved. This property is specified only
       when the keyboard has a custom design for the top row keys.
 
+  google,has-fn-map:
+    description: |
+      The keymap has function key layer. This allows defining an extra set of
+      codes that are sent if a key is pressed while the KEY_FN is held pressed
+      as well. The function codes have to be defined in the linux,keymap
+      property with an offset of keypad,num-rows from the normal ones.
+    type: boolean
+
 dependencies:
   function-row-physmap: [ 'linux,keymap' ]
   google,needs-ghost-filter: [ 'linux,keymap' ]
-- 
2.52.0.351.gbe84eed79e-goog


