Return-Path: <devicetree+bounces-187684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D92AE0EA8
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 22:35:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 118761BC6713
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 20:35:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C36325D208;
	Thu, 19 Jun 2025 20:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="bVl5qy8l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6BDF21ADA2
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 20:35:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750365313; cv=none; b=f/eOEsox3JHELYfnw+GNMjvI/GB+yuQUksBYlOThtjzy+ay8gbp88EQjF7lSW3lzLiYIvsF3uv76j6zNjdL4MZk7A2P25pe7/BX2vLpSO1v9nxKBzFlh9X2iurmy44Ryu55jTs1il4sXF7its/c5oyYJ86/By8kSviF/F6peWok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750365313; c=relaxed/simple;
	bh=xXOn0HsXOLMhwrK8hxGYgemk6ajiFApPGs1BV9Yy8Ao=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jvR6cJdRUYj4EdydGevM5RQsmuRidDcFJIIT1tq4ew/ni2aU9V8hDa5Ou9tx7IQXa4rgbgm8bshbFw/UYowRBSsXLgvGbTEGjQyRihjQAKtkmWw2LEsBCRvwmeFw6aB6CgUyNLWC6wt8mQfksIg+nOuVXNwi8wRMklj8kuN0RYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=bVl5qy8l; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-450dd065828so8643695e9.2
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 13:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1750365309; x=1750970109; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SGE4KFMiA3w+V5SFnoNxn7J/yaSX/gETYA3wlTGQnvE=;
        b=bVl5qy8l/d7b0xNBebE7U1lzN3Qud7ln4E2gsDDan2miMGMxqMOebG6MCGXAtzdjFx
         nMSo8n0lRQqHHX6ATQ/Sq9Xxjzd+J4ziPYeNozYLY3LQFvn2DEgz5Q8ldBKthg156lyD
         U4ErYnamDPN1eLqGufC3Hpuq8OvwYINK36lTPp09wgUhubXsrx3Ua2p1tbdds1T24RJM
         yGWohOzTsusNZoJiJsD0XFf24L9V1D5sE2DgpSnS+oIDXUWZLP+D9dS0U9kUpTstNqbh
         9y1oSRlRqNqeVd39Q7egdHgaYHRFkTyMUB2jibtJXWAL06xDvGMJ+qLpcIHqFm+GaG59
         mTeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750365309; x=1750970109;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SGE4KFMiA3w+V5SFnoNxn7J/yaSX/gETYA3wlTGQnvE=;
        b=BWT691JXLNv+rvRXqmlkrax29DOkOOg1oHENltFMh4YaGW3MQufbH02pOpoP/utbMr
         z8HGgfIPmeApqUQ6gw5NDKFihyZWTkOXZM94pFbSoOHLT3LZUDIkMwp2dWvN5mo+eP+6
         id0WqrMp39inZh25Ulrf33xhuqY3U2kZHrBNDOsjzpDW6G7XfeXq6/TP9tOYkxG1blij
         e7A12hHn7GSBZhtfGVUSWDLZMsYokrzANN9ta9w9WJEE33ydbejNYTfFstBThod2nXxX
         kWNvqDWIEiPYvmZlzlJdbQktynCy3ylez9nYMb9wknezQDkTWqqxNxpbWpSxfs3GIYsj
         6Tzw==
X-Forwarded-Encrypted: i=1; AJvYcCWjUgQt4VNUugTT99Gl4VJY8QVskCH6bCDEB74UUBLOg1zJKO0KZMn2Wg6jPr7DoCIv7HEJOIzoclHX@vger.kernel.org
X-Gm-Message-State: AOJu0YyxlcHPX6gKq91pfggPgwp36ZVfqkHBtF3gTtUzZOpE+Lt7aH5i
	/Z0u9U5f2rAdcivVott3/jU/pJIz8iFsWlKGVMb7yHgeTgYg0cNW/+86FQ4oMCMTNXc=
X-Gm-Gg: ASbGncsBEGWLAbZFFJ8oIQFw8GMJB74C+W7cu8WzmZ+ptcct5fOB+XLDlJs0QEuUF59
	Y6Ppk3YpqJ47YC+pvq9R+eAZ6GFbsqDbLQmG9wHW34wnClhzx/tabh6e9kl2jhyYFLtrmL1+km4
	LeYpXwO8+1csFmDl91DSQEY70SQ9zrI9Eh1Gouesaubz/8C8H3z4065AFQIsOkKeNHth1ONcxFU
	c8zbkIzChVPTarT8PtBAUp26/7KinTnrA04+jTW1OFRogP1EZ/vkPtMLRRfrToT2srfoJkELQ8h
	MOzbXL2juV1jV2ULOSI1FE+PXGHY3xiGUPK/F4Yo5/3A3fERksGC13UBH5me
X-Google-Smtp-Source: AGHT+IGTRuDsJQhGE2JsFOOf2cSPgq8KRfMogQt+8xubaFrCIb1LfzJh5AqVuEeNoZ7tBfsJjgbAew==
X-Received: by 2002:a05:600c:6305:b0:43c:f513:958a with SMTP id 5b1f17b1804b1-453654cc279mr1601115e9.13.1750365308756;
        Thu, 19 Jun 2025 13:35:08 -0700 (PDT)
Received: from fraxinus.easyland ([2a02:16a:7402:0:a60c:e454:f09e:79d5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a6d0f1d91bsm288495f8f.42.2025.06.19.13.35.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 13:35:08 -0700 (PDT)
From: Ezra Buehler <ezra@easyb.ch>
To: linux-mips@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>,
	Harvey Hunt <harveyhuntnexus@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Reto Schneider <reto.schneider@husqvarnagroup.com>,
	Rob Herring <robh@kernel.org>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Stefan Roese <sr@denx.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Subject: [PATCH v3 3/4] MIPS: dts: ralink: mt7628a: Update watchdog node according to bindings
Date: Thu, 19 Jun 2025 22:35:01 +0200
Message-ID: <20250619203502.1293695-4-ezra@easyb.ch>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250619203502.1293695-1-ezra@easyb.ch>
References: <20250619203502.1293695-1-ezra@easyb.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>

Most notably, add the mediatek,sysctl phandle and remove the redundant
reset/interrupt-related properties from the watchdog node. This is in
line with the corresponding devicetree (mt7628an.dtsi) used by the
OpenWrt project.

This has been tested on the MT7688-based GARDENA smart Gateway.

Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Reviewed-by: Stefan Roese <sr@denx.de>
Reviewed-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 arch/mips/boot/dts/ralink/mt7628a.dtsi | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/arch/mips/boot/dts/ralink/mt7628a.dtsi b/arch/mips/boot/dts/ralink/mt7628a.dtsi
index 10221a41f02a..5d7a6cfa9e2b 100644
--- a/arch/mips/boot/dts/ralink/mt7628a.dtsi
+++ b/arch/mips/boot/dts/ralink/mt7628a.dtsi
@@ -134,13 +134,8 @@ pinmux_p4led_an_gpio: p4led-an-gpio-pins {
 
 		watchdog: watchdog@100 {
 			compatible = "mediatek,mt7621-wdt";
-			reg = <0x100 0x30>;
-
-			resets = <&sysc 8>;
-			reset-names = "wdt";
-
-			interrupt-parent = <&intc>;
-			interrupts = <24>;
+			reg = <0x100 0x100>;
+			mediatek,sysctl = <&sysc>;
 
 			status = "disabled";
 		};
-- 
2.43.0


