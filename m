Return-Path: <devicetree+bounces-25576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FA7813B5E
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 21:15:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B605F281657
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 20:15:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C61FB6A33F;
	Thu, 14 Dec 2023 20:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=waldekranz-com.20230601.gappssmtp.com header.i=@waldekranz-com.20230601.gappssmtp.com header.b="ZBmR5SJH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD9C6A03C
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 20:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=waldekranz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=waldekranz.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-50bf8843a6fso1051485e87.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 12:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1702584903; x=1703189703; darn=vger.kernel.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MMoRpkfRW6a85kKrBsEgEyVwIQWfuSkyqetOVceBkAM=;
        b=ZBmR5SJH2V/IB6J9ho9pcCHCMgGsNrrORUGiO6ENqDp6qrfQlOwwr7jT8Zhxm3g4ae
         Q7u9IKl1aUBtFZB8UA8lM90fenTUhJYgxaZhaK/j/0T9wt609nNeYSCqliI4GYn/U78J
         fH9AZKjzFADU56Imysn8DgLhoO0s/eK54Ugpm2I2j9vXFV7IVurR1q7mzzCa8VpVXdkN
         9L2zeq5IIkj8PNmLn2fitnOJeRZQCFRCh6uvkEiaxQ5kMM7jozuDTJdadRZhNf/pAsQa
         JtLcXlybm+BmXicI9PIsuygCEUndj8+z0qh5rQduCXCBQ6e3P6oHwNC1mWP1mSHv515y
         MiCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702584903; x=1703189703;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MMoRpkfRW6a85kKrBsEgEyVwIQWfuSkyqetOVceBkAM=;
        b=k3RPXPW8PZOQpfDMMP/3WDKQ7GaYn5Ni0+c4ox0ih03WYiOUSB3ZpZh5QSUQvcEE4h
         447DetRk/6/XHV/kW9AdcQPksLXVF4luiCYCG1j+TINqw84a1rqoxAri+qO7oMEp8M/A
         j93+t3lL5s1RJM7+nfxPoswG8zvhCgMelPzKiE8HubyVicfnB4JnQVRddZWxad3AW4nl
         8GHY6NPkJ4f47CMebDkgiqp/ZTXKIDXVL1Vnaw2aRdxGXk6nxyhuJbnycXZXSAnq0cOT
         8f0AlQm3kmv77kHA3v2RrvafJ7VpHwHdkc4K8//HedfAbvrTXMKdoL6eZpTnSEl+5iyc
         7Z0g==
X-Gm-Message-State: AOJu0YyQfqYCqzHKflspOzUj4XZLGgvSX5H9LKcdP4EAYJy2rbPVwpgi
	p0GKRujzhG+RN4eWJfz08dkumg==
X-Google-Smtp-Source: AGHT+IGCgjN4xx8n7yHMZRIWO7Q0Ci61+v1Uhi/DZfbACzbOj9dRF7ZoDgfmwasRYgNxlH9vAJucbw==
X-Received: by 2002:a05:6512:a8d:b0:50b:fc8e:a531 with SMTP id m13-20020a0565120a8d00b0050bfc8ea531mr6380708lfu.12.1702584903154;
        Thu, 14 Dec 2023 12:15:03 -0800 (PST)
Received: from wkz-x13.addiva.ad (h-158-174-187-194.NA.cust.bahnhof.se. [158.174.187.194])
        by smtp.gmail.com with ESMTPSA id dw11-20020a0565122c8b00b0050e140f84besm369519lfb.164.2023.12.14.12.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 12:15:02 -0800 (PST)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: davem@davemloft.net,
	kuba@kernel.org
Cc: linux@armlinux.org.uk,
	kabel@kernel.org,
	andrew@lunn.ch,
	hkallweit1@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH net-next 2/4] net: phy: marvell10g: Fix power-up when strapped to start powered down
Date: Thu, 14 Dec 2023 21:14:40 +0100
Message-Id: <20231214201442.660447-3-tobias@waldekranz.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214201442.660447-1-tobias@waldekranz.com>
References: <20231214201442.660447-1-tobias@waldekranz.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Organization: Addiva Elektronik
Content-Transfer-Encoding: 8bit

On devices which are hardware strapped to start powered down (PDSTATE
== 1), make sure that we clear the power-down bit on all units
affected by this setting.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 drivers/net/phy/marvell10g.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/net/phy/marvell10g.c b/drivers/net/phy/marvell10g.c
index 83233b30d7b0..1c1333d867fb 100644
--- a/drivers/net/phy/marvell10g.c
+++ b/drivers/net/phy/marvell10g.c
@@ -344,11 +344,22 @@ static int mv3310_power_down(struct phy_device *phydev)
 
 static int mv3310_power_up(struct phy_device *phydev)
 {
+	static const u16 resets[][2] = {
+		{ MDIO_MMD_PCS,    MV_PCS_BASE_R    + MDIO_CTRL1 },
+		{ MDIO_MMD_PCS,    MV_PCS_1000BASEX + MDIO_CTRL1 },
+		{ MDIO_MMD_PCS,    MV_PCS_BASE_T    + MDIO_CTRL1 },
+		{ MDIO_MMD_PMAPMD, MDIO_CTRL1 },
+		{ MDIO_MMD_VEND2,  MV_V2_PORT_CTRL },
+	};
 	struct mv3310_priv *priv = dev_get_drvdata(&phydev->mdio.dev);
-	int ret;
+	int i, ret;
 
-	ret = phy_clear_bits_mmd(phydev, MDIO_MMD_VEND2, MV_V2_PORT_CTRL,
-				 MV_V2_PORT_CTRL_PWRDOWN);
+	for (i = 0; i < ARRAY_SIZE(resets); i++) {
+		ret = phy_clear_bits_mmd(phydev, resets[i][0], resets[i][1],
+					 MV_V2_PORT_CTRL_PWRDOWN);
+		if (ret)
+			break;
+	}
 
 	/* Sometimes, the power down bit doesn't clear immediately, and
 	 * a read of this register causes the bit not to clear. Delay
-- 
2.34.1


