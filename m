Return-Path: <devicetree+bounces-47027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 525C686BB12
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 23:55:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF4191F26FE2
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 22:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A73576EEE;
	Wed, 28 Feb 2024 22:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="b4wWNGhU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF83572910
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 22:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709160874; cv=none; b=pD1reLaTSsrvTQm/Xv79y2x2rjkRM9ES++/eswZKMEQopYMeNIf4zKBDEqGz1r6aIhTqezCyuT0u8CgMtzS/EZuoN/6fv9IDtOm607bzAT9wz4R6cy5G8Ve2Zn1WMgAqNxoRrPP9vG4Zbu/x33buJpP00RwgepRicLp9G0M0ERI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709160874; c=relaxed/simple;
	bh=/jDLwFIEQLNTzWOvHvMah/k+wxvXYOF3LYDjFnzXoKg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dBSUVGVUgPfXonCAfyWPWteY9wBug2W8jU5J/VrvK/jdKq+xKf/5oMSqH2u4MzUbn5A4kXg6Jn91z8InSqfMHSdR/eEBbrHAaHwjT3ze2u/enxJJJlwI8/i3SJWYeootCtSGsLTJvJ+Vk+dvAJQRAbeaRq02IB7ckDnkysre9I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=b4wWNGhU; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3bb9b28acb4so158884b6e.2
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 14:54:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1709160872; x=1709765672; darn=vger.kernel.org;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=bmvyy59UCUGPM6MgPlEpxUVCo4h6kTMN9nbyvbFdfPk=;
        b=b4wWNGhUOPyS0DdbdGqCY6jOmbmjAZNMpYhuIdC3pcDbVgl5z4Ti8QmLuE54iqaKgT
         UAjDFymDSnBeCI5YrAbKVKeekHTx81nnO+W6lMJTd34oq2aatQQ/i0KUOj2mkIqVV2s1
         DODiiFkk7w01L4PV/FtxLaheGhYD/lDEK40DQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709160872; x=1709765672;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bmvyy59UCUGPM6MgPlEpxUVCo4h6kTMN9nbyvbFdfPk=;
        b=Vn0ORMqkYk8e/9ZvWqaf9RCS9StBd5C0ZD/PDvTDw/1wujsU/d1+Gj9+vRAqzyVQmV
         WyDSQveHboNtUZXWpRPRGGQniHudRpfMg0R/rcJej23vlzF+BTq0V5VNUZ05azDp3Evn
         eQLNTwwk2aaOdYPhLm432+C48CptLsvTSnqfErPQd5kARyT9wrmFMqK7R8CvFNyTXOez
         5WPMsIoQ49Lsb/kO/nzifmNr0AGgmEfWZc8g4HwaTwQ3n0pJt0gBL/UwEApDfA9091hh
         18NW/1kjqIpgoKh8k5s+M3/MeW5CD+S3wZGLgM7DPSLG+yHE5Ra3MzKOr944GYcmGSsZ
         vYeA==
X-Forwarded-Encrypted: i=1; AJvYcCV9qfibfVWsoLwJ5mt1N4nNu3hO6AbUrYNse7e0sdsH5N4SWkVs2XlXyK+LZbQDIbijlUN2bs2wNobBIM/M1ranAOdQCgS0P3HVhA==
X-Gm-Message-State: AOJu0YxGPRUbGNAhPllQRzlSQkA17Qx7PKezC9V/Bg4v5rC4N3vshZKI
	oyFF/x5BbXXDuu2iPoKMmLsIr7P6F/fcKWNCFU+pFAo6TQImwnv1iMvm5yQTXg==
X-Google-Smtp-Source: AGHT+IGZW1uqGMT0XDvduJRVSy4t4jAgcgn8W+fI4wcrEmlYbvGkJWelbm2tWhSBORJ6ntWjT76sjw==
X-Received: by 2002:a05:6808:ab8:b0:3c0:443c:84bb with SMTP id r24-20020a0568080ab800b003c0443c84bbmr339469oij.59.1709160871908;
        Wed, 28 Feb 2024 14:54:31 -0800 (PST)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id b1-20020ac812c1000000b0042e3468a98csm95036qtj.4.2024.02.28.14.54.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 14:54:31 -0800 (PST)
From: Justin Chen <justin.chen@broadcom.com>
To: netdev@vger.kernel.org
Cc: horms@kernel.org,
	bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	opendmb@gmail.com,
	andrew@lunn.ch,
	hkallweit1@gmail.com,
	linux@armlinux.org.uk,
	rafal@milecki.pl,
	devicetree@vger.kernel.org,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH net-next v3 6/6] net: bcmasp: Add support for PHY interrupts
Date: Wed, 28 Feb 2024 14:54:00 -0800
Message-Id: <20240228225400.3509156-7-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240228225400.3509156-1-justin.chen@broadcom.com>
References: <20240228225400.3509156-1-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000a82e6706127906e3"

--000000000000a82e6706127906e3
Content-Transfer-Encoding: 8bit

Hook up the phy interrupts for internal phys to reduce mdio traffic
and improve responsiveness of link changes.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
Acked-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 drivers/net/ethernet/broadcom/asp2/bcmasp.c     | 17 +++++++++++++++++
 drivers/net/ethernet/broadcom/asp2/bcmasp.h     |  4 ++++
 .../net/ethernet/broadcom/asp2/bcmasp_intf.c    |  5 +++++
 3 files changed, 26 insertions(+)

diff --git a/drivers/net/ethernet/broadcom/asp2/bcmasp.c b/drivers/net/ethernet/broadcom/asp2/bcmasp.c
index 100c69f3307a..a806dadc4196 100644
--- a/drivers/net/ethernet/broadcom/asp2/bcmasp.c
+++ b/drivers/net/ethernet/broadcom/asp2/bcmasp.c
@@ -31,6 +31,20 @@ static void _intr2_mask_set(struct bcmasp_priv *priv, u32 mask)
 	priv->irq_mask |= mask;
 }
 
+void bcmasp_enable_phy_irq(struct bcmasp_intf *intf, int en)
+{
+	struct bcmasp_priv *priv = intf->parent;
+
+	/* Only supported with internal phys */
+	if (!intf->internal_phy)
+		return;
+
+	if (en)
+		_intr2_mask_clear(priv, ASP_INTR2_PHY_EVENT(intf->channel));
+	else
+		_intr2_mask_set(priv, ASP_INTR2_PHY_EVENT(intf->channel));
+}
+
 void bcmasp_enable_tx_irq(struct bcmasp_intf *intf, int en)
 {
 	struct bcmasp_priv *priv = intf->parent;
@@ -79,6 +93,9 @@ static void bcmasp_intr2_handling(struct bcmasp_intf *intf, u32 status)
 			__napi_schedule_irqoff(&intf->tx_napi);
 		}
 	}
+
+	if (status & ASP_INTR2_PHY_EVENT(intf->channel))
+		phy_mac_interrupt(intf->ndev->phydev);
 }
 
 static irqreturn_t bcmasp_isr(int irq, void *data)
diff --git a/drivers/net/ethernet/broadcom/asp2/bcmasp.h b/drivers/net/ethernet/broadcom/asp2/bcmasp.h
index 127a5340625e..f93cb3da44b0 100644
--- a/drivers/net/ethernet/broadcom/asp2/bcmasp.h
+++ b/drivers/net/ethernet/broadcom/asp2/bcmasp.h
@@ -19,6 +19,8 @@
 #define ASP_INTR2_TX_DESC(intr)			BIT((intr) + 14)
 #define ASP_INTR2_UMC0_WAKE			BIT(22)
 #define ASP_INTR2_UMC1_WAKE			BIT(28)
+#define ASP_INTR2_PHY_EVENT(intr)		((intr) ? BIT(30) | BIT(31) : \
+						BIT(24) | BIT(25))
 
 #define ASP_WAKEUP_INTR2_OFFSET			0x1200
 #define  ASP_WAKEUP_INTR2_STATUS		0x0
@@ -556,6 +558,8 @@ void bcmasp_enable_tx_irq(struct bcmasp_intf *intf, int en);
 
 void bcmasp_enable_rx_irq(struct bcmasp_intf *intf, int en);
 
+void bcmasp_enable_phy_irq(struct bcmasp_intf *intf, int en);
+
 void bcmasp_flush_rx_port(struct bcmasp_intf *intf);
 
 extern const struct ethtool_ops bcmasp_ethtool_ops;
diff --git a/drivers/net/ethernet/broadcom/asp2/bcmasp_intf.c b/drivers/net/ethernet/broadcom/asp2/bcmasp_intf.c
index 25b03d32d791..dd06b68b33ed 100644
--- a/drivers/net/ethernet/broadcom/asp2/bcmasp_intf.c
+++ b/drivers/net/ethernet/broadcom/asp2/bcmasp_intf.c
@@ -382,6 +382,7 @@ static void bcmasp_netif_start(struct net_device *dev)
 
 	bcmasp_enable_rx_irq(intf, 1);
 	bcmasp_enable_tx_irq(intf, 1);
+	bcmasp_enable_phy_irq(intf, 1);
 
 	phy_start(dev->phydev);
 }
@@ -890,6 +891,7 @@ static void bcmasp_netif_deinit(struct net_device *dev)
 	/* Disable interrupts */
 	bcmasp_enable_tx_irq(intf, 0);
 	bcmasp_enable_rx_irq(intf, 0);
+	bcmasp_enable_phy_irq(intf, 0);
 
 	netif_napi_del(&intf->tx_napi);
 	netif_napi_del(&intf->rx_napi);
@@ -1028,6 +1030,9 @@ static int bcmasp_netif_init(struct net_device *dev, bool phy_connect)
 			goto err_phy_disable;
 		}
 
+		if (intf->internal_phy)
+			dev->phydev->irq = PHY_MAC_INTERRUPT;
+
 		/* Indicate that the MAC is responsible for PHY PM */
 		phydev->mac_managed_pm = true;
 	} else if (!intf->wolopts) {
-- 
2.34.1


--000000000000a82e6706127906e3
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
NhTY3E+cXCB11wty89QStajwXdhGJTYEvUgvsq1h8CwJj9w/38ldAQf5WjhPmApYeJR2ewFrBMCM
4lHkdRJ6TDc9nXoEkypUfjJkJHe7Eal06tosh6JpAgMBAAGjggHZMIIB1TAOBgNVHQ8BAf8EBAMC
BaAwgaMGCCsGAQUFBwEBBIGWMIGTME4GCCsGAQUFBzAChkJodHRwOi8vc2VjdXJlLmdsb2JhbHNp
Z24uY29tL2NhY2VydC9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcnQwQQYIKwYBBQUHMAGG
NWh0dHA6Ly9vY3NwLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwME0G
A1UdIARGMEQwQgYKKwYBBAGgMgEoCjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxz
aWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMEkGA1UdHwRCMEAwPqA8oDqGOGh0dHA6Ly9j
cmwuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3JsMCMGA1UdEQQc
MBqBGGp1c3Rpbi5jaGVuQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSME
GDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUIWGeYuaTsnIada5Xx8TR3cheUbgw
DQYJKoZIhvcNAQELBQADggEBAHNQlMqQOFYPYFO71A+8t+qWMmtOdd2iGswSOvpSZ/pmGlfw8ZvY
dRTkl27m37la84AxRkiVMes14JyOZJoMh/g7fbgPlU14eBc6WQWkIA6AmNkduFWTr1pRezkjpeo6
xVmdBLM4VY1TFDYj7S8H2adPuypd62uHMY/MZi+BIUys4uAFA+N3NuUBNjcVZXYPplYxxKEuIFq6
sDL+OV16G+F9CkNMN3txsym8Nnx5WAYZb6+rBUIhMGz70V05xsHQfzvo2s7f0J1tJ5BoRlPPhL0h
VOnWA3h71u9TfSsv+PXVm3P21TfOS2uc1hbzEqyENCP4i5XQ0rv0TmPW42GZ0o4xggJtMIICaQIB
ATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhH
bG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwj8BKLXNpALfemdRAwDQYJ
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIAxPQ/vtMvnNdzwtRQ9Gbd13fg6oRGIptofq
paTCQ3RyMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0MDIyODIy
NTQzMlowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQC8c3mJWTxfPVesryu/RmjePqzHK5BBXw9jrMYGU8P2uCcLmQmgwlY4
Kuz5un+IHYe36aUQITqAJPOwPQQSORwiWd3xhfL5yYrxahx3gR2UlqSXIjsC9HoAq1Qt40SNcuXY
EzkXasPffi7aMi0NpPUgFMonL1oaMT6iukq0jOVDmbht8v1MaJkm/qv1IdcPht1owJ+lts7J8jso
OH4bIjVgmDnaJ6DKXSwf7b2Balrdi25KsRwtAlLb299iUDFjcNQXWxJTAsEb8UxRJ9RzNREfQFBe
tYJUyfd2ltcJJByzAa7Wus/cO7a1gwWMkxMIdIbupX+YXlJLrH3XxRnnj3R0
--000000000000a82e6706127906e3--

