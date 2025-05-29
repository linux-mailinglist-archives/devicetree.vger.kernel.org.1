Return-Path: <devicetree+bounces-181590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E1782AC7F47
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 15:52:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D8E331886FAB
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 13:52:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5917A233714;
	Thu, 29 May 2025 13:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="DSlmVOqC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6BD122E418
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 13:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748526576; cv=none; b=k4EXadcBY668NcDlT+cp4ECT5LGx/NrC2tPPeGm/n7FKkB2M83+ZnPWKUlRJrQLuEU99Gp1ePtz5fS6JLKV0Re01n8rjIBbD2htgAq6ajHnPiyyEJ/JOPRapbYYb63q+AXIPJvMG9h7tUUSG57P58ICfHzIETChe6Cy5SMDx/7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748526576; c=relaxed/simple;
	bh=RRM404hdZVflbCbuZ7OBxFTgWWaneCmtEfkgg/Xp1Lk=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=H4Wcbhu8fgTH4/PHrBUDcIzPWM6Q3DEca2GxfdtlMKwVCWgv9uUrihh+t9QlUJVF3h6vigft+IxUrQe91/9WoZjYj1qQTGbeICeHd7HpsnXbwMtheF9El4qC41VqTsIgpMn+p1rb65e3xbP7bONNusNs1w1/5I9H9Ot8cj4LPNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=DSlmVOqC; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-603fdd728ccso1535637a12.2
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 06:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1748526570; x=1749131370; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hTCgL7Vlc0a5ielumzwkk7bjVhaA3TYeVWaUN3CkeyQ=;
        b=DSlmVOqC8tFVQh9PifCTO3dTVQm7c6Ym5Gi16t2dMktNE9kuYyieUwCXmlr6S4rx/9
         8A8EUa8sl0ij+fUKAuKFufNPS/wr463IKXnhy2oqeIFaJYyIcpcaiErYPrTndmH3Qcja
         ayW9TsUaamZ+5IQpG1qiqwdShEsSCEIRSuZ9bvzH4ne2yAgM/IJcoSdg5rWCODAM0/l0
         klUoJDyEBkqn1pSSeyPjZvMVK2YrOO31IogRzLp0Z1yMq8uuLHnTw4HhJaLWHtnVnBSD
         bjFF0za6Pd9a+h92ezd9CkSjE+S4GJunZdCDpMFalAbsn/X6Ddhlt9gfQhN4e4xoWbPj
         XypA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748526570; x=1749131370;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hTCgL7Vlc0a5ielumzwkk7bjVhaA3TYeVWaUN3CkeyQ=;
        b=DoNaGRXh4+1pSdlB/nSLlnf+Kqf6wLwWPt+oa6t1FqY0+tAcrKkPAwh01Vy4iCy/+U
         T8OtaU4jzmfU9jT8CGg6qDQsxQRFYXkVRi8Uea6dn+EDZTEnmqzS8sfFcOMlsWcClg7M
         Zo13TyEe7ihfSK8SosmDROAes7DmRZUqvj7vXlhB9ZV1q9WjB/VM+tsPXL09qmK2Psoi
         ntOZSZwPm1Yb+UbA/AikaGk99Z3ia9xxUE5t4ha2JJx9OSClgpU2J2z+fpQ2/zZuOwF/
         Y0gx6860hEVFUD33xcJDTxa3HhiB3J6ryyYxqRwYt2o9/DIZC47Z3gPpyVICke8TUgzL
         PpPg==
X-Forwarded-Encrypted: i=1; AJvYcCUtvEq+i06N8PL+5G9wiwq/LS9UjBB4zjETt8+SUaFhcDkmEekV+VNrlFJgm5hjfC9dWXox+zcJX8Hc@vger.kernel.org
X-Gm-Message-State: AOJu0Yz81sfOwTyiksrbhF0C9nPKX3396IMZQbr+T7sgUgXVc1C8uE6i
	7X/UCmLChi48f+3Gslek8SqmtXHN+rAd5GIv98yz71Iq6WhX61tLgkxgMB7+q78YOJk=
X-Gm-Gg: ASbGnctRcsOHINJUy0SJg03Jjw1RDQ0YdD/z2aotFDDPW04v2AEQx6JH9AAk808D/j5
	J81k7+AVq83WkJu60sA4IkGoP6rq8psIB2Hxtv/y3OtJerMcXwqpLEO4R374Zds9ND6eLoIlxE9
	QVDn4PAhxnYyDb6UOzz7P/4/zsCns7JoMa6YcXG/RvZ1gI+y9BOzT4ISE/Vyf6bQK0CDCZdYEar
	gDgkVuplMTEcjxAWJ9V3USaKxgH7ZVPZ5u0LGS+9UXLkx5UvnbI7ciq9SqzFRzwQ8NO6QNVT89G
	JyzlvSwF9idYjohhd3Q6MIkt2R2D2SfRii8EsxWPE8vfkSZUCNK0auFccplS5QJEbq2BQiIicP3
	AWLz19hOZzeSYDzkOvnFgpw==
X-Google-Smtp-Source: AGHT+IG4MzMu82x8TfpgUN9WiYCMM5FeHzKNEVK3ejORnoVUR1rTDmcODCtdcmtp8bgBgoEd5vCLFA==
X-Received: by 2002:a17:907:9410:b0:ad8:a935:b90f with SMTP id a640c23a62f3a-ad8a935c99bmr503129766b.7.1748526569836;
        Thu, 29 May 2025 06:49:29 -0700 (PDT)
Received: from localhost (host-87-21-228-106.retail.telecomitalia.it. [87.21.228.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d82becbsm147641366b.39.2025.05.29.06.49.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 06:49:29 -0700 (PDT)
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
Subject: [PATCH v12 12/13] arm64: defconfig: Enable OF_OVERLAY option
Date: Thu, 29 May 2025 15:50:49 +0200
Message-ID: <20250529135052.28398-12-andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1748526284.git.andrea.porta@suse.com>
References: <cover.1748526284.git.andrea.porta@suse.com>
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


