Return-Path: <devicetree+bounces-249514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D201CDC792
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 15:12:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 816303029C2C
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 14:11:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52325363C59;
	Wed, 24 Dec 2025 13:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=osyx-tech.20230601.gappssmtp.com header.i=@osyx-tech.20230601.gappssmtp.com header.b="2y/BEXEb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4EC363C55
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 13:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766584396; cv=none; b=Yby7mZDViP4OhUw5d2qi7GHHULfvwCCdA0rXQ8RAHPIQWy+FeQg+vZfpWeHr04E1yW2IU3RDi6rT+oQ90kdFPI+xBgr6JwKAE3++dRDGlc2VtJ7VkD497+5gDV6q2IDBlSVga4k+9wClDQATfNV6Tv4rYSP/mnLg5AaJiLRHgBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766584396; c=relaxed/simple;
	bh=W07j8o91s4nutndGUIlF2JXCtuMhXlYN9ZpD7DJsScI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PVKIXzmLJrxdi7IN6MfpQZxi0rO3nWxxIEmfVyMh99BecHO4MLcmr7yNsMLZgfapiDRkGGapHRX2A6o4hiU4+EWbeYpkeBrzETQ7Jv7rcMMVw9xPY6kT5m8V0lEeJ+zuEIahfHPLcVbgmZCkqTwQQ/URpFMgIM4x2K+ht22ERD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=osyx.tech; spf=fail smtp.mailfrom=osyx.tech; dkim=pass (2048-bit key) header.d=osyx-tech.20230601.gappssmtp.com header.i=@osyx-tech.20230601.gappssmtp.com header.b=2y/BEXEb; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=osyx.tech
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=osyx.tech
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-42fbc544b09so4517386f8f.1
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 05:53:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=osyx-tech.20230601.gappssmtp.com; s=20230601; t=1766584393; x=1767189193; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b6BJX3RO6Fa9KANLRZsl2DTswgSgqWJfE5bB/nVGOxI=;
        b=2y/BEXEbRVj+uaPxWqmgUICBOBwhF7p4SqouOFzHuDQnqkPWaHPTJTGApn73L7zqbw
         2dB9o/9UFgjMTbouvTuHPhxOwe/7ddsWC1t7BGR4HsWslhTicTMdbbi+wqTRomY1TlKH
         xTCoGcvNc8RaZ3xCunvVlKxdvLKuWwFhamA+fPfmm0zdVpEcAlxtGOFjreghQfoP30+E
         U829fDpkGcgMrnPepDBZ21vMoTXumEKieqr6J7SK9GjuRlgDqB5ADOoSNe8T085L40YT
         RYaIbvQDFFiaxj+TyulKMlPgfpi61D/qBoNg8ntvzpg8i3so06Lv/kTJ85e7YThVn3GY
         UX0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766584393; x=1767189193;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=b6BJX3RO6Fa9KANLRZsl2DTswgSgqWJfE5bB/nVGOxI=;
        b=eTjKiq4ouD0bA/4826c/+b4zokAySWaIuGrjBEk4Y0E0TGWNFE/O8Kryb/l1I1p32M
         eUqE/KACWZDrivQJqA6FAHgfp4TH4pPU36PsUQRDdZ3r8Eh/W3/V61pwdqoYWj0JPihs
         SrXRjGP1xLHBK/7gXlipeM0iEa6+Daj3rRlwykR1VQyXvhJlY0GDV6MwFOZl/Iq6NTpK
         XJ1j9NbTCPby+rg+zSKR8d3GYfy5BQu99Ywc4BzRQMpdI+D4CopHZz0UxCcaN6Oicmv6
         9BeiBAt/szbUpGtBF9X9DiqiU1GPYrogAlnka2cWDjUPlaH1LY+DPdY5Td3tQ31OqHGB
         MLsw==
X-Forwarded-Encrypted: i=1; AJvYcCWg4/TJ7872y5qzJQCIb5suvXuPr9HgjTsgNlUtE0vbEWM8oxh6puXANnLBlaPDa2YbNYdPGqkW1c57@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6YbqLyhv0O52F43Kx3l8JeI7YKj7IxHJblAeQn6ohHA2+lDOi
	HEJcC6dywggezO7s5AzuZslZIh0hglED0ZLpdWWwKMK7J0gBGs9mHYgv6RNbdkG/dttd
X-Gm-Gg: AY/fxX66jculdLbl8zgOfHkYIomSNXh6rfbE6mygehPsz7n2ajmG4sb+m92CSngcgg3
	VNenNOsM0ztHGez/j9hdG+3zwD6wmQWNuNwtSEpWBDKGPDo+l2bixQGjaMAcvOnxFJh0ckVl/L2
	jM9tzit+fh8NBAEs53Fo5uiMrttqI/Zi2fWxe3F8E+oHBE7msgZryoCL4bNTXcn2+JF+5Aq8mFt
	R5cYqdu+IGC9ftly7g4NkeFBO+NmMnm9mRXeT/Q9ClcLY6bqKIHGtmSPyXnSfgeQALTX5LgbM54
	qJIv/hIyAmvw6gRd1PNXmN6jr8lwIWaEDmwfhDWNYREPns7fdbdIVTHmq+n+ZvY62NttZG4kpsm
	2y+NxHXjwoKrnjbn3WhFbxmsRnLcDlPcB4dGHR5wKWGdFwHj4wTdEj3mjLzfmIj3Nlh5g4EMMrm
	kx2xWzPyBL/xjCrGPhlchVhYc2cfba
X-Google-Smtp-Source: AGHT+IGoEJirx8QYl35KZRbnOCp6E4ECh/eV01i5gqpOP16EPi53DTG8J8VmfYXqp0RVfgjQ4vBKMw==
X-Received: by 2002:a05:6000:2285:b0:431:1d4:3a82 with SMTP id ffacd0b85a97d-4324e4c6405mr20996373f8f.11.1766584392195;
        Wed, 24 Dec 2025 05:53:12 -0800 (PST)
Received: from jp-linux.Home ([2001:8a0:f59c:a900:39e4:e84d:192a:5c5c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324eaa64cesm34494677f8f.35.2025.12.24.05.53.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 05:53:11 -0800 (PST)
From: joaopeixoto@osyx.tech
To: linux-kernel@vger.kernel.org
Cc: ajd@linux.ibm.com,
	alex@ghiti.fr,
	aou@eecs.berkeley.edu,
	bagasdotme@gmail.com,
	catalin.marinas@arm.com,
	conor+dt@kernel.org,
	corbet@lwn.net,
	dan.j.williams@intel.com,
	davidmcerdeira@osyx.tech,
	devicetree@vger.kernel.org,
	dev@kael-k.io,
	gregkh@linuxfoundation.org,
	haren@linux.ibm.com,
	heiko@sntech.de,
	joaopeixoto@osyx.tech,
	jose@osyx.tech,
	kever.yang@rock-chips.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux@armlinux.org.uk,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	maddy@linux.ibm.com,
	mani@kernel.org,
	nathan@kernel.org,
	neil.armstrong@linaro.org,
	palmer@dabbelt.com,
	pjw@kernel.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	robh@kernel.org,
	will@kernel.org
Subject: [PATCH 5/5] MAINTAINERS: Add entries for Bao hypervisor drivers, headers, and DT bindings
Date: Wed, 24 Dec 2025 13:52:17 +0000
Message-ID: <20251224135217.25350-6-joaopeixoto@osyx.tech>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251224135217.25350-1-joaopeixoto@osyx.tech>
References: <20251224135217.25350-1-joaopeixoto@osyx.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: João Peixoto <joaopeixoto@osyx.tech>

Add MAINTAINERS entries for the Bao hypervisor components including:
- Bao IPC shared memory driver and its device tree bindings
- Bao I/O dispatcher driver and its device tree bindings
- Kernel headers for Bao (ARM, ARM64, and RISC-V)
- UAPI header

This ensures that the kernel review and notification system correctly
identifies the maintainers for all Bao hypervisor components in the
kernel tree.

Signed-off-by: João Peixoto <joaopeixoto@osyx.tech>
---
 MAINTAINERS | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index dc731d37c8fe..e50ad6a1bc4a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4321,6 +4321,18 @@ F:	drivers/video/backlight/
 F:	include/linux/backlight.h
 F:	include/linux/pwm_backlight.h
 
+BAO HYPERVISOR
+M:	José Martins <jose@osyx.tech>
+M:	David Cerdeira <davidmcerdeira@osyx.tech>
+M:	João Peixoto <joaopeixoto@osyx.tech>
+S:	Maintained
+F:	Documentation/devicetree/bindings/bao/
+F:	arch/arm/include/asm/bao.h
+F:	arch/arm64/include/asm/bao.h
+F:	arch/riscv/include/asm/bao.h
+F:	drivers/virt/bao
+F:	include/uapi/linux/bao.h
+
 BARCO P50 GPIO DRIVER
 M:	Santosh Kumar Yadav <santoshkumar.yadav@barco.com>
 M:	Peter Korsgaard <peter.korsgaard@barco.com>
-- 
2.43.0


