Return-Path: <devicetree+bounces-169640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D84DAA97B1F
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 01:37:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5BB5189C56C
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 23:37:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50F5221C175;
	Tue, 22 Apr 2025 23:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="LQbpzP7/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D8921B1AA
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 23:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745365025; cv=none; b=TKGZA1TG1xCn2rUVxGGo0EnEgIaBzmhR/CJGLqhfeBCk4rfExxcSnBTeuyMt8JddCwnojkY0szdNHM+dM22asoxgeOo1+uLdsDEuE+EmHW5CpeVQhqccSoZIhizv/6AQg6my2u0ETxlB5Cd75y1yntVXgwSojSeDJqoSi/QKoKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745365025; c=relaxed/simple;
	bh=egefmihvY7KvIWGw0oH3dkZJaryrd/Jbo1oPikiQ4Vk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=t3HjeXbswdNmnhqe60Zn9KHjSLeJh53r/saupk09j5kMxDh2NDvqRW+dK2tCnJBba0n9Jen5ukahpZrYA0Nx0+yJXiojbHZ990iSSdcX9Vi0ABGC/rd7XOqVReD/aRBaJszMjR+pBE8xcIIpLc1UIqKafumTToOwCMgK8EdfuGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=LQbpzP7/; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3f6a92f234dso3591473b6e.3
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 16:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1745365023; x=1745969823; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VjqcO+U/XyU4d+h0NFZpUVq/FQdh/OHM7nsYwloXxL0=;
        b=LQbpzP7/1VbtVkOhtyjcsFtf8+gfW4Gr1Kj2bdekJ1DAzOXjw280l2RlVbTX7gMExQ
         vR+D71SmABLan3Cw/WQ0e0j2H0fRd6APenVBgNAElBwipGI/rkXN6KSDIIdoB/1dghlR
         dszcgkNJJhh2oKj0Lb3x3LZM0LQoeh5vY2nKI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745365023; x=1745969823;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VjqcO+U/XyU4d+h0NFZpUVq/FQdh/OHM7nsYwloXxL0=;
        b=XzcRJKQgYbRCkIjINnpuKWkIYsBGBKOzgJ7aTvQV7oFuX7CkApdBvW/22RqkbMKmFd
         MH7ioXp92GXBnFj8OZ1NgE/GvvZWCHx/9BNJHV4I5wl8MnG0QW3Qk1u+ODpAU3AyDw1H
         ve6gQ5umoZNjHdhcbLxJ56Pb9vowjQ+NC8NiddKXK75qKj5ADn7XCw0bA1Krf7xIz/ks
         m/vVqsDXx1b5ktPwM4LkL+og28ekagFosXw3MdQR/u1A/ul/0Xh+0VnUoLAlePRiWBEC
         dRDzcuyUGKge3Iu5I1qfXGhDFsSbiVtWhQkuJIuxFk2C2DFUSacfwJyI5hczDNyX3plu
         quKA==
X-Gm-Message-State: AOJu0YyeM0YXAaUnzevjpJvPGi7sv/vYocbU2X0Am1s2vh6W9MeqkvCa
	/i070VMVIkyOKhl959eqcothDfQFS6gLSI9VUGNRCdFqydviJNIiCKH2B3iI+z3Thx9tBXaLW8B
	8tfLBxYS90lE0z9Z2S2Up6fk1uXHs9Ala66i2N5D3/N3vHHzqGuthAwXb4ZEEO1ItgPHRknoDhw
	Jo/LdURTbb6xxs8P5zf0QbrfZoapBVhbhEo/0qNKB8FM30SKA=
X-Gm-Gg: ASbGncs4Uvw8zGSM6CSvlHBGH9oBLaFJX4flP4EdN2sy2BtsALGEXRhJbEbcSBzVnkN
	4yyfjYEKrm6W2YOfPdOfvtSCQvzNuJL6nwiAVxx8zdcSQC0rAjzcwF5cRN9Q8nY6UoB3sw1xdPX
	mONi/UcLro0xspdn5DnAjkuD5o/2p9eaMGJbGV8KG3oemUaT/9Y5SWBjEKYNhaoMytBUn/YKi5l
	VgIdIQLg1h7JCqrwyF1UuKwJL8Gc1HvzgWLF4nVejOALpVCaL8qT4BPuM8L8xSG9DWOsPt44g2h
	tRQgNfeUMtz2FmL5glgI6lwO47JjwVsXgSjZ+N5UmOk7xPvD2upRH84cAeNxI4+bweXhzQs20YN
	nGskqEFhAnK//iXTDGw==
X-Google-Smtp-Source: AGHT+IH1oIIuIEXPzQd7SJBIxpIXXT/UNsQKeEcQVGstYqpBcYZng0qKt/x4BT0RLqWCQbQdUYJQhg==
X-Received: by 2002:a05:6808:6f8c:b0:3f6:a476:f7ea with SMTP id 5614622812f47-401c0c5125bmr11643037b6e.32.1745365022778;
        Tue, 22 Apr 2025 16:37:02 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-401beeaf403sm2333582b6e.7.2025.04.22.16.37.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 16:37:02 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: devicetree@vger.kernel.org,
	netdev@vger.kernel.org
Cc: rafal@milecki.pl,
	linux@armlinux.org.uk,
	hkallweit1@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	opendmb@gmail.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	pabeni@redhat.com,
	kuba@kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	andrew+netdev@lunn.ch,
	florian.fainelli@broadcom.com,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH net-next v2 8/8] net: phy: mdio-bcm-unimac: Add asp-v3.0
Date: Tue, 22 Apr 2025 16:36:45 -0700
Message-Id: <20250422233645.1931036-9-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250422233645.1931036-1-justin.chen@broadcom.com>
References: <20250422233645.1931036-1-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add mdio compat string for asp-v3.0 ethernet driver.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
v2
        - Split removal of asp-v2.0 into a separate commit

 drivers/net/mdio/mdio-bcm-unimac.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/mdio/mdio-bcm-unimac.c b/drivers/net/mdio/mdio-bcm-unimac.c
index e2800b2e0288..b6e30bdf5325 100644
--- a/drivers/net/mdio/mdio-bcm-unimac.c
+++ b/drivers/net/mdio/mdio-bcm-unimac.c
@@ -334,6 +334,7 @@ static SIMPLE_DEV_PM_OPS(unimac_mdio_pm_ops,
 			 NULL, unimac_mdio_resume);
 
 static const struct of_device_id unimac_mdio_ids[] = {
+	{ .compatible = "brcm,asp-v3.0-mdio", },
 	{ .compatible = "brcm,asp-v2.2-mdio", },
 	{ .compatible = "brcm,asp-v2.1-mdio", },
 	{ .compatible = "brcm,bcm6846-mdio", },
-- 
2.34.1


