Return-Path: <devicetree+bounces-181549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 63972AC7E0A
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 14:44:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 472521BC7352
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 12:45:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5105422E403;
	Thu, 29 May 2025 12:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="ERBtpWvS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3F122CBF3
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 12:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748522569; cv=none; b=TdO7mwOUX1tIQW6hvLn3ngl/sAMjlXNoPk6fOEZDQFATFAuKgbOzSpvuDWP51diaQFwMjTytAnnKTWst+Ol0zd9mJ5Tz0wkidDE0FtF0Y54G2M7YmMZirmeKcfI1LKCnyPAEj0xJk9JjRhgRz2aoaOPO5nOltuJaMWShHtuzByo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748522569; c=relaxed/simple;
	bh=RRM404hdZVflbCbuZ7OBxFTgWWaneCmtEfkgg/Xp1Lk=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gtWXeZ0XeVF1dRSVA7LI0NkT95MD1mYiR0RJIDPAAGvLRTnPxz+GnV+amyjNX9WzIasIRttkBiOKCuH25hQiNfWSfztwZ/qPS2dXcr0ecP2K37+lBHjyf5skO4u0eXFqqA7Okzn3KLDJXWu+GFq0uu8DsYXI4us7mZoA9z71AJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=ERBtpWvS; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-602c4eae8d5so1739310a12.1
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 05:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1748522564; x=1749127364; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hTCgL7Vlc0a5ielumzwkk7bjVhaA3TYeVWaUN3CkeyQ=;
        b=ERBtpWvS8RaK3IDnvbLxoGyt4ZJvpGUlaYT1QyeLhP3NJSw/kcd27AybBz19pQPXPm
         gBxFyO7qANgLs+8cBLhqXKWlYl8RE7jwiWKvWg1bLJRpv4GESZ+fdlm0ycar/chJ1kkS
         xlHL8r/b8D8k12l3zbVn4YaXEISZ2uQ3Ifsbdo5fn2yJmFxrSBiEcIKe9SisQgzm/sf+
         6MXVjvL3BgupsdQt8/aCWUnDiJuMAKD4hWMH/Bqj094ABNbFmmQG3Wbdhd5l39Fsn1fQ
         gC47kEU47CeOWjkRNOdMwRm3RfQqJ+UsJ2HjwhGJoIyU272vLlI8o/TbsBWxDyq2HwX+
         q1AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748522564; x=1749127364;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hTCgL7Vlc0a5ielumzwkk7bjVhaA3TYeVWaUN3CkeyQ=;
        b=ELGARfxy6PuF9pTpxuqrw9qosH35IDYi9lVbyLzCgr7QmVJQWfk0DLoNGRsuJ3gA7U
         TPYesgl+r4+W6JO18B9oblKr0fjE++KDuadShMihNajVUsoZv6MhltgT6oroKtV2170L
         WQW3slUgWpLuim1xUCcahEf1uIo4ikR9L6bl1hOoyq4ClIjUeTxua9OYptXV5jIyAKDi
         2qvgFNnqYeo5DT45GnRJ4p7penrTO5+C88DN5hkVXBaOM2OCDxnA6ushfxBhE7ufGP6m
         VWbyBJhTbdldKcf5Xbr5zWdPjcb2AlTqfUmeiVDN0MZfz7SbiYLmyxI7vhwoXr5TsyRK
         PXHQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6aE7gS4lQTEZrusJ/HQuoxLqdXtiQFuVxWVMah3tdqMLBjRixFLTEJRA787f0C6E2UbLpPqfccQRS@vger.kernel.org
X-Gm-Message-State: AOJu0YxLN0KDuMf5nedfGW7I4bN/+tl3KWVQNTHwQnJgr6Li7qzWnO5v
	yhdUjmLKp+hqBLaLvgyscI/PTMShUDC1ZIx+ykiOIqJgMCDBo7FclwbH3qgTbhdG15w=
X-Gm-Gg: ASbGncuv843Vuluy8WOavkoP+oEYXys0GVx12sraW8i24SabINOJ1cbwJXUtraVLfGD
	bYXPVzJ85SwZBaFjby/FgnnxhEaciCsgkfUBoKrgJ+fXdEAB8yK1Cu9N3HmCnkdz/6Ne7efRFQO
	aVUgyiic7Q0UPPn+yK0YeCGFB4Ib5/2e3pSH32s4DKIZ6gAkPZVxgvAzcF7lWu2z7TRk0O+ntGd
	mhY1ZHwXbg38BvhwNoDnSF1OOU4pQvl9dFGmPaqG3dz3rNUFNwRKJESC494NXgFQnEgUmOoSPoK
	CZq3iH3iut3Ip3sL6Wq1rvm2jyIX3CUiviBoqcCFx/cGkOi55lrvIvdfDpwPU/kAdPjlzkPRCYd
	AmkXDd0YjoDUDH04nTh5MCzSZK6o3FGhO
X-Google-Smtp-Source: AGHT+IGU0cArmNGBE3alDxaSeS0c7kho0TQ3gbduZH4lCYtigEniaEd9Y5YqaiqYC9HAzb90Z71eXw==
X-Received: by 2002:a05:6402:510f:b0:604:dcba:dafd with SMTP id 4fb4d7f45d1cf-60536c20f82mr2597026a12.15.1748522563913;
        Thu, 29 May 2025 05:42:43 -0700 (PDT)
Received: from localhost (host-87-21-228-106.retail.telecomitalia.it. [87.21.228.106])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6051d79e940sm2308553a12.67.2025.05.29.05.42.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 05:42:43 -0700 (PDT)
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
	kernel-list@raspberrypi.com,
	Matthias Brugger <mbrugger@suse.com>
Subject: [PATCH v11 12/13] arm64: defconfig: Enable OF_OVERLAY option
Date: Thu, 29 May 2025 14:44:01 +0200
Message-ID: <20250529124412.26311-7-andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1748522349.git.andrea.porta@suse.com>
References: <cover.1748522349.git.andrea.porta@suse.com>
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
Reviewed-by: Stefan Wahren <wahrenst@gmx.net>
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index f6e9bb2a3578..ccf2f50673a3 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1659,6 +1659,7 @@ CONFIG_FPGA_BRIDGE=m
 CONFIG_ALTERA_FREEZE_BRIDGE=m
 CONFIG_FPGA_REGION=m
 CONFIG_OF_FPGA_REGION=m
+CONFIG_OF_OVERLAY=y
 CONFIG_TEE=y
 CONFIG_OPTEE=y
 CONFIG_MUX_GPIO=m
-- 
2.35.3


