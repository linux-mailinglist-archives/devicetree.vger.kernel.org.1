Return-Path: <devicetree+bounces-228571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1310CBEF3D2
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 06:21:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C73F3189579B
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 04:22:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B0192BEC3A;
	Mon, 20 Oct 2025 04:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="Fy+PcwA7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 877A22BE035
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 04:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760934081; cv=none; b=Kxa/Ok7IpAWEHv/za3QRQniMdND24j8tyTiD+idFdCOH1IJQbu7nepa2Yh4eimMGzQrEe0LlKlHawI2+FrTNQdmwniUTOuGmMVA+yKtinbJf4Y2iCcTsnH+dw5OR8OXyydCo/Ol+7C2E1P/lpVS/D7+7Nvf4jr8WossDBWIA5A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760934081; c=relaxed/simple;
	bh=AHBUSWC6NQwt5gipootBG6lu9YU2EyCEcBy5+RZx010=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rzVejydOH0xgn71I88EvinkOgi01qt/Y5TKRP5gM8h0zekOxlNvN1NoXHtIbNaQwm9oOy58PkH4aCzx0c7BSqslWRVaSqmvD5Mmao3iTjsT5tlVYj8FPjSOHN3iK4Gpv5U0ajcx1l1IScZ9Ynr90bG4ZPX9Ctvk6rwHKswkfxGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=Fy+PcwA7; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-b6093f8f71dso2630652a12.3
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 21:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1760934079; x=1761538879; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L4l4TBk/LGXRpjovIOSrhrLfanQNTxjIirl6+Uo+sE8=;
        b=Fy+PcwA7DJKVPgOFHkiOwNGCplaBhivkMWy6/hJY3vkJxrEQDOe5fH4wdDZxQuxdxM
         ODhGgX0SoHcvmHlc2xHQt6Ti199e3tpoU9wbX/omO0rb5AD4ULCVDe1yIrySnt9U5JuI
         EhUASxzV0eiUJxqKzxDLCL43n0DYeH68u/kr+PXngWRcm4yuNyVX+3WdsAZQ9QKCJPv7
         z/T2U4ZV0LspgeS6txCi543sRWb6EONfCRvdw8z4brMix3bYh/LSfJBe34RnvGkSLyJz
         OSOoUb07JHJQI+E4FWmc+xDzS6DfCpvwoYayVwcD9wF8WL09hKsrRM2SxQ6qjjDrHo/f
         7oqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760934079; x=1761538879;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L4l4TBk/LGXRpjovIOSrhrLfanQNTxjIirl6+Uo+sE8=;
        b=lqeLr+FoZ5R63sPhegsPuuK3sBb+8zWJm0TtDs0CIxXagk3+pAuTidjsLZMJXyH1Zs
         Km9cC03uYqcoEmf34Wb3CjXeZfHTF/qj/jVwiLY25qA9dV3BgxZs4hGPsfOpeDCFgm6Z
         9wr4KSxHqbGkrBjg0S+YmnSutXLQzxNbdVSrbq3sGd1+WI0dEzQgs3hUrXCDqjS+fmzL
         S8VtKuYvUT15J7lDMRa/dC5LpF0C+5131qBOgv7wr7AeJfOd9B/PB4uzBtWu8l8RWP76
         b+D41VfqAfumNYPhaMtreMYk+7OFXhS8BbVJ1+n1k5rlX04UjFtzpS1wxLqMZXYRogVq
         Zzhw==
X-Forwarded-Encrypted: i=1; AJvYcCUWYhMOl8FT6bIHXJS7yQv2uMPKn9O8ZoXF0AONFBElvt8GR3LPgcaY36tsMsiUyk5VIRNWZ7POk/dL@vger.kernel.org
X-Gm-Message-State: AOJu0YyIAGLtGzedoWckgHqlrcUskG6Egp0+7XfDZrXfgF7f7jxJt8F/
	XiZPyukYBYbIs4fveVjW9mDt2gXVnyInu4T3h+2VOKjWGqVuVmFcege4zUr/16qjMks=
X-Gm-Gg: ASbGncsYhH86U0/V+1ZdTqki/8vfzIGpP7+DC7pNwJ64WbWXpI0m0OFeyGpPXLUxQTi
	hceYoFr9RDFVk/5sPmTz6dxhDiGu/Rq9mjKb32wKwEIYHBVEmJE5EnWMDjTGl/rTxPMvAk4PWiT
	yfsqexKQA2i432sQ3UpvRUFaPvvxFvkRDJ24XDZz3QE12aEb2U0w463lPCcLAcZdHG3zx4wuOmG
	F5CxE8zxBVQ5sjFuqNmxJS0D5FRzHioLN5h72wujrl1IPQcBMS71ktbEDnIuLLlCdYKMNMJfle7
	iuL/LTXXk8FI8Hv0bln5HTlqk5MqnzCmOI1txTJ4oo1suNrIdbdbTZcNZni2hkMDshnI/wijjNl
	lnASrA2uIjJRbNMvP1VsA1dtNMiopCLe/mx4WxX7ZCN++W80E98d8eyfupUiAGldi7AXa2rltQ9
	5gfFzmIONym77cPWKalEnMhWsA1AomQ8C6VFu5lJV94KIn0oLxght0pFlgEJ5iCPO6s2e2XHLos
	oiW6izFS19j
X-Google-Smtp-Source: AGHT+IGSr6CeYbnbhFqLb/PEPw/yfGu/4coKFj18cuRK0sGNHLwIgZvYXiVeS+ZT8M8+GdgG4XcYZw==
X-Received: by 2002:a17:903:120b:b0:290:cd5f:a876 with SMTP id d9443c01a7336-290cd5fa92emr146909545ad.13.1760934078867;
        Sun, 19 Oct 2025 21:21:18 -0700 (PDT)
Received: from J9GPGXL7NT.bytedance.net ([61.213.176.55])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29246ec14e9sm68762035ad.9.2025.10.19.21.21.10
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 19 Oct 2025 21:21:18 -0700 (PDT)
From: Xu Lu <luxu.kernel@bytedance.com>
To: corbet@lwn.net,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	will@kernel.org,
	peterz@infradead.org,
	boqun.feng@gmail.com,
	mark.rutland@arm.com,
	anup@brainfault.org,
	atish.patra@linux.dev,
	pbonzini@redhat.com,
	shuah@kernel.org,
	parri.andrea@gmail.com,
	ajones@ventanamicro.com,
	brs@rivosinc.com,
	guoren@kernel.org
Cc: linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-kselftest@vger.kernel.org,
	apw@canonical.com,
	joe@perches.com,
	lukas.bulwahn@gmail.com,
	Xu Lu <luxu.kernel@bytedance.com>
Subject: [PATCH v4 01/10] riscv: Add ISA extension parsing for Zalasr
Date: Mon, 20 Oct 2025 12:20:47 +0800
Message-ID: <20251020042056.30283-2-luxu.kernel@bytedance.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251020042056.30283-1-luxu.kernel@bytedance.com>
References: <20251020042056.30283-1-luxu.kernel@bytedance.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add parsing for Zalasr ISA extension.

Signed-off-by: Xu Lu <luxu.kernel@bytedance.com>
---
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpufeature.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index affd63e11b0a3..ae3852c4f2ca2 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -106,6 +106,7 @@
 #define RISCV_ISA_EXT_ZAAMO		97
 #define RISCV_ISA_EXT_ZALRSC		98
 #define RISCV_ISA_EXT_ZICBOP		99
+#define RISCV_ISA_EXT_ZALASR		100
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 743d53415572e..bf9d3d92bf372 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -472,6 +472,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(zaamo, RISCV_ISA_EXT_ZAAMO),
 	__RISCV_ISA_EXT_DATA(zabha, RISCV_ISA_EXT_ZABHA),
 	__RISCV_ISA_EXT_DATA(zacas, RISCV_ISA_EXT_ZACAS),
+	__RISCV_ISA_EXT_DATA(zalasr, RISCV_ISA_EXT_ZALASR),
 	__RISCV_ISA_EXT_DATA(zalrsc, RISCV_ISA_EXT_ZALRSC),
 	__RISCV_ISA_EXT_DATA(zawrs, RISCV_ISA_EXT_ZAWRS),
 	__RISCV_ISA_EXT_DATA(zfa, RISCV_ISA_EXT_ZFA),
-- 
2.20.1


