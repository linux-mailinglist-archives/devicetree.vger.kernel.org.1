Return-Path: <devicetree+bounces-88770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9980493EEBB
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 09:42:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1ADA81F2221E
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 07:42:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A33E12D1FC;
	Mon, 29 Jul 2024 07:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="fgy3eIpv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638BE12C522
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 07:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722238924; cv=none; b=Nr/92skYpwhqpStU59eWjE275BN803lnX2Hp3ZiVc8lRiDN+t3PuKf+j9VdplWXVurj24dum19ANz+NUx5YbdsvipnCCTJFR24I8wb0HqSBCqPLOnrPtKHo9/DcwTxeYt2B4wkDA942muzK+n7dEowuLrzG29z5+y/tAtkFjJsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722238924; c=relaxed/simple;
	bh=t7F2lKoixWfzCSNEpIYekj5rawyt2QRxC3AGjmCilLM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qb00g6Ps9IJ9GDsKPN2E1UbWIyJ+x2j4WxxDAHmjTgJSSyFaP+sfYR+iKBUxLSuuuHyZe/xD7gDHyVVSMKbO34otI29M0q+JEgdWowIHmerKZr8jobFu0avhRMdGsxUSEiYIfQ+u6mYCYyFZ/IieKQTcaehUiaS++N6cm74Wvak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=fgy3eIpv; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-427b1d4da32so7934345e9.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 00:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722238920; x=1722843720; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZCJyOdovnkFMEmbndXoqHv/AoixQbNLaTwmx6tiqcEI=;
        b=fgy3eIpv4wNCMkq5iKTCCDuJryptZxSFJTCW7Esks7pESN6kl+8HkbJG09E1qDbp1F
         qCXDkIeAPumM70YrzMKKBpCDw8BfIj80TUUucZneSCRHRwr5TZH5aBwAuDERp8iqwoHm
         hj3JY/HRAtJQak7K0HSzjzNS5r8yyK6Hh27cnHVso8TbjyiZVuKqUPUc0I1QLP2niH8u
         +ZTw/RPtxdkfCa1Osr10GVm4JTCH61QjiRjP0FOT9PKHVHv7RCpRhYb71F3XQZWLNino
         /Y2bNfpQpyr6rqWveXi/rTPcvwaA0+tzCoLUqEFibSsGwOXWfs9113X0Ad2HWCpAjoN2
         ciwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722238920; x=1722843720;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZCJyOdovnkFMEmbndXoqHv/AoixQbNLaTwmx6tiqcEI=;
        b=M9j1lDhk6Yq0+hAOuwfIAAqkis+RKx/RIJBWSBk83Cd2xuwQ7RN+WzoDZrPXnQc5uz
         cNqOmVwh+7ZVQfBHr5khE2k7uVeEfk5Lv5PTJGOAq0y3+ehxdteAXUJelVo1I8ch0Ssu
         3ShXAkGzVhqkIb96N0yL/ReaUn5OYi+RB8WMDWczVx5dcYFYlmwbMtEAYfCKuTp2I8yN
         LLTGTUTSLZC11Svh5A4cskARb20ZpKeS1It2BLgpgc7LFRzYI6/gHLa9ZhcA21jXrCwt
         6dpP8Ytb/lbJbxkA2yNoGzdPopq+iVUPSEEHi59MLlA6IuIWduhqPyoffLoLUdtCsweJ
         Fx6A==
X-Forwarded-Encrypted: i=1; AJvYcCW9bnktGNWVsGrldGPgeZYeNWqSWGP5I7SaCy5tReVnyjBwbpOxTffia50A+l6/p9CYr/ZnUyN6tAaI41k2RlnDt+baP+E9HwC16A==
X-Gm-Message-State: AOJu0YwVHtHXKkHWFvApI1pwVmJBPkCAY8l9EJ2QD79RUyfr0baYKWAc
	716/uvYXP+uxqJ11lnMkp50x1BS2hCTaag6llke2xfP+c2NNqTZc2EEdvwwO4+k=
X-Google-Smtp-Source: AGHT+IGA9WK2y4GsRw5Nh5f5SQhHnBIbXwPuYenvw4gciCMeqP8xAeSl3QvUhZ/h2LeIGM5P+g9f4Q==
X-Received: by 2002:a5d:5227:0:b0:36b:5d86:d889 with SMTP id ffacd0b85a97d-36b5d86d95cmr3919065f8f.6.1722238919709;
        Mon, 29 Jul 2024 00:41:59 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a245:8609:c1c4:a4f8:94c8:31f2])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36b36863aa7sm11460879f8f.109.2024.07.29.00.41.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 00:41:59 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Chandrasekar Ramakrishnan <rcsekar@samsung.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Markus Schneider-Pargmann <msp@baylibre.com>,
	=?UTF-8?q?Martin=20Hundeb=C3=B8ll?= <martin@geanix.com>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Michal Kubiak <michal.kubiak@intel.com>
Cc: Vibhore Vardhan <vibhore@ti.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Dhruva Gole <d-gole@ti.com>,
	Conor Dooley <conor@kernel.org>,
	linux-can@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/7] can: m_can: Map WoL to device_set_wakeup_enable
Date: Mon, 29 Jul 2024 09:41:30 +0200
Message-ID: <20240729074135.3850634-3-msp@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240729074135.3850634-1-msp@baylibre.com>
References: <20240729074135.3850634-1-msp@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In some devices the pins of the m_can module can act as a wakeup source.
This patch helps do that by connecting the PHY_WAKE WoL option to
device_set_wakeup_enable. By marking this device as being wakeup
enabled, this setting can be used by platform code to decide which
sleep or poweroff mode to use.

Also this prepares the driver for the next patch in which the pinctrl
settings are changed depending on the desired wakeup source.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 drivers/net/can/m_can/m_can.c | 37 +++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/net/can/m_can/m_can.c b/drivers/net/can/m_can/m_can.c
index 81e05746d7d4..2e4ccf05e162 100644
--- a/drivers/net/can/m_can/m_can.c
+++ b/drivers/net/can/m_can/m_can.c
@@ -2182,6 +2182,36 @@ static int m_can_set_coalesce(struct net_device *dev,
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
+	bool wol_enable = !!wol->wolopts & WAKE_PHY;
+	int ret;
+
+	if ((wol->wolopts & WAKE_PHY) != wol->wolopts)
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
@@ -2191,10 +2221,14 @@ static const struct ethtool_ops m_can_ethtool_ops_coalescing = {
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
@@ -2321,6 +2355,9 @@ struct m_can_classdev *m_can_class_allocate_dev(struct device *dev,
 		goto out;
 	}
 
+	if (dev->of_node && of_property_read_bool(dev->of_node, "wakeup-source"))
+		device_set_wakeup_capable(dev, true);
+
 	/* Get TX FIFO size
 	 * Defines the total amount of echo buffers for loopback
 	 */
-- 
2.45.2


