Return-Path: <devicetree+bounces-188775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E19AAE5293
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 23:45:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C0B0443D68
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 21:44:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C0C3224B1F;
	Mon, 23 Jun 2025 21:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="Rcj+I9n6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C81223337
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750715097; cv=none; b=g89vpz51AqGvFtPSjwO/ZJWrOmGglxo5d0vCvLqM/XHadD/21evotxTg8sPWoSi47eFOVDcJRYXbmhW27HufApFRpyfZCRPymXJVRC2s67tWcn5ZNczRm0j2PdOGxIwYCh1no4w3d0K+/eHfcNDi6nOTYbG8Nh0nKu+HCtC26XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750715097; c=relaxed/simple;
	bh=HqA16LR6HAWvdlEy3wx9eZOBIMB7ZcD4My374Vzpq4U=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=g2DRSEVk+VjPKjISV9M3+z0+yv1WgMNX8d17Z+LhP0Uw6rTS7sWZapGIzT+UwT5MX8oR+Cx5AIuoE1YgJVjonWDFnIQCQiDH+a6VDOVdXpv4drjXbCs0ok1mGITD0d8LL6poRQXhmJDIJ7Yddr46WdWZdebjKp0m8Aq9AFSHFmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=Rcj+I9n6; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-609c6afade7so10489224a12.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1750715092; x=1751319892; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=tECQ70x1JM1SCckuRST7a9aJYN9UOBuJJP77Z07Vo14=;
        b=Rcj+I9n6/EFsI+vmFncrrNcRdNIfIA7o5h7TRp/9WTye5ZWZApO66hmwdk2THD9tSw
         zV90QuwmYmyio1L1m/JvPHuzQYdwpRHUXVmwv85munbhL02OmDrjdj4dDb1HIbCgEc+T
         W4cwZKnLdaiOmJ1WVsDfFbEADG6msDZ+zGHHU8R2H8qj0Wh8vExF3j4Lvu+cErjGgDlb
         BfH/3S6/4JuYBszWG6ISV5JQPf9Zu7YkCySy9I80v/ih+KtN+oQDy2Mez+3BY1aJc8Ls
         xlIerZ3PVudz+L63s/J2AsUM0wgT8295jicFY2Kvid4Rse8NBY8ckObsENKtftBvBQWR
         4t0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750715092; x=1751319892;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tECQ70x1JM1SCckuRST7a9aJYN9UOBuJJP77Z07Vo14=;
        b=ZzDvLzStocktLWNeZ7QWC+b2ctse1iibPYIGIOHn+nVEZDlVAH7HiBNiWfE+PZj/Ce
         mN/A/36D3/GtbjZW1ZEiLDH88A5GfFuWxSBRq5pw3rtM9pV6+2xySXRn9MHVBW8Id0xK
         n+pxLVLD1pzhkmlKzHbQvl7JC4n+igJMOhPsNpDozTm1iwjvZmi9OILJw8nWRE3qDWw1
         3PfDa5Hd5kvwSesAvr+EoSYmRoR32y9xGkt+cPMrY98TUfPHU41FT9o7OND0lOagFB2r
         CBgmxw2y1jSE1NQoOEzstgKpdaj++trN5KZrQlBmDwXjaoV7g1rOQMvKo41A9zZp5oPq
         Ajkg==
X-Forwarded-Encrypted: i=1; AJvYcCXyl+YzYbLk/7Ro8YnFluZhAIg+kcqhZdvMtNoAqR61vhqT8rV2X8PLwBOykPVbO0RuJBeKGJedX6Ek@vger.kernel.org
X-Gm-Message-State: AOJu0YyolTZvLWfaW0iz55cpb1f9PWe/1+0mfU2+JN7wdANpcRCtTMto
	CLxx37m8Xva/peZbbOUvdiz8i8NDC/JShzsL+JfOfsi4Ygdawq2EBPj2PBfYmQ6NuBI=
X-Gm-Gg: ASbGncsHUpTACIm+7c2/nrnNuqWq1NUK4FxjsxBphFGFYcikQYBCpl9Xu5vnZdT6ZmY
	+Bl3zwJzIQWznMBCECnTogwqUzD293P9C4ioE0IHAB5pmU8Z3dsK45cyY/A9KkpjLJAd9/zxzl+
	nCWPXkzDyDtEgZVNT3jElWR4jUrxHHCZtNlQi/r2e5fAoCeb+Kdr1SjC8k0lfFhQJk6uHWwi//c
	pqbmVJTOkn/CGc+sMergZiawrtmWX2/Ukl+24MAi7X0gwgxKJNutZw1+nVDEhFD7Ewvzwa9viqS
	2mxWSO9XKgWd6xX7HS7ilkSb5iPiR0lu6wfnD2LZjStbuCfHILsLWODhzCVTsarGauMMNokY3pY
	n2h89dvf8fLfCFgEroyzg40i1FLu2JdETdrPmpS17a8c=
X-Google-Smtp-Source: AGHT+IFCBGEMw6diC/0MRBmRK+mfhHRRzOPyJ8RG9tL1So/53qQwBJoVq147ne0xzxnIzQxsdYUCdw==
X-Received: by 2002:a17:906:d7c6:b0:adf:3cb9:e3b9 with SMTP id a640c23a62f3a-ae0a71f4c6fmr113325866b.3.1750715091959;
        Mon, 23 Jun 2025 14:44:51 -0700 (PDT)
Received: from localhost (host-79-23-237-223.retail.telecomitalia.it. [79.23.237.223])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0540849a5sm778326766b.99.2025.06.23.14.44.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 14:44:51 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Phil Elwell <phil@raspberrypi.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	kernel-list@raspberrypi.com,
	Matthias Brugger <mbrugger@suse.com>
Subject: [PATCH v2 stblinux/next 1/2] dt-bindings: clock: rp1: Add missing MIPI DSI defines
Date: Mon, 23 Jun 2025 23:46:27 +0200
Message-ID: <c20066500908db854aa4816b40e956296bab526a.1750714412.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Declare the positional index for the RP1 MIPI clocks.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 include/dt-bindings/clock/raspberrypi,rp1-clocks.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/dt-bindings/clock/raspberrypi,rp1-clocks.h b/include/dt-bindings/clock/raspberrypi,rp1-clocks.h
index 248efb895f35..7915fb8197bf 100644
--- a/include/dt-bindings/clock/raspberrypi,rp1-clocks.h
+++ b/include/dt-bindings/clock/raspberrypi,rp1-clocks.h
@@ -58,4 +58,8 @@
 #define RP1_PLL_VIDEO_PRI_PH		43
 #define RP1_PLL_AUDIO_TERN		44
 
+/* MIPI clocks managed by the DSI driver */
+#define RP1_CLK_MIPI0_DSI_BYTECLOCK	45
+#define RP1_CLK_MIPI1_DSI_BYTECLOCK	46
+
 #endif
-- 
2.35.3


