Return-Path: <devicetree+bounces-245760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C3803CB4FDA
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 08:35:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A914B300725D
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 07:35:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D086929D29D;
	Thu, 11 Dec 2025 07:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="CVGj2JFS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3605E207A0B
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 07:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765438543; cv=none; b=WWtNPAJMbdezhR2TN2vv8J3qKM7RkKr2xB97Cu1ZK2Zllbmu4xzfemPtkmD0jb0/HGBpVPIK82EJJFndzpKrfw8nPBNu2jNO3au9sP0sccOwInrxtFdSlv1o3xY8rSAFk5EM9jaJM/1T5/w8DqNcrs6X4pyKVu0qTQ+etp+kRKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765438543; c=relaxed/simple;
	bh=D9L3NlYN0YqGBEdLUPdxfdpbeolFXHZmFSSeiZG1E+Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YeO9lNMXs4aZKDVldd1I5CwfT750o90F4AUsTPFwGRFzXAGA0lP7sejWhMt12cyBM16kwWYl0Yi+qFTJnDBbs9ava5pwn+2XZOS+6385zVK6N7uOo4RedkTCvoSmPK+anLC/JCBn0rTNeu3eXOmhFtzGmXdzYihuZQ+UxZPgR2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=CVGj2JFS; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7aa2170adf9so587646b3a.0
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 23:35:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1765438541; x=1766043341; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5cRIyUToWBqfDVg5RwgWa/mJtHaJ3ZD2Xr1P/TceRSA=;
        b=CVGj2JFSSYXw1vUEObIAYhKJu+GrOq+InkXUBVKRqsm+rGVHn29QYgvJJx5YFLfBeK
         4Se9W0k9c/RingXjjotYMd0JE5yPMZB3ygRvTI4/gsWJVP4+JZmODsEw2GKKFTK8HHf7
         yo0xyHKcBmLX/XqdRMxZG2oxHtTZucD/93OLUoNmLhJ3lLcdj92s+mEgbYxu00MktOxT
         u07EveaKpTXF+Mfdof1ufkly5LEVwNvJX6e6lyjhghV6RtpfubFtfAmSP7M//znvaP9u
         haEuOXMlUXJnXEJ/lM2LI6ALAUE686LMDhwVj7Pqat8ZgD8j0dAjyJOWMZc8G3J8gzBw
         xUkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765438541; x=1766043341;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5cRIyUToWBqfDVg5RwgWa/mJtHaJ3ZD2Xr1P/TceRSA=;
        b=R9xTrSeoryZTO8ik5U5aIEleZB5A3UxcTQXTp902TKhS9HUR57ZgKN80ASfvb/RjKV
         0U1/qHrcxnkuZBrO/M5AP4xiwKdD+W4LW7us2NlPLHFW1SqJDVaL8xmtkRfaOHA18k+p
         yssotbWGmLZn66H/eeFnQo338jPaBg0YkhNA+CdDLb/1FQnugq/OpD11NT0quwkcJY5z
         IfU9n6s9XRscI6LewrXq8UKmmk6gUISNkdh+tipbBu57J9s5Cj4EeOdxHW3jOQwQm1y+
         a8Z3JCsBRUOu+RF9KK1w+UTjKFOluVd4BctLHnDl1IF+E3NfSDoxCG1XD22HPXSUxvYj
         62TQ==
X-Forwarded-Encrypted: i=1; AJvYcCVU3ENKPOSXW1j2o+JEDPezHwCy8hvGRA9IxuHOUPW17GBKD+H1Vi4f3AG1UTuZwwcI0lPp39CUhnYU@vger.kernel.org
X-Gm-Message-State: AOJu0YylX4NekAwyO8TyGDHTDe7jar17yO8jEe+p7iUytibjKvT0Nho/
	vZzy/LXDOnttkreggcertSjz9Qokcj5mv6o9OnGoSkbo7vLfyj2Khjezcp2UqS8YZ7k=
X-Gm-Gg: AY/fxX5Ldh5YDJEcw+DHlkG00bLjHrq9YilWG57rXTV/pKFmltTbFnhjsbrxuL1IUFz
	H7Ag+DFS+Z6pZvhHupkzvm7jdq43usi7LjnuqyAA9EDn/VJruNRNghH7ZUqHB8kjJKmywwQxwn+
	klZs2FIEvnuEQb+ZFYr81JePOE3xz943RzG+KjgjyZrC93HXOvlx+JniLYQYe35KZ44MtqVORja
	Xn9056Vk7+omv9WF6OpEG0KXx6HSB9qsD9S92FKHgAu4IJw2+fmXI9s9Dl9qE3SP/PIRlbyYzq/
	lEQ3Nfc9n9yrXNE1qRZqbPw24qx05enveJecoFEZlrpfglkIp7Bjoto1CCDqSKHiF+lvtkG4FkL
	rr9u3alxe/nbjfeShBx9q/kJNSEhrGaDQhDVxSK0HGSt0o2RJZiPmgd+r5J4pY/OzFAUtFdkvTq
	mZfvbjBUBsVxEomg4Cq5H0jDl05HbvQSN8p1mHKH8cu+5C0qY=
X-Google-Smtp-Source: AGHT+IGoUuUHw4G8GEx6LIfCNmK4Wz0P7Vv4+W+//KXKrKQNRYKoJQHJnPyRAtlt73kARbQ3vU0CQQ==
X-Received: by 2002:a05:6a21:3086:b0:366:58cc:b74b with SMTP id adf61e73a8af0-366e07dae21mr5212459637.21.1765438541298;
        Wed, 10 Dec 2025 23:35:41 -0800 (PST)
Received: from localhost.localdomain ([2a12:a304:100::202f])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a9277e13dsm392594a91.5.2025.12.10.23.35.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 23:35:40 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
To: jyc0019@gmail.com
Cc: alex@ghiti.fr,
	andi.shyti@kernel.org,
	aou@eecs.berkeley.edu,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlan@gentoo.org,
	krzk+dt@kernel.org,
	linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	p.zabel@pengutronix.de,
	palmer@dabbelt.com,
	pjw@kernel.org,
	robh@kernel.org,
	spacemit@lists.linux.dev,
	troy.mitchell@linux.spacemit.com,
	troymitchell988@gmail.com
Subject: Re: [PATCH 2/3] i2c: k1: add reset support
Date: Thu, 11 Dec 2025 15:35:26 +0800
Message-ID: <20251211073526.3164875-1-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119-i2c-k1_reset-support-v1-2-0e9e82bf9b65@gmail.com>
References: <20251119-i2c-k1_reset-support-v1-2-0e9e82bf9b65@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Wed, Nov 19, 2025 at 07:46:44PM +0800, Encrow Thorne wrote:
> Add reset control handling to the K1 I2C driver.
>
> Signed-off-by: Encrow Thorne <jyc0019@gmail.com>
> ---
>  drivers/i2c/busses/i2c-k1.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/drivers/i2c/busses/i2c-k1.c b/drivers/i2c/busses/i2c-k1.c
> index 6b918770e612..64d817d8315d 100644
> --- a/drivers/i2c/busses/i2c-k1.c
> +++ b/drivers/i2c/busses/i2c-k1.c
> @@ -10,6 +10,7 @@
>   #include <linux/module.h>
>   #include <linux/of_address.h>
>   #include <linux/platform_device.h>
> + #include <linux/reset.h>
>
>  /* spacemit i2c registers */
>  #define SPACEMIT_ICR		 0x0		/* Control register */
> @@ -113,6 +114,7 @@ struct spacemit_i2c_dev {
>  	void __iomem *base;
>  	int irq;
>  	u32 clock_freq;
> +	struct reset_control *resets;

Thanks for the patch! A few suggestions to simplify this:

The reset_control structure doesn't need to be stored in the device
struct since the devm API automatically manages the resource lifecycle.

>
>  	struct i2c_msg *msgs;
>  	u32 msg_num;
> @@ -571,6 +573,15 @@ static int spacemit_i2c_probe(struct platform_device *pdev)

Please use a local variable in the probe function instead:

       struct reset_control *rst;

>  	if (IS_ERR(clk))
>  		return dev_err_probe(dev, PTR_ERR(clk), "failed to enable bus clock");
>
> +	i2c->resets = devm_reset_control_get_optional(dev, NULL);

There is a new API, I would suggest this:
       rst = devm_reset_control_get_optional_exclusive_deasserted(dev, NULL);


> +	if (IS_ERR(i2c->resets))
> +		return dev_err_probe(dev, PTR_ERR(i2c->resets),
> +				    "failed to get reset\n");
> +
> +	reset_control_assert(i2c->resets);
> +	udelay(2);
> +	reset_control_deassert(i2c->resets);
> +

Why you need to call assert() then deassert()?
Wouldn't the single API fit?

Best regards,
Guodong

>  	spacemit_i2c_reset(i2c);
>
>  	i2c_set_adapdata(&i2c->adapt, i2c);
>

