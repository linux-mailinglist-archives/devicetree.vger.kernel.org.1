Return-Path: <devicetree+bounces-248832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DE83DCD617C
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:08:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BCD56305FAA5
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:06:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 778572D8764;
	Mon, 22 Dec 2025 13:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Bqmohv0m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C73E2D7802
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 13:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766408814; cv=none; b=o+taeWvx4MateVeFhegqLvrzFOnpY7SgSWAsqE8aLUhuf6jaFMHsFFX7x52C+ZtUmcZ4OyyWwQzPWT4+buc27lsZo5tkLiGnePQaBmZ+76/Ux/G22CjKgdN7hSrDwkPQRHKWZ1c1kjbH3W7V7WMt/aAYCglnky3kM/qB795+9Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766408814; c=relaxed/simple;
	bh=zt6I6EAytFR8ggLCy61krEbf9jT4HMDJDCSOrojN5mE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JrrmEs31tFpMbUB4SukzR5Pw9gkaMrmj2fSkv3n8PUUZIcID2EKgBLZAYkw5QCcCx+iywA4INIDdn5u9Xj9kFoT9dc63PAqoL3w35ejFiPyyihO54nsC95GnLJ3Gz1h7rCLVe2RRGQXrMkh8Z6SxNf1Sl1hOZLM7tY6qPDL4T2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Bqmohv0m; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-bbf2c3eccc9so1822315a12.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:06:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766408812; x=1767013612; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dZd1WuVDHb3KQSVAGlgKp7AEdPQaqmn6KEKfxdPwWwg=;
        b=Bqmohv0mq4dTG94nJWjNeRRu7lTmb/NWFFyobGwoguDTVqyMHs+539fvhASS5Ua7xv
         YfUHvqZ4oF08SKGbyzp5RslCvKglR4XzqFxrpNNBT6PsUEHoMLQRgLDrvy1jc00NyJVs
         Gj0n23z2HmFYHNttwWZClmtzBunC8RQoceQibyTSppuhGc83EmIk9522RBl6US04JR7N
         DZ1rIvsovYKaCbtcvt1XIIi0aMtnZ894SJF8pMPKorAEk1USt5eC8t9nrnmWLrW4fndp
         OWmsxf0VVKsweiXqW4gatl2pKnSVRN2q6PKKPxLRgepbInmdLcBki5MCdh123NOfJ7sa
         bOZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766408812; x=1767013612;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dZd1WuVDHb3KQSVAGlgKp7AEdPQaqmn6KEKfxdPwWwg=;
        b=qFftCMWIDDnLpAePhHjv3QIa5c4D5uJPSolrpBhNBauV0Lg0KfevH930DyLffB00Qy
         pZ9mf2OSL68/qGE8OUZpr6M2L7ORXs2KoB4ZyE/8LWWV3Wb6OIIVB/cGV8zVic8Ho3zh
         irjUuGpir0602lQ/Ld4m6SpDzEW8E6Qh2n7cneCyoUeLOtwJ4XIhgN9VDPhpQrJAANLr
         Pe8/ouL/WhbRTm8t8b00wKysphnjnWC8vit1JxYEJkwU/qZIwSkPn5feXZwpmvPLCK0a
         pCPXbYAQ1u4uHs7a3x7nPt+mo2WOhFZa0fmlVOp4PQgbX7U8eNP/B/LS6mhYTITz/Fv6
         NRAA==
X-Forwarded-Encrypted: i=1; AJvYcCVEAVwmFbcTRuBWkGeQqEpFeKueYt15SoVLFLVQRb5gSKuSYnmmu/wEI+ySMzrv09Mv5WHlbw+BnfBV@vger.kernel.org
X-Gm-Message-State: AOJu0YxXhIOrIRfAwQeoQqBMSKOiNiJnUGsgHIjqxUomzWffB7inFIMt
	MyVdh/DD+QPVB60s/6Ycqf40Uv5p4TyQTXxv88gjNUSASuwFImbS5vn2XutMhyXIseo=
X-Gm-Gg: AY/fxX464V0nZGo/I8SCn7KJk5yMnelxEYCq7dEUWLSJ/g+A+2cHDVFbwbITOQKwTH4
	ZqMBv8uMGWsdyesaT237GDB+1g3qjM9DhtFnv/W9viDilZGQAwy2A5jlc32GDONEIGUjWItBujZ
	pDczGtqGw6XYw9AvC2dEx5J7mznSe9GR5y9ktbtcgoDAVOb+JIGhdxn7bmNjI3YCTXkJlx+MiCi
	ZfOYzS+oPIJ7AYGaushac7s4Vb79FSLkNaK+jpJvSB452VOQDMJ77mPe7G08sbNU/a3OgCZMlNP
	rhXsEe21d8UxZanw+FbukczOvjlCVhwtAdw5ybu3a/M5qin3AI044h1BHivjHWjF2pvBYbwFYb7
	PjOeGD7DQooKZ5JP5q9qvEaQqLGn/Cr/U86ubjNsDF172G4fdZ4cd/rRHoQKoLzP1f86UL9vK0p
	CdW1wya8J9Wf3NDBDyDRCeQ/l2M2OQkys=
X-Google-Smtp-Source: AGHT+IGPSlitj+KdxoHkSz2WMJ8tmr7DZSG1VelElp3zzCiMbTqUqeMIJpXpJbfUrLndiBON9Fx4BA==
X-Received: by 2002:a17:90b:4c4a:b0:343:3898:e7c9 with SMTP id 98e67ed59e1d1-34e71d6901cmr13057876a91.2.1766408811887;
        Mon, 22 Dec 2025 05:06:51 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::402f])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70c932casm12970405a91.0.2025.12.22.05.06.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 05:06:51 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Mon, 22 Dec 2025 21:04:13 +0800
Subject: [PATCH v2 03/13] dt-bindings: interrupt-controller: add SpacemiT
 K3 APLIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251222-k3-basic-dt-v2-3-3af3f3cd0f8a@riscstar.com>
References: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
In-Reply-To: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Anup Patel <anup@brainfault.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Yangyu Chen <cyy@cyyself.name>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
 Anup Patel <anup@brainfault.org>, Andrew Jones <ajones@ventanamicro.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.2

Add compatible string for SpacemiT K3 APLIC.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: Add Conor's Acked-by.
---
 Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
index bef00521d5dacc002d24c50843ebe6380a7d5524..0718071444d29fbfa36283fc9666e8cecd6f77e7 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
@@ -28,6 +28,7 @@ properties:
     items:
       - enum:
           - qemu,aplic
+          - spacemit,k3-aplic
       - const: riscv,aplic
 
   reg:

-- 
2.43.0


