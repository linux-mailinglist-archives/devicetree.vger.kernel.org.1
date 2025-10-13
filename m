Return-Path: <devicetree+bounces-226220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A5657BD6145
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 22:29:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 01EB14F0214
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 20:29:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FCDA305051;
	Mon, 13 Oct 2025 20:29:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gdbYBBwp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C536304BC5
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 20:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760387387; cv=none; b=thdEef9AP6MJCF0kRkeJ9BJmqXQ4rVJlcxi0XmpvsggRNpEbE65AWOVMMU1YXCeZJe3L71K9nqiRFcwLZoEHWiCMWrE6eBO79aK6lHmNSQA9UuP26Pm29cIZZY6MAX5ItL48vuWuse3aahVlike5qzcUD7bb+CajIt2mXwBtbkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760387387; c=relaxed/simple;
	bh=eLohQjCZWvFJ1dFDfxYuim1jcusXUWycBqdILsbFuF4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YwsShZ5wJ/hKaRco4PzBWalXGVFvWVAIFydsrtptHBenN9z1JpJogxcOfq+KMupxSC2xYuMTknCvSZpzqa+YnXoqgLO63TZx1fcD3+0WoOeVBNB5b0S/WI1/tTJ/Iz3ITE9teer1+KyrWsQBuSUM+bzBeEW1WodnowMDs82rMtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gdbYBBwp; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-6399706fd3cso6792757a12.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 13:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760387384; x=1760992184; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oPuQd72D+jBq1spvFLJjLA1j9tiBdh3mywiWzRwOOm8=;
        b=gdbYBBwpXYBRzjZ9dvZcD2ntl7g3loGgQb2fNyoG0cYf4wLQh9eF4YTUDF4oUEEeMq
         7jpL9zi7DoKG+wEtE0CVsILa6fesI01XhN96ojJ8c61dCHTONBWaaMXn5yOd2alU/o79
         UI/36k6XPnSLqtQGqcuIEZWNLVqiXeaGycGbAlb5e32Pp/EHyn9yBQRIIAzLOLvrT9FY
         uytw2Nogpon9iX6jcoWR/w+Di5WNIzYCfW0eV/+6kvGJLrvV0ONYDnwois/9nSh4iciN
         X34Nh6kUwjpqfkIDutBw0drLyyps0Ryw+QHj8RquAcrv9EC2AG6LpQBg/Rw/aqFwvEbe
         1juw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760387384; x=1760992184;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oPuQd72D+jBq1spvFLJjLA1j9tiBdh3mywiWzRwOOm8=;
        b=GIlzh00V8L6UmYSGR0TVKOfKv/g6YV+9UcCIdsD/YodpbulA28cJRtiBlHYs71sVGO
         6PDm9NG2IbUlE0K47nbnJAdCTrHYKe9gSWcBYFFgNZdHYOuam+ASJ0O2plguENHlp+ty
         DU2AZGXvm1+nVrEIibPO+1dBMrZeFhbWMuainnxon3OBT65+FxOXDaFonFNFavHA051i
         a9nPNi0cxvFTqCxpe/5DSHLxIq84kXry8mbcNHDD37mQX5f5VeiS9xRLDXGZxJ/d44eK
         xsLV6cacYiIYA8CfWm24LmwzUalkr/nTyICrntng3W3mNH36qw1IyW/O+hYN9n68ptaz
         XNoQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbCWvh8zIse4XN/rqaocXOA2zYdS2JmXWgpkpGE5NXEVRCMwr1Zx80bwWYtCKkCQQ83cNVUqTQJzAl@vger.kernel.org
X-Gm-Message-State: AOJu0YzH3K6JGs4EjqJ1SKxLeW9ENAaSaeOpRdZ5dhBy+OESPXHmXCTK
	gVp/Igot7ukuexIYC87U+9dbLANXDku9KqGn1IRJhgCV5v90N+bs/xuw
X-Gm-Gg: ASbGnctb1jS+ClnM42rorG8Io1a+tOjlNeC5c/jAImIgSByWrGvZpNS0STFTiNh/lDP
	qEUks7U1bckOECpKbWGciXOmYLKo9e/1B/WqzVpCpZzGyfOJ8cr+rXXJ+YQFCLMjCBMLvMjlpuT
	hEQxkgRmio3fFkWLYT2pPlG2kecdP7ctZzgDck81QyRZyT0LaW6s6bxPYlrq7MKs0Nvq3Xtnc9w
	D2eX+GsgfpirDrlosF07ogRtDFieaZA6xczkvMNkY21ic2IfLDitvEezjPARX9PxbcwQwVmSMsj
	6CA+xzf6eNnzxH71Y5jeSK3/HVpr49O2Eu1lI5GONs3AscoGdUQeUoIaQ7tupbcFtpMITYo/5HP
	veHjoOJBjTSqHIK10TaiEcsWlx8Il0ijAMHqM9HYEZb+m4QIY85KthzVIwDqV+g==
X-Google-Smtp-Source: AGHT+IEPo05LdXDAeNyvkUd6ss/IS5PV+fJh9gShC3M3KXvAoo6cCl57CUp0l4gRoV9f/pEAA4s8Ig==
X-Received: by 2002:a05:6402:518a:b0:634:5722:cc3f with SMTP id 4fb4d7f45d1cf-639d5b912d2mr22232211a12.16.1760387383537;
        Mon, 13 Oct 2025 13:29:43 -0700 (PDT)
Received: from localhost.localdomain.pl ([89.151.31.85])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63a5c321341sm9541150a12.38.2025.10.13.13.29.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 13:29:43 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH net-next 2/2] net: phy: broadcom: support "brcm,master-mode" DT property
Date: Mon, 13 Oct 2025 22:29:44 +0200
Message-ID: <20251013202944.14575-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251013202944.14575-1-zajec5@gmail.com>
References: <20251013202944.14575-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Specifying master mode as required is now possible using DT property
which is a much nicer way. It allows clean per-device hardware
description instead of runtime detection in specific Ethernet drivers.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 drivers/net/phy/broadcom.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/broadcom.c b/drivers/net/phy/broadcom.c
index 3459a0e9d8b9..d66b79ea1c38 100644
--- a/drivers/net/phy/broadcom.c
+++ b/drivers/net/phy/broadcom.c
@@ -110,11 +110,13 @@ static int bcm54xx_config_clock_delay(struct phy_device *phydev)
 
 static int bcm54210e_config_init(struct phy_device *phydev)
 {
+	struct device_node *np = phydev->mdio.dev.of_node;
 	int val;
 
 	bcm54xx_config_clock_delay(phydev);
 
-	if (phydev->dev_flags & PHY_BRCM_EN_MASTER_MODE) {
+	if (of_property_read_bool(np, "brcm,master-mode") ||
+	    phydev->dev_flags & PHY_BRCM_EN_MASTER_MODE) {
 		val = phy_read(phydev, MII_CTRL1000);
 		val |= CTL1000_AS_MASTER | CTL1000_ENABLE_MASTER;
 		phy_write(phydev, MII_CTRL1000, val);
-- 
2.51.0


