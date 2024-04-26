Return-Path: <devicetree+bounces-63227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F07F88B4153
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 23:37:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 90F191F22285
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 21:37:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2186381C7;
	Fri, 26 Apr 2024 21:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="En5qn+Rv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5313937714
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 21:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714167434; cv=none; b=F6KpFO+PGWAZe6Tbzs/KnQ7SeqUSsMnf2cmLO1Q1SooQTr1s/704eeVjgHkdPkIUFn+FT15S2C+ZK6dDqpBf5gZ4kkZUzA0EHNY6mAZyJiVBE5ghe2gC4/eUH6graU5ph8FPppS0PLaNZ42g2YquDT07WGNcjZL2pAfQPKp+Qo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714167434; c=relaxed/simple;
	bh=hSZDQKNr3tkZT93AWiF+tJx7RzaJfBNyv2pzte748aU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ed6n+EjiqHUnsRDGCwKRCBwJTUFhc4+e/YRj0W2U6czhuKkri6yaqhh7krOaGFqts2F6fZ+bAsjA4s4aCixRGwX4yH0FqumDqoGsQ5FAf1/KrpjkejcLTT4ta0SjQkpCG3iQLeTsCjC0GRHrgwrFK8Cv51hzEPjAEF9brM889Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=En5qn+Rv; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1e2b137d666so20533945ad.2
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 14:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1714167433; x=1714772233; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i2nk2JCBk+l9WgkXKFxu/w/itsXmN0i69JJANxOESAA=;
        b=En5qn+RvohDkke+uuB6umckzYLrbraTKxz5VC7rxLPa37dvANB5peW2U/DK/aB1yJi
         WRzAnTNr2uKUO1M71qyv9f9ev26ykcPgpCvu7mRechR9/NQJk0Vb6pEx9GlVhC16+FqJ
         NdZWOdAffw9o2Q1bktCxPty7P1hCi0n3LP6/gYOn+7OedT5+7/HAlhFClTyE+QrUIL1W
         bC3ge2SMcHqHxJ8+qIbbjgT2txLbTato02xIZVtnSQ7RnlSofbTnmWMBAc6uA6VhS0fo
         MIXnnw0E6Z2LhTtwGP2L94lAux3AJkH2TESa3McEjvDxIyOn/YLMVO/grUJr9jZCL1x8
         Ks5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714167433; x=1714772233;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i2nk2JCBk+l9WgkXKFxu/w/itsXmN0i69JJANxOESAA=;
        b=HU4oLaqetRP25/Dk94qGiOTjLsOgHTSMT9HioujJeEgCbKY1BUEs5hiJ1xuiAeZ7gY
         I7qGkQIuN8GJ74YnXDiFHNuY5MJMaULQoOsGlkiigmvNwO8c5f0fqgmFBH4ffHHMaPuH
         VoBnsFquUMPdOOqHv2VWLXGwMnhiFxd9Z63mZXbVGbrdjz3JLuQQ3828tk5/tgS3QfPG
         I3g0DlyWtN+sQ8eaX/4JD6c2dcKzOYTcrft8FTZrGsAnAU3cgo/IP5WF3O3DMqltvCHl
         Z2ecndAvEN70HPwXLQ/4M0zLXPbVDi4c7h7/RZU0PCGm8sAv4z8GKFrOAy8enYXRP6m7
         7pyg==
X-Forwarded-Encrypted: i=1; AJvYcCWt7jUa5Hf4+90VyEKpbK5EtrfFXyzKQT2ws+ydwABNV/w9ZwxnMUrsW6ms4Dn0YOQh6zA7vnKbh9ep7cf1XsuAjLwDo1ATZp7f5A==
X-Gm-Message-State: AOJu0YyCyydNuURbabaQW4zWriQOJ5bkZCxT6QAT41qBVTLbJyAcouSh
	NzpOHtAVVs5uZzIu++m/p7J/vHe7nSq0mvvdCQRSpsMXTkLYgfMyjEU6qKHJyjw=
X-Google-Smtp-Source: AGHT+IGWJI3Gl0PGwdn7TcVlWGE2rPngkQ66IMWTkljKx0O39R28QRi6ZTG+h6s5DI5TOnMGruv3HQ==
X-Received: by 2002:a17:902:768c:b0:1eb:2fa0:c56f with SMTP id m12-20020a170902768c00b001eb2fa0c56fmr2018706pll.35.1714167432656;
        Fri, 26 Apr 2024 14:37:12 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id k4-20020a170902760400b001e2936705b4sm15935701pll.243.2024.04.26.14.37.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 14:37:10 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Fri, 26 Apr 2024 14:37:05 -0700
Subject: [PATCH v4 10/16] riscv: csr: Add CSR encodings for
 VCSR_VXRM/VCSR_VXSAT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240426-dev-charlie-support_thead_vector_6_9-v4-10-5cf53b5bc492@rivosinc.com>
References: <20240426-dev-charlie-support_thead_vector_6_9-v4-0-5cf53b5bc492@rivosinc.com>
In-Reply-To: <20240426-dev-charlie-support_thead_vector_6_9-v4-0-5cf53b5bc492@rivosinc.com>
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
 Charlie Jenkins <charlie@rivosinc.com>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1714167425; l=706;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=hSZDQKNr3tkZT93AWiF+tJx7RzaJfBNyv2pzte748aU=;
 b=Lr2jnO/RRrFVYUUrx3W1heVv5x1j/2KK50JOmhJOqBV6IIu6PicoBjuEuMhY9FYIXioM7ltUg
 eYjbnSGCa28Bpn9mbqy9DcPdjt/TDlijUpAGzsTJXxmd0QnM2NpCbxD
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

The VXRM vector csr for xtheadvector has an encoding of 0xa and VXSAT
has an encoding of 0x9.

Co-developed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/include/asm/csr.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 13bc99c995d1..e5a35efd56e0 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -219,6 +219,8 @@
 #define VCSR_VXRM_MASK			3
 #define VCSR_VXRM_SHIFT			1
 #define VCSR_VXSAT_MASK			1
+#define VCSR_VXSAT			0x9
+#define VCSR_VXRM			0xa
 
 /* symbolic CSR names: */
 #define CSR_CYCLE		0xc00

-- 
2.44.0


