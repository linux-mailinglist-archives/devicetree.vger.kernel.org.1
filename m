Return-Path: <devicetree+bounces-252804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF374D02B64
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 13:44:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4DBAF30074A3
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 12:44:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1401D4348B0;
	Thu,  8 Jan 2026 12:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="F6giAJOr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E02D63FB6A0
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 12:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767875238; cv=none; b=fJvg5Jc8H90T53oNTNlcU+BdV8oOcgas7sFe6Vjlsz/maLzeT+wGebyzj6S+GXQzut5OUf/nl8L2QbBpe3rCciVEf0UHoJmG8ltv4nab2sI6LQ/TyZpepCMsqF2FZ63aysvgzemJDLgUu14YTRI6J8hUQFVt82ao8y9BooyoJjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767875238; c=relaxed/simple;
	bh=JNc8LtlSqbUM1gYtb1AiNOnq7DSnYAfiDqB4gjysnbQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bwKwpDrm8IxLq8fqdqh+Db5Soc47R7zs1Ob47mdDbWtbCNO1Q2Wcl6uCRi1xL3neZbpA/MLKtquXExuVh1Y7pWdua27zft01gcYJlvMM399AMQ9C42Mi3k4nvJUnjPQ00779GJpRmDodR1jKgRZOtrfyuFzPGSuCku4YKxyAPyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=F6giAJOr; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7f0da2dfeaeso2712038b3a.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 04:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767875235; x=1768480035; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PQRNhZyBrryZ4W75vN/HbLrPnH9UQ6pAq5yFj98AFr8=;
        b=F6giAJOrD8SEr5WoFCyZ/0TCE6d4bbNrYtbsQzXXEMmRpchQw7rXMmsb3MIKmba4P2
         LNvgKhxjq9p+cHcsuGL1yLf7JmBSNYrNj3kL69F19Gru4aJF1xmWAtcogvRWuMOLY+QS
         LSu3Nv8h3Oefr137bSqY16iXnCwNbAxw2EUPpNekPHU1jWhYLLtSKqq5/hSscWEJLE2t
         qDfTbZKqE4zZF9Grlsh8mCjNXXR+SMtzpXSjhAzjwN6LH/jpehT1H1xRBaMH8L1EBUwi
         9JqJbGOAFjRDpKNzO8gg083dqQymNuKLE5HDXCrB082Kqpnb1ArDK7KwY0tJqyG5BXSb
         uQDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767875235; x=1768480035;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PQRNhZyBrryZ4W75vN/HbLrPnH9UQ6pAq5yFj98AFr8=;
        b=pchp5Zp531Q+PmkR77ydI9bxh4c5yXAY9uOedoRMb+NckpVuvURuoChisAiLrQUWnD
         tvs89ShXw9k5MykSYP2eW9rooTPx36Qywno+GjzHjiSTNIBx4lBvwIsS3EoFr/YWoYXl
         44w1sw+0kogOdw61c92EvPkrALHh5Lt8wLhfZdox995aY6N61L+kAjt7oOgu8Bh72C3N
         e0FDjTEtY4vOgHLs2IEwhKQaGPdlOfKxJJFFKqnxJ8WP6nOWC6zmj3MvB5hKgo/q1rJn
         3WauEM2jhEAln005O0NnozkEJ7LxzJv/+8P9Uzl8HKyLwx7KmeW6264juuKtUfQMYb9h
         aNEg==
X-Forwarded-Encrypted: i=1; AJvYcCVVwbDgKM6CxMlE7nbbXdzTQbO6Ztpfvo9bOxDNSqFq6roF6ZkwSexAc6yaN1MdfZvjTUblyssAhNoH@vger.kernel.org
X-Gm-Message-State: AOJu0YwlPX1uvtt9Ds/yKyW9eIX9yrSlbGu0CCEf8QS5DkTJZobHIjwn
	q+0vN6cdbFZbeeLMt+27psdmf4KGNo0Bw1gi5ZpuZw8RWKlN7sR6MUJXepgjxRjTcmY=
X-Gm-Gg: AY/fxX7agotaqcb+FcQwXR3ZCMHePnUICMBr9WupU136cjbf3957WWBkc67kakoR7NU
	gl3NeAXn+ikkepCGA4/OpRRQ3CSxBtVbI572cyBJQYb6FUhIb8p6YlsTocqewar58D+1VnNUjOX
	Ka8YfaDObjI6EfAIHa1QE0dqQfvwIiXEkZCjl73N0jqg/UTpee66v/yzGYO8lQMO2P8tFzbhAGB
	ywqB63baL6j2gKrTkfTG31wj+Mv815jvb9c/7gC2CiMZ1jdROVi62+xhsFJeMmEhGo8hDrZyVB0
	DRfI2Ytl0dRK4VR1nkL4xf3dP7TaJMOyp2B8yCBHfDGgr+5i9uhRYknoQlV1E8zeVhHrmkJuyjQ
	mUQ7o1gGZNI2RZ2WgjENgt4j/kWESxbj0FawRqNGq5eYudYUGKoFmouL86cvzyh08DiqKKxBqHv
	/3ZbKUgxtKogIH8E/hHBB3NwAL9UNZbDM=
X-Google-Smtp-Source: AGHT+IFRYciZVmuwXxqgs2+z9bm/vSux/mZP8+GYdPklVFiskGwlhaojZKgF/mVDfvC0CzsE/D+StA==
X-Received: by 2002:a05:6a00:1d12:b0:7ff:c51d:7e0 with SMTP id d2e1a72fcca58-81b7d3584f2mr5778224b3a.3.1767875235211;
        Thu, 08 Jan 2026 04:27:15 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::40df])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe991dsm7656401b3a.16.2026.01.08.04.27.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 04:27:14 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 08 Jan 2026 20:25:57 +0800
Subject: [PATCH v3 06/11] dt-bindings: riscv: Add B ISA extension
 description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-k3-basic-dt-v3-6-ed99eb4c3ad3@riscstar.com>
References: <20260108-k3-basic-dt-v3-0-ed99eb4c3ad3@riscstar.com>
In-Reply-To: <20260108-k3-basic-dt-v3-0-ed99eb4c3ad3@riscstar.com>
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

Add description of the single-letter B extennsion for Bit Manipulation.
B is mandatory for RVA23U64.

The B extension is ratified in the 20240411 version of the unprivileged
ISA specification. According to the ratified spec, the B standard
extension comprises instructions provided by the Zba, Zbb, and Zbs
extensions.

Add two-way dependency check to enforce that B implies Zba/Zbb/Zbs; and
when Zba/Zbb/Zbs (all of them) are specified, then B must be added too.

The reason why B/Zba/Zbb/Zbs must coexist at the same time is that
unlike other single-letter extensions, B was ratified (Apr/2024) much
later than its component extensions Zba/Zbb/Zbs (Jun/2021).

When "b" is specified, zba/zbb/zbs must also be present to ensure
backward compatibility with existing software and kernels that only
look for the explicit component strings.

When all three components zba/zbb/zbs are specified, "b" should also be
present. Making "b" mandatory when all three components are present.

Existing devicetrees with zba/zbb/zbs but without "b" will generate
warnings that can be fixed in follow-up patches.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v3: Update the commit message to explain the retionale why B and
     Zba/Zbb/Zbs should all exist in DT.
v2: New patch.
---
 .../devicetree/bindings/riscv/extensions.yaml      | 31 ++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 5bab356addc848abf8240991ff525c619b9fc0dc..e026b366c8f5dbe7d6988d3ed374183c165de35a 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -109,6 +109,13 @@ properties:
             The standard C extension for compressed instructions, as ratified in
             the 20191213 version of the unprivileged ISA specification.
 
+        - const: b
+          description:
+            The standard B extension for bit manipulation instructions, as
+            ratified in the 20240411 version of the unprivileged ISA
+            specification. The B standard extension comprises instructions
+            provided by the Zba, Zbb, and Zbs extensions.
+
         - const: v
           description:
             The standard V extension for vector operations, as ratified
@@ -749,6 +756,30 @@ properties:
         then:
           contains:
             const: f
+      # B comprises Zba, Zbb, and Zbs
+      - if:
+          contains:
+            const: b
+        then:
+          allOf:
+            - contains:
+                const: zba
+            - contains:
+                const: zbb
+            - contains:
+                const: zbs
+      # Zba, Zbb, Zbs together require B
+      - if:
+          allOf:
+            - contains:
+                const: zba
+            - contains:
+                const: zbb
+            - contains:
+                const: zbs
+        then:
+          contains:
+            const: b
       # Zcb depends on Zca
       - if:
           contains:

-- 
2.43.0


