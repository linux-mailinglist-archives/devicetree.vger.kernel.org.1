Return-Path: <devicetree+bounces-63431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1508B4DE1
	for <lists+devicetree@lfdr.de>; Sun, 28 Apr 2024 23:16:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 043E728136A
	for <lists+devicetree@lfdr.de>; Sun, 28 Apr 2024 21:16:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DD85B647;
	Sun, 28 Apr 2024 21:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ferroamp-se.20230601.gappssmtp.com header.i=@ferroamp-se.20230601.gappssmtp.com header.b="d87dyRQG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A001C14
	for <devicetree@vger.kernel.org>; Sun, 28 Apr 2024 21:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714338998; cv=none; b=ivwHdaDCAiEQbr9tNVdO0RjQjkOK/2KhaMvJ7hwm/spiECiKJK1XcencfPyXC8+2+oZJ8Ip2/SkA8ARxUB70u/x5PE5GmmL8ZU3L/LPvU9CNMhCweAuunh0q/z9uoEHhKPsfDkGmzq9IXbUb9XwRzTgkLkwJk83ynLQIpcdzyuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714338998; c=relaxed/simple;
	bh=gPj8v31ez3L5cKeSj569Pzxg+WTN01PIgBVMPUM0PVk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kR0xuYaLFR/SNhVGs8B/ybvZ1FPFxStTLmKTTHsvzv8JShjhck4qqT6vmyGbGdFs1jgc1XxhU8YKvnEbb2la+ubVcz0Lx4JGm7hbpZOikSjGAx3/U+3VU+Yq8Csjbq2asvosQpd6f5YkJ+0tv81vosYfrvQgG8UDv1gYiBKRpOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ferroamp.se; spf=pass smtp.mailfrom=ferroamp.se; dkim=pass (2048-bit key) header.d=ferroamp-se.20230601.gappssmtp.com header.i=@ferroamp-se.20230601.gappssmtp.com header.b=d87dyRQG; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ferroamp.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ferroamp.se
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-51aa6a8e49aso4541904e87.3
        for <devicetree@vger.kernel.org>; Sun, 28 Apr 2024 14:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ferroamp-se.20230601.gappssmtp.com; s=20230601; t=1714338994; x=1714943794; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Th6JOWhuN18ilbXtwucL9jIp9hlrqQkRJbPVZOZ6Mcs=;
        b=d87dyRQG3ruQXMlkKxeNWt4ZeCPEj3IZGLHXbFlUGCW0m8Qhtm0X+Y83LNc1RFnmHD
         5lDuuRuXOECpqGRHC38OT6Axkg3a3BWKpDlMZB5h9K0hiHKzQDJ41AWYwnfqDI2NqyYL
         UYTML61ScTYq9swJdlhdhfln/afrUtClWb0jAmo4ZlZH2394KuzQCEkApxWxU9JelSsO
         w2G6OqwNwOqIOHBoRhApBGqK0XQVU56vTlREnuLmNqVgHqLy+wkQTthBlxcibwgFf96D
         /C1HY9psJpGS7DiyLSBgJU07gnnD0IWcHtxSJm1AdGgW9gA8ss7pS8BM9UM04+laT/9T
         o23Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714338994; x=1714943794;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Th6JOWhuN18ilbXtwucL9jIp9hlrqQkRJbPVZOZ6Mcs=;
        b=VAMz3eDBgwHn2UQnBqvfT93YEBBbWNhlMjvSTnSFAscHXabBEp54Alo3PCfZFc58qr
         dikAVSpQU/q4Uhn+fxkm2GuA7YH+1x4+JLkLw0sDGz3gym/B81GWanvoODNER1NAhqi1
         TaYWm8WTfRXr8Clcfiu93Dvi+FfNjCg/7/kKpUYgdk3VnjP3eiY23rcqMXOqJQFsYy7S
         0Q+aJDmI/pCXFaCYeo4y48FQ3hmcUg8SLND9wQVjtzkDHW2YZBlPjZiQQPeMM2bcCjUl
         XvndQDxXY9xUcf800y3UIPf12tlydunrxmwdahMj9DHSREveXCPRE0yCszbZc2tN1Tj2
         XJ8g==
X-Forwarded-Encrypted: i=1; AJvYcCXikEy1/Fxsrp2W/fTRrk2lpC9AeFLi+3fYX6zO3daj/5WYkag9TG3VcZiqSKThaws8BMR/ePdmewHSl97Mae42Qn69WS1ZGAFllA==
X-Gm-Message-State: AOJu0YysUfKeqTWkDMg+AObJ9FIbzflLE9AgxtkPb7EJJcoko/4v0aGq
	u2L0gd75dn73r21plsaj8YUUj8ZCCbmyKWhXtds4nJ1EpUA0deRY+rOQ6Y5N0Uw=
X-Google-Smtp-Source: AGHT+IEdHEc3lHTJKUvgUx6wcLka2P3zMWpdp0v9hONRgbCQmch2GDzwns2skCib8Gg5Xzl6+hkPew==
X-Received: by 2002:ac2:4542:0:b0:51c:66eb:8a66 with SMTP id j2-20020ac24542000000b0051c66eb8a66mr4599862lfm.67.1714338994352;
        Sun, 28 Apr 2024 14:16:34 -0700 (PDT)
Received: from builder (c188-149-135-220.bredband.tele2.se. [188.149.135.220])
        by smtp.gmail.com with ESMTPSA id g28-20020a0565123b9c00b00518be964835sm3873408lfv.53.2024.04.28.14.16.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Apr 2024 14:16:33 -0700 (PDT)
Date: Sun, 28 Apr 2024 23:16:32 +0200
From: =?iso-8859-1?Q?Ram=F3n?= Nordin Rodriguez <ramon.nordin.rodriguez@ferroamp.se>
To: Parthiban Veerasooran <Parthiban.Veerasooran@microchip.com>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
	pabeni@redhat.com, horms@kernel.org, saeedm@nvidia.com,
	anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, andrew@lunn.ch, corbet@lwn.net,
	linux-doc@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, horatiu.vultur@microchip.com,
	ruanjinjie@huawei.com, steen.hegelund@microchip.com,
	vladimir.oltean@nxp.com, UNGLinuxDriver@microchip.com,
	Thorsten.Kummermehr@microchip.com, Pier.Beruto@onsemi.com,
	Selvamani.Rajagopal@onsemi.com, Nicolas.Ferre@microchip.com,
	benjamin.bigler@bernformulastudent.ch
Subject: [PATCH net-next v4 13/12] net: lan865x: optional hardware reset
Message-ID: <Zi68sDje4wfgftyZ@builder>
References: <20240418125648.372526-1-Parthiban.Veerasooran@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240418125648.372526-1-Parthiban.Veerasooran@microchip.com>

From c65e42982684d5fd8b2294eb6acf755aa0fcab83 Mon Sep 17 00:00:00 2001
From: =?UTF-8?q?Ram=C3=B3n=20Nordin=20Rodriguez?=
 <ramon.nordin.rodriguez@ferroamp.se>
Date: Sun, 28 Apr 2024 22:25:12 +0200
Subject: [PATCH net-next v4 13/12] net: lan865x: optional hardware reset
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This commit optionally enables a hardware reset of the lan8650/1
mac-phy. These chips have a software reset that is discourage from use
in the manual since it only resets the internal phy.

Signed-off-by: Ram�n Nordin Rodriguez <ramon.nordin.rodriguez@ferroamp.se>
---
 .../bindings/net/microchip,lan865x.yaml       |  4 +++
 .../net/ethernet/microchip/lan865x/lan865x.c  | 28 +++++++++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/microchip,lan865x.yaml b/Documentation/devicetree/bindings/net/microchip,lan865x.yaml
index 4fdec0ba3532..0f11f431df06 100644
--- a/Documentation/devicetree/bindings/net/microchip,lan865x.yaml
+++ b/Documentation/devicetree/bindings/net/microchip,lan865x.yaml
@@ -44,6 +44,9 @@ properties:
     minimum: 15000000
     maximum: 25000000
 
+  reset-gpios:
+    maxItems: 1
+
   "#address-cells":
     const: 1
 
@@ -76,5 +79,6 @@ examples:
         interrupts = <6 IRQ_TYPE_EDGE_FALLING>;
         local-mac-address = [04 05 06 01 02 03];
         spi-max-frequency = <15000000>;
+        reset-gpios = <&gpio2 8 GPIO_ACTIVE_HIGH>;
       };
     };
diff --git a/drivers/net/ethernet/microchip/lan865x/lan865x.c b/drivers/net/ethernet/microchip/lan865x/lan865x.c
index 9abefa8b9d9f..bed9033574b2 100644
--- a/drivers/net/ethernet/microchip/lan865x/lan865x.c
+++ b/drivers/net/ethernet/microchip/lan865x/lan865x.c
@@ -9,6 +9,7 @@
 #include <linux/kernel.h>
 #include <linux/phy.h>
 #include <linux/oa_tc6.h>
+#include <linux/gpio/driver.h>
 
 #define DRV_NAME			"lan865x"
 
@@ -33,6 +34,7 @@
 
 struct lan865x_priv {
 	struct work_struct multicast_work;
+	struct gpio_desc *reset_gpio;
 	struct net_device *netdev;
 	struct spi_device *spi;
 	struct oa_tc6 *tc6;
@@ -283,6 +285,24 @@ static int lan865x_set_zarfe(struct lan865x_priv *priv)
 	return oa_tc6_write_register(priv->tc6, OA_TC6_REG_CONFIG0, regval);
 }
 
+static int lan865x_probe_reset_gpio(struct lan865x_priv *priv)
+{
+	priv->reset_gpio = devm_gpiod_get_optional(&priv->spi->dev, "reset",
+						   GPIOD_OUT_HIGH);
+	if (IS_ERR(priv->reset_gpio))
+		return PTR_ERR(priv->reset_gpio);
+
+	return 0;
+}
+
+static void lan865x_hw_reset(struct lan865x_priv *priv)
+{
+	gpiod_set_value_cansleep(priv->reset_gpio, 1);
+	// section 9.6.3 RESET_N Timing specifies a minimum hold of 5us
+	usleep_range(5, 10);
+	gpiod_set_value_cansleep(priv->reset_gpio, 0);
+}
+
 static int lan865x_probe(struct spi_device *spi)
 {
 	struct net_device *netdev;
@@ -297,6 +317,14 @@ static int lan865x_probe(struct spi_device *spi)
 	priv->netdev = netdev;
 	priv->spi = spi;
 	spi_set_drvdata(spi, priv);
+	if (lan865x_probe_reset_gpio(priv)) {
+		dev_err(&spi->dev, "failed to probe reset pin");
+		ret = -ENODEV;
+		goto free_netdev;
+	}
+
+	if (priv->reset_gpio)
+		lan865x_hw_reset(priv);
 	INIT_WORK(&priv->multicast_work, lan865x_multicast_work_handler);
 
 	priv->tc6 = oa_tc6_init(spi, netdev);
-- 
2.43.0



