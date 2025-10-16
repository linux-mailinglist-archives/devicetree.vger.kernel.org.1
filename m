Return-Path: <devicetree+bounces-227410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 99638BE1836
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 07:29:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 80AC14E04B9
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 05:29:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6F9C2288D5;
	Thu, 16 Oct 2025 05:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NY5WYcfx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E74F10E3
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 05:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760592586; cv=none; b=h7fXNiJJ5seeQKB9nFp9q5i6Bh3UkPxHFYGR5Aktq/ggudgQkEoC+aznrPQluH32VnjQn0Gpcjj8CGzCjf9UEORjOrTj1YX3yEzLSM5rhaKLjcxyACyDybidgoiPcL3vqLstsOVCVmRgJsC9zGl9lWxUrkjHcAuv/UVSX3XgAlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760592586; c=relaxed/simple;
	bh=kB8OXc/QEa1oiQz8AIhWoJHLEsb+VL67N9rALVEVV1g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HYlsRqy93wNpr+gSw+tRbwvcPAc93Oudpn4Df84CsDrcDiuRnjqbWo1JNiemzEgF4pFtFnMd2gARz4Ebfhjw1LsCyeZAGM0p1eYCVARKepVzzKLvYgh85wKHjV2s6euJIZ5qt0ut54Z3G6WYUHyeKUU2lzmnO1MjIOMHcrBgRz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NY5WYcfx; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-b554bb615dcso213932a12.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 22:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760592585; x=1761197385; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cZU/PvsO/Y2NbI/2LYXn5EnCITnm++nCSaU9RCrcRDk=;
        b=NY5WYcfxVfJ2nMvpqf9XjoiV/glqzl+XlgYruEcuciA82grlntNmm6aZAjrwuZV91J
         n1mUTmRuXzOz2ekEA6xX1w5KDmcemXSBSREBX0WPcZpYSlx3JUUAmHXaME7dwytHML0P
         tqFm0aV1wH4uVGEkQuABnY6rnamXjjDVO2PRlqwioQxC3ZG4Hce6/JQnn2mVlMxDEcMv
         hiOeIzTyuQrunaTFkK/bnlwIMqGNWFGPL+WWZu0x8gsGaAKIxHZ8NLfq11/c6bjnZpSP
         WukweYfUL95h4ujO7JdjZWeYEZOj0vCFjcZ2inCnuIsls1tTFMm0KV0gUecB0ojnd1uH
         Eb0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760592585; x=1761197385;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cZU/PvsO/Y2NbI/2LYXn5EnCITnm++nCSaU9RCrcRDk=;
        b=KGfmrxy5+u2jOCFWRPAmpV/1hp+SRAv/dYybqRCJWWIT09Hgoi4xYM6kbcALvnBfVp
         4g/A1zg/mNmLVUlVJpYgEl2cSSUChwhw1J/jt9few4bsaiveE1r/k38EkoSaX6gq9SM0
         yDdwV+UPnxQJTg1bbvLE5m8CFEkWbFXaEiU7hF7RIzCELOvU7dXj2A2wUNQSHmfWXOL7
         42Vjz2tGzLWJj16GohTohnUB+ligQ2v5P+08wsdW5TZPa0wxTI3BifSWe5jXGMabGxWt
         PprV8OvXFU42Ew1jgjQY9AGDFGE0VeqoTF2CxVslfePLxd6UhZjobP6ZA7EyQNqcUhHf
         giGg==
X-Gm-Message-State: AOJu0Yy0mOMYm1hspX2zIiut41EqrqLhYheomEbfcPXeZJTv/21K1w/7
	UDltI7tzNH1CpJFKEELJ8hpaR4FMyiKAmdMA3N+CUffagCnbxaQ/u9rQ
X-Gm-Gg: ASbGncsWO9UyzPH164Xw/d8tocGpCndGfGqpJLX+c9+vHYGNaH8KZ/wye+b4olvm4Mz
	rKuF289P3haqOgGfN8pKyJAl0VrxQHFayZnbruAxAiKI16twTFu9daXl2i5VG1um/ZEvWhdhrFR
	pSjREZ5T70D/LSSJP5sDOSMDIjzdJLTOPLSqze6nX54UL+SHgySWdSIinT4sqJmIN+M4CkLuZvI
	fp+KPvcUxe7c0YrxfYXT/jjAeQ/2zmfLI0h/Z6Vj/7orY1Is5Lamu0wA0PoLqHlTWlbqPMKolNm
	kpvOK614OQpq7KyG3ONKT+nNy+VHgT0lDqWV6YGDTQ10dEXUg3DEUPIr8rumAJxOIfSjJPHioei
	x3Sql6qphMqxM+sbdEpPypI32ghOUaCFNnS952Hg1CktQ1bseaLu7nwLqHQPhMa2fvZ8z+Ojuc8
	xIntjndgvkowqTPAFGjVW37zrS9tUG0SBk8bNQ6m9x8GU8s8TVgLK/9Rad6jz/zeNVw7IYWeyCd
	CRudz9O4FiFfxc=
X-Google-Smtp-Source: AGHT+IG6DkPdWX9xJzohk/tu0oSUnnb6SXO1oOB1ejn2LyoFqbU+fIA4QwSqj9cRtFoRS3F/p7/w/w==
X-Received: by 2002:a17:902:f785:b0:27d:69cc:9a6 with SMTP id d9443c01a7336-290273959b8mr383548325ad.53.1760592584688;
        Wed, 15 Oct 2025 22:29:44 -0700 (PDT)
Received: from cosmo-ubuntu-2404.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29099343093sm15742015ad.28.2025.10.15.22.29.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 22:29:44 -0700 (PDT)
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
Subject: [PATCH] ARM: dts: aspeed: bletchley: remove WDTRST1 assertion from wdt1
Date: Thu, 16 Oct 2025 13:27:27 +0800
Message-ID: <20251016052727.881576-1-chou.cosmo@gmail.com>
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


