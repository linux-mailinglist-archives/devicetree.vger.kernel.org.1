Return-Path: <devicetree+bounces-255758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 314F0D2807E
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 20:22:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4C2830695DC
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 19:18:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6140B2F744C;
	Thu, 15 Jan 2026 19:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k/T5db//"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A641F2F5473
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 19:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768504701; cv=none; b=GfCBnTK+rN2CmchZ8bjZSQTgMXocnrLEXOvzWOyYOxPJvRoYLSdlK4vGcbaNDPcxZCya/PDwqZDvUXNxCS54HMVOArW1ImdjvXfg+jDQQV0lGHRCI8lf36mALVp7QDuD8OPPdd7ey4OoIxNYcI9CU9he+TtWhs6eh7hPEBsONjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768504701; c=relaxed/simple;
	bh=DQtXugkjv8oX6MRmxxnR9guqKGpU+4+ND0DSGzuSelE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W1x7yKZf8NZgHKyDQe3e6l1l3TykKYWLUaVD/tloicxOIC7UjLbqsJu/F2Q0kIaEDnd7e12ap2djlxmMX/yBctVU8FHdD8mzDYcSArrELPvdosa87L9cvAkSmhqpxlhSj2HP0w5BDRxsBphZUzXuD+R3cfJ53QOqO6Lv4SpsdLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k/T5db//; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-432d256c2a9so1274317f8f.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 11:18:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768504697; x=1769109497; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7WczvYa8CE5EVgqZyNZGoJ41lrxkL4ZBfyJ2rH7pD8I=;
        b=k/T5db//fsRafVYrLw98LfeF1HYdOJrjfha0dXJ3gJKwT0RmfSYQ6PTjxfxcwwap8H
         sFBbXgHu0R/Fw2IW/A132XN+AZC7cgQmcRwkTErj+8ZWdhhPvGIUbnMkRI/aDAtlWgSy
         dFn83gVI+3Eeqr0QvwN8OmUgkDeukW0oMmkj848xUM45zd+VpT0C49ECIsri/DwPdX0n
         KCY+yJuI/DXKmeA/icHcyNyxCwOK5dt5PZThGGnDziRo9HBLvnjPjsghjL9lcSVJKpFj
         kM4FPJs4iG8sxpTF8hW+qLuicP9QTwHeVTAnQodIcTD8W4LVzkvBN1D7PZxf1U8YXAGI
         1y6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768504697; x=1769109497;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7WczvYa8CE5EVgqZyNZGoJ41lrxkL4ZBfyJ2rH7pD8I=;
        b=EUOU8uFVb3LJLmn19TdK23Da9WzK/iZKn2rxaaYRIx6uYXkBWhEV2xMysWLC3xw/j9
         1YnwyoZo02HKSsGojWecTjlAEuKylm7lIBbGZ4x20ZuXBo+Ik7FPA0njiN9ZvepYovZi
         EIYjZTmSWghL2XGR2gbzzPrIREIaY48hY2EElaAjUlCMBDT1V4ElSkCHNDD07+xidUij
         UsRVpzNy6mqcsM0Ky7VFkG/3fhbbnp/f2t7ETxSAhZgclg+w4SeYOH61MCwF/auXypMe
         CaAzRNI52PsHJLEnh/JDCgJCd9zKXFwNAqk+oHNtXAppEFHm7RTmAr0v+Qdg6fcCg6iW
         ejkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmVbME5QExV9vYW1+cmkRebRKccZqv07uA8xRL3vr7gDxgxgl0yZgXnv22mZKWF319ztDI/4hmQrk/@vger.kernel.org
X-Gm-Message-State: AOJu0YzozBt5poHgYVBV4N+BRHnqCAvpRzqfxOWlRYTJbTdP7rDyuVID
	BrLY0saLvr84uBmH7BF8jCoJEP1czFWNJUQ7kgAOg94q2QgTRAA9y6QI
X-Gm-Gg: AY/fxX5JmmQ0lyAkw1qFUHr27vtGVOudSs7LTQ7i7QBJHZiASExtpeiMunB+WgI6p0U
	JD9GxVUUndEwn0LM9543Ras+QCPXetlttiM07nNaNFXmqOhaeVUNYouDmdk+ie8iHq1t/VC+D+G
	+k/2qRGmncJGPRWwYPRnYSeHh/nlBXM68LAsaD5g61H6bWnsD6KLXcTsCPV79NYUhyBIP2w+UAy
	dgt8JacmEhS2Q9mgKvhL4PJonQS5klZGB1HlLBkPTV9OGjrf7KI5aFafZQAOT6KNxGlTP9+e11e
	LQzuYsvt9lgLmZPf3zrPTagQ1MpiBFf2B7vuY6Bmjd0LJyiuBn2ZdvunYft6C8Q1CrdTaQZFGNC
	Lhfs4b+IqSzccE6rNzFuPhg/6g/8icfSjautt2LGCWXvm4erycSpHs6fR6ZPZbddnbTlTxhhkN2
	6WQNsV1ksfGeCsmoytr8XhaY5fh4igUQYrztD2FNQ7nIbZ
X-Received: by 2002:a05:6000:310d:b0:430:ff0c:35f9 with SMTP id ffacd0b85a97d-4356a082e2dmr403974f8f.48.1768504696733;
        Thu, 15 Jan 2026 11:18:16 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43569921dedsm692734f8f.9.2026.01.15.11.18.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 11:18:16 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Date: Thu, 15 Jan 2026 23:17:42 +0400
Subject: [PATCH 5/8] dt-bindings: sound: sophgo: add CV1800B internal DAC
 codec
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-cv1800b-i2s-driver-v1-5-e8b22b8578ab@gmail.com>
References: <20260115-cv1800b-i2s-driver-v1-0-e8b22b8578ab@gmail.com>
In-Reply-To: <20260115-cv1800b-i2s-driver-v1-0-e8b22b8578ab@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
 Inochi Amaoto <inochiama@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, 
 "Anton D. Stavinskii" <stavinsky@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768504677; l=1672;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=DQtXugkjv8oX6MRmxxnR9guqKGpU+4+ND0DSGzuSelE=;
 b=yM+zC4fx7IIosib9wWNkVnBDpFynlEiv6ynEXZvFjIYVeO78hrI1gJgz8ZSXSXR1lUTlJNP4a
 qleFH+mRy5KCKhR5BVRssDGDyFSa0R4d9EPyWyCc2OxMY1+wN1/pcIG
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=

Document the internal DAC audio codec integrated in the Sophgo
CV1800B SoC.

Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
 .../bindings/sound/sophgo,cv1800b-sound-dac.yaml   | 43 ++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/sophgo,cv1800b-sound-dac.yaml b/Documentation/devicetree/bindings/sound/sophgo,cv1800b-sound-dac.yaml
new file mode 100644
index 000000000000..2a35e38dc7f9
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/sophgo,cv1800b-sound-dac.yaml
@@ -0,0 +1,43 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/sophgo,cv1800b-sound-dac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sophgo CV1800B internal DAC audio codec
+
+maintainers:
+  - Anton D. Stavinskii <stavinsky@gmail.com>
+
+description: |
+  Internal DAC audio codec integrated in the Sophgo CV1800B SoC.
+  The codec exposes a single playback DAI and is intended to be connected to an
+  I2S/TDM controller via an ASoC machine driver.
+
+properties:
+  compatible:
+    const: sophgo,cv1800b-sound-dac
+
+  reg:
+    maxItems: 1
+    description: |
+      Register base address and size of the internal DAC codec register block.
+
+  "#sound-dai-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#sound-dai-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    audio-codec@300A000  {
+      compatible = "sophgo,cv1800b-sound-dac";
+      #sound-dai-cells = <0>;
+      reg = <0x0300A000 0x100>;
+    };
+...

-- 
2.43.0


