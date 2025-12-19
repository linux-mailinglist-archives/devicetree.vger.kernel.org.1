Return-Path: <devicetree+bounces-248092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A6ECCED09
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:43:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C99433014605
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 07:42:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 514002DC77F;
	Fri, 19 Dec 2025 07:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EOEABHYl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B90CC2BEC27
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 07:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766130167; cv=none; b=iueb1/bI8kNf9LbKUe4SpRKO/EXujPzJvk7kDK2qlqAmKDY0/g0doUmK9I4Y3t51xxm0s4Sm1nTAFgzVhYNevyfvORRD9AIWocSyXkkNYXpyyYrnQXR0M1AQqvWcqdSwgiZdDXDyH9HqtYPelzP3ogHnaRQa2hnBM5SmUHGOqhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766130167; c=relaxed/simple;
	bh=Ynzt5v58obwnhda42H/gajIJVLz4GWJg6Tg2WmflUX4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cifB9KKJ7AmRdA1zV1dHX+q8ti5q9tQx6Hd6e/QMgf4m2KN0dLkEnfRn2MFDCvVwFAaKSwVc8beQUTENXsZlj6PPxOgUUoflV37N2lPFslIyITGhNRPCEWcJnPSG6BwtZ6CRP9kAYcfLFpzM0lplE/I+lGWg5yzG+f9RiBcg2kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EOEABHYl; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7d26a7e5639so1814600b3a.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 23:42:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766130165; x=1766734965; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7gskLEpYvfTmHkZ8CaNqOvSk3HkUojmzZhMB2CXBxgs=;
        b=EOEABHYloNlOdOzdL5QFKJ1w/IsODNn4Vf9pBaUjkJAlHyWa2kfAkvd/TwDxjttfNX
         g6fN7IYcghL6yS2T/kRLLoauoYTqxD4qC6cysF7ldcMc9TCiygCM4uVuV54OC7sPs/7q
         cwW7KzahWkKprorYUA3An2zfWeTOyAObUauAkqT5jvjAyxyOg+12eyU9xG1JZdcMpYbb
         qP9V8b/YPp8Q15LpepuAOx+lr8mPIqnSbJeVB0z7IHKspvsvCX4XXgYwy+K12Ug7Klti
         PjT0xNdgmMJ9LtOYKPu7colxnegYvHpO9B8YZB2vgSOEDWSBTIxHoPAgo7HXIggLF+nH
         t4Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766130165; x=1766734965;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7gskLEpYvfTmHkZ8CaNqOvSk3HkUojmzZhMB2CXBxgs=;
        b=O85qiCNZ6Yai0Ji4EgayElJ3DDeNZBdZSu5XroTU5OpeTsIWnry4QfSvtY20FoWcNm
         gOXO5mUJzYPAb5PNAO1BcA21f7+tXgbm746s4Wd0FsZ5r3FFn0wz1oGKpoi6UIk7QtS7
         gPMMjNiaRaBuXti6shugkKh/4wr7JMg0bVDZpOfBg6GUAujelZwq/rWZyE9eEsjKrmuI
         LpM9UuTwC6Dp9euPbyGUGM4OZnhWXh+RGig6nArKfJf9N699a7PLUF6LsWdFtlU3yml9
         ozucNUzsQArG00daTakSU7ftTVxTyIphkS1xsHfyQ9BGS/Dlc7a2+CYYc0c54jmtm/Iw
         DbZw==
X-Forwarded-Encrypted: i=1; AJvYcCUxCiMY412he5ZYD/9KykauZDx8pK3ZRcw8xjXZFW9L8MWxdQOr5xKUDrETrO/UJt7RXsyl53flgqTj@vger.kernel.org
X-Gm-Message-State: AOJu0YyFi/x5Ep+MZ2hr3uGQ/TWwVoHlw0PRBEs06KFo+cDA3OvRApVN
	XM+d3o1R1XBbqAbfMeNXrNcTxEwx9Im/GP/SkBHPHk7aUw6nXXBqaPHM
X-Gm-Gg: AY/fxX4pj8NxrT0KNN4l5CpW85yzi8UZhAVqrSUnY6gTsdSU0FvXr5jyb4YKuvvAYFa
	h81svM4ba7vdjSmteKQ1qn/c44PC/3cb3JCGMHFK2ZEq3S8hP+woRhkIRAAgw8HahDwERk0o2BR
	UusmnsO3iGcrH5k1rEYvlYP+GkJI56Nc2stV1pytsZmTCbzvy+nqS5MGrikN7Ux+KtJiaWJhap7
	jCAAvfSuDSDyufVKVWVHhxIoXoFBH/ge9cwcGu7Pg9cLHKXlMYl9uPvISfeiPCkxoN8kEtYInYT
	GOWJo2Utbcwxo1aLjmDLDuKBJ8Pwk7BMy5cACn+zs0B+bDFIndRiF4IdTGEUKHBH2X1z3zibKh2
	iYxxnFaF6rrGHcVQK01yfNL+CkFqmggfHC0s0g7ZkMxkrK1W2hETJ
X-Google-Smtp-Source: AGHT+IH8um1u+/F9IR4mQclrwTJCUs1YBwb7PhDmU+FSfhTQhTdwaDaF9aezKXIjOn8tGRCOsfD+xw==
X-Received: by 2002:a05:6a00:1d27:b0:7e8:450c:61c1 with SMTP id d2e1a72fcca58-7ff66679547mr1708853b3a.49.1766130164675;
        Thu, 18 Dec 2025 23:42:44 -0800 (PST)
Received: from localhost ([221.192.179.86])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b4234e2sm1512802b3a.27.2025.12.18.23.42.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 23:42:44 -0800 (PST)
From: Encrow Thorne <jyc0019@gmail.com>
Date: Fri, 19 Dec 2025 15:42:21 +0800
Subject: [PATCH v2 2/3] i2c: k1: add reset support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-i2c-reset-v2-2-ad201a602e74@gmail.com>
References: <20251219-i2c-reset-v2-0-ad201a602e74@gmail.com>
In-Reply-To: <20251219-i2c-reset-v2-0-ad201a602e74@gmail.com>
To: Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Troy Mitchell <troymitchell988@gmail.com>, 
 Guodong Xu <guodong@riscstar.com>, linux-i2c@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Encrow Thorne <jyc0019@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766130147; l=1515;
 i=jyc0019@gmail.com; s=20251009; h=from:subject:message-id;
 bh=Ynzt5v58obwnhda42H/gajIJVLz4GWJg6Tg2WmflUX4=;
 b=qMfQlZSVzRGvXZdg3oEioN5Cn5Xm2J1x59daHMj1raOdC0lTKCnZqnLoQeM/xYyg7eq3aQSEi
 yhbHPR9x9ooAJ1+wCoS5U5WsMyorqPVeBT+RjAIOxX0vOoHqgDQp5hl
X-Developer-Key: i=jyc0019@gmail.com; a=ed25519;
 pk=nnjLv04DUE0FXih6IcJUOjWFTEoo4xYQOu7m5RRHvZ4=

The K1 I2C controller provides a reset line that needs to be deasserted
before the controller can be accessed.

Add reset support to the driver to ensure the controller starts in the
required state.

Signed-off-by: Encrow Thorne <jyc0019@gmail.com>
---
 drivers/i2c/busses/i2c-k1.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/i2c/busses/i2c-k1.c b/drivers/i2c/busses/i2c-k1.c
index d42c03ef5db5..23661c7ddb67 100644
--- a/drivers/i2c/busses/i2c-k1.c
+++ b/drivers/i2c/busses/i2c-k1.c
@@ -10,6 +10,7 @@
  #include <linux/module.h>
  #include <linux/of_address.h>
  #include <linux/platform_device.h>
+ #include <linux/reset.h>
 
 /* spacemit i2c registers */
 #define SPACEMIT_ICR		 0x0		/* Control register */
@@ -534,6 +535,7 @@ static int spacemit_i2c_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *of_node = pdev->dev.of_node;
 	struct spacemit_i2c_dev *i2c;
+	struct reset_control *rst;
 	int ret;
 
 	i2c = devm_kzalloc(dev, sizeof(*i2c), GFP_KERNEL);
@@ -578,6 +580,11 @@ static int spacemit_i2c_probe(struct platform_device *pdev)
 	if (IS_ERR(clk))
 		return dev_err_probe(dev, PTR_ERR(clk), "failed to enable bus clock");
 
+	rst = devm_reset_control_get_optional_exclusive_deasserted(dev, NULL);
+	if (IS_ERR(rst))
+		return dev_err_probe(dev, PTR_ERR(rst),
+				     "failed to acquire deasserted reset\n");
+
 	spacemit_i2c_reset(i2c);
 
 	i2c_set_adapdata(&i2c->adapt, i2c);

-- 
2.25.1


