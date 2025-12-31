Return-Path: <devicetree+bounces-250788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D5AFBCEBD36
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:56:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6498630080DF
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 10:56:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FA07313E10;
	Wed, 31 Dec 2025 10:56:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GmWnudX5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD7B310630
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767178617; cv=none; b=EJBddmqs35V+8FgEA+o+gyYihhexxGUX8ufOeNk/h64WRQoTRhEFC+KBLp8AIjbo7VpikTUQ+D5ofIKd/YC0vP5yc+FPa6alBRLtcckbNqJcTXXKmUb+qfAwis77wDwT+XxztWuX297pyanqrO2HSx2RCpfNGn2SDSRmC3TFi2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767178617; c=relaxed/simple;
	bh=gsvl1XJ48HrY4nODG0MTCbODAOb6WMQKqG7cDrnLhF4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HjulHLocL7TlQ900FMgIuz4CEYYG6q+cii9f+MpPdzc8U31Lmyb4ha3gRf66PqFHSTMGT9A721wmxZGRKrPjabfMzna4OEoCxZec8iWnJ6rmVp/rnWZeXwjqKjbSo0WMDXpUefIZ4+M7iAp5RGG941COlG8cyMdn8Jr56seQQNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GmWnudX5; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-477ba2c1ca2so113631705e9.2
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 02:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767178614; x=1767783414; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i7R9+4upUD30LvVBHKBIsvpaPmqe/LxN03we2YAJ0+o=;
        b=GmWnudX5lpAJstB9doSzEkJbRvhiixjhMM7nbsJU0WG7OK4GGyvOjNF0+ZBUjg/kAj
         LuhCfkLT7WB/OX+5viuW7BSo856S1R168RJHk59L0/v+8Cd0tudlK6lVZnSj4RhGl35f
         PqMjZ76qaQBGEbfDcW4IPqe+dIHkox4NxmxuW9r9o9wJdk9yanoIHI0nn3NqjAHabbWt
         MgYUFfaAr1s962rNxm9ILE13IZeHUoDD8fi9u7rentq7NL/sjZiYJNIMvaGnSVcxdEyr
         3JVuq0FBjo/SYkgGCmQb2IDiJQFkqqAiZd8scXzXufly4B/T6grQQV9tjKxnuhqP4yBp
         FaTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767178614; x=1767783414;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=i7R9+4upUD30LvVBHKBIsvpaPmqe/LxN03we2YAJ0+o=;
        b=qjNr6zIgUzXSx5OYSlG5hvTt+MsyvDAoeySDGCrC5VwPMiRcC3MgimxXJNaM3BP3pB
         H8M2swl2MvcE4U4CSKWTCKOq76xQGloVRYXPQVCRjavZH4YExeX5DShwmN/9i3Y5x0mG
         fRZ7E2e434PpVWEDItjff+vxv87CdlNPUUEAo+NGvJOEEwxaPIoJKV4QyAX4Cu34mcWJ
         aaYxrwB02sdqcxHlRLZWhVyL0Ef0b0RaIKfkPYscKzRAT9Vz7//NlA/c+vLLWCenPZE8
         TLGI+e7dEPgu8ULb57lfXKJj5qyypciFOguXsQsJv1qTLmV2qKjjv08HYxM+9OAX158U
         npJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUvA7rQxM5WkjrUBZGL7LY7m40P8qPRuNVRNtDURXQyJQfXdEc5UB3E/nzR9WTBBoCA6wwttkt3Nq+k@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/dJYz54qXyvYP04u0aO8/5ehrR8RqxNf9Q4RfvpC1X4vqM1gV
	QHA0+OyUyBbMupdgdFihzMP5/0eIgWTfNbPGkkaZZZ2OwX3SyHwIz6Uy
X-Gm-Gg: AY/fxX6p6jLoZ9cCY3+W0ahWIzCTUu1V+AdqOypRXzBdY64F2OtCRc6dcwcGK3Hec/7
	jyAVpGykEwebUHElGgkZL7V3IO+qP2R6DmMZyQPN+h1p+7OAarkUXqHyY0os8ie7HyA8AX5fwP1
	mvUov+XhjxxwjvgyR2Kd1JLTs9xZSyq1//AysVXf29qIobm9RVsaZ6Bc8Bhnsuh1aORUfik0UCj
	zNSBJs1eOreqk+z2TM1GgnhCxKxoC8GFY6ngBf/VK/OIhjmCjOpZIZeLQX4+4CZPHz5OMBarZh+
	DLahNfOmvq4Mq17jtTaJxNQRUPA0al3JrzMmkHr8xVKmg9hHYAGLoa7Xwb6tFG+dNbrR4yHhjwy
	wchf/2n0mrXeBr9u5Au4yym1zNKAcXuwvtWLXVs9EGHrxy3HPxpWnGFU+wsAdZLfoZJ/RBhqo7w
	4zNzm1trwOmm9G+spf4u2pxmu6Gp/J9GC4MXURtSyB9YScOoYqWJfXJWnhxgs4GO0=
X-Google-Smtp-Source: AGHT+IHDZb5mskiCuLOc+8SBDEk/OvIO6Pug2fQj87O+qUGMgHUJl5YBr1B9MzEZuOqkC4xwyZSO8A==
X-Received: by 2002:a05:600c:8595:b0:47d:5d27:2a7f with SMTP id 5b1f17b1804b1-47d5d272cd4mr54788585e9.26.1767178613627;
        Wed, 31 Dec 2025 02:56:53 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be273e4d5sm696441795e9.6.2025.12.31.02.56.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 02:56:53 -0800 (PST)
Date: Wed, 31 Dec 2025 10:56:51 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Junhui Liu <junhui.liu@pigmoral.tech>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti
 <alex@ghiti.fr>, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, Troy Mitchell
 <troy.mitchell@linux.spacemit.com>, Brian Masney <bmasney@redhat.com>
Subject: Re: [PATCH v4 1/6] clk: correct clk_div_mask() return value for
 width == 32
Message-ID: <20251231105651.430f75f8@pumpkin>
In-Reply-To: <20251231-dr1v90-cru-v4-1-1db8c877eb91@pigmoral.tech>
References: <20251231-dr1v90-cru-v4-0-1db8c877eb91@pigmoral.tech>
	<20251231-dr1v90-cru-v4-1-1db8c877eb91@pigmoral.tech>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 31 Dec 2025 14:40:05 +0800
Junhui Liu <junhui.liu@pigmoral.tech> wrote:

> The macro clk_div_mask() currently wraps to zero when width is 32 due to
> 1 << 32 being undefined behavior. This leads to incorrect mask generation
> and prevents correct retrieval of register field values for 32-bit-wide
> dividers.
> 
> Although it is unlikely to exhaust all U32_MAX div, some clock IPs may rely
> on a 32-bit val entry in their div_table to match a div, so providing a
> full 32-bit mask is necessary.
> 
> Fix this by casting 1 to long, ensuring proper behavior for valid widths up
> to 32.
> 
> Reviewed-by: Troy Mitchell <troy.mitchell@linux.spacemit.com>
> Reviewed-by: Brian Masney <bmasney@redhat.com>
> Signed-off-by: Junhui Liu <junhui.liu@pigmoral.tech>
> ---
>  include/linux/clk-provider.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
> index 630705a47129..a651ccaf1b44 100644
> --- a/include/linux/clk-provider.h
> +++ b/include/linux/clk-provider.h
> @@ -720,7 +720,7 @@ struct clk_divider {
>  	spinlock_t	*lock;
>  };
>  
> -#define clk_div_mask(width)	((1 << (width)) - 1)
> +#define clk_div_mask(width)	((1L << (width)) - 1)

That makes no difference on 32bit architectures.
I also suspect you need to ensure the value is 'unsigned int'.
If you can guarantee that width isn't zero (probably true), then:
#define clk_div_mask(width) ((2u << (width) - 1) - 1)
should have the desired value for widths 1..32.
It probably adds an extra instruction.
(OTOH so does passing width as 'u8'.)

	David


>  #define to_clk_divider(_hw) container_of(_hw, struct clk_divider, hw)
>  
>  #define CLK_DIVIDER_ONE_BASED		BIT(0)
> 


