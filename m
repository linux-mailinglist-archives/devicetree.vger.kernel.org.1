Return-Path: <devicetree+bounces-62975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B416C8B34F1
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 12:08:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E6CF11C21477
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 10:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F33E9142652;
	Fri, 26 Apr 2024 10:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="ca7RPHnv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B91E1428E9
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 10:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714126107; cv=none; b=GQfjlKOb5RdJnPVntNu4f8EQhL8cSZpWAWiPsb3qLhUYsbepa5sy0qRCmuP8o2RWXLwT64JJjk13lizikBTn43R6+D2y3qmXRfEVvA5is++jZ/ODxOO503s5nmFm8kQhXvj8mKZMPrXQk1UlU4Rj3m6WqwoiBW7aboCo+QTe+3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714126107; c=relaxed/simple;
	bh=QA4MGtN/GKK7xKBSCFO4CCxiReEtsy3F/QnV7IA/Oio=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-type; b=Gt2Z+UxWUaZu5B/oO1xK976vJtY3qCvIYOQFIGLSxzZ9ueaBcgRr245Ajhycs4xAWJzczJvXapRokeaYiylbLDEyzODNglruk/Fj4baITW9DTahLCW/JmQIuPFBu0vKZzGPsSZ6t2ErMQsYS/lZ5AHXxlIIBTyDD1zaKWHIfJE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=ca7RPHnv; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-344047ac7e4so1731422f8f.0
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 03:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1714126104; x=1714730904; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tdAVaUbFR/ur15rfuHd+Jr8J7C9O8QZUTDILJt54rH0=;
        b=ca7RPHnvzm6KrhkDHB8miuO0xQPlm5LHeYpEhxc65PYITA81cKdkFVd6qvkWfijqbZ
         iSbD1GY2hlZO4/PnKhPSKJevULtWuUGEjEcRy1eeYVBA4kgXWudH5kDEwpthlYXVtRpr
         OaFMMNfmP9J5sNVCkWo/EfQ8N5i4Z/QKQl/sydieP7FxlYqht65aFkwAyqocGs8K+uCr
         eWFvQWkyY5BbPryAQ/+fNfDb9MZ+YQfwu+CCEKqlrfYW3XKrs3bUce6mReQNFoXDYNyv
         LrTblEUAGufJLsvRddV6CqkhCmE7THKqQVqQIpYizY8IDSP3XaN3T7IOAu8hqvD9kQRe
         heKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714126104; x=1714730904;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tdAVaUbFR/ur15rfuHd+Jr8J7C9O8QZUTDILJt54rH0=;
        b=BS/4HxVd+nNC/TdNg372aYoksJy+20iGDI7IaTH2oO/OyxCCSVAzD1P5ta2pQAGvkA
         kglul2wjJFb0VxyT1zfuoLV8466Aw82wJLUWws5MHC4qsShT++IxyUCtyK0QY69usJRw
         btZy5SsbWnVuBFC7vK1M5Oh/EELSt0OxWdLc+S5s6NqRSBHcEuPzVYqs42S/0kPRFdGq
         KZdj2SS9t8wwZwuT55UI40x8lummHzrrmSfRbyYunogYvWJhugNzjRfZsD59gETcZuh6
         Xb3AXA3fulxeF+HSb7UfZx88yuoZC67l/evSvfS/fiftrArg7YfS/taETQKdJ0t0xiSp
         WcUA==
X-Forwarded-Encrypted: i=1; AJvYcCWPe12hv7B4cyRdpXuMXMRbuyuGDuOfJ9ghUskumEMDO+9UHh/eAECdw/8rrm0soxD9MGRdFF5ViOyEp83XSNLwQDZMLSd2wOZu4Q==
X-Gm-Message-State: AOJu0YyEOGKYuPumA5J+HyL40me0kg4HEb5gBgJ9DP0gZ1bmKKX0tr9b
	NDng8Kl4BHiXAXjGt6Nd+Mp+h7clUonjK4NCpUdg8fuKa9GJgID08XYt+a0RJU8=
X-Google-Smtp-Source: AGHT+IF1ueQ5RobxwvdVcMOEubk4Wz/94iHKDmLcyIIXJVUsYQioq9ZmPbLUPeIoXiVrdz7bNnjXvg==
X-Received: by 2002:a5d:52c8:0:b0:346:a39f:6b69 with SMTP id r8-20020a5d52c8000000b00346a39f6b69mr4176571wrv.24.1714126103870;
        Fri, 26 Apr 2024 03:08:23 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id c7-20020a05600c0a4700b0041b434e5869sm5315128wmq.43.2024.04.26.03.08.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 03:08:23 -0700 (PDT)
From: Andrew Jones <ajones@ventanamicro.com>
To: linux-riscv@lists.infradead.org,
	kvm-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	conor.dooley@microchip.com,
	anup@brainfault.org,
	atishp@atishpatra.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	christoph.muellner@vrull.eu,
	heiko@sntech.de,
	charlie@rivosinc.com,
	David.Laight@ACULAB.COM,
	parri.andrea@gmail.com,
	luxu.kernel@bytedance.com
Subject: [PATCH v3 2/6] dt-bindings: riscv: Add Zawrs ISA extension description
Date: Fri, 26 Apr 2024 12:08:22 +0200
Message-ID: <20240426100820.14762-10-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240426100820.14762-8-ajones@ventanamicro.com>
References: <20240426100820.14762-8-ajones@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit

Add description for the Zawrs (Wait-on-Reservation-Set) ISA extension
which was ratified in commit 98918c844281 of riscv-isa-manual.

Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 468c646247aa..8594e7c33ea2 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -177,6 +177,13 @@ properties:
             is supported as ratified at commit 5059e0ca641c ("update to
             ratified") of the riscv-zacas.
 
+        - const: zawrs
+          description: |
+            The Zawrs extension for entering a low-power state or for trapping
+            to a hypervisor while waiting on a store to a memory location, as
+            ratified in commit 98918c844281 ("Merge pull request #1217 from
+            riscv/zawrs") of riscv-isa-manual.
+
         - const: zba
           description: |
             The standard Zba bit-manipulation extension for address generation
-- 
2.44.0


