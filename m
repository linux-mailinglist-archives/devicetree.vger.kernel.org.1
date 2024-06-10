Return-Path: <devicetree+bounces-74345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D357902C1C
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 00:59:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F2C8CB23331
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 22:59:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE876156221;
	Mon, 10 Jun 2024 22:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="EJR8jTBD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 812B7155A5F
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 22:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718060232; cv=none; b=ulOSIF5/iJ/LmuznmkiA7v6BZpJuq/6A4yAYOMm0XF76mhBulqncjzioW1ec2InA9Lnw84yYGymE07EhT4RYd/B0h7wKgvhz9IrLyf0j8x1ioe2bzyJOk5QlnEec13KS2yoRQx0ChmVTuAkcM3XYHLNm31Z5D4YgcGUzLLVY62A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718060232; c=relaxed/simple;
	bh=FGQxjkKFg6ikcL755lFMFBnsaceTJTK90HJM8u9R8ek=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OpgUe9LviwihQoNsB/6n3ajlgKk0f88v2kZ8fmNYj/Q911esEE1Mh3Le8nfdJspm+BmbfsNlDRWeMwc9rzibYK29W/m+8hEMMxVnbRYHPSyUAiOX8F1Py1nOA7Ns0wwZUbyZv7z+WsHs5le7ehW+wr4cZq/ptbxDmqyEPvsAI5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=EJR8jTBD; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-6bfd4b88608so328895a12.1
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 15:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718060230; x=1718665030; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r8BieCexzaDREgF6SB/4DhCje3SwtC4a6MLqQwsxjuQ=;
        b=EJR8jTBDLMtoXUawI59YXuQO6BxhohhQLPGXAkflAdLPRsPgH1vA1RSCGhunOUjpKn
         f0O53KbwPYDKOfWkIA93WnboUMYAQ+QFCTGp4rqAL6mnDRASmMuu796KWlNIX0QFR8S6
         fF7YiX+kESMbswnDSRQYNsKBwoj7/ZAOfzAoZGZzOGG3Ld0nj14k7L+wi4VVDc5eMWyV
         FTjPZetDl++CZj7Jnr2uRKZgjdwIJHJ+5LSBxGA34YxQ59E1iSAODKYpL4BKue8ybp61
         NVTue+at4uz/vNTGRG8K1zRVa1Qt5RYvR3M/Q2CTRq/r9gME/Vzqe4XLkivdbjeiUJ1J
         feSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718060230; x=1718665030;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r8BieCexzaDREgF6SB/4DhCje3SwtC4a6MLqQwsxjuQ=;
        b=rr6k5mCkx3lInn05p/9bfgX4P1GAGAe+W8s5WF+i1IddLvWV1oXUYgoBmBqHjblHx5
         0sCWEfcELp/NGLFw+pxcSAmFdXs1wzBNQbLlJzRK5Xj5XIVnAABU2nNZJD/SHVdueyL3
         rhz9aZ/YwIr2tkGsLO/Q2MrZvcbMbBCSYlt/4yYMUBITmdZw2ni2+434lLsMz+vG8Vir
         YC1D6fpbbYKjfbJK6+wwQwnrEY5MhSPWkgccbr9eVBGnH6wPC99wW+uT3XCmkLDiSWFW
         YafndGvrH63AaMT7nb/3QcS88H8Rwrruzh377mlAQ1mfP7SQrRNX2H6wvmZrf95LxJI3
         ZezQ==
X-Forwarded-Encrypted: i=1; AJvYcCVXKrHQoL4DbhE//ZjlBz/rxgGDATVtMTqpje4c0lX+vl3T38LIDCXw5jFexvXt1efF/s7gJPRlRgEek/kGO8TojdmJVX75beXOow==
X-Gm-Message-State: AOJu0YznJwFFYSfxWUHim9IesODwAlpblvAbhe2eojc7iGM6hFWagW4B
	Zw1llQlwSbll8256ihm7Yztah8kZnTQvyB1zi/2XWJAWgPKxoy4wi/uCaFXR484=
X-Google-Smtp-Source: AGHT+IFz9vtXf5e0aEV1kuFGwIdEBaQ9jNPXflxwrEiSR/c7uf4L5n+hy7zOGF7s5B/7ltU8tsmhPQ==
X-Received: by 2002:a17:902:cf04:b0:1f7:26f:9185 with SMTP id d9443c01a7336-1f7026f932dmr68716645ad.10.1718060229608;
        Mon, 10 Jun 2024 15:57:09 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f71b597072sm18355865ad.99.2024.06.10.15.57.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 15:57:08 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Mon, 10 Jun 2024 15:56:48 -0700
Subject: [PATCH v2 11/13] riscv: hwprobe: Document thead vendor extensions
 and xtheadvector extension
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240610-xtheadvector-v2-11-97a48613ad64@rivosinc.com>
References: <20240610-xtheadvector-v2-0-97a48613ad64@rivosinc.com>
In-Reply-To: <20240610-xtheadvector-v2-0-97a48613ad64@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Jonathan Corbet <corbet@lwn.net>, 
 Shuah Khan <shuah@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Evan Green <evan@rivosinc.com>, Andy Chiu <andy.chiu@sifive.com>, 
 Jessica Clarke <jrtc27@jrtc27.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1718060203; l=1250;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=FGQxjkKFg6ikcL755lFMFBnsaceTJTK90HJM8u9R8ek=;
 b=8Jye09us6BGw0+GT90JyFf5B/Coarcsdhyyne2ijzLW8oQNtKmUdJ3Z2etU1E80MtSToWDYJY
 NmJCjTuWVUcDEhoybVbz6T2CJmAUWhNf0+w/qoQHK3c6gHVe4xXvoyn
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

Document support for thead vendor extensions using the key
RISCV_HWPROBE_KEY_VENDOR_EXT_THEAD_0 and xtheadvector extension using
the key RISCV_HWPROBE_VENDOR_EXT_XTHEADVECTOR.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
Reviewed-by: Evan Green <evan@rivosinc.com>
---
 Documentation/arch/riscv/hwprobe.rst | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index 204cd4433af5..9c0ef8c57228 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -214,3 +214,13 @@ The following keys are defined:
 
 * :c:macro:`RISCV_HWPROBE_KEY_ZICBOZ_BLOCK_SIZE`: An unsigned int which
   represents the size of the Zicboz block in bytes.
+
+* :c:macro:`RISCV_HWPROBE_KEY_VENDOR_EXT_THEAD_0`: A bitmask containing the
+  thead vendor extensions that are compatible with the
+  :c:macro:`RISCV_HWPROBE_BASE_BEHAVIOR_IMA`: base system behavior.
+
+  * T-HEAD
+
+    * :c:macro:`RISCV_HWPROBE_VENDOR_EXT_XTHEADVECTOR`: The xtheadvector vendor
+        extension is supported in the T-Head ISA extensions spec starting from
+	commit a18c801634 ("Add T-Head VECTOR vendor extension. ").

-- 
2.44.0


