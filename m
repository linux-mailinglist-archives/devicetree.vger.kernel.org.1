Return-Path: <devicetree+bounces-74962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1E1905135
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 13:16:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF0EE286989
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 11:16:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E114F16F0C6;
	Wed, 12 Jun 2024 11:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lq8CUop0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377FC16D4C9
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 11:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718190989; cv=none; b=TizLas3RhLhhhozbViloyScLxCqiIoyGxFhWNtJSoqD+MPx/C3yaxN/LH5AJtnaVIouH/NGYO9FtzvyXdFw7mVIp22VuuDQqghTC0xlA65VuNvjEv+LXtQAkaxvyHSspY9/trMzKKImMshVJz5mRupRIR2VCFbBjr7S4lb4+zJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718190989; c=relaxed/simple;
	bh=6WIbM/yRrBCMeBCWP+Zk2RivA1OpNHDdgbheWxxWPGc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LpwtGIwz47ylkJUfIDhgtHQ913IfPe6CPhQ95ldDilDYVrBqQw/0lTXi60KLrNxcrhyfvi97iKgqnzN71qYH9aKQ6LjNC9gpIISvjSGXDu+K+7+1VxT3I2vqb4fDyBFqO9NmEBW1kCC2kGz7YN8uTPkR+zzAZjTpyEF2/aFjPhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lq8CUop0; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-42172ab4b60so41236615e9.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 04:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718190986; x=1718795786; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QSoXMnr/AHLsd2eigsBHGTPuPHmBb5vzNsTv17MtRpc=;
        b=lq8CUop0EF5/6B7hi82aSivq30zu/+ULmb49eXyVV7TscKmjtc3n9nUl1rkwjmsBWD
         JH5S8IYlJ1IbiKntZuOr5sunK5KBXupL7nB6zRDJlykftR3/T1yZaLNJgQ1uypGD1EbI
         q9mj0exr1Ju1PyoS6oLEL3At7b/Jx/o5B5rV/B7rqbLM7yCVZYrnNo9VUr3ZokVrHLEV
         JTry3ZP5zOoQtLtfE0xnplE29dZr/Gn5tbUBdHbQCBPPjWMcMmG6l6fenUWhx8mokmBr
         Klx+gUPl7a2IA8TPN60O4iFrts4BaGgqOj70sO1Dh7BCRwnvyrZBGq7IpWxS54Diehms
         wpWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718190986; x=1718795786;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QSoXMnr/AHLsd2eigsBHGTPuPHmBb5vzNsTv17MtRpc=;
        b=UTtdkjjedmFy1WUDD0J9e6iKFlgkml80YfJ2cN2Z1vSvjQ29nb6Dxfdw7btQbU12xM
         tbU3h2ABLP9WW/Nf0VzBj8lPfHbXJQUlh7XjEpK9PYyb0YEeHdObBrTWYjidWJYNJ1vX
         zYO24z7JjWenl3dye3h1mjL53Ugs1OgC3QA8+6aDEc9jbsR0lVAA1JwLbfq3dkc7DNVx
         t/sjvG5ZpzoweeP0muag4Tx1orlzTF7IHtSGzihytCsYvbE9s+/Uj90/fLJXwgil7LJa
         EJiRzRg1M5WlKDvdXM2AHVQMQ2nng1qKMuIVWpjWL72D902oZNkNLwWCKQS85jINNLtn
         sg+Q==
X-Forwarded-Encrypted: i=1; AJvYcCU4kdW0d4KxGgetFyirXyDJ0ftEFI1QsquBZjlfMnsgBpW1V1XB9Jec2wTZX8dYkWHjplp/wTtBd79Upoz/soNdYn/0HE1Ij8jm4w==
X-Gm-Message-State: AOJu0YwkR1qm04EzcSC2z2gFyWC4ZVV7L61xMfDUjRK3TdvB9e/OXMng
	RtWhGHNNA7gQocejfsjl+UQZZDMy98AnppQFOX+/Y9obyVUA8AjTt4SRHThoDKVK9GDa0aelarC
	h
X-Google-Smtp-Source: AGHT+IGOCZNcIyA/tr5UUm+USYoqBR0ZQJOtGZGPrc28TlspHiIvoT/2tTuJfzTVrYDnOoe731TUlQ==
X-Received: by 2002:a05:600c:2192:b0:41b:e0e5:a525 with SMTP id 5b1f17b1804b1-422864ae1cfmr14089625e9.17.1718190986533;
        Wed, 12 Jun 2024 04:16:26 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42286fe75c4sm22852375e9.5.2024.06.12.04.16.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 04:16:26 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	arm@kernel.org,
	soc@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] MAINTAINERS: ARM: vt8500: add Krzysztof Kozlowski as maintainer
Date: Wed, 12 Jun 2024 13:16:23 +0200
Message-ID: <20240612111623.102868-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The ARM VIA/WonderMedia VT8500 platform became orphaned in
commit 8f1b7ba55c61 ("MAINTAINERS: ARM/VT8500, remove defunct e-mail")
and clearly it is on the way out of the kernel.  However few folks send
patches to it and it is nice to actually take them, till the platform is
in the kernel.

I do not plan to actively support/maintain ARM VT8500 but I can take odd
fixes now and then.

Extend the maintainer entry to cover also VT8500 DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: linux-arm-kernel@lists.infradead.org
---
 MAINTAINERS | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 63d991d95c73..c7a13170b697 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3107,9 +3107,11 @@ W:	http://www.armlinux.org.uk/
 F:	arch/arm/vfp/
 
 ARM/VT8500 ARM ARCHITECTURE
+M:	Krzysztof Kozlowski <krzk@kernel.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-S:	Orphan
+S:	Odd Fixes
 F:	Documentation/devicetree/bindings/i2c/i2c-wmt.txt
+F:	arch/arm/boot/dts/vt8500/
 F:	arch/arm/mach-vt8500/
 F:	drivers/clocksource/timer-vt8500.c
 F:	drivers/i2c/busses/i2c-viai2c-wmt.c
-- 
2.43.0


