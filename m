Return-Path: <devicetree+bounces-59600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CE18A6246
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 06:15:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BB381F23B07
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 04:15:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24DED15A4AF;
	Tue, 16 Apr 2024 04:12:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="HNFSeinA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DB8115A494
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 04:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713240748; cv=none; b=bu1c8jMlrfSu2+t3FMKr4zIocqId4qlKGn6hlyke9SGKZfoL84F7OPk1wUndegQpgJSUWgFWzt9KvFnKfTtV803BOKycMMBcbjN9iycePkK6a8h+T1Mi2hz4EVESVAL3cLRd1/Ua6Ps0OGEE0mdC8oFxoI8JjEFX7jVaoD8jXCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713240748; c=relaxed/simple;
	bh=t4tv2YhM1MolJnYPmx3+B/R7xn5gYh3VtunEyUIwVAA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bs5LlpUrMlvIImibzaUjGXqksptjCS7Vv0dgLrEuLJNzzENh2ueXIO/T0Fbe1slNw/7yzoFCY+OyQ+MbBiOdZjKpx2tcFwGv4U8rPSAL3OOmTlxOF5Yh8lTgitBrobRl5i8zX0xms4JBPSJ0oAogNgFrgfVdPvZzb8fbqswtJbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=HNFSeinA; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3bbbc6b4ed1so2408521b6e.2
        for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 21:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713240746; x=1713845546; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sCqKMMvpjdMx8mqL5GwN/rt+g7kii5wG+xB+75rraRY=;
        b=HNFSeinAdvGD34PIcO82wpIXzRhEzgD86k+NLmNla08rb8Vd0XsMrgp3315LcrBvus
         hslmNEDiwcpktcJCXmvWgvrcYFUQK9zn6G1UpywiCGTrtn2oJr23lLFN8nLxYqz8Ha7S
         H0zB9pc6y5j7gDsgrsTQ0Ne2+YcD8kNetmppNqievHySoMtaDXS9JhdRJpL7xCja9EJc
         5ta1gB9IutXowzmP91xuDSkXdnX/apl6hXEdepvElzXYWZ/LIoNmR5o1qnwa4G/xht2W
         duLn09YY+PhJHowgdhoqD8unlWq66dmd8t4vNn7Q49P4iblXEglkWUhih3asmddAWU2v
         J7KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713240746; x=1713845546;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sCqKMMvpjdMx8mqL5GwN/rt+g7kii5wG+xB+75rraRY=;
        b=Mtb1SDkZPkTek6tVPXwnoITdysyxhRwd+9PTmmEQHQTA4voROOIMadHWZGOkScrEQW
         vrkyYaEjXsYrUD6WWrrBrbygtgbNDanluR/MbygJJcG5cK8xXjjt47NeLpeUoCBZtJa3
         dc5wyuqUigKXaOuFYWn6Kkw8tMT8ddRguwUBC42D6Q9hF9iYqzXpAHHv5fRydU9r2CaV
         qCETpmLanrr8ZEatlARDjpKaGtwE5Ca9KbCvWOfimH/ysmDrjlXk9mx7dUP5aPNLp9jX
         3Ih0QE46WBwz2hL/fHnI3VFZJ91FS00wZRYmyLGcDv7Zor9KQ+OkLLHRrQiC1Mq7tMkt
         sWig==
X-Forwarded-Encrypted: i=1; AJvYcCW7dJ0sEiGQsvIgUN1UhUmqCZBLp7jKr1NWOiTJpHOjhnAjF+JeMG85LjhcyFIut7oF7yV1H3lAQ/kuOAzsCn9b0wtGUprhQIimxw==
X-Gm-Message-State: AOJu0YzqXyVqxjHK0WZWvQoj1KCE0GGWe9RSSc4pSIj87ci2Gh5UfA3r
	aa29yZZl1ebMv44scK7j3dQXHegCapAXQpG6B5oO5yNx9trjJxsfLbaUetapkt8=
X-Google-Smtp-Source: AGHT+IEpGL0icYKX5PllIZgbV1Mq6iO6Y/RuUgEtp3MC4j1Ev8qC7MXxnxmDdDqSPdZgQAG312G2Gw==
X-Received: by 2002:a54:4390:0:b0:3c7:3cc:4401 with SMTP id u16-20020a544390000000b003c703cc4401mr8064441oiv.7.1713240745725;
        Mon, 15 Apr 2024 21:12:25 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id z184-20020a6265c1000000b006ed4c430acesm8383149pfb.40.2024.04.15.21.12.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 21:12:25 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Mon, 15 Apr 2024 21:12:12 -0700
Subject: [PATCH v2 15/17] riscv: hwprobe: Document vendor extensions and
 xtheadvector extension
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240415-dev-charlie-support_thead_vector_6_9-v2-15-c7d68c603268@rivosinc.com>
References: <20240415-dev-charlie-support_thead_vector_6_9-v2-0-c7d68c603268@rivosinc.com>
In-Reply-To: <20240415-dev-charlie-support_thead_vector_6_9-v2-0-c7d68c603268@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Guo Ren <guoren@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Conor Dooley <conor.dooley@microchip.com>, Evan Green <evan@rivosinc.com>, 
 =?utf-8?q?Cl=C3=A9ment_L=C3=A9ger?= <cleger@rivosinc.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1713240719; l=1314;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=t4tv2YhM1MolJnYPmx3+B/R7xn5gYh3VtunEyUIwVAA=;
 b=isB07n2asLeicajFbrHS5GnX4um2GcfRqCBHqey15g9iSFo/KLBAvZbTXNNNocDL8sTcHkD1Q
 aTAEer5hj04ApIn92eDCW6p8HyqISrXjQ4yzyupIXZOWTr+byO/qdow
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

Document support for vendor extensions using the key
RISCV_HWPROBE_KEY_VENDOR_EXT_0 and xtheadvector extension using the key
RISCV_ISA_VENDOR_EXT_XTHEADVECTOR.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 Documentation/arch/riscv/hwprobe.rst | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index b2bcc9eed9aa..38e1b0c7c38c 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -210,3 +210,15 @@ The following keys are defined:
 
 * :c:macro:`RISCV_HWPROBE_KEY_ZICBOZ_BLOCK_SIZE`: An unsigned int which
   represents the size of the Zicboz block in bytes.
+
+* :c:macro:`RISCV_HWPROBE_KEY_VENDOR_EXT_0`: A bitmask containing the vendor
+  extensions that are compatible with the
+  :c:macro:`RISCV_HWPROBE_BASE_BEHAVIOR_IMA`: base system behavior. A set of
+  CPUs is only compatible with a vendor extension if all CPUs in the set have
+  the same mvendorid and support the extension.
+
+  * T-HEAD
+
+    * :c:macro:`RISCV_ISA_VENDOR_EXT_XTHEADVECTOR`: The xtheadvector vendor
+        extension is supported in the T-Head ISA extensions spec starting from
+	commit a18c801634 ("Add T-Head VECTOR vendor extension. ").

-- 
2.44.0


