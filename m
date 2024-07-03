Return-Path: <devicetree+bounces-82650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 149B1925361
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 07:59:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C29CF28B402
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 05:59:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F10CE13D508;
	Wed,  3 Jul 2024 05:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="ccJhzs40"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6D613CFAB
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 05:57:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719986239; cv=none; b=PU+K2y+Extwrc43hxm2VEdhg84oiB+YhAvS+unLAo5XXbRX2vtbyL+xUi5G9k3fuYdeFczJDTJWQnMVe97efjmb7Z0CQsIOG0XdqG7MRV/BzhIYorr5G7CkRCuWuwuXoYVDP+BcgGdjr/WvMixccLTYV4oAzcKbM4NF2W5eT+3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719986239; c=relaxed/simple;
	bh=FGQxjkKFg6ikcL755lFMFBnsaceTJTK90HJM8u9R8ek=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=usAo8CdMSDc5Qj3ITHQruceVvVamkeWYVm0pBk6r3gbPb+yi7EZUzln90jQDQQBbEsjZ0nIqZk20xQSA4w0L/9llkmQKntkagqIKBJCyp2AqAchFkn3oOsSJoCY6ka/eVGi/lYzTBVcSrsQdAILx24LPrF0rgnr6Vucd8wmRVHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=ccJhzs40; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-70670188420so3457284b3a.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 22:57:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1719986238; x=1720591038; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r8BieCexzaDREgF6SB/4DhCje3SwtC4a6MLqQwsxjuQ=;
        b=ccJhzs40rw31IqmiRuUUIgeAHqKOZBFT3ILMO1WTfzRUKULcoBTTUgKSRkEXPT2Vjz
         5iYFi20zzrGrBgmiNxF+eB5hTiFmGkzs7O5VGLRAgifzcB2JfOm8S6worx2T6DEDWMVC
         Udzk8WTLGWx20z45nBpdyv/dPWPRjopYhv04dCQsp5lbnuE9/GlSR7QuQ582qpeBJDgn
         MRgwpTkgZiKKV4OI81D86Iy1eQL8oU2HeQ8P5YTdE+88E/RjwR4NTLI/Wje8wmD8bqkl
         2bHV59gvRFWkDMP6JhWnofi+wcdaKQ/84fSnE0dFl60xgopTrqWPwg7XqDFiLnN79FiX
         CZpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719986238; x=1720591038;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r8BieCexzaDREgF6SB/4DhCje3SwtC4a6MLqQwsxjuQ=;
        b=NZwV6sL9a1nieWvYHoj4KEXH8ax4kFi46+FBnNZsGtxI2NOSQblQS4QOYH0531L6O7
         92knd9QEivSXiHR31t8UG7ZCkuwNsxV1KeNjpTkAmyWy+2ZahSHlyfVXspLhWIHBQ8eT
         d9pDxNWaivzjhDRlH/VjmP1ybfi3uls3DUUtNdOxAbV/rT6EnGdccrjhSGiXFnZP2vr0
         1EoQbao8s15DvVgugQxX6AJDNcZCjjdrdA/P7yqohZbgF+Jvfig9yqrcX5+jyDtsILDt
         PDSY7XCcJoh0yN7FSFeHb41GGPa8nhACbDBUBbOnX2kjprq1t1wMDoTuL/iM6T8Dp4Xb
         qwUg==
X-Forwarded-Encrypted: i=1; AJvYcCUl6S810fNgW3wFp/HyWJtUK/JlB0mSdt4L8b/UlmrLDcCmJ0a1toOlvdrbfJwITnYcjhMIxGyYLdVuWFI2eSM+m0aoWhddhayWnQ==
X-Gm-Message-State: AOJu0YxHF+yK8CAZC5G3xaZBu0PoAymDhZ3SIA77gCLrvRJxTM2gl+Fw
	afAZ3Kj7dtgShBrRyGpZCn8tUrI31SJb8IYX96bdSuYYGFj2nOMNOz0OmWbblsc=
X-Google-Smtp-Source: AGHT+IFzvdI//RONmUthpW+hRWa51qcRYfwcsRmaIZeDnAw47D4PCUBSFePGU751qqoEQDHXwWFdIQ==
X-Received: by 2002:a05:6a00:3c85:b0:70a:97d9:5b9e with SMTP id d2e1a72fcca58-70aaad356acmr9691205b3a.10.1719986237704;
        Tue, 02 Jul 2024 22:57:17 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70804a89fc9sm9514103b3a.212.2024.07.02.22.57.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 22:57:16 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Tue, 02 Jul 2024 22:56:31 -0700
Subject: [PATCH v4 11/13] riscv: hwprobe: Document thead vendor extensions
 and xtheadvector extension
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240702-xtheadvector-v4-11-2bad6820db11@rivosinc.com>
References: <20240702-xtheadvector-v4-0-2bad6820db11@rivosinc.com>
In-Reply-To: <20240702-xtheadvector-v4-0-2bad6820db11@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, 
 Guo Ren <guoren@kernel.org>, Evan Green <evan@rivosinc.com>, 
 Andy Chiu <andy.chiu@sifive.com>, Jessica Clarke <jrtc27@jrtc27.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1719986213; l=1250;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=FGQxjkKFg6ikcL755lFMFBnsaceTJTK90HJM8u9R8ek=;
 b=sIDrXUBnETGRLfiW3zt5N5JYHfJry51btMZGlC0y5DhEnENP8D39rrbQ3DrevQRN+apvrPhel
 LMTH3ygFemNAAJ/z4MibYy1lGR4MHQXOubOgGbmV5dOQelLGlVHepXR
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


