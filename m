Return-Path: <devicetree+bounces-159114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DCCA69B7C
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 22:54:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 064E94842D0
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 21:54:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFDE0221F30;
	Wed, 19 Mar 2025 21:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="P5V1HG+u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A10C920C47C
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 21:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742421106; cv=none; b=Z0had3ypM1VljUEcHPkaJ997g7lTVC4Npfx6YQX8+67XbW/la9HMEAQu3Lby1E2CuO01/H2dPdN2+DHz0JqDHDgePgBdXqJDqQ7poZ4Qo3nm2+MgEmURF47abYaHxVOFDUArqW0yS6E4yoJyXXwBekg52jNH8LO4nh1kQBodX0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742421106; c=relaxed/simple;
	bh=ZHGs6I7q3Tsyi9kzoh4U5cxC19XY6HnWZ9uwmmvUT2Q=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=p5Gl8uVP6tv/7F0IJXSh7R+k7R9IUqlPB66m/3Bunsr04aG0OEULs5WiFihLJyu86EGjcgL4zQ+RnhoxAneBClhA+Zu13Ek8Bb0YsvBKYPd+Kc+JoaqwLjsnhEpDfUcyqmtfK81iJWJ8P5LpzvtVD8dLdl5mcu8IZlWXWl3fxb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=P5V1HG+u; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ac345bd8e13so32035466b.0
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 14:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1742421100; x=1743025900; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hon0A+RaNlvqPfqyKNkIXyr+XGvXZKWonIIqQqeswT0=;
        b=P5V1HG+ulPDbgraGKjpTHEUqniY1hrRZcEWRfY5LXZCbLbV1qm1sJs9Z+YUkaW7OLW
         Wo4HnKDwoRzDrNNL7XHWZnjSJ4726aJfMsGKc9rQDK89HH6rW+oAGqycuujxOAeMJoNB
         clSXIA5VC1S0ZcR+quBpJef8B4mTb3PQuUouXFfB1X/raCnWP7esAUa1GkPL2xB3sSTs
         DD4waHVdpUreOlQfYAaEPDSUWi87WnmmywL8R+lT1cV19iBx1sSx8BtTjQQ61xm/mWoA
         LvS+f65F9K+ghEt2BA1HaLbLKhXAbVdZbyTIiuz7HuDwscIJm2NuesiE4A9DUoIXgSJ/
         acag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742421100; x=1743025900;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hon0A+RaNlvqPfqyKNkIXyr+XGvXZKWonIIqQqeswT0=;
        b=tTOxmzVc3S+GJfyzD7T1J+6k+3NoBMesFhuIxRctnd7KXLZ1iBgiG5ajreP2rKvkKf
         VJBF2iUPxMP4zXVF1/gbdF4MAP4Ao1/9QjPsrbFYIOYLRtuhLzx0ydoghS0BJiImit3L
         4uw8nb8DjxUsLARO/scBffIL6J896zQy00r06km0Z8F+tyD65LLbJ3PrMFRRlU6aTPst
         SiW9Of0fMlPsiILZFoCWY9W4XrbcGRIAxPMGzPFw1HLFQ4jgMsXycVZ1S1LAcVLNKRBW
         7FYPKQa+ij4KDRVS+0JLWfBjGc5kJX1vniTmJRxp9nQyzMLEEgoxauKmfgOTeJcppbMi
         CSmw==
X-Forwarded-Encrypted: i=1; AJvYcCUoMNj0YSne7+5AU6q8GKGLh9SybQwWxoCE0hxxJOWjmLeBG2tejRB26Kc/+B7s+Wg21/UyPqL7Ssno@vger.kernel.org
X-Gm-Message-State: AOJu0YwCg0Z2HP8lek1zkhsMKJ5bVLUGtqEUrOiAR3SbcXJKrdgfdGog
	VSUYswyHcJuLV2ig/KkT3D/YM1fkZjlTyOsB7yXvwSu1p7xIbb6+qUF9H71J5Qk=
X-Gm-Gg: ASbGncuK+PEaZICqzRGim6VOFg87Dyv0lNy2IUrawB8Dav0JcnIfrhzNZsJIvLIo/Pn
	9ORsTlB9e1bXOPRCDN6BXuIuNW05QqOu7STYz3eRKC4bDmMOPbkAB9EuQLO2OH+ihnqu9gcIDdP
	ju12pGdzdE+wPny5N3cCa8zkAYb18EYD+qG2LLPeegw5SycHR+ueGqMx9ALkJdW1MCphbirF8SB
	kcetsPNUr9KWHudvzxt6m+xk10HZ6dRLWoQASzoG/xSvEzW9XGoDmtc+BvDf1cT26XWGniQw9xO
	ULeCE7bIBsJN8Q5D6iTEc4Fg7f+z4j6ctu/qpSm5DYXcSkHRmXN361gPrNYvNJp7MgUDyFgzFxj
	bwutSf7ZuiA==
X-Google-Smtp-Source: AGHT+IEubZjv6HNcMkLRF8KIKKnDt5E7yfE5umLCedVB6lCh54dmHwyuBtrf8bjfetPJOMQZhmUQZw==
X-Received: by 2002:a17:907:96a8:b0:ac1:e1da:8744 with SMTP id a640c23a62f3a-ac3b7ed0692mr400259166b.38.1742421099920;
        Wed, 19 Mar 2025 14:51:39 -0700 (PDT)
Received: from localhost (host-87-4-238-14.retail.telecomitalia.it. [87.4.238.14])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3149ced82sm1045348366b.123.2025.03.19.14.51.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 14:51:39 -0700 (PDT)
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
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
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
	kernel-list@raspberrypi.com
Subject: [PATCH v8 13/13] arm64: defconfig: Enable OF_OVERLAY option
Date: Wed, 19 Mar 2025 22:52:34 +0100
Message-ID: <9d5b41bf6d1565f0de96c7c1680bd404cba40189.1742418429.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1742418429.git.andrea.porta@suse.com>
References: <cover.1742418429.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RP1 driver uses the infrastructure enabled by OF_OVERLAY config
option. Enable that option in defconfig in order to produce a kernel
usable on RaspberryPi5 avoiding to enable it separately.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
The following metrics should help to decide whether this patch is
acceptable or not. The defconfig kernel with CONFIG_OF_OVERLAY=y
added (wrt to the defconfig one without that set) has:

- same uncompressed kernel image size (due to ELF section alignment I guess)

- ~7Kb bigger Image.gz

- 3 new modules (all related to RP1, i.e.: clk-rp1, pinctrl-rp1 and rp1-pci)

- 27 added symbols, of which 5 exported
 
hoping this is enough to gather a rough idea of the impact.
Please note that OF_OVERLAY has to be defined in a way or another,
otherwise the RP1 driver won't work correctly in case the dtb overlay
embedded into the driver is used.
Another way would be to add a phony target to the arm64 makefile which
just add that config option to the target.
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index cc70793e97ef..ca492fbd2773 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1643,6 +1643,7 @@ CONFIG_FPGA_BRIDGE=m
 CONFIG_ALTERA_FREEZE_BRIDGE=m
 CONFIG_FPGA_REGION=m
 CONFIG_OF_FPGA_REGION=m
+CONFIG_OF_OVERLAY=y
 CONFIG_TEE=y
 CONFIG_OPTEE=y
 CONFIG_MUX_GPIO=m
-- 
2.35.3


