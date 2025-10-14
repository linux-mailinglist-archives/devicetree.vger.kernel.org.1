Return-Path: <devicetree+bounces-226752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9FABDB00B
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 21:11:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D75F19A0BBC
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 19:12:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20C542C234A;
	Tue, 14 Oct 2025 19:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MoNMO7gE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742492C178E
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 19:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760469100; cv=none; b=F75DCQafWrpNMAjKwAuEMY2Ev2kZPF3f6cx93G8CjKFm9sjPs73V4f84PZ46lzjjtw+MemkOhgfeMH3HbfmDjAAFTAzopxxIXN3d1O2p9T9aKXchJ1D5acP+2Ax3gTxMauFmO3RReat0vDI6HMGh5f5VdvhoYKlZSpXG1ZL6x0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760469100; c=relaxed/simple;
	bh=S+PaKb4dQqXhsbGRU/uKTbWTAhncSD2zvQfzn4XNbaY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iqEDt2KjaZNYksJcKPdPWPHmWzf572/JkWBMAbBv2wevyqFZtrQIquXqoQrvs93cg7nBwC+vXoUyVtpfWLREblkgjO9qCzg4O5cwNMISBpsbPvcqcc2nMPibV1gJQ+3s5uWdLUFh2iIL8rMFDF0u6P6e9ug+j/nXBBL78rBV8/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MoNMO7gE; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-27d2c35c459so40815275ad.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 12:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760469098; x=1761073898; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jwe7YXxDoU+cIzHCYhHi5EBndZPOQECM5/AlfPL09Ic=;
        b=MoNMO7gEFJpfhT0fJmnqe8fE8uaO59YuIZXtSdoDHDb208twu/1cJnqPqcQmbMgeY5
         Ay2x5mueKrDvQV/O6w/CdmdTI/qTDxgxb0UXet9SzD7Gd6brvIBcnHjzzzZcA9HxjyA6
         xwPKXa6KXrLccKYyKTjHG2TlF35Z1kupvgWOZXoJpvC5R+J6mai3bTGfOTdSBqmbLZSL
         FDzdkMBd661JSRZ5EuUhWw8lZweWNc+pd2bulKZ/v6OBLG78ix5bD1ozJ1N1d0/1984q
         WzIeF1holATdocVUwNfrNfIwBuAnI7OWENnKB5s1PNORwvvvS12uNhK/QZ9x3l+XZy5g
         1e/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760469098; x=1761073898;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jwe7YXxDoU+cIzHCYhHi5EBndZPOQECM5/AlfPL09Ic=;
        b=SSfz+9ErBL5DPcE4mM+NEEWBv2CjwJXkduqbYLxG5X1YX7pq/7Y3tVkXSVG3H5EtRS
         qBhD0IEHKkhQTRKwGx0aXCRi7uO7XDLjgzXcVNqTFV1j5G8QG4NcKy6abws1P1cw59SL
         LzBTBsUXGoU5KiPkuC80gcQ8rzgcJYPBabL06JLFE8dhRW67IWUy76lNT7QWDTqENZWe
         G58lKNCfn5Ve525KHjxZAEH6lUJpSrtFKvaoDvfZD57+GSe4TLmIuzFo13KfWMSf6zRP
         vfHsdcWoufQxmEN03XyxHRgMEnJrCvcCrJR2Xbev4iyOcbTcZKOaiWeuUuj0PJk3rM+5
         knpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWoe7io1/kDfKf8SxEJow+LxNwkrmUAZ2aSjB896KsDF2yMaFbk9uFo9js7nNjk3+p8WAn8Wvy5I+sx@vger.kernel.org
X-Gm-Message-State: AOJu0YyqYpSDHRUHygfZZWzwaPMVQNAYgVP7OKmzba/fimz69hsoelSS
	PQmBcSevVOwn+eEPVp36wxbgbhl8NJb5P2UgokFcJ8W5TFVI4MiAnp6Z
X-Gm-Gg: ASbGnctdaF8H9/5Fy0W7cViSual/BDBXnqveT2TcoC0D78vqPdUfAlD0gswkm4dAnjw
	8N/X61M9m5PU982asZpO4QCL9tzDU8eAVdN6T12JnZEzflxaCuQg//kG2eeehbw8EPHu6hn8Yci
	z1n9zX5RyX9timqhl12jjrvQdBDXQdB6QVMZSZf3wMXIKpZA6w6Ozpf8cBQFBrpB+XlsBujzjH/
	6Srr3ap1Jr6TeyCwFYf2UXAfOjYMlo0Kha8888Bs431RCK89O8lF+/Xv5q53Lx5Ouq4ShT4omOL
	be6YOHiVfuc0dfUEjNI28Vtli0PUW89pJYesqmxr/tstZ4evUPvIeVch/pdTG+niZNw6ix+r2fD
	t0A84Xaa8vSaR4No+QTgwwA58irAZISBS7rhkvhuBGP3pRfJmADTMHTILw/QiwBwG37zzce0=
X-Google-Smtp-Source: AGHT+IH6L9b+RAsdBPIs/9RaZ2biO3IFLWe3hSdfFmc60wanjgFfuMqCTaW562R6ttOdauQ5UDfmIQ==
X-Received: by 2002:a17:902:fc4c:b0:28e:a875:f7d1 with SMTP id d9443c01a7336-2902729036bmr315973415ad.10.1760469097611;
        Tue, 14 Oct 2025 12:11:37 -0700 (PDT)
Received: from iku.. ([2401:4900:1c07:c7d3:9987:bec4:a0:deaf])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de658bsm172402755ad.22.2025.10.14.12.11.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 12:11:36 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 1/2] dt-bindings: pinctrl: renesas,r9a09g077: Document pin configuration properties
Date: Tue, 14 Oct 2025 20:11:20 +0100
Message-ID: <20251014191121.368475-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251014191121.368475-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251014191121.368475-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Document the pin configuration properties supported by the RZ/T2H pinctrl
driver. The RZ/T2H SoC supports configuring various electrical properties
through the DRCTLm (I/O Buffer Function Switching) registers.

Add documentation for the following standard properties:
- bias-disable, bias-pull-up, bias-pull-down: Control internal
  pull-up/pull-down resistors (3 options: no pull, pull-up, pull-down)
- input-schmitt-enable, input-schmitt-disable: Control Schmitt trigger
  input
- slew-rate: Control output slew rate (2 options: slow/fast)

Add documentation for the custom property:
- renesas,drive-strength: Control output drive strength using discrete
  levels (0-3) representing low, medium, high, and ultra high strength.
  This custom property is needed because the hardware uses fixed discrete
  levels rather than configurable milliamp values.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../bindings/pinctrl/renesas,r9a09g077-pinctrl.yaml | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/renesas,r9a09g077-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/renesas,r9a09g077-pinctrl.yaml
index 36d665971484..9085d5cfb1c8 100644
--- a/Documentation/devicetree/bindings/pinctrl/renesas,r9a09g077-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/renesas,r9a09g077-pinctrl.yaml
@@ -72,6 +72,19 @@ definitions:
       input: true
       input-enable: true
       output-enable: true
+      bias-disable: true
+      bias-pull-down: true
+      bias-pull-up: true
+      input-schmitt-enable: true
+      input-schmitt-disable: true
+      slew-rate:
+        enum: [0, 1]
+      renesas,drive-strength:
+        description:
+          Drive strength configuration value. Valid values are 0 to 3, representing
+          increasing drive strength from low, medium, high and ultra high.
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1, 2, 3]
     oneOf:
       - required: [pinmux]
       - required: [pins]
-- 
2.43.0


