Return-Path: <devicetree+bounces-228351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83005BEC741
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 06:35:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D7726E18FE
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 04:35:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D84831F3B9E;
	Sat, 18 Oct 2025 04:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UWKywFiR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709B05227
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 04:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760762122; cv=none; b=X2QBKOvoDvRHGtI5g7vEyNhXRQbU1mrBV6HEMwr5tibHsbN9WMwO022ADkZzaNQodY3O2iST0TBosfnHz730MWmkblk4VvgGCcZ1ut1SmfRDebpGSw97xloWq91q/tdSPCq3yZDUbSZvS4mJP2jr7B5knoVfbqHkNhPrqoUkc6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760762122; c=relaxed/simple;
	bh=IRlElH/s4TgwQF25W5IbthX1Ni1hpN8zqJF38YL9VDQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EmBhTVuaajw/AlfLDo6y6syp1DrLDBhokyYP8DBxFWT3SfzR1R+gNUi2kYLf4Rfvq3J1/iyi+souZfqYt7lTGKdAgqJFjrwKDmxzl/WMzUTkX7bhzy6q69DEqHeszBgTR74c5X/RUSDGv8kbO9CfU4uCwYxxWG3x0jGXdeLUCvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UWKywFiR; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-290c5dec559so16980795ad.3
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 21:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760762121; x=1761366921; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FwE+FlafPdFDMuivWnU+BJHVFOy/nLZHlq4G67TTc0k=;
        b=UWKywFiRFTcbr0WoKz3tq0jYWoWWEFA99sV0VV5grcfrEG9Grf4aalRUNbOa59XBBg
         93jiaJJiNNLcTumGzmCJWv2GO5fyaa50/drTB5k0NcxQkrgUirR6jHUhu+UgbT2pdKS9
         3PLWshh367KYrBkcP5qvsYwi50+RHVWBwfFfnjsbbcZ0F89A50J7prgVAz/XDACj51Gu
         yGeuTY0m6uEOaID0AV4JqFiuV4EFCMR//4bSiaCTg89lG+rAp7jnwUf4xOPPLwaRvLKg
         1rCohe6nTQjl0VHgodswC2cZIhROm2wyUcD7T8sL0FMEVkCXhRyA2PMkuTitIPrqCE5S
         pzZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760762121; x=1761366921;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FwE+FlafPdFDMuivWnU+BJHVFOy/nLZHlq4G67TTc0k=;
        b=AG7x63Y9lMu+YESh8BWdYG6VqLjLL2NX1S0ECtzKIk85RePp66Bkr4Km0Nj9QK/WxH
         dvbyXrFZ05jHooVoA+NkDF6e9J1rs/lE0aEvSa2AKVm2C2iB/hQxpgM6apsFNlYQ6fN5
         ZKi+LXrzdmWoNPElsPfXNoX5uklMtsHbNsvf3rvZbiF6lKs5q6QXql/vv08t87ltecS5
         ViPb41Fm9caP4IQwEBlYRRl2Wg9v56vorjbTRqCSfXFNQlrczjiiRmts+LKgRQ1Ap6oO
         ooH4Wq4CAXFqzsoIX4NtnkHkIacf8HYRhuGTaRvQcgPSjhkVonDh8RH+rLaQnSuo+VD9
         X62A==
X-Gm-Message-State: AOJu0Yx+8X9wrDq6NUej36cVe8mGz4F3Y/2yYi0EiWPqCkPpBcO3MsM8
	K1foVtsPEUT4OEd/V/LLGMj3Gliioy6MVpopejTBm3ZdyeL2t1EB8Ub9
X-Gm-Gg: ASbGncs2Ti8HwHciXrG8c+YLmbiAupHmN5go1jHdbig10F3w5fzLSzeyjLCqtsPHcni
	byhVs1BFifkgI0Xn1oF7kFMlvnSrFSVu8LtTeUBPakji2pRZ5BCMmWNi20I5fS2/ov9FJRckkI+
	IuRguLDs/uCaDWE6s7YBVPOgOxOgEyse1DPf2LuOMbkmdsJfvqwSC57rLCFRufTKJmmM/a9FaUs
	t91WkSdw+1V4AwQP/juAadhOj4+OyxiuHbOAOcak0+vYvwKprVp5Jxtjj/xtxkjGFpfFPBy03f7
	8tI+l2BXmncQetYfgjbiQ401e7H6wXaAiBy9c9o34vfSA1r5nn/bmtdncTKJuUChqhhgF98Avgu
	OP38IYSrVEOTyTIESCns2dxUs0OqSd3zxTZyPgCMeLiIZxftP+8PnuafkwOSdjwsb8GDmoX9+4p
	GI1jQoOPWP114GL11W+SVrEm5B5jj7COQkYe/iLgaczInuaT4vajyq+hxmWoh9BCKfIioBlTRV3
	6AL
X-Google-Smtp-Source: AGHT+IFjj+JR7R/Q2O8WxGOAy+zB1ukpFPQ6elAKB9VmH+ImOjLf6iOrU+WTRyaZ3nV4hWJdz9cmxA==
X-Received: by 2002:a17:903:3bc4:b0:290:b131:31dd with SMTP id d9443c01a7336-290c99aa9a0mr69186125ad.0.1760762120750;
        Fri, 17 Oct 2025 21:35:20 -0700 (PDT)
Received: from cosmo-ubuntu-2404.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29247218eafsm12167715ad.101.2025.10.17.21.35.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 21:35:20 -0700 (PDT)
From: Cosmo Chou <chou.cosmo@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	cosmo.chou@quantatw.com,
	Cosmo Chou <chou.cosmo@gmail.com>
Subject: [PATCH v2] ARM: dts: aspeed: bletchley: remove WDTRST1 assertion from wdt1
Date: Sat, 18 Oct 2025 12:33:09 +0800
Message-ID: <20251018043310.1056032-1-chou.cosmo@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove the external signal configuration from wdt1 to prevent the
WDTRST1 pin from being asserted during watchdog resets.

The WDTRST1 pin was originally configured to reset the TPM during
watchdog events. However, the pin is incorrectly routed to SRST#
on the hardware, causing unintended system resets. Since the TPM
is not currently utilized on this platform, remove the external
signal configuration to avoid the incorrect reset behavior.

Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
index 24969c82d05e..abdb1562115a 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-bletchley.dts
@@ -1080,11 +1080,5 @@ pinctrl_gpiov2_unbiased_default: gpiov2 {
 
 &wdt1 {
 	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_wdtrst1_default>;
 	aspeed,reset-type = "soc";
-	aspeed,external-signal;
-	aspeed,ext-push-pull;
-	aspeed,ext-active-high;
-	aspeed,ext-pulse-duration = <256>;
 };
-- 
2.43.0


