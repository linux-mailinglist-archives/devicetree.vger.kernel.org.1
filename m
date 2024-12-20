Return-Path: <devicetree+bounces-133186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 062C99F9A3C
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 20:19:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ADD4B7A04E4
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 19:19:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D51A3227569;
	Fri, 20 Dec 2024 19:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cKkSBBs8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87D14225A57
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 19:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734722242; cv=none; b=lX4ZtQEN7GTlUymBl0g6Dj+Gxblp/ilC/jhJ3JnFqg5p/3b9hqeRyxJCD63TM49yZmu7JitEQMO9oDBE4ILoitfFerBMNw+JidzFZXkHeiLiFLbcrwjQii+vEUHeS2lJx7p+Y7BuTtIZJpk8avk+WpTgaAtp62Bi1bwpbQsmc1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734722242; c=relaxed/simple;
	bh=mGhlxfT6eF+jcZlW7jmmh2wdkJ3HDICoSvZsMZwFbd0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TekSYLUCnwUKjwHtBfnJtr94ShrpsBEsEyB9GLVoemPQZka2n25ha5Dqo2Y7Imu1m1RWgS8WS4bOXM4sUpFbnbAxnqRJFU/kFxHKJcuRp4M5i72GAK+G7ZIjgjM5iw41A6NzGYcHcAd2Zx1hwsjkTOhFjxMA7uSRWZT5QNFrUWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cKkSBBs8; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5cecbddb574so3666152a12.1
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 11:17:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734722238; x=1735327038; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yb2OFBg5699Qjzh1WbbstXrxCP9eQxyz8l9GfCLKz0E=;
        b=cKkSBBs8fD6LoZVHsUE1MXMQyp8M6hjeJhlJiJ5Zm6/eYs7CLl4fK1LCkm0yZm6Fqd
         /s2fNQ4+caNBJlaQzS8TYel0yCm43CiV/qpcYgw/VwwIbtFG0Fa17iFlXPXICLlnrwSM
         xnah4zpGzWBE45YDn9p8Z+hr7EAmp4HyVTJHLthE/MM0a8DGonXnIO3eImnHot61FzOn
         N3d3j6gYXfGQO0/0FtnFARDgfHP7YZVEpfGPWsBBploN1dwk6b0oYaQ9MZXeQ3U1uPSj
         LFxGWNWGDs4A6oq2jSyq2GAEQUKTQyVqGnVGUTuIZchx181ERzkPwFeOb/HZArUYdiCA
         vn8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734722238; x=1735327038;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yb2OFBg5699Qjzh1WbbstXrxCP9eQxyz8l9GfCLKz0E=;
        b=Vw1jj7DBRGa9K29EGl6y4aDyQoBEKtVy9cMzhChQg/Mj4O5pvXN7r9C9+KVP1pQYcy
         /DqKpY+Q2YTqiKFK0j3W94PERCEvBRDOd1JGrXQ08XtqBlMwi/vs2kP0wTHiVT54blIq
         2M1LqmLvmB8RlLzvSKpz9jUzMMjhNbDVqgO3/Ik9miqUh4ElcBmAe02MKEVx0cMnpEl7
         MiV5v97GbUB+I/VfnorGtLrPvg5wK62X/b3Expv4OR/MIoIDHP13X2fZFC9bZP43K2rs
         N6CZgihev3UflmUY9fS1uBGkZk914HmFQ98hQYTlkxn6Vx8UFCxlWWRY5xjqdTy5mwvG
         7onw==
X-Forwarded-Encrypted: i=1; AJvYcCVdNhVd/pTs745b6RP8x/Qgg/mZjY0h3qkNzkQDQFjJEGcNmsT+jiWCnIpuByLFuAvr802UsUxhIM0c@vger.kernel.org
X-Gm-Message-State: AOJu0YxOqtl7Kc1JGAfYjYtBxB26s3AH+Lfj1VmcOX1/68ru0OBHskDF
	3mJEJ6IMQ9nPxswFW7Q80CARRFp4bfeZXsc+xIEiWTN94rzw+a6orjT25snDWiY=
X-Gm-Gg: ASbGncvgXfYk7brz8Eb14cJ4783lt0mebVq7GdQrYXkG0xj/59x3CoLT1UGGBk5ZH1d
	n/f55d6Od6cvTa9VXTwPfIiBoZpzy0E749t4hRr8NVwZuSuWQnXdOWizzzUOvhr2Zc9IjJ17w35
	i+CtpMDXhKxrgmOyCgmxuAHN00Zt4flJx33VYMG1KfEhNzMTfMifmUGIeKz92U5t9bh42j8iiki
	zxCvnLvoIahuKAaD+uP6MaBYFtAkL8mLIjCsIJEjN0H+CkL6XvYt3NE55+sIvPnm2Q=
X-Google-Smtp-Source: AGHT+IFAISrFUYFuhFqTWUFjIqqCBrlHPHO2EfxocbLtuEGjlne/qNFOwZx94YXCbT5K77LTeZrxpA==
X-Received: by 2002:a05:6402:4402:b0:5d2:60d9:a2a0 with SMTP id 4fb4d7f45d1cf-5d81de5d896mr3637217a12.33.1734722237695;
        Fri, 20 Dec 2024 11:17:17 -0800 (PST)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80679f11dsm1988727a12.46.2024.12.20.11.17.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 11:17:16 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 20 Dec 2024 20:17:07 +0100
Subject: [PATCH 2/2] net: of: Support adding offset to nvmem MAC addresses
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-net-mac-nvmem-offset-v1-2-e9d1da2c1681@linaro.org>
References: <20241220-net-mac-nvmem-offset-v1-0-e9d1da2c1681@linaro.org>
In-Reply-To: <20241220-net-mac-nvmem-offset-v1-0-e9d1da2c1681@linaro.org>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, Simon Horman <horms@kernel.org>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

If a lower-byte MAC address offset is encoded into the device
tree, make sure to add this to the returned address when
looking up a MAC address from NVMEM.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 net/core/of_net.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/net/core/of_net.c b/net/core/of_net.c
index 93ea425b9248a23f4f95a336e9cdbf0053248e32..c98000ec13377ea4b541e182a66be8b1010edc40 100644
--- a/net/core/of_net.c
+++ b/net/core/of_net.c
@@ -64,6 +64,7 @@ int of_get_mac_address_nvmem(struct device_node *np, u8 *addr)
 	struct nvmem_cell *cell;
 	const void *mac;
 	size_t len;
+	u32 offset;
 	int ret;
 
 	/* Try lookup by device first, there might be a nvmem_cell_lookup
@@ -72,7 +73,7 @@ int of_get_mac_address_nvmem(struct device_node *np, u8 *addr)
 	if (pdev) {
 		ret = nvmem_get_mac_address(&pdev->dev, addr);
 		put_device(&pdev->dev);
-		return ret;
+		goto add_offset_exit;
 	}
 
 	cell = of_nvmem_cell_get(np, "mac-address");
@@ -92,8 +93,13 @@ int of_get_mac_address_nvmem(struct device_node *np, u8 *addr)
 
 	memcpy(addr, mac, ETH_ALEN);
 	kfree(mac);
+	ret = 0;
 
-	return 0;
+add_offset_exit:
+	if (!ret && !of_property_read_u32(np, "nvmem-mac-minor-offset", &offset))
+		addr[ETH_ALEN - 1] += offset;
+
+	return ret;
 }
 EXPORT_SYMBOL(of_get_mac_address_nvmem);
 

-- 
2.47.1


