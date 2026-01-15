Return-Path: <devicetree+bounces-255396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC79D22AB7
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:55:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3CC42306F647
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 06:52:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 605102F4A05;
	Thu, 15 Jan 2026 06:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="nOX42xKa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB4730DEC4
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 06:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768459958; cv=none; b=jxp/7/9daNjl6AJvWKaI3FjvYMWQdWBxKVw6CvZqNK9DiTlLkH3D7PmC8du+CYRHa4wyvoP9xH701h4iSGVcxp/Oq0m3FgwKGL4N128TQLeu0aAx+uu2GIClTXLx3YFsY1eMAMyeAOfN+WgP/qNMGIOf1BhAfLmIXYrzYYXFxgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768459958; c=relaxed/simple;
	bh=l7hGjeH41ncx+nOi6rKBCh5zMtnv08NYJtvw973zNG8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MYfNH/m1I3tSv1MUYHu3NMNwvj8yn1GKOMUpCaox1AyH15KViHSueA19pm2i8qQMgIcPCsjlJceNbS3xpbNBRole6CtW1h2EKQPRI2vgRCalpx/jl8k7aXaS+lw0qBvJZ0nWIsfvrUCDK0GReGHNhcVacIR3qRUW/pTPnZXY57w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=nOX42xKa; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2a110548cdeso4393385ad.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 22:52:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768459952; x=1769064752; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SkACyF5knfi3YNNtTGrOijDE0psaJA8wPiea8JJZ1Ng=;
        b=nOX42xKaob2IGyWNkNrhREpj29Kd8NaAG2fCAgDUANPuHtYuomwhUzg3YIs/BZO/Gy
         2mZOHRIyDWu8MKp2C7MCR8Gb3EP5tUGFG1MeXoIOJ+W8QWPcOpmbWvncYbAW6DQFLwh5
         LTt8vy62uURJtWJ5W0FN5QML1lCgEzEeIGm5qD4QeJUxjJEhZToM6tUDwniOfyjhur0d
         +F8QTUJ3ZMEbMrBRhD5i928XX3XJdP40GFpXJMYa+9f661sl9id1AaRvlGXt0alMxsp8
         eC8z7UfeylpCZHVVsETjXL1TtIGL348IwbiT4zuhfXwS6oRh+H6gm9yyXKgcqqgiCakL
         eblg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768459952; x=1769064752;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SkACyF5knfi3YNNtTGrOijDE0psaJA8wPiea8JJZ1Ng=;
        b=CxAvHgC0HCBUrr6QDGCoim+DESZVp8OgGWUnUcjd5BV/nqXGafrNffe67CzhZTOMNr
         lYCPhzanuEZ3HE1iTtef9RtfVXVX0bPPFy1EwJbZdoR2mrHiQgVVXqFBIFibGlucxhCM
         KcI7iFlaFWBS++AM5WTEUJP3J7htEhdlc7fVutxRNkg8dnCrOFTR9TC2WqgsDHamiA+5
         XECe7Q1ez6GD3RVowmu5bz83m+mXMwEbS13ZNps1AXdjbyDffqCcuiG5KAdZWAigp4At
         qw+4k9T+EMey0pA18/q0iKwX/FOfnNWb2QP35DHbAes36ngTRj67F/2d2Mo664lJxOTI
         dWWw==
X-Forwarded-Encrypted: i=1; AJvYcCXv8RS0JCHGcnu6Mi53PBh1W2nQFzBf3lPQyLS9EnvkpAvUG2WUQSXRCKVvMoiX3ppIBiBcfuqgUxkh@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8buV15esQIgEUPgwIhkdh4Oak/sJJ8PQPnr66c0/8Sl2Q8MND
	bW8lpzB4uNM1MRkIVyPCZMBEu3HUgIA44VHmJBslZgmMdjaJSUBlEkRG7PPE5nfLOKk=
X-Gm-Gg: AY/fxX5wXT9T1+g9F/vDKx2CTkIKUptYyHzDpHtos54BOu4M7VyVYFNpxMbsIwTVtu3
	ca2hMhqqx0UWmKxdYo8h9YWKu0FgShN76gX18zLw5A9KESCyCwczQ0/ZBQ0fEWi/xDcsbSNtNJB
	Pj+bLBixNHsg5h+kgndubFHievdukEo6Yjjg+kKDxELjS6Mta4zGG64VGZp9qxIedzldPPrT3vN
	XsefjjJ3/SM5RP86XfffZaW/wOvM3uaT9vvcU7ty5JuZj/KANRntmHIZknprCXmZJ7FZS6vLEZj
	0OLoI3wtBVi4lYb//qlyPTDhCMKVsrOg5X9iQPhOConYtkMzv20TDrECFE7GIRMEMYn17viG+eq
	/IyEpJKAFiHpIssdsfYDrzc7o+nfNgMdEDfFLmUjQCuOcnRx6Kejv6nLNxg3017tfMzkrFpakl0
	p9kGk5AlTz8pObZgrAudJrcXP/0yvonAAnX4N63A6XvbgFLqOUex6PyZyXuhDTdYwa
X-Received: by 2002:a17:902:ef08:b0:29f:5f5:fa91 with SMTP id d9443c01a7336-2a599dd69abmr51861225ad.27.1768459951907;
        Wed, 14 Jan 2026 22:52:31 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e7a3c6fdsm235081015ad.15.2026.01.14.22.52.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 22:52:31 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 15 Jan 2026 14:51:42 +0800
Subject: [PATCH v5 3/7] dt-bindings: interrupt-controller: add SpacemiT K3
 APLIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-k3-basic-dt-v5-3-6990ac9f4308@riscstar.com>
References: <20260115-k3-basic-dt-v5-0-6990ac9f4308@riscstar.com>
In-Reply-To: <20260115-k3-basic-dt-v5-0-6990ac9f4308@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Anup Patel <anup@brainfault.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Yangyu Chen <cyy@cyyself.name>, Thomas Gleixner <tglx@kernel.org>, 
 Thomas Gleixner <tglx@kernel.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
 Anup Patel <anup@brainfault.org>, Andrew Jones <ajones@ventanamicro.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3

Add compatible string for SpacemiT K3 APLIC.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v5: No change.
v4: No change.
v3: No change.
v2: Add Conor's Acked-by.
---
 Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
index bef00521d5da..0718071444d2 100644
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


