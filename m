Return-Path: <devicetree+bounces-253449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE72D0CF91
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 06:20:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3F820300F735
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 05:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17FFB3382E5;
	Sat, 10 Jan 2026 05:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="0jBaeU0C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7304930E0FC
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 05:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768022401; cv=none; b=tjZO9sBiFqZ+k6yeyPazKo91P8Bi0F4l4oqeK2dkz340dtaNyrBvG/pf9TWR8CT1FVTliLRlrPqzQ90AlxtITEUEPiz/ufEuxWD58Nu4DGIhxi/fpdDtzZI/QvgYWdKk6fu/ECbcIavp+E/siy2HSICFX0f3K3Z/5RuthaHfI4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768022401; c=relaxed/simple;
	bh=3wbWbc1mTzrz6eXxKXT7Ky0hEK+v9voe9g90BQf/vrs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K8wqfGlMzP6XquxHMixlyn2FN0Eyg4kK8IOtsj1bhW9MAeb47uQbwZuo1vcj7WEvKmpjLyZfKuSkT2Lt4i7uhQiPOee2HtMIE5I785NjgZZkzOdoEcaDcvypRvMpd/gXXrRMDk56uQT8xu15ydURxXYpgr9a9/zv+teXQgSLzzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=0jBaeU0C; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-bbf2c3eccc9so1546909a12.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 21:19:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768022399; x=1768627199; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jgbhy2bR2/d0ajbeUdzL14ozIkLKVnJeuVGHx2O7OYs=;
        b=0jBaeU0ClznIF+jfrXmqmAm0RlJlA9CJmWj0KyNOerjAaljG9YDiVPFLW3ztRMNq52
         kLnl0tkC7R9cBzxsNNChaKDLqkr2S2cqYavFfq2I5njEoEf8ktkPeLxGBwZ3FX9fliT4
         4tELi6lZ0XZb3YMTzjJNSdDGcRt0DyfwKRyNCNPZjSZhd4uPl7Kg0aX7c1ELIm1S2ayQ
         msuyIhfSXkzeTWoh8Dvc7mwEXw2F1iwnSGwMZBU7yMvgWyctdSzQ2vN7i/nubs5ZVA1X
         eb39JT1i8ZVoRTpQZNoLw3gGjbXx2ZVN9Y48zeRPGzmP8MS4VXBHuK3Gl9JtyiM2AknG
         LTnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768022399; x=1768627199;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jgbhy2bR2/d0ajbeUdzL14ozIkLKVnJeuVGHx2O7OYs=;
        b=v1DrRFdo4tzrTvUjEPmnei7+mQY9G6Eu8SuobSX4ByNlyf09shurUyN2b5F+JS3YXD
         MTMDIIC7HH0yalxlJrDch4/jBKKmXN4nSSYW1oDxDXM1YbNAEl7FzPadrxK7M69srdW+
         dFILbi7Y2OwYpWbzdi32XGebsxRVqWFRFNeJJNLzPn2I9FcNUx04TgR1fWegYJBr8iHo
         yIPUMwLgFYmGE35Br0RSAs085Si5h1f/vSulnMRMCfdFIvAiwiFSI3zqeyUaAaS9MPr1
         Xcy8kqb1ENhl/ikgQFjDe7WspC81Lo9h+ViGkc8jNgfxzAUKpiXeusgPG8UID9NnUYrC
         TV9g==
X-Forwarded-Encrypted: i=1; AJvYcCWY94cgX133sy53JgjP9YqT3NaqgBQZopxb2G5f8OW15L3KDhcTXWHl+BnlK81ClSwmzPhJzj1oS90J@vger.kernel.org
X-Gm-Message-State: AOJu0YyAFBrWAMfunOXIVlMmutQvelwa9CSEm7iAceHOW2MibQ7TG/AG
	Htbj/WGyzFehU/7U1EL4mWPsp/sbK4QIl5+jHHUPT6QA7s0IuMlsiETIPimbDUUr7W0=
X-Gm-Gg: AY/fxX7hLTisvm9E6gE6FPCmZWMGvQrZCzS5NbeYomVP6QUqGSCrut6/DgrMoG4VOgm
	wejCSE43CukcRvGgmN32C+HYvxvXSsgg4dFcg3LFvWX7H8BmWE4fZDT6tlZeUJsi4WvX9eYFtiB
	tC5qDmQ/rsmLgunJ5ZOF4rx5Ww+jibZ9V1ladNbefQlCAQmZOHyFVDKJrP9qnXQHPbcqa3HmDsz
	4y8qIdqWURZ/calZNCntWiqmlSmfaVBJFttoufK5DeyOggKAh5Pdiea9dXJXAFSY/EgDLUIrM7m
	Qj87cxTrFZ5ooOY/6Kni8nm4UOqrVRlUUdCgev1wPXBaa+iahtch1OCgfg2ltj7Zigu1WvYRIfn
	fKT7/DIH45k0fZETRmhKHXfnX6hDUVMazvRbZu8uIeOimGScZVO320DWRCBr1N3+WeKaffdUBAB
	NQ4bE9fQBlY0DAcZ6mzhYOZg6rb3sKSqtVF1qHLEEqqQpQeItnd1v75w==
X-Google-Smtp-Source: AGHT+IGNuBpZhl78Zw5IbiS1grRE/HsJVf9xBHrMUUqcEcHDzEu/FhyxEhd8ywpJ3q/0ESFdRnbphg==
X-Received: by 2002:a17:902:e545:b0:298:639b:a64f with SMTP id d9443c01a7336-2a3edb0de06mr132346145ad.6.1768022398915;
        Fri, 09 Jan 2026 21:19:58 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.108])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc88cdsm118208265ad.73.2026.01.09.21.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 21:19:58 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Sat, 10 Jan 2026 13:18:18 +0800
Subject: [PATCH v4 06/11] dt-bindings: riscv: Add B ISA extension
 description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260110-k3-basic-dt-v4-6-d492f3a30ffa@riscstar.com>
References: <20260110-k3-basic-dt-v4-0-d492f3a30ffa@riscstar.com>
In-Reply-To: <20260110-k3-basic-dt-v4-0-d492f3a30ffa@riscstar.com>
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
X-Mailer: b4 0.14.3

Add description of the single-letter B extension for Bit Manipulation.
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

When "b" is specified, zba/zbb/zbs must be present to ensure
backward compatibility with existing software and kernels that only
look for the explicit component strings.

When all three components zba/zbb/zbs are specified, "b" should also be
present. Making "b" mandatory when all three components are present.

Existing devicetrees with zba/zbb/zbs but without "b" will generate
warnings that can be fixed in follow-up patches.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v4: No change.
v3: Update the commit message to explain the retionale why B and
     Zba/Zbb/Zbs should all exist in DT.
v2: New patch.
---
 .../devicetree/bindings/riscv/extensions.yaml      | 31 ++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index b615083f2544..f671299ac819 100644
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
@@ -752,6 +759,30 @@ properties:
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


