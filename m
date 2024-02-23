Return-Path: <devicetree+bounces-45455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC0A861FBA
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 23:27:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EFD4C1C23933
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 22:27:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3581150988;
	Fri, 23 Feb 2024 22:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="M3EJCSKY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6D61F600
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 22:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708727102; cv=none; b=gZrkeVbe38Rsqds5qG2auc8bADswcKf2G/bUcz1YM9qwWalGlKLe2KNhxvfPAmRVk2RZfa5eJ71TK929bTkgWaVOjDkQyOshl6xG84sca3hhCPsUjuX2yAyzxi8o62C6S2ujAqeY5CCa+8wFzuH8g/T+vWyQu/SAm9weSAm+Lyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708727102; c=relaxed/simple;
	bh=r2Qy5iA+b92R/6YSx8phg7cEWVM/jipXxexm6cO2cTQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fu/4V+zCamsA6uSRnaZdiTGc7Q4grm51neB4fFP7zKlyDAdtFVp1bR0t7bV0aDpaNxR/APv1nfOwrLeSCUGPbA5TWqB1HNz/sGHETZRMTQ/bh9zvk3tyZxFUDEYyygC5SVdhUeoIMw4AlAfNpv1cB+XPUv1UEg8paBx27JD5ynk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=M3EJCSKY; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-dc6d8bd612dso1321947276.1
        for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 14:25:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1708727100; x=1709331900; darn=vger.kernel.org;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=3GVsqFj2Rgw6vXPnVOLWszOvCWVSnCBHWfDnqCXlw44=;
        b=M3EJCSKYWWd4maONMjlfY8RutAOK5OZpX6LzzNkC+eUW0If72HQ1iVdXsttVVznwPd
         YpcrBv8rzKVaYl9vH0uvPAm/JMQRPcAB8ygULa3ZmYlQUX/JLFo/kpcV4MZlHJUxhOqH
         wVdMb8jttssftpAhB4t4qy5eXdPaD5vPSduCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708727100; x=1709331900;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3GVsqFj2Rgw6vXPnVOLWszOvCWVSnCBHWfDnqCXlw44=;
        b=EHTWv9EJbjXwYpK/aCXQHNAylrxSr61SE4nkNA/zMN1pvDRiSPfnjECrSqClZauJUO
         e286djuhcQKf8QUMkEf5AcoNB2jCgSQ6DH4IeRlsnyJeVC36nD2MzOeaR1A6fFn28XLj
         oVeNWyW3v0rIHqrUkwze/8SH21Gsx9RgS64lub92bwt7Z6vLGyEZRVmcz1SGXE14P+sK
         YGZQyBcHnQ3WzZXW2+t1FbX6kD7z8b6dXt+1AabmrUlg1A/Zqb+EXdnAaT/MbWmoO1+K
         Ee7XTToFVBYA15nVM9WCYgWff/i0KBPlHn7nFvEzUoVrS9nmA2xodi4w5qUOWcoFg4al
         478g==
X-Forwarded-Encrypted: i=1; AJvYcCUJfawBYJ1VRlc45wbouXezVNkMMUD6W2CGTuEDj7HavjGAxN9mrM2ctWLK3Wna9LiJK7DENQ4sKj9n2yh0N4SWEOL6r3qXcsnJKQ==
X-Gm-Message-State: AOJu0YwzTzJs8NXNA4lByTd6KqxOqfvWM6J10ROj78jpUEF2pzVz2I8/
	BC9SGecs+T8SqijJlJjVJ6wFO+vGI/mj4OycF7DFCba0ci0Dd/AnZHsnxc66Zg==
X-Google-Smtp-Source: AGHT+IH8fUZKBc4ZAsfPhK0UHjuGLSL8NYePxeShNo9nTTQkd3czfXf38dMHz7cX0vuTYOAPJsDwtg==
X-Received: by 2002:a25:8a11:0:b0:dc7:5157:d43d with SMTP id g17-20020a258a11000000b00dc75157d43dmr1153868ybl.42.1708727100152;
        Fri, 23 Feb 2024 14:25:00 -0800 (PST)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id n19-20020ac86753000000b0042e6198372dsm1036403qtp.97.2024.02.23.14.24.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Feb 2024 14:24:59 -0800 (PST)
From: Justin Chen <justin.chen@broadcom.com>
To: netdev@vger.kernel.org
Cc: bcm-kernel-feedback-list@broadcom.com,
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
Subject: [PATCH net-next resend 6/6] net: bcmasp: Add support for PHY interrupts
Date: Fri, 23 Feb 2024 14:24:34 -0800
Message-Id: <20240223222434.590191-7-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240223222434.590191-1-justin.chen@broadcom.com>
References: <20240223222434.590191-1-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000d76f960612140730"

--000000000000d76f960612140730
Content-Transfer-Encoding: 8bit

Hook up the phy interrupts for internal phys to reduce mdio traffic
and improve responsiveness of link changes.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
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
index 0b378a6d43e7..8fbeb506abb9 100644
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


--000000000000d76f960612140730
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIPD8osO5HLPo51WfVTjiWTyVZ7+4DQ7LbSmp
c8o5zL0yMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0MDIyMzIy
MjUwMFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQAqylvRIAc1BhWBPiTFJi1Llkbv3EJOTqSf5BgaCU8wUOEcSH4vJ7tB
KrdvWcMSiATmFoZcc+2m/K14tMTK98w4ejxWRTfzDRAwNGG/oZpMTnty/DSf66QRC7DkdggUiNKZ
EauikhHdMcqOqpZMb2l9hncDUUrmXlRD7tpL9bzVhHALUEY82kX4Uk7hKuuBdnAJKgKtSMvWzSfd
CyvIaniz76jyQBOmS+dFHe3EOp/es8mnY3Q98SKXLn9w7HOtmuWQBexEoP8d+pWAhlwygaF4Uidy
3wkFu+DooVFHWR3JYUxgRo5YE/Qxt8B9mWpzJZ+maZUAuQ3zge3q13mFKGd/
--000000000000d76f960612140730--

