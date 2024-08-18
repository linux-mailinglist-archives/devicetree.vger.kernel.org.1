Return-Path: <devicetree+bounces-94493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A3385955B61
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 08:37:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4CA221F218B4
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 06:37:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD005D268;
	Sun, 18 Aug 2024 06:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="UdVKXF3A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AE31754B
	for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 06:37:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723963067; cv=none; b=VtU/hFEBnLoFda08ygMbSZjJySHNXFprltYKhKhkI6L/fKrTOdbs+/A9ivZPkIsZIZ+VAwnq16c/hV0JY5qXA44QZJYmy5N3EOYaQRCAN8wHFwRkJDwYhif6o56V2uvwoixQmO7yVSS6pGMswY0Cj3kXT70omOn8r7hDo9taSgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723963067; c=relaxed/simple;
	bh=p5C0mPrYaEV0ZHTAtYTAehGo4qZczBizeN+6aCANZ+E=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ugqMBt2YW7tRxMBSebkk20VFz7kABybXDgdi13mri6vBy1bgUIEdzXZr1vu1psaRm0nBoSykhSmCIPK1W1Bi+O+SFyH3iRhGOy78+tlZNcHSDhHsP7BbgZhn5C6TpTorzjw779/GtvZQiKMnBEh2XXaHqtzpxeg5t9IhGIBDKho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=UdVKXF3A; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-428e1915e18so23571425e9.1
        for <devicetree@vger.kernel.org>; Sat, 17 Aug 2024 23:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1723963064; x=1724567864; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=baf+ls/kqppHRVa4XBeUzS5UcHJPfW6ACwqFNpH2vH8=;
        b=UdVKXF3Awl1w29iyh5jWcrKC181zC+3B0oOIr0O7IABxFn37cqqyDpvZPtuRatadYV
         9xDNhr4TFm2E4OL+1BoUYfwbutLFTdf9Y2/CbW/pCFPp8iw8Bu7bB6KDr/c7TJ9fSU+W
         CYe0+nAurfkqxHegeIKFYIsuoAa0JZ6/LmKFo80PX/bDeBmnMPpXHX+71g71DGDipfZ6
         KxHbEPdTT5hHlO3VvJdBczZqUD9Xpf8QCjgZ6JTa48VLwgAFOggO6p762ymNsgm7BW4S
         ONMedDD+buiolZmxEoe5AwegFmPRbFEWYYDG934z62Xr7K8ruin3iwAwCoagxyiQa7sE
         Ymaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723963064; x=1724567864;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=baf+ls/kqppHRVa4XBeUzS5UcHJPfW6ACwqFNpH2vH8=;
        b=oGngSnAt0ud2J4WVQc9tLeI2SK+ZGoQyg47Z/8VYMGfe5+wavsvCJ5slmX3lMYgrnd
         EPQXG9oPA4dMdPhXbepHguKVipZ17J0ugsZJzm4Nm8WEJ4LpJ6l9LExEcYFVqvuK4XnN
         W9PENwgK5Tjt5I8aXyAPNircqr/1qf3pPHywghDqCUXyCzV8HmAFQDWa2MtEPJNYbCXg
         ecAJxeijMTMZIbTsx9+X7ZM+loBJi5klkUAowjbE5Vlx1jB4F2fjkrsxpipVUx10FBmD
         dDkb70V84ZKSkkqPAIBBEVD9HafMYasIA+qJ7H3/2w57fyDU7bZ76nQe+JpU0owggpIE
         4w0A==
X-Forwarded-Encrypted: i=1; AJvYcCV5HSGdHsMH7LAnraATHFzVOFnqNheCgtODBpSGGk9WJUz6onwdUnav3lh9s/K3JcZtSA/Z3Rccu4CwuUDXFVz0s5cAC9gO2GrumA==
X-Gm-Message-State: AOJu0YxknzYZUvm89JJvfSXhbQp1VXX5CY94vUBjtpGY2odFzhnZV2nE
	QSLOwI6aSHep51cDhSgE57x86Y61b7LIoeQmqC7Q88LM5i/tjQNzK9pNbtXe0B8=
X-Google-Smtp-Source: AGHT+IGOB8iW+hQOXjQLAOh7AsPotaVJZqzzaXjL4GlISP37ETZjWU8j89260z8kTNAIQ1PuXHkP4A==
X-Received: by 2002:a05:600c:3b1f:b0:426:629f:1556 with SMTP id 5b1f17b1804b1-429ed7f9224mr53506085e9.31.1723963064325;
        Sat, 17 Aug 2024 23:37:44 -0700 (PDT)
Received: from alex-rivos.guest.squarehotel.net ([130.93.157.50])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ded7c93esm119862495e9.41.2024.08.17.23.37.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Aug 2024 23:37:43 -0700 (PDT)
From: Alexandre Ghiti <alexghiti@rivosinc.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Andrea Parri <parri.andrea@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Will Deacon <will@kernel.org>,
	Waiman Long <longman@redhat.com>,
	Boqun Feng <boqun.feng@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Leonardo Bras <leobras@redhat.com>,
	Guo Ren <guoren@kernel.org>,
	linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-arch@vger.kernel.org
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>
Subject: [PATCH v5 02/13] riscv: Do not fail to build on byte/halfword operations with Zawrs
Date: Sun, 18 Aug 2024 08:35:27 +0200
Message-Id: <20240818063538.6651-3-alexghiti@rivosinc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240818063538.6651-1-alexghiti@rivosinc.com>
References: <20240818063538.6651-1-alexghiti@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

riscv does not have lr instructions on byte and halfword but the
qspinlock implementation actually uses such atomics provided by the
Zabha extension, so those sizes are legitimate.

Then instead of failing to build, just fallback to the !Zawrs path.

Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
---
 arch/riscv/include/asm/cmpxchg.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/riscv/include/asm/cmpxchg.h b/arch/riscv/include/asm/cmpxchg.h
index ebbce134917c..ac1d7df898ef 100644
--- a/arch/riscv/include/asm/cmpxchg.h
+++ b/arch/riscv/include/asm/cmpxchg.h
@@ -245,6 +245,11 @@ static __always_inline void __cmpwait(volatile void *ptr,
 		 : : : : no_zawrs);
 
 	switch (size) {
+	case 1:
+		fallthrough;
+	case 2:
+		/* RISC-V doesn't have lr instructions on byte and half-word. */
+		goto no_zawrs;
 	case 4:
 		asm volatile(
 		"	lr.w	%0, %1\n"
-- 
2.39.2


