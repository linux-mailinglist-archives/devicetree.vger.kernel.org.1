Return-Path: <devicetree+bounces-222087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00234BA5D66
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 12:20:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B70E12A4679
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 10:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 045CB2DC772;
	Sat, 27 Sep 2025 10:19:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bP/VAWSM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F5A2DC320
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 10:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758968397; cv=none; b=RCfbbA5/0zxgVHVodWl2RHHa24QreAAsdvXPjG7ZiJ3gsp+FpPz9JPR9NoZ4KyrdIFyfVcV65lEVX4dvWDOC49HulpjmJ2k7TbHPWHmO55xO9Wr9hn726jRXdjjcARiYJwTIAt80TjnunI4wPsQOhcUywhgSgMZPckg5CuV7Fi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758968397; c=relaxed/simple;
	bh=2GCjGAmxaqdnNa1gX1x/7BofCtSlrnlXaasLQu8+NAQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PJIBub9TaWmMzfUEOn6SXgHUvs216pl/bEvtFipcaWcvwC38Agv31B6SkkbEauLekAIXAMR8GPpGva4wZegq78xeSiG5e50oEqgBDbyxPBfRz1mCtU+c9XNqa7vZaFxK3JgRU0aHDH6gWwSonKjGHtt/CNfVXAKuS6WhUkOcv38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bP/VAWSM; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-46e47cca387so4032295e9.3
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 03:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758968394; x=1759573194; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TkmZ10FKl6mvyrUUIGFDD4hFu3/JPG8wZl/qSp4EmOc=;
        b=bP/VAWSMqB55oeYURZmfjNDOf042IizeOn7w+Uio8MEVBnx5CV/H0mBdAJmn8fMzr6
         +l4G9XtrZZSyHqTJ2lVP96/GaCiCg2NA6+WKX+33K7RR/ZIjLB940IqqCOYJn+I03ITz
         OMC7BBdW2mH10fR006msqYI77nJq3OtYaKggY3gmCXDQAhaTdYYJcPITfImbwWXJQ/Yh
         1IdqHZktVX5W+slKLEl4B0lEaTMoqgdQAIU5Q63D5DU7ABRsf4Z3LmSK5HWmZ0XUP9Nx
         dSB6fvy6hd8GY4ARea3K7aP8m6BFHmtV0JH1bXOt/gYWnAxL8cTEXSG23trbsukn86yM
         WAzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758968394; x=1759573194;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TkmZ10FKl6mvyrUUIGFDD4hFu3/JPG8wZl/qSp4EmOc=;
        b=oeeXgW8ZDyFVgq5NjkZGF14rtKq0DcPSnh9dcIeNlYpEBXoLTrrGU6O40zmbiKfxSq
         K1EIH2XUHlVCT220dOhsxLW9tCEaQBwzspJEsE0xvvoFP5MdMH6kWJvZPV2pbrWwHBWZ
         auDivFn+3JV7sTJHExUjHUb2Yv5D8cJ48VJZVCmt3wZ1QGjMsmOccXtNms0wJ+XLI4ho
         Gqc/1Ey91IzyyCGcw5tbVMR9VRu8f3r6xiPgb0vX2iTq1fLty/WttW2OVMAeH4Bl+BWI
         szRJ29UEvFL8NCyw1GZ3LYT0QUu4uQ0KRKsTg6wRZDR/L8KcexqneW0/YUjH+GhUx5GK
         aiRw==
X-Forwarded-Encrypted: i=1; AJvYcCVNYnn/GW9C7i6THM5c3BYKy3eTYftwUxLa9mPMX/Cb7as8NZMKuZ9IC0qlV6p7MbKsAjYrsz6qHeoz@vger.kernel.org
X-Gm-Message-State: AOJu0YxAmmUa6+HIXw4pS25paen0pdSSJLcgmCS/y/oOqz+wLzWpnQvw
	5Iq/ezXSXu8ncRimJxFe7H7eXdTmhoKaAJUqTw8dc/d1RS8k5fpqmPPT
X-Gm-Gg: ASbGncs4CMcPmE67QhUfMAj2uWMajZ4G/I6IDYcMpnVngZ+gEiskhJvAWCb4D63kvNP
	ceYGCXJ/hMQuG2iJ7bF9XOAKQwBySa/HsZissv/Dt6v7ixUfxIdcjdB/lxq1/jwttepgR2rA7mD
	DoFJzeuw1+N6eQFL6eo4nYpCNrHdftG0Xmfn8W2gNhbKDfck+faBQOEDh86WRtyL9lHgsigsjVk
	CP+c6EMAY8qVz1I16wMaAjv6LPMvUlidgkkBSZf7MUvzw7EWR2mKwuYtu1k8ozEoqYzLSw0dOfF
	IX/xezbQZ9+mCEJWSYpCHyEETKUld/fSZfCipIoeI9TE3NrLUgPS6LLNRA7L+nyiDh86rPMJXwg
	zqePRdYwaayd40GJHkqARaS4N4owaZ3vSPOWK
X-Google-Smtp-Source: AGHT+IGByWoLUV1V8F16lY7u769X5HERThmpzD3uDRavVtTlHtIfq3MErm0URpRpds2ISq5txohP6Q==
X-Received: by 2002:adf:a314:0:b0:40f:5eb7:f231 with SMTP id ffacd0b85a97d-40f5eb7f303mr5454210f8f.18.1758968394175;
        Sat, 27 Sep 2025 03:19:54 -0700 (PDT)
Received: from builder.. ([2001:9e8:f11a:4416:be24:11ff:fe30:5d85])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e32c31df7sm53416435e9.4.2025.09.27.03.19.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 03:19:53 -0700 (PDT)
From: Jonas Jelonek <jelonek.jonas@gmail.com>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
	Andi Shyti <andi.shyti@kernel.org>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-i2c@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Markus Stockhausen <markus.stockhausen@gmx.de>,
	Sven Eckelmann <sven@narfation.org>,
	Harshal Gohel <hg@simonwunderlich.de>,
	Jonas Jelonek <jelonek.jonas@gmail.com>
Subject: [PATCH v8 3/9] i2c: rtl9300: rename internal sda_pin to sda_num
Date: Sat, 27 Sep 2025 10:19:25 +0000
Message-ID: <20250927101931.71575-4-jelonek.jonas@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250927101931.71575-1-jelonek.jonas@gmail.com>
References: <20250927101931.71575-1-jelonek.jonas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Rename the internally used 'sda_pin' to 'sda_num' to make it clear that
this is NOT the actual pin number of the GPIO pin but rather the logical
SDA channel number. Although the alternate function SDA_Y is sometimes
given with the GPIO number, this is not always the case. Thus, avoid any
confusion or misconfiguration by giving the variable the correct name.

This follows the description change in the devicetree bindings.

Signed-off-by: Jonas Jelonek <jelonek.jonas@gmail.com>
Tested-by: Sven Eckelmann <sven@narfation.org>
Reviewed-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
Tested-by: Chris Packham <chris.packham@alliedtelesis.co.nz> # On RTL9302C based board
Tested-by: Markus Stockhausen <markus.stockhausen@gmx.de>
---
 drivers/i2c/busses/i2c-rtl9300.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/i2c/busses/i2c-rtl9300.c b/drivers/i2c/busses/i2c-rtl9300.c
index 8483bab72146..f9b5ac7670c2 100644
--- a/drivers/i2c/busses/i2c-rtl9300.c
+++ b/drivers/i2c/busses/i2c-rtl9300.c
@@ -20,7 +20,7 @@ struct rtl9300_i2c_chan {
 	struct i2c_adapter adap;
 	struct rtl9300_i2c *i2c;
 	enum rtl9300_bus_freq bus_freq;
-	u8 sda_pin;
+	u8 sda_num;
 };
 
 enum rtl9300_i2c_reg_scope {
@@ -67,7 +67,7 @@ struct rtl9300_i2c {
 	struct regmap_field *fields[F_NUM_FIELDS];
 	u32 reg_base;
 	u32 data_reg;
-	u8 sda_pin;
+	u8 sda_num;
 	struct mutex lock;
 };
 
@@ -102,11 +102,11 @@ static int rtl9300_i2c_config_io(struct rtl9300_i2c *i2c, u8 sda_pin)
 
 	drv_data = (struct rtl9300_i2c_drv_data *)device_get_match_data(i2c->dev);
 
-	ret = regmap_field_update_bits(i2c->fields[F_SDA_SEL], BIT(sda_pin), BIT(sda_pin));
+	ret = regmap_field_update_bits(i2c->fields[F_SDA_SEL], BIT(sda_num), BIT(sda_num));
 	if (ret)
 		return ret;
 
-	ret = regmap_field_write(i2c->fields[F_SDA_OUT_SEL], sda_pin);
+	ret = regmap_field_write(i2c->fields[F_SDA_OUT_SEL], sda_num);
 	if (ret)
 		return ret;
 
@@ -243,11 +243,11 @@ static int rtl9300_i2c_smbus_xfer(struct i2c_adapter *adap, u16 addr, unsigned s
 	int len = 0, ret;
 
 	mutex_lock(&i2c->lock);
-	if (chan->sda_pin != i2c->sda_pin) {
+	if (chan->sda_num != i2c->sda_num) {
 		ret = rtl9300_i2c_config_io(i2c, chan->sda_pin);
 		if (ret)
 			goto out_unlock;
-		i2c->sda_pin = chan->sda_pin;
+		i2c->sda_num = chan->sda_num;
 	}
 
 	switch (size) {
@@ -374,7 +374,7 @@ static int rtl9300_i2c_probe(struct platform_device *pdev)
 	struct fwnode_handle *child;
 	struct rtl9300_i2c_drv_data *drv_data;
 	struct reg_field fields[F_NUM_FIELDS];
-	u32 clock_freq, sda_pin;
+	u32 clock_freq, sda_num;
 	int ret, i = 0;
 
 	i2c = devm_kzalloc(dev, sizeof(*i2c), GFP_KERNEL);
@@ -414,7 +414,7 @@ static int rtl9300_i2c_probe(struct platform_device *pdev)
 		struct rtl9300_i2c_chan *chan = &i2c->chans[i];
 		struct i2c_adapter *adap = &chan->adap;
 
-		ret = fwnode_property_read_u32(child, "reg", &sda_pin);
+		ret = fwnode_property_read_u32(child, "reg", &sda_num);
 		if (ret)
 			return ret;
 
@@ -431,11 +431,11 @@ static int rtl9300_i2c_probe(struct platform_device *pdev)
 			break;
 		default:
 			dev_warn(i2c->dev, "SDA%d clock-frequency %d not supported using default\n",
-				 sda_pin, clock_freq);
+				 sda_num, clock_freq);
 			break;
 		}
 
-		chan->sda_pin = sda_pin;
+		chan->sda_num = sda_num;
 		chan->i2c = i2c;
 		adap = &i2c->chans[i].adap;
 		adap->owner = THIS_MODULE;
@@ -445,14 +445,14 @@ static int rtl9300_i2c_probe(struct platform_device *pdev)
 		adap->dev.parent = dev;
 		i2c_set_adapdata(adap, chan);
 		adap->dev.of_node = to_of_node(child);
-		snprintf(adap->name, sizeof(adap->name), "%s SDA%d\n", dev_name(dev), sda_pin);
+		snprintf(adap->name, sizeof(adap->name), "%s SDA%d\n", dev_name(dev), sda_num);
 		i++;
 
 		ret = devm_i2c_add_adapter(dev, adap);
 		if (ret)
 			return ret;
 	}
-	i2c->sda_pin = 0xff;
+	i2c->sda_num = 0xff;
 
 	return 0;
 }
-- 
2.48.1


