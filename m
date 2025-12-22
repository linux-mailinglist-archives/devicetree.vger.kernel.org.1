Return-Path: <devicetree+bounces-248840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0BBCD61D7
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:17:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D2825303829F
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:16:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEBC12D7DE1;
	Mon, 22 Dec 2025 13:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="sS6kQp8d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EC02D7DE2
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 13:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766408903; cv=none; b=O7LjTt5pO3nvoJ/K6ixxvHxVAeq0paX02luYiBJIcbsAPUI9xozOEALhtU4LojWvkKp/SB/zS72W5yC0l8yuXyC+66g5mmkTMg4OAafiYZfjxo5NK7dg/B2etq18xO21PDCrOjE1oDijvAw1TXX5hdkYHcfNLRD5g2LU0iXEDUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766408903; c=relaxed/simple;
	bh=OLOZwUl6RH4OmkxuM+Ler0k2wtMUEu+h/L5lwnAAfbw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oxGSZnlQ9j5po8IQbB6ODQMrtnDFfe/bAJUa/iJkpICezk4YpOs/yjPMDMvSdSO5mcEKzE6zTNC+e4uVs9zoGWf3b0D4Bdq/N484NlwYZGvZqrD7XOaWUEQHv5j1GDHD0LcFflMmb5s1jlmV8lNPNv6ujChlOpZpNFRQgv0AnHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=sS6kQp8d; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-34b75fba315so4461399a91.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:08:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766408902; x=1767013702; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=swb/fWVKIa6s7pXnfz0NuUC/cpCMSK9KRmfqsMJyLx0=;
        b=sS6kQp8dEtXMp3KUhoyy39XhntfiVgORe3paX3r2+RSxTf334+4AuAEVxwMqLeuUMb
         nlGA+kZh++/kAy3ggI06xxz7ZPfJmeR0yOD5y/2YbFwcrcLZgFXm4IkMjSVHpIQ9n5W9
         zgLIrSrghNnTXZW+uHMTJQ0jy7s2tsY7pC4MKyuDDF2n220KxaG8CPHwsxElVs8mOaEd
         c9MjzVzDTmFKjw7mwpkbDFp+nYrApyRFIrpD5crbrm5oWZg2PkXn54r+GCvFfGYxJ9rs
         LMjM2GSlGdi1XXEhdrWFN3pdy8Sd2qkRROoC4SscqLLiJSjORPbzch3F4GNON475Uf90
         TKhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766408902; x=1767013702;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=swb/fWVKIa6s7pXnfz0NuUC/cpCMSK9KRmfqsMJyLx0=;
        b=ecvyKghAvxhIehjFhLV0r7us1u/0F8v4+I770GAV/PTubmtjzOq3IJXNHuQWAiHwha
         KaLKMIuOdxf0/hysd45RoNz14O+NWM3WPqBBOobHQmW87cAXKWX+UDe0idf0Wh3gQeA7
         BLhT7xlV6CDVNqkwlaMdJmQQpCmQEjAee8f9b6c50aVEp2MY0cRGgpc3KEoR1vy3RzFT
         vqnfjDh/YFIVLZeiGf1YfLn84YLl4upT2H7eMLO0UOzCxWG6+UyYHr0HAfmgeFUcJJPW
         Qw3aUtCBGHOn/hGY+rSCfe/aOvES26KGnD2t8RIo0qrDp5OhmdEp6E0dWoI3tvRdwBeY
         wMGA==
X-Forwarded-Encrypted: i=1; AJvYcCWS7dkcG1m7Cy4SLjDKVMJZBonK71pSHxLSNnoh/Gai+Fxdex7CrFhN02jWv/G87/GxoUM80Aj/LZW8@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp5LGv3oxO39crnjjhpS0Tniop8rCPGxEUBEl2kRTYh8bzLgtN
	GIC4ZNSlsWFzMqNfRcARSaZ5fvUTzOeAfCcp2dk7kCs6im6PbUVI5F/dwgNvYMoDcP0=
X-Gm-Gg: AY/fxX7I3LZZQoJu/NoASZQuB8CHkWFsPf3s8qvwMkh9jHELVsFdkGBwlA24Zqsg5wC
	nn38XD5/3p4xev400A5oYCMSmbTM52dqF+YXB5LfK9vhXC3+9+n5Nr71nHS+DLRqnoK3//YCWWf
	cMSbmh/I24wlMvNrgkAKI/Ab5mnHIKzN7FVpdBCEJ/rW5otPd/I22xHYweQstGHOXGV0fMtphjc
	zF29QsEeOA2OQ3CkALD/YQqspzgbqE1zLe/OWWJJ3yfQSHp1tbXatJX0naifLCWW7gZzxUHdPwC
	Ddx5FpusUATAkAGzJbm4m28UGxL4VnBF3r6zPItG/OwLnAHchKJ3CUT+xlDEXZPAkjfOIO3CVwa
	U3X+Y6WHwFExlEEHGL53P7EWUBuUow4PRLScY2n4vek7dSmdSBGHGUqOF1FW6coqt4oErpZO4B/
	kSkNnVVNSNQzqWZjnYPHZdKMnlb2ZNutI=
X-Google-Smtp-Source: AGHT+IHPPRy520yxXn5W0jP09IBKvbx9Ua51s8et6DIA6qmS0TPddDUVvXFSM5IqYjM5F1HB2SrU4Q==
X-Received: by 2002:a17:90b:564e:b0:349:3fe8:170d with SMTP id 98e67ed59e1d1-34e9212a48amr7542919a91.3.1766408901569;
        Mon, 22 Dec 2025 05:08:21 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::402f])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70c932casm12970405a91.0.2025.12.22.05.08.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 05:08:21 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Mon, 22 Dec 2025 21:04:21 +0800
Subject: [PATCH v2 11/13] dt-bindings: riscv: Add Supm extension
 description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251222-k3-basic-dt-v2-11-3af3f3cd0f8a@riscstar.com>
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
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2

Add description for the Supm extension. Supm indicates support for pointer
masking in user mode. Supm is mandatory for RVA23S64.

The Supm extension is ratified in commit d70011dde6c2 ("Update to ratified
state") of riscv-j-extension.

Supm depends on either Smnpm or Ssnpm, so add a schema check to enforce
this dependency.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: New patch.
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 1066b7e65dab89704dbac449db4aa5605c95b9d3..4997f533b2c0defad88fd59413a6885b5b9e109a 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -267,6 +267,12 @@ properties:
             ratified in RISC-V Profiles Version 1.0, with commit b1d806605f87
             ("Updated to ratified state.")
 
+        - const: supm
+          description: |
+            The standard Supm extension for pointer masking support in user
+            mode as ratified at commit d70011dde6c2 ("Update to ratified state")
+            of riscv-j-extension.
+
         - const: svade
           description: |
             The standard Svade supervisor-level extension for SW-managed PTE A/D
@@ -892,6 +898,16 @@ properties:
                 const: shvstvecd
             - contains:
                 const: ssstateen
+      # Supm depends on either Smnpm or Ssnpm
+      - if:
+          contains:
+            const: supm
+        then:
+          anyOf:
+            - contains:
+                const: smnpm
+            - contains:
+                const: ssnpm
       # Zcb depends on Zca
       - if:
           contains:

-- 
2.43.0


