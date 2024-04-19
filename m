Return-Path: <devicetree+bounces-60924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7EE8AAFC4
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 15:53:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29D38282432
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 13:53:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7704E12C490;
	Fri, 19 Apr 2024 13:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="afVj/10A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF91200D3
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 13:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713534809; cv=none; b=HuSrT444Caq0FGsIStJqxUpzFpMaB9B2scXq0KwDhOWTU98OJp04jZ89XXs1+GAzndS3OYmQeOH+Zjvth0D2NoQyXT/dB4vIfxpqcjb+V0JBLliilIyiUYSOW8YLIsxIfMvJShp8R+5GQ1M0hJy4kLCSEWxUg6Au9z4x6gIx6zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713534809; c=relaxed/simple;
	bh=vrbYctIlR34XvCo+0mO4TtX1/WKz5AwGOqhYZmNY4t4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-type; b=amm6grKAg/9ksCq19aSXRdpUE/qiVXqiLdL51R6caXJ881b9Wn4WO52IcOjuAlCuv7GLulx47UdcLrnTd0qEbuLdCXkZXL4dwilPj3bFuxcoy1BgnW/gUXotK6KP5gZhqpvdrHA49YUG3IQ0kx5S2myhms3oyCR/35wvvbzdg9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=afVj/10A; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a519e1b0e2dso226051866b.2
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 06:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1713534806; x=1714139606; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QyU/aimoOzYSkB0vjF1tWwNaGtFimVg7sebvXAeBYyQ=;
        b=afVj/10AyFRJmEDNucK9X9WlZJcK2E4BWV+sSymeAUo4C9DuMFQ11LECFp7m2A3H2j
         3w0fnnvQB8q8KV/wobiUwqpTEvPL34Awyn772iFjK73qIU7SY0kD8nekx9NE+AHiYzvK
         BZKo477kQN0vBOFTZXhO9K6uEAh1ei3PHxUJ80gZsJXibhS412TpsybMarnDsD3uJrXi
         B9CujdvW0KKF5t1rCKV4t2L/JPw3BOclRGtloc6OY7kGDaSSjgR3Hv2TaoCbZlPj3UD4
         54srTbAm+/SpmHhsmSSbp5tRuikTYP45/oiKDojvtOP36P+Ax9IAt4VdE+oyC4SZCFlj
         kPew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713534806; x=1714139606;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QyU/aimoOzYSkB0vjF1tWwNaGtFimVg7sebvXAeBYyQ=;
        b=Ko9Gbs1wEPEvnnFwhLJnqrvlWwgvQfNk1zWy7fIQ9leiC46RiJBYvEsJ9pCSGG8Yk4
         /NmXC73tP3fFg9BOzJNgpzYzvoFTPccNtWtCJG9c2y/4d8Hpq2IY6KeMTd5uLq6PoL2G
         +5PNuR33vpGreh0tq68mJwIiX6j5WreiaxUppM9DAbEEdtZv0F+XBJAej1o5z0PV5lpE
         IysfTxWmbaw3W+YsY3v7GopWoy4nt92krcUMoIkcqEC8k5XRtQArMPBLkIItoKNaQoer
         Ygo9T9lu6Qfuj/NJ/Nsq6kETbnJokEQdScaXelIOmhu8r+mjPB0xMWkG47pgwrhrzTRX
         hi/Q==
X-Forwarded-Encrypted: i=1; AJvYcCU19MhAp0et26Ma1WKHn62yQq5JrQ4aOfiJIvYufpdQ9cyIgLKNgE2AtOnLkFWoHT9N5GQr8tvyhrlyjFBXcbvZ2+mNHr/OqBf0FQ==
X-Gm-Message-State: AOJu0Yy8KON/MAMXvb0wY3bJfK8m/J9EcbN6SUg1QbezlAYZie6dwtLf
	IF0HBVmbltDZAl+9FZiPJ3Oi71/buvoolhiuAWcU34tEz1zTre8IvNCIli2zu/U=
X-Google-Smtp-Source: AGHT+IH1EO2N38+RgiFvRKbqHN8RMDmj22wsb5kJW4Tn71jZ275QZBl4gl7wrF/9ir4IqqZ9rzm1eg==
X-Received: by 2002:a17:906:1786:b0:a52:3eff:13f1 with SMTP id t6-20020a170906178600b00a523eff13f1mr1515498eje.2.1713534806253;
        Fri, 19 Apr 2024 06:53:26 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id s11-20020a170906bc4b00b00a522911e2aesm2213930ejv.124.2024.04.19.06.53.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 06:53:25 -0700 (PDT)
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
Subject: [PATCH v2 2/6] dt-bindings: riscv: Add Zawrs ISA extension description
Date: Fri, 19 Apr 2024 15:53:24 +0200
Message-ID: <20240419135321.70781-10-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240419135321.70781-8-ajones@ventanamicro.com>
References: <20240419135321.70781-8-ajones@ventanamicro.com>
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
 .../devicetree/bindings/riscv/extensions.yaml        | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 468c646247aa..584da2f539e5 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -177,6 +177,18 @@ properties:
             is supported as ratified at commit 5059e0ca641c ("update to
             ratified") of the riscv-zacas.
 
+        - const: zawrs
+          description: |
+            The Zawrs extension for entering a low-power state or for trapping
+            to a hypervisor while waiting on a store to a memory location, as
+            ratified in commit 98918c844281 ("Merge pull request #1217 from
+            riscv/zawrs") of riscv-isa-manual. Linux assumes that WRS.NTO will
+            either always eventually terminate the stall due to the reservation
+            set becoming invalid, implementation-specific other reasons, or
+            because a higher privilege level has configured it to cause an
+            illegal instruction exception after an implementation-specific
+            bounded time limit.
+
         - const: zba
           description: |
             The standard Zba bit-manipulation extension for address generation
-- 
2.44.0


