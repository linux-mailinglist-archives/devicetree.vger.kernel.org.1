Return-Path: <devicetree+bounces-196610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 385BCB06612
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 20:31:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0115450516C
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 18:30:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD99D2BEC26;
	Tue, 15 Jul 2025 18:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="IbGTewHz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C13512BE7B5
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 18:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752604214; cv=none; b=egXKoSEM/lUWKgBkcY9leR8nfIpMMEkrUFE3rrAMB0lxdVk6dNQ+1MNwX54DT5Aeto2IZyJGfR5etzUcA+ecXdZDmG3/t/Dsc7CyO04C+krEEK+VYK3VJ3pviv519P6PIfofMb9GZ/vC3i07fiFDqWjLtxECe3HMCK6Hd/DwKKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752604214; c=relaxed/simple;
	bh=0Zz+G1AeNmuHMtiESKx2Dh//8cBSsDNEuTYMBdpH/uU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BrTdVQFV1ZDvMynn4LcNb2D/azE7g7znXIQwGEJYsyQYSxmQDaOVYIfEc/2oiE0yhNu7lVf5lZiS8nj7ik7Wptma6TIp3X0Q8maKNw45EJNDl/yaY93N1gZhOxnu0+F5OQRPoT2d/FVLSiKPr8HckeqtHWvN8qZgkHBS3cLDLJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=IbGTewHz; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ae0df6f5758so1007326266b.0
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 11:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1752604211; x=1753209011; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZMKpzUOtQQ4RnSGMZoG+pKA2TVUGTMT2Lpv20Jd2YaE=;
        b=IbGTewHzcvan6e91j2XcPN0Ts1wVykmLmYfN6oL2pMXMfWOpJmrflv8UN34bh7c87c
         kVFkpUt25oucG+zNnhiU0kCQX1WeIHTVyAoWB4K3z8XOVY1BwDSe+hGDVi20hm3e7Do/
         xTpz3NUSuq5T4Kum8YrPYLutYsFy49MI5qHurYDuEt7mY7zB2UegiiUXGxB1HIdk2njS
         2NojuN74Ej6fHdQGYn8tHF5pbG2hfXQli/tEKWt7zigDOz/PNMPNkZfGA0pyC4iq/Wen
         wf+cL9nZNQozUdgcP1rt1ywITp1xq6J+kE5T/QlcOkPE5mCoy6FkWpIFcwIO2hwB5eDf
         6cTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752604211; x=1753209011;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZMKpzUOtQQ4RnSGMZoG+pKA2TVUGTMT2Lpv20Jd2YaE=;
        b=hMTVcqc/lOqx+96U/EvYgtk2SkyKQymMYHBm5O42RpnIql/rJsMRe2kpFoU2cVyNUB
         +cPnAaULwp+ptXAbXsBNZ5DCcsOcyx5wTImC3ISL99Sp4KsBPCLbefeoAIyyFemCcMWx
         snN1EhZzPmVl2ye7a7Z3X8EyfVddMQxnfbBmTCGqpS/HWc1x6ncEEOCJiTK9cuWyl/bX
         HSXLzWrYDgb/VSSo3qRPSyPwBkcaKKgkCkgGy563JNizSYXqWOhmemTpclRTrVVKvOoU
         dCqRq8ns7fsD8HpHmTOTeIWBhGGWaDH0KelbQ0Hw7+XtD7cjAz/fsK2NEh+5tR3elL/U
         moug==
X-Forwarded-Encrypted: i=1; AJvYcCWdw6/L5g4M6buN9gPiXEvnmb6fH/y8jeOECkCukMV/AHAFKNuV4WaFrkm30G6bnNqxZHS1DEUMMYh/@vger.kernel.org
X-Gm-Message-State: AOJu0YwDlAZl8p3OaLm3C41eSOmujO6ZbtEciwAZyXYnTWh1I7b9aFRc
	oQawJUhVU7deZJ/r+9hOFh63uMfgdIrjJ9t2QbfeJHPII/O4LqFdLXtLTAn1zSAnH2s=
X-Gm-Gg: ASbGncsLXzg8XYyJ9TlaV1NROUn20s3qBKMIa+FKR5dZnJgiELXeMT4VdzFnDq4EHEd
	DXPs/OS0p9q7xZtVCdZTDdrvafupu+Czbx+5z9ErxHkl9nlbN7zQmyqU40qr+8qtC/n4T3NtYoU
	48ozFaylJx5eD3kL8eXfMsKp3DeB+VAWB3hQUVhtVUE78p0MT7aViw7RXf5rs92qmxhdI0uhiks
	6mqP57Rwee1SiJ4AbNG917CyjjMEGKb8GAqPaXSyO1zrpvI18qsq9cwarGOPUo8u4wv5gXSNqqG
	l5QL0XGOmX281oLuJe/eaKgKpnSGMQZ3ulIzMApk5YFqE3tn6dGkw6KnfepAbDl/gv1POp5ebbW
	33/9iK7L4PhzZNvlDIlFyAn6qL9lIMSifZVryIgifjUfk0kOOgw5nNZ/cZ7llyd1DUqq+
X-Google-Smtp-Source: AGHT+IFD+rL0b8mfG/XC5RLUsZeAfk82DWW6oFEzqb1ZtsiTH24r6hlO5g2/DzPIAAnRpqh2cuGFuQ==
X-Received: by 2002:a17:907:3f95:b0:ae0:6a5a:4cd4 with SMTP id a640c23a62f3a-ae9c99588f9mr46308266b.12.1752604210988;
        Tue, 15 Jul 2025 11:30:10 -0700 (PDT)
Received: from localhost (host-79-47-155-191.retail.telecomitalia.it. [79.47.155.191])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7ee471asm1059372766b.54.2025.07.15.11.30.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 11:30:10 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: linus.walleij@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org
Cc: conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	wahrenst@gmx.net,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH 7/7] arm64: defconfig: Enable BCM2712 on-chip pin controller driver
Date: Tue, 15 Jul 2025 20:31:44 +0200
Message-ID: <602a968606ea6426a7fd4dbec719a002f157be48.1752584387.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1752584387.git.andrea.porta@suse.com>
References: <cover.1752584387.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Select the on-chip pin controller driver for BCM2712 SoC.

On RapsberryPi 5 devices it is primarily needed to operate the
bluetooth and WiFi devices, to configure the uSD interface
and the power button.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
This patch is based on linux-next/master

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index cc82faf1371c..da5647c521b3 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -590,6 +590,7 @@ CONFIG_SPI_TEGRA114=m
 CONFIG_SPI_SPIDEV=m
 CONFIG_SPMI=y
 CONFIG_SPMI_MTK_PMIF=m
+CONFIG_PINCTRL_BRCMSTB=y
 CONFIG_PINCTRL_DA9062=m
 CONFIG_PINCTRL_MAX77620=y
 CONFIG_PINCTRL_RK805=m
-- 
2.35.3


