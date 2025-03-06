Return-Path: <devicetree+bounces-154788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BF380A548E8
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 12:16:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0415E173259
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 11:16:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDE2620B205;
	Thu,  6 Mar 2025 11:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="WQZeQ0Nb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8D0204699
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 11:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741259764; cv=none; b=uUmmnm1OzUV3CKrIIFyeVvvfusAUb9DK48tOnVmIkOtwfKXiJ2wVbmOjhG9D/QY/Rfd2O9adVmmrHea9gIgdD7vQQyYLIH6vBS7nW4CjjyfzgnqjLdf+YTt/d3586XFMIRvFzrOLy9PszW+fh2N9dR/86pPabyvNbLhf2ipcIrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741259764; c=relaxed/simple;
	bh=J4VG8tXwefIVHGZH1+PCdV86BOTtS1uR46bTjNwL+bw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=meAHn09ld0dklVFazAV1lqEZQzKhFbb4g0A27NKbUCgR2frvI4FXAScG9l5Qz1tMWyYDweKAc3uLrTYKkTu29/FKhSSQ84A+VIz7c4zp/dyEzcSXtdZHCMF4ngQSMk7XPBykLfrnfFRoJFjJubdJKMUSs8stNUDHYE1be6PPBvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=WQZeQ0Nb; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5e095d47a25so939575a12.0
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 03:16:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1741259761; x=1741864561; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pdijOc5dVyPkLnBD7Iga0l5uZDGm1/4dYkDZG2K3euU=;
        b=WQZeQ0NbCg5gZK5qgbZ/tdOfqVrMgNiP+ZSSAjjorCtnD2dOXGIrTu1VOiLW8GmLpI
         zzsQJHxPj5i3z33WCpDSvG2xp6MJhtctTmPXTp9PYGUIeRhhy7aoyw5T72ghXLg3cAb3
         nFGuiApLI+d9YpBjeNYBM/az4VkYDYjDrcwKiNYKGPwsK682Tpv0Hvx70oa3MhRZcAII
         +TUeIwKhBr5H2RY9223AXJFHIEk8te1/DqgZbkw6mxmsR30cRX5BSY5FvZ2mVMjtrHhO
         aPdowrFBABwMcRylyjj/9/CPFpO6fUbWyfitJveYWtvsOvRa88DOiYW3Pbx0fhJ3bJ0w
         rrrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741259761; x=1741864561;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pdijOc5dVyPkLnBD7Iga0l5uZDGm1/4dYkDZG2K3euU=;
        b=Ece1MbM4Tv1Ayw6HjkHbNcGxvkai9kZTQY7mb2bR/T6BhZmtAJZ35SwxUX8npiv3TS
         Zdb0eQBPSvr9dQ/ZYu09JO9oHdcoF9TbyvoFkumi0kH47ahNHyzD+aKvAcHPPIwqkc5d
         RAlOt3FAmjAm7S4Gfa9E4OJYWb1UF2FqlFT/YzVm6u8BU7OJipNoPRWnQJ6fwo1ADgmS
         +nQB/XvDyHXvo4/p1ruLWll2xYSM03HeMKnLD6EUMHeal4z9jq+x6VUuD8qqg28+k4kZ
         C6Ag/momIut9mDMse82bViHh572/2p9Mnt88tBTrbIDwMCpmjrKfKF90z3OytokMiFJe
         Iq5w==
X-Forwarded-Encrypted: i=1; AJvYcCWaSQVYJaoTACA34R6aFxsx1eIR8Gl07AFuXcrNQZa4MKi80OLi1KeaxBxskwLKX4CTgN/Ve4O4GRwQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzLMyJWUsE3f3/dubE8TqScfaoHaczv4Ta0N4EBUucZl0oshfYl
	Ckh6b9rsWXLnh76FN2O2A991u1ZpA1FEN4L++kyamBv0znW577Bjp6Tfrh6DGNQ=
X-Gm-Gg: ASbGncuo4zA38KP49xniqZeO9TG9vEsT9V3BzrrdiCmRnuYaDBTeTgWup/NGwFQymZq
	U2yik9cpHAfeEbj7bHIDwtgVK4Md81wfr7bjjNqZzMtI2f0kqw+wF+VGRviSleYuemE2ThFhU8v
	gp3hpt1QSGjoCoku+homawBFXo3LjNLATIXsu/HF7YUYx+WNqFEbEn0llB4v7k4X93ZQAvE0JGI
	LJ9DhGxLi7z26SLQ+pzrMtQ5eU2LzkTeKS0UT5HY0v0Ev/uvWJD/YKlYk43MS3pPhnMeFsk6cdY
	djQOlnkHGL2iRjYgorXUQ/ovxKLP5MtWh1dFZ/ccnA==
X-Google-Smtp-Source: AGHT+IGT909TTpj4sMO2JU0Dy2HjA8tPPk0SlL6fRutxRSMRwZg7sd5DwRusv2QlmHcpjyVexkMgSg==
X-Received: by 2002:a17:907:8b97:b0:abf:7a26:c478 with SMTP id a640c23a62f3a-ac20e1db237mr697110766b.47.1741259760981;
        Thu, 06 Mar 2025 03:16:00 -0800 (PST)
Received: from localhost ([2001:4091:a245:8327:80ad:8144:3b07:4679])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-ac239485558sm79821566b.60.2025.03.06.03.16.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 03:16:00 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Thu, 06 Mar 2025 12:14:42 +0100
Subject: [PATCH v5 04/13] can: m_can: Map WoL to device_set_wakeup_enable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250306-topic-am62-partialio-v6-12-b4-v5-4-f9323d3744a2@baylibre.com>
References: <20250306-topic-am62-partialio-v6-12-b4-v5-0-f9323d3744a2@baylibre.com>
In-Reply-To: <20250306-topic-am62-partialio-v6-12-b4-v5-0-f9323d3744a2@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Santosh Shilimkar <ssantosh@kernel.org>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anand Gadiyar <gadiyar@ti.com>, 
 Chandrasekar Ramakrishnan <rcsekar@samsung.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Akashdeep Kaur <a-kaur@ti.com>, Kendall Willis <k-willis@ti.com>, 
 linux-can@vger.kernel.org, Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2839; i=msp@baylibre.com;
 h=from:subject:message-id; bh=J4VG8tXwefIVHGZH1+PCdV86BOTtS1uR46bTjNwL+bw=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNJPNu9es/H//VpZJaPYRWYtm6pvLfN5U8DyZPfjnamJi
 kwXfdVdO0pZGMQ4GGTFFFnuflj4rk7u+oKIdY8cYeawMoEMYeDiFICJnDnCyPDv/MklPmWTlJpC
 /kmkOvke767d7HFGblvMdNnQjNc1YQqMDLfnsSu2abnr9t7jt/MxEJv0a8XSqHuHuw1Pzvr7z7Z
 qNRsA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

In some devices the pins of the m_can module can act as a wakeup source.
This patch helps do that by connecting the PHY_WAKE WoL option to
device_set_wakeup_enable. By marking this device as being wakeup
enabled, this setting can be used by platform code to decide which
sleep or poweroff mode to use.

Also this prepares the driver for the next patch in which the pinctrl
settings are changed depending on the desired wakeup source.

Reviewed-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 drivers/net/can/m_can/m_can.c | 37 +++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/net/can/m_can/m_can.c b/drivers/net/can/m_can/m_can.c
index 884a6352c42b7bc372c55a6be19ca9fcb15d3d63..20f7533ad9e7735013ff000e6f3b11d016f8a09f 100644
--- a/drivers/net/can/m_can/m_can.c
+++ b/drivers/net/can/m_can/m_can.c
@@ -2222,6 +2222,36 @@ static int m_can_set_coalesce(struct net_device *dev,
 	return 0;
 }
 
+static void m_can_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
+{
+	struct m_can_classdev *cdev = netdev_priv(dev);
+
+	wol->supported = device_can_wakeup(cdev->dev) ? WAKE_PHY : 0;
+	wol->wolopts = device_may_wakeup(cdev->dev) ? WAKE_PHY : 0;
+}
+
+static int m_can_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
+{
+	struct m_can_classdev *cdev = netdev_priv(dev);
+	bool wol_enable = !!(wol->wolopts & WAKE_PHY);
+	int ret;
+
+	if (wol->wolopts & ~WAKE_PHY)
+		return -EINVAL;
+
+	if (wol_enable == device_may_wakeup(cdev->dev))
+		return 0;
+
+	ret = device_set_wakeup_enable(cdev->dev, wol_enable);
+	if (ret) {
+		netdev_err(cdev->net, "Failed to set wakeup enable %pE\n",
+			   ERR_PTR(ret));
+		return ret;
+	}
+
+	return 0;
+}
+
 static const struct ethtool_ops m_can_ethtool_ops_coalescing = {
 	.supported_coalesce_params = ETHTOOL_COALESCE_RX_USECS_IRQ |
 		ETHTOOL_COALESCE_RX_MAX_FRAMES_IRQ |
@@ -2231,10 +2261,14 @@ static const struct ethtool_ops m_can_ethtool_ops_coalescing = {
 	.get_ts_info = ethtool_op_get_ts_info,
 	.get_coalesce = m_can_get_coalesce,
 	.set_coalesce = m_can_set_coalesce,
+	.get_wol = m_can_get_wol,
+	.set_wol = m_can_set_wol,
 };
 
 static const struct ethtool_ops m_can_ethtool_ops = {
 	.get_ts_info = ethtool_op_get_ts_info,
+	.get_wol = m_can_get_wol,
+	.set_wol = m_can_set_wol,
 };
 
 static int register_m_can_dev(struct m_can_classdev *cdev)
@@ -2361,6 +2395,9 @@ struct m_can_classdev *m_can_class_allocate_dev(struct device *dev,
 		goto out;
 	}
 
+	if (dev->of_node && of_property_read_bool(dev->of_node, "wakeup-source"))
+		device_set_wakeup_capable(dev, true);
+
 	/* Get TX FIFO size
 	 * Defines the total amount of echo buffers for loopback
 	 */

-- 
2.47.2


