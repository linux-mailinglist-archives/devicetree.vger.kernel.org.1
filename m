Return-Path: <devicetree+bounces-161383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9CDA73E32
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 19:56:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A22FC7A592F
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 18:55:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DB3A21ABD7;
	Thu, 27 Mar 2025 18:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="NMa87gJw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E68B617A2E5
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 18:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743101790; cv=none; b=fAXgP8smR45d1MkASiFOtbnVVVYBdYutoOtGPCOaxDDZgYfbAjp1JCzRCyPZfWhbrg7Lu80SE0RUSqfHEt+e7l80CZmYDBHjYvWQWOJqG3FuFJylvUgINPx11QRXgKld9MBOXpayYWQjmX02N+AsAeb5ufcxFhx7XpC/9+G1nA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743101790; c=relaxed/simple;
	bh=lSf1VkjdpDhi5Gs/kgjL06IIQGMcTdg1dr87+AC8cVE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=OWnR+Bq/e8+9GhiTQJaB9c6tqrR/NqrJ7VhqVVm5ugmrOSfzQCUveE0A/Pm171BQrKFdVqiHbISFcTh6q+waYpJkRu2qL2Sp8lnbxThMWLk9F7F2U4kgQU+sdHhhQeggl4PfljagyvMbz6yjeKCjBBVg/GybLGSJ+StCnjv3EmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=NMa87gJw; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-2c77f0136e9so393240fac.3
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 11:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743101788; x=1743706588; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hO3xQx9aw1GJXrcafbGcY1h23Byz3iA3lG0yj8pcrQU=;
        b=NMa87gJwgtou392h4kztIZEzuEkgYoh7HOuFIb2ghbj98nROF16MrOO8tsFBImJndO
         l3ihR58k/xFD7GHQ+HJsyp5ErYWLK8YxJ3SCa7mex0ufqKzSrvYFT3quCUHA2PSIcjEc
         tkLgxSoGxW0HlQ0IMXvwCIuV1f1dFR5GR8trI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743101788; x=1743706588;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hO3xQx9aw1GJXrcafbGcY1h23Byz3iA3lG0yj8pcrQU=;
        b=dUEuh944t1/AGLzUYW/qSo3ZoFd7h0PWZcZzAaFDOuZxK4hsCbxs6PMBnZiwdydS2I
         WxcE/S1yP5I70NqK3e6VGn9GLDMq6q3eRfEouYWJpih3cKtmJ17PO8Owu/Z0gGpcJjXZ
         xYZ6MJzkE+ebMc2d1arMUohMTSh0aN71WY/xCv80rDPmx0ZxtU3Am4VxXoSE82+hXkgJ
         z8jYIt18QqNzUWxHJcMl7qPesJQUTRf71NvGJJ8MN83/HAcHUEsKSbPJCa4L97KaenlF
         hClWCGTsxxphU+R6I+hdCdwm6JDURNtmS9SFVOOYs6fyEswlirfnVweKnG5833e7t3ao
         lHdw==
X-Forwarded-Encrypted: i=1; AJvYcCXXNvx2yBjSGpNHB7/QVJON9WYpDdtXxKtk0DMrBNe+gPJ+5nXbdUjQC8WpxEdAI8uCKvVp63v9VdxO@vger.kernel.org
X-Gm-Message-State: AOJu0YzyQTAEo4hRVo8WiRir1BMjduP5nwJpB77jr78wa+IWCfEdqtS9
	Zi72XKr/jXHtoBLp7VEz8Ee9L7ZnPWHP3aKu3WNIDxNBwcYD6fsOq7gdZHC/rQ==
X-Gm-Gg: ASbGnctA7crnEF4O9NLhOP9wMikCZJCLeu18m+u4rLH/i9ZklVz9iIFFvuckBKxBdz9
	Dit7oOJJcUgKhcIvtlavb5rai9arXxLZzAmBadYT2vKsr3Ekpj4vTVc1w7wN0IU+V2nc8Ed/CHf
	tLsA2PVFCIDuPiebMz/Q+AxlFlFfeSn/gzH3UEdJnG11zQRX98pkncwRDjJ6txcMFW2oiNkuwHs
	69DowW5HflZfBY7w6H6f2PG0usjgn8kF24n1d7+fhzCBwa6/425Anjl8wU5re+evglPJVVM0ipa
	pfs6mQCUEDy+z3O+ivVTuSelUjgXD+2ZurviyE7zlowMBqD4pFXabIgAwIlX1aeJkliI3QI0dsC
	94/TCWVb0vfpKbVjKDY5D9w==
X-Google-Smtp-Source: AGHT+IEg00tF/zUqTuDnp+3xAYEBy4WbNKI4GPO4ni5mjeP42q5NxY0LQvo8mS7zFO0Ue236qYrYkA==
X-Received: by 2002:a05:6870:a10d:b0:2bc:7007:5145 with SMTP id 586e51a60fabf-2c847fa96edmr2929868fac.9.1743101787781;
        Thu, 27 Mar 2025 11:56:27 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2c86a3f3db1sm77997fac.4.2025.03.27.11.56.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 11:56:27 -0700 (PDT)
From: justin.chen@broadcom.com
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: rafal@milecki.pl,
	alcooperx@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH 0/2] phy: usb: add support for bcm74110
Date: Thu, 27 Mar 2025 11:56:21 -0700
Message-Id: <20250327185623.3047893-1-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Justin Chen <justin.chen@broadcom.com>

bcm74110 adds a freerun utmi/ref clock that saves furether power during
suspend states. A tune is also necessary to pass USB compliance test.

Justin Chen (2):
  phy: usb: add support for bcm74110
  dt-bindings: phy: brcmstb-usb-phy: Add support for bcm74110

 .../bindings/phy/brcm,brcmstb-usb-phy.yaml    |  1 +
 .../phy/broadcom/phy-brcm-usb-init-synopsys.c | 61 +++++++++++++++++++
 drivers/phy/broadcom/phy-brcm-usb-init.h      |  1 +
 drivers/phy/broadcom/phy-brcm-usb.c           | 14 +++++
 4 files changed, 77 insertions(+)

-- 
2.34.1


