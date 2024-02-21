Return-Path: <devicetree+bounces-44420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0628985E285
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 17:05:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8ADC6B24EFB
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 16:05:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35E8084A20;
	Wed, 21 Feb 2024 16:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="R6hXu2AG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80BD583CCE
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 16:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708531368; cv=none; b=mFnAwDXOrcc9SdSoho6483HA2rfGnG+zN4GY1f8vywdv1k2shiCptkuAb/vlvi13WcG7xglIkq+fBKhhY1dMKVN9skqBBfs9Ji2n7H6pJ71Ros0o2ME4Ht6aq8L38z1yxnu4CBeNuMOf7bDPBEXR+Mb0BJjMkS0OimkwbqNJyNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708531368; c=relaxed/simple;
	bh=CaYboc1XswJbQ3g9eMR+UOvFXPujQMCgvGjX8ZAWPVw=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=PHTjp8W7u6L0YIqX2fnGfi3uF2F4eevWgAU7P8TxsWdol4/jXbA0NU6tPQiiYcG24H9ChZT09DPZBIhYwlG3aUyHWoUEBkWfoL3T4HYkDgaJv9+YMDUzxDkhVhKIUCPVWtBxv40IPwxzqYF2oP5PfGgKk8R6jF3+380lEAQtttk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--panikiel.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=R6hXu2AG; arc=none smtp.client-ip=209.85.219.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--panikiel.bounces.google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-dc6ceade361so1568533276.0
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 08:02:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708531365; x=1709136165; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QGg5dBp+TAqi4Vih9jNxwVmFa4RIBnviXwiga7aX/Pg=;
        b=R6hXu2AGCp/oZu9Szu+N7FMrF7/CBtoPSMGUMJmUfuqxqs9U2FgIbCCcCircMdCuIp
         s70t7MhRipZZeu2d5nYSSi3SD5ZmGVM1RbhdphlASwm+ihq0J98QY3u1tuNNCWMDhI8u
         Gwfhor3I9By1Vf8db4nVbWqr0/RTQ8Ba5/sXosmfAEh9RzGsz1FM8T4VsgX2Wh1pMy36
         B19x2vgxq+njSrVw46Md8A78XVtzVQcrdoqswMgOSh2sEdSzxQhwqHt8g2WfkTbMXgaV
         z3Y3fxBrnB2FATji08SnCzuPE+37VCPaOa9X0WYo7H+/gRvrTfb7CPrdS03coDU2vs4B
         Vr6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708531365; x=1709136165;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QGg5dBp+TAqi4Vih9jNxwVmFa4RIBnviXwiga7aX/Pg=;
        b=qhpdM8FuaKTxHPmgMU+2A5zGIiuvrc7FtJz3sIzdbANH7FNK56hEx2DhoeCcaXNpNg
         hBPu/LeNZqZJiJW/bNp3VR/jr95NqxKGXfMmH9kT30sQsT66SWxd9b9fLG+EBCrdLoqq
         eg8R9LxVruFpcpfIDY83GVDCaeuB5VVrH0FXns29yYlCsFXq+5Mg9DxHlgA9G2AoQSqQ
         CREXQfAeETnqbHFZYxTjauHlOopFkEwjhUGkhUwuLIQLlXAGI3nzIKbo7rzErEjlriRi
         Iy4wtCwzjZ1iBXTJUVIH72RyrufIL896yOz3NmhyoajCnFCWPseEIuJIPCcWdgO2R0V3
         aUgg==
X-Gm-Message-State: AOJu0YyjF7zbH5e0TLglfl1blM4BjDS12DJg3MTeoARwKrtxTejlRlSh
	0/VaknjroniYoLWBeQ74f9ldCdH8v+01JpTJ4UiBUGH2R4rMGGznfoZVJ41mJ4coKpD0p/k0rlT
	S5pM1jT6sBA==
X-Google-Smtp-Source: AGHT+IERn86P5KS/OR61g38fGAjjdWCXiWCh3x4Ja6a6T5iRxgeFp3D1CzEXxLwcRg/zQIfOar9r4nDwwSo3xA==
X-Received: from szatan.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:2d83])
 (user=panikiel job=sendgmr) by 2002:a05:6902:1209:b0:dc6:9e4a:f950 with SMTP
 id s9-20020a056902120900b00dc69e4af950mr4645277ybu.3.1708531365611; Wed, 21
 Feb 2024 08:02:45 -0800 (PST)
Date: Wed, 21 Feb 2024 16:02:13 +0000
In-Reply-To: <20240221160215.484151-1-panikiel@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240221160215.484151-1-panikiel@google.com>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
Message-ID: <20240221160215.484151-8-panikiel@google.com>
Subject: [PATCH v2 7/9] media: dt-bindings: Add Chameleon v3 framebuffer
From: "=?UTF-8?q?Pawe=C5=82=20Anikiel?=" <panikiel@google.com>
To: airlied@gmail.com, akpm@linux-foundation.org, conor+dt@kernel.org, 
	daniel@ffwll.ch, dinguyen@kernel.org, hverkuil-cisco@xs4all.nl, 
	krzysztof.kozlowski+dt@linaro.org, maarten.lankhorst@linux.intel.com, 
	mchehab@kernel.org, mripard@kernel.org, robh+dt@kernel.org, 
	tzimmermann@suse.de
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	chromeos-krk-upstreaming@google.com, ribalda@chromium.org, 
	"=?UTF-8?q?Pawe=C5=82=20Anikiel?=" <panikiel@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The Chameleon v3 uses the framebuffer IP core to take the video signal
from different sources and directly write frames into memory.

Signed-off-by: Pawe=C5=82 Anikiel <panikiel@google.com>
---
 .../bindings/media/google,chv3-fb.yaml        | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/google,chv3-fb.=
yaml

diff --git a/Documentation/devicetree/bindings/media/google,chv3-fb.yaml b/=
Documentation/devicetree/bindings/media/google,chv3-fb.yaml
new file mode 100644
index 000000000000..7961c0ab66ec
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/google,chv3-fb.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/google,chv3-fb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google Chameleon v3 video framebuffer
+
+maintainers:
+  - Pawe=C5=82 Anikiel <panikiel@google.com>
+
+properties:
+  compatible:
+    const: google,chv3-fb
+
+  reg:
+    items:
+      - description: core registers
+      - description: irq registers
+
+  interrupts:
+    maxItems: 1
+
+  google,legacy-format:
+    type: boolean
+    description: The incoming video stream is in 32-bit padded mode.
+
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description:
+      Connection to the video receiver - optional. If this isn't present,
+      the video interface still works on its own, but EDID control is
+      unavailable and DV timing information only reports the active
+      video width/height.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    video@c0060500 {
+        compatible =3D "google,chv3-fb";
+        reg =3D <0xc0060500 0x100>,
+              <0xc0060f20 0x10>;
+        interrupts =3D <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
+        google,legacy-format;
+    };
+
+  - |
+    video@c0060600 {
+        compatible =3D "google,chv3-fb";
+        reg =3D <0xc0060600 0x100>,
+              <0xc0060f30 0x10>;
+        interrupts =3D <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
+
+        port {
+            fb_mst0_0: endpoint {
+                remote-endpoint =3D <&dprx_mst_0>;
+            };
+        };
+    };
--=20
2.44.0.rc0.258.g7320e95886-goog


