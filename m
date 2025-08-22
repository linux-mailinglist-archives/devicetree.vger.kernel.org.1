Return-Path: <devicetree+bounces-208301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE52B31FC0
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 17:57:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 67969B6074B
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 346D2279331;
	Fri, 22 Aug 2025 15:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cn6D0j5H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417C723ABB3
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 15:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755877603; cv=none; b=MKsbfWGWj/i6+59aMbO9zH5spLVyQBBXrgkrfNUhJ6e0GlDNIRaKkf0x1sNMUfyS4/ByyQz8QKH8XtZQwXxGn8wmcpKTVlVdoFom5Zny1XyG6uI5J9TtrDmRX2eyXYEI3Wmf/K8E0+2fenqYZFpEE0C30ZwMb+4Bz7u/Gsfo3H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755877603; c=relaxed/simple;
	bh=5C9Cw6MbKNCQyVtWzlqvzZV4YhvuQBxfCGDsbT47Af4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sUy9mA0MMfzda3/ZiHqkMlYXlOIzFlNoE8bcA6yc2K9IeY1tMsq9AMGY8RWTek8Sq8aNywVrgovwUc6P/yIgenSOzsCV+FWkSCD3Y0zFH0XSRaF3V4qhyetaYaQdiR5NIuqEF95/yuYslEXyEQwuThdou7hCs99NR6crJ2FMAHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cn6D0j5H; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-333f8f0965dso18436771fa.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 08:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755877599; x=1756482399; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K+BEjeTymJl53+LtXk+0qEyZUOBzNtqD78OrGPM4yjY=;
        b=cn6D0j5H7hchR13XfAsDMetKosFi00Ik1ozHYV112nkKZgu97pX60ZE5PFQecBzC6k
         lvEk3htrQyIXp5lOUpd8XiBdNXWNVR5Cd2yCrxoLt2u8aM1VuDfVoiJ558hyeN3KVH+e
         SFbBX6qh1HN7cdMyl3oLw6QkF3rKTbBf8kv+6PPoPVUpm1k4DQcmACo6CFNyChyt9iJ8
         DZlTyEiwrlAW+2vaziqrpJgqS7MLKDKVLisKShiGtXE/4+FQmgTgQezqP+tZ/DsDnswn
         nIqiXZwjLUBmTlVo0i0RdZ9KAPTd2E7I0tysBoIMtl1Hs2meTFUluBPG9t/rNCjZfd2G
         NR7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755877599; x=1756482399;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K+BEjeTymJl53+LtXk+0qEyZUOBzNtqD78OrGPM4yjY=;
        b=m4McX7yns1a5n6+5R37h8rZRhRDquBBZPoIWBfzcmNcpaSZhhoEkcFDqT6s99SIWSq
         ZrxVZynx0JZ6YjHDtIA7wFiIvOT5QAPJplqEjAbTinKT4cdYB5fzjRoQYU3uJOGmkjAp
         ThU6+MtnmVYCRPsHm99PpOoMCmQmRXuGXpLuun8Ko2/W+ilLTUo/K0LstSsz8WKDvsL/
         dt4dGS8f/srTKiaCR+bnpTgxrB6h6TcD5y0hnywxgUF99LGCEMS5HQmrPf+ZB3EOzZzg
         8awll4TP5yPo042oGoRaMWtOWbLqB+U73SRaDig8U+jM82gaZolYsahmX7FwvOlWG7hs
         ahWw==
X-Forwarded-Encrypted: i=1; AJvYcCUpwT/IFDWWx697zY8Jjxkg42sMRP8v2eCPgBzy0WIvxexj3BF75YVErU0nUmg0CybXVxK97M0pFSoQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyeFb3dvUaGmvPq/JzK+Mlt+FzmAXN6AILoeGfPcKCeE8jUXC3/
	31SpHzUjt9qJm8jDBRPHanoRxzjZvbgwFWJFN5QAO78H+wgJI25d3f9I2YeP3e3S45MYQiyAZDq
	T9bDvySQ=
X-Gm-Gg: ASbGnctbT7TZdQWGHxBn9yAOuGoSimJ9Pqu9ls3xJpQgIWvGI/CpEWjxbjIYllnv5NO
	9yH5bvQ7Z3e259sOixZeC9awvcHzMfi8On3fAcLdArjZP3hz/2079ySWeLuMceX7ZNSk4peO4Br
	Udb0DJz/BtJRgY4nb+IgeLH2cD+Od2p5LoeUw4CtJtohi0qg+NdncC5BT8M18IWCkDg7T4F9zGm
	BOkW7G777p/m8V/2/aos1J+1vbJDOCEv2L88XXkvuZI/BaRneFh/Dwdi7oL0TI6oKjcTLrsVNs5
	RpvX4pet115P8rbXyRbZu84hZJjYhWR2Wj3VAtK8B8Yjnism3X/2tc7UOnIuJ/D5eEPWJ0lRGy8
	BcALoZcQr9o1CB/Rxsv8FIygWNZT2zv8e
X-Google-Smtp-Source: AGHT+IFEbI2BGLdGRwL1YH/N+bNM+eCNDxlLpyMHk3p0VQ8FNc/icQupkvTg7vsweOCiczBNqqw55g==
X-Received: by 2002:a2e:bc04:0:b0:333:ac42:8d6a with SMTP id 38308e7fff4ca-33650dc2b31mr10645201fa.3.1755877598976;
        Fri, 22 Aug 2025 08:46:38 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e5d1a6fsm56541fa.49.2025.08.22.08.46.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 08:46:38 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Aug 2025 17:46:28 +0200
Subject: [PATCH v2 3/3] gpio: mmio: Add compatible for the ixp4xx eb MMIO
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-ixp4xx-eb-mmio-gpio-v2-3-bd2edd4a9c74@linaro.org>
References: <20250822-ixp4xx-eb-mmio-gpio-v2-0-bd2edd4a9c74@linaro.org>
In-Reply-To: <20250822-ixp4xx-eb-mmio-gpio-v2-0-bd2edd4a9c74@linaro.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Imre Kaloz <kaloz@openwrt.org>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

The IXP4xx expansion bus can have simple memory-mapped GPIO
on it. Using the proper device tree bindings, support probing
this directly from the device tree.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpio/gpio-mmio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpio/gpio-mmio.c b/drivers/gpio/gpio-mmio.c
index 021ad62778c2f49f0819b767a60112945999f572..79e1be149c94842cb6fa6b657343b11e78701220 100644
--- a/drivers/gpio/gpio-mmio.c
+++ b/drivers/gpio/gpio-mmio.c
@@ -730,6 +730,7 @@ static const struct of_device_id bgpio_of_match[] = {
 	{ .compatible = "brcm,bcm6345-gpio" },
 	{ .compatible = "wd,mbl-gpio" },
 	{ .compatible = "ni,169445-nand-gpio" },
+	{ .compatible = "intel,ixp4xx-expansion-bus-mmio-gpio" },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, bgpio_of_match);

-- 
2.50.1


