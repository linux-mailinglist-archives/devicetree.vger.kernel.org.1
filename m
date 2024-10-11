Return-Path: <devicetree+bounces-110436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A2299A6C7
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 16:48:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CD212B2436A
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 14:48:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F19814D717;
	Fri, 11 Oct 2024 14:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="a7Cfs+61"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51981C6B8
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 14:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728658119; cv=none; b=jTdQDSzE/evcPV5lVvDSK7LWkTgZpFFy05/X1N16fA0FqGAizPgKvIwAWrrCfbhqRMyYk87cvyqLyH9cg5FBSUx+XYv6viG/wHrh1ue2K7g5pES8WZSZvkVeB0KR6vrDBmBPG2nX/FMLANdcUVSPEI1Z8AeZaFMit5YOXAYcgxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728658119; c=relaxed/simple;
	bh=TdKbIqcsYdFeh9DZu1CQupvONBITLkldWhskZ+GPwA4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PvBYWofTbofG0mnETPaoDAhvEZX1bT5JiMh8Tx6k23cZtdwVN3daIA3WGZE8cskmnC1HOsRRU07uqobq+q0EDjLX+aVZbUBrB0660p2yS27xK6uku8sSiL19yFDeDnMmvyq9e6lY4zDQCxIifnWGAyENqVLNB/UG5KQNx3UH3UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=a7Cfs+61; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id AF0004027C
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 14:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1728658109;
	bh=y7+YQmnss41fm/ukNbmPDdCc/cnUksMm9Me8dFSJczY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=a7Cfs+61OriM3ZbHncu3clYO3W6aOzVyobUCobuQwJG69joGspODINDbaXIF5fjPZ
	 J0vpejTUXpXohFE+WmQ1nBf4Q1VCY38Ke3e47xLN3uXHDVWJDKMF62hAcvFIRU+mzc
	 OlrJSouZNE2zIeFBZIekvo30QuldBqVP74HnZMrz8xQ1IGHikMaFskQriWUt1INEce
	 BBKZ9Tjywjf6E8mTqH9tW70jmaZXWO+NiTeiBBx9oIhp1ZEp//bZmZpAvWvRMatY1S
	 1+Eqa9micvSHrorOVpuzcnknaFCrMsX65/sy7FeP6oIEcwSJhdzTdOyN8NGQ7Kub/V
	 NfiRYNO43UBaQ==
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-a99cb787d2cso22810166b.2
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 07:48:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728658109; x=1729262909;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y7+YQmnss41fm/ukNbmPDdCc/cnUksMm9Me8dFSJczY=;
        b=hCFdKbm6lb0DcXTWK7cTUdf8MhDMVgioPHj18EXz9YTLfN+JfBS5eADomfMnJjLNFz
         8FQZNy8WN4g10iekcxW4s5LKDx8H4FCoGX+I0UbIIceHJ98NjyqQicbSG2H790HUZ2mT
         xdPMIZI4aeA5jADhoSi+NW4R3Q2HeKiwT4o5R+yRehSUb5fFjdpbTwmawUyzFXbW38Td
         Sgf76rreoTu4uqMeNI7SDv/mfW+vFBLJZc4eTIb6sABpazwYpmrj4hIDJVsbhkNOinm2
         /fdjcBH8hfr6pDVv5mXYSkYesJXH02XLdQkW65+trv5x/Ko2DUC6B8Ok4JtrLCYCbPpu
         EaNA==
X-Forwarded-Encrypted: i=1; AJvYcCVYgIGfEQUgP4wIOgRAdhSN/M0Csm2upaL6Zyy3b+xateU7WhM2ELttYUKWE2Pf8g0OIFqj+HvT98OF@vger.kernel.org
X-Gm-Message-State: AOJu0YzKvOWRIYTyU5/hBdCE8ZvUXoy+dU9lns+fF/bfavGah2hlJrMg
	vdI1FTaf4PFBgaO1iT6Ds3XeX+8yo7ZUS4hSe+sEJoiVbKXHbcyU8bQiw8GSnFR/DqEZcK4zdjP
	ln2jVPTGFVRSXBi20CKg5trDGLhIYmI4zDzeQR3vL5EG+EqanAYepY7FeXI5F3TfPlW/AvD7Siw
	0=
X-Received: by 2002:a17:907:f796:b0:a99:5cb5:6175 with SMTP id a640c23a62f3a-a99b9436b1dmr254244166b.35.1728658109128;
        Fri, 11 Oct 2024 07:48:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1I4NMn4gYPdo3MbVQwrz/uYAefwMxC5m+RAElwaCH4bD85EDqoY9JLmmWjwDhkrc8lxHdRw==
X-Received: by 2002:a17:907:f796:b0:a99:5cb5:6175 with SMTP id a640c23a62f3a-a99b9436b1dmr254242066b.35.1728658108783;
        Fri, 11 Oct 2024 07:48:28 -0700 (PDT)
Received: from stitch.. ([194.62.169.86])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99c0c89bfasm54134666b.162.2024.10.11.07.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 07:48:28 -0700 (PDT)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Subject: [PATCH v1 1/3] pinctrl: th1520: Fix pinconf return values
Date: Fri, 11 Oct 2024 16:48:23 +0200
Message-ID: <20241011144826.381104-2-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241011144826.381104-1-emil.renner.berthing@canonical.com>
References: <20241011144826.381104-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When Drew took over the pinctrl driver he must have changed
all the -ENOTSUPP returns into -EOPNOTSUPP. This subtle change
was most likely not spotted because it was never mentioned in the
changelog of the patchset, but it breaks all the places in the
pin control and GPIO frameworks where -ENOTSUPP is expected.

Fixes: bed5cd6f8a98 ("pinctrl: Add driver for the T-Head TH1520 SoC")
Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 drivers/pinctrl/pinctrl-th1520.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-th1520.c b/drivers/pinctrl/pinctrl-th1520.c
index c8d2ee6defa7..03326df69668 100644
--- a/drivers/pinctrl/pinctrl-th1520.c
+++ b/drivers/pinctrl/pinctrl-th1520.c
@@ -591,7 +591,7 @@ static int th1520_pinconf_get(struct pinctrl_dev *pctldev,
 	u32 arg;
 
 	if ((uintptr_t)desc->drv_data & TH1520_PAD_NO_PADCFG)
-		return -EOPNOTSUPP;
+		return -ENOTSUPP;
 
 	value = readl_relaxed(th1520_padcfg(thp, pin));
 	value = (value >> th1520_padcfg_shift(pin)) & GENMASK(9, 0);
@@ -636,7 +636,7 @@ static int th1520_pinconf_get(struct pinctrl_dev *pctldev,
 		arg = enabled ? 1 : 0;
 		break;
 	default:
-		return -EOPNOTSUPP;
+		return -ENOTSUPP;
 	}
 
 	*config = pinconf_to_config_packed(param, arg);
@@ -661,7 +661,7 @@ static int th1520_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
 	u16 mask, value;
 
 	if ((uintptr_t)desc->drv_data & TH1520_PAD_NO_PADCFG)
-		return -EOPNOTSUPP;
+		return -ENOTSUPP;
 
 	mask = 0;
 	value = 0;
@@ -676,14 +676,14 @@ static int th1520_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
 			break;
 		case PIN_CONFIG_BIAS_PULL_DOWN:
 			if (arg == 0)
-				return -EOPNOTSUPP;
+				return -ENOTSUPP;
 			mask |= TH1520_PADCFG_BIAS;
 			value &= ~TH1520_PADCFG_BIAS;
 			value |= TH1520_PADCFG_PE;
 			break;
 		case PIN_CONFIG_BIAS_PULL_UP:
 			if (arg == 0)
-				return -EOPNOTSUPP;
+				return -ENOTSUPP;
 			mask |= TH1520_PADCFG_BIAS;
 			value &= ~TH1520_PADCFG_BIAS;
 			if (arg == TH1520_PULL_STRONG_OHM)
@@ -718,7 +718,7 @@ static int th1520_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
 				value &= ~TH1520_PADCFG_SL;
 			break;
 		default:
-			return -EOPNOTSUPP;
+			return -ENOTSUPP;
 		}
 	}
 
-- 
2.43.0


