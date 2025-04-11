Return-Path: <devicetree+bounces-165942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF7EA85EA5
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 15:21:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 852961894406
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 13:19:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2F191A317D;
	Fri, 11 Apr 2025 13:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="t4i04Luk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B8E19E7D0
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 13:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744377401; cv=none; b=h8Yg/pDTJsd+x3uuWFrZbQq/bM+c38oKHuHe4H8EuR6GxCkPTJlI9tDwbhi1pXVAZXCWfEhuvh+DYHoaHLAgU+WTX146kFaf7IpK8kmJLqTDP894xVdj/IY3rzRjF7ofOgB/OUlLK27FFJZxJODdm0plSmWcgjCOGqnBq5t+mRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744377401; c=relaxed/simple;
	bh=6n3VL3xR2NW+WiuR1BgpROds4O7/ouFUZ1fFJBmsbDQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PjV1g2W3ceZCqcHPP3hGuRCuSa46zSo/E2uPzvkHuZcC/9tx6a291SgqjBn5+B9hivP1jikmENwAuxDWKIOcCk5ZDvxkdZorWzsfzizjLO2JREGucRhO+nffUlfJZgp0yj07gkgYUNavlHMtgS3j8vTX4GudDQVKs3rHKHCmrWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=t4i04Luk; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2241053582dso26985775ad.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 06:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744377398; x=1744982198; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=63RGI1NwLEiYAeH/RFKeArdRDE2NQgX8WQsa8ntLKY4=;
        b=t4i04LukFjjq2+Jq+254ANtrKvTCGKzpLQxQt7IREewSH882ZSOJCRnybPm7A+oVJc
         z8RX2SuHnQddm3FI+tmDM2EnJSRq5QhFqlsqI/QQRBEXjFwg7d2H6kVfkHgodyTbASaN
         Y42s9k/hzpyNcOO4m8xcJAGRcVI6hMlPSOXfu09Cbs+/tDxMmixK/qcYaiAa01HCDY9g
         yduSO0Q5tfHgeZKEO0zSGm/8DA8zQ5Ma7qdY9DoPRCMOX9shwdQDq5dQb4fP5cSRh4k5
         WfG9WRE8qPFlqAFrOlRPNta0Qh58SvtlLY8RuvVuUsNnOn3Jw1lqRXkMaUjbBkdPZ6wZ
         f5lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744377398; x=1744982198;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=63RGI1NwLEiYAeH/RFKeArdRDE2NQgX8WQsa8ntLKY4=;
        b=JjvLG8AyIA6GcF/I/0G2K9geSgiiQf9GWA4LGwVeS0LoeoCmmpjFHPNmjjgWKt+hx+
         L54xAp8X5huP0x7NBtPbxIVDUHraOSs/N2+xRNQH3mrbxJqZxWXKUaiVXtmKluIS3jv1
         snCFiyAwLB/WtrORAgNP/1VpkY9M19cSH5WCp1Eeav4mQJMIlEQicsQAnCgohKjYpGB3
         prr4vm4CTQGHgXXBfAjiXs7BXcfFwmVGe7TIBL5zwMUaY3pFvctwE0MncGmIBkbB7nEV
         9+qjI0rycg35RY2wI9roGbQtTEEUhREf5zkYZ5+fMA5i9MPl5qKwkm6RqS761vzkd4bF
         wjVw==
X-Forwarded-Encrypted: i=1; AJvYcCUV5HkTpmUWQDXsrlZmwDa5HGX/4U5NkwykWmZouDOrFvmoc8FDR0JXjengYBvYbz0Hr3GZdJVJFDuz@vger.kernel.org
X-Gm-Message-State: AOJu0YxtiLHVOTQ1j0+Hc+qsnAQRT3hrTvaEBae9s7Q9M9Cu8brPcRYN
	kbR7L3brkbx4XsvzWmpKD2JFrAD5pu9Ovc8GY3cTWc/z/pbRGLMwWNKqI+4UbDQ=
X-Gm-Gg: ASbGnctp3n8QBSumZb4gQnb5C6W9etKJ7HdlC+aw1AsJjGUxi088i+en3/MOINAF6Zz
	J5gi1dnJzAc/qlSYUhtEIY/AHz1Ytnnk3oY+C/l52Ev9p2kfhFm/HLhni/ufsXRhVQ9m3axyYip
	7BUKHZdnisnM4LI00xfqv7mEUrG35+IN9bJpKiWvTQedD9LakTmSy+5iTaTlLUnDl7u7fkwpAsM
	yzW2boCf4Lzgr7Lx2scPVlDNLlmeGrfLS8SHKeFxWgxI8bOLCR29wL0sbYHHBzChsr5R7uFDN7L
	0iwj1ZObt8rOT9HwYwKPzJKCIEywFnM=
X-Google-Smtp-Source: AGHT+IGdBpii9FqwXTM5hJBzhslBNKfg5Cs2FGnvGr9Q17Wy0FzzwX5fnWry21A6oGkbvSxeOYahLg==
X-Received: by 2002:a17:902:db0d:b0:223:6180:1bf7 with SMTP id d9443c01a7336-22bea4ffb4cmr33239005ad.42.1744377398297;
        Fri, 11 Apr 2025 06:16:38 -0700 (PDT)
Received: from localhost.localdomain ([2a12:a305:4::308a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c95cc6sm48245005ad.122.2025.04.11.06.16.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 06:16:37 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: ukleinek@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org,
	p.zabel@pengutronix.de,
	drew@pdp7.com,
	inochiama@gmail.com,
	geert+renesas@glider.be,
	heylenay@4d2.org,
	tglx@linutronix.de,
	hal.feng@starfivetech.com,
	unicorn_wang@outlook.com,
	duje.mihanovic@skole.hr
Cc: elder@riscstar.com,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: [PATCH 8/9] pwm: Kconfig: add depends on ARCH_SPACEMIT to PWM_PXA
Date: Fri, 11 Apr 2025 21:14:22 +0800
Message-ID: <20250411131423.3802611-9-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250411131423.3802611-1-guodong@riscstar.com>
References: <20250411131423.3802611-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SpacemiT K1 SoC uses PWM_PXA driver.

Update the Kconfig file for the PWM_PXA driver to allow
the SpacemiT K1 SoC to use it.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 drivers/pwm/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index 4731d5b90d7e..6731669e724e 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -493,7 +493,7 @@ config PWM_PCA9685
 
 config PWM_PXA
 	tristate "PXA PWM support"
-	depends on ARCH_PXA || ARCH_MMP || COMPILE_TEST
+	depends on ARCH_PXA || ARCH_MMP || ARCH_SPACEMIT || COMPILE_TEST
 	depends on HAS_IOMEM
 	help
 	  Generic PWM framework driver for PXA.
-- 
2.43.0


