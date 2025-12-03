Return-Path: <devicetree+bounces-244152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E5CCA1BCD
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 22:55:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 072F53064BCA
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 21:51:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D6D02DBF5B;
	Wed,  3 Dec 2025 21:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="TpsGPBE5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4EA29B239
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 21:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764798658; cv=none; b=cfF0wYtXqul6xTGca8s+CQOFlxrWRfaYesPwhUb+L/8zv8+OZSG9d2hGJ7AHzrxC5wXSV6zxUV7nrgyssxFUDZWn0Su+38MrMMFSfwhmtiy3iehSnly8sVHHTiYalXZTyzncH8bqEQjY7qLpXLY3/NzVVd3wLoi53jWOgpLKM1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764798658; c=relaxed/simple;
	bh=PZj3jANR6/nSU6UkeOQuWgGLC3q5F/VtSyt7tbEpauE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KKRsqmuZOPkAEf7QkklJa7Cqyw933ePLY0IXICNPxjxXjoPqgv4boslrqVaMYY+QrzTN4GIS+jPrl7xad04otde/3hGvtAOqJxIBw+Qu8HRS8K8vhXSN2hPggTRE0dPKvvYaiUaOxz7jQQTMdkwV7bVGaLBk7K8X9xy8WmnQ24s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=TpsGPBE5; arc=none smtp.client-ip=74.125.82.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2a484a0b7cfso1708927eec.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 13:50:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1764798655; x=1765403455; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=o6chODghEB4z80xHdOkemzEluE/IBI6XrITBvqfM7dE=;
        b=TpsGPBE58rbo5KCTYqgujRkIIMkBKqs4f7u/+pa25FqLzR0iQEdN6Ey5UXF7eF/LAf
         P0mYb4NZguqkp5XJDbG3yufvHhEewGXSKauLxZXmScxmytiaKSAKQTfce2RRpSrfvYYH
         7yrLIw7FDmVwlDdo0eXJRDB+0RkQVbDVYKS5Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764798655; x=1765403455;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o6chODghEB4z80xHdOkemzEluE/IBI6XrITBvqfM7dE=;
        b=qpln+cXqhhpBl8V4KdvykhdMu9MUVHChyB2LddYhYQTRfWB4RYGM1jPewbSOUm/9cz
         Xu6aVnJGALFp3RZFWHEIkyH59WfPqmRS2HPrSFSr5Ne6hLu5OJdTLSaHXdT/ipFa3bp+
         j6/v/gHmY9OtAKVrI0VL8C1SsA17YgyCaMc7mpZNvh5KfJs37P+oajIWSkeB9ldMcQLg
         8HK5fgEwl804U1G62kKV3wkbSlUcAjjcBwGOnxHFguzWwT4vTtr6wJyxjv/uHMkkBnm9
         5DONKjurwyX7jkhXMuuWNO1/q2pYpquezcncnJF7GB8BiA/6CHzeB2KnP+SyvCqEAdjc
         MY0w==
X-Forwarded-Encrypted: i=1; AJvYcCXO5JcsWExAx3lX8UdcFJ0bHRQN4Gw8tvpdIYoDq9e9jVmcf5zWr5eYjojc3zk4Ss46TjP/xZkNtPnt@vger.kernel.org
X-Gm-Message-State: AOJu0YwE4vACI6T4Qgpo3mh+xA+dX479k+WaIEyWYtU7Vm8M4Fv6yauz
	+WNz04sJSyJGGd3pdGDPY8/gQchkzKcLF9pOGzztHbg7Om03YFeWbuwcZIdZHgHSRQ==
X-Gm-Gg: ASbGncu+ExII5l0Xes1hltbVTRlbePSqEnagW6lstCQ4+w5Rzv8lk9RGUyiHa48DQ4/
	kLI2g5WItLCd1D05j8P0oMvmo/L+vyPvnUKpOCktI7C18JCxGVgm1wCnNs8NttrvUlNEVJpoLOi
	tJ72XBZ2RMAgigjwNK1ghW6faXAapKBwqzjz3FVGVChRtjhflDuQ6wKSx0KONMRzQnBMkCjPTik
	GJSlYYMwaINUDTbNiqNvvauWnom/X78/s7ssY8MdEWYNeEP/Nz7VmVTgA1tvDSOG9a1Trq4Sy0f
	i01qGZJmn9nplKjc1+4F+yQBoAOCw0RnYVYNkJG3VLeFTMguep5m8KIvADNX4mdBE1Qw4tD8BzS
	qfh/vk3OAsEfCrP/GY7a3lfOnV1PiOLBEHfqETDHGDoOdZacjiyo4FNNydkLuZ7wl84Qc6FUeaN
	5zVXcD4Y6CuuMnctc2yqHc/J43ulfI/WFkOTvNikhUe2eaalZfAg==
X-Google-Smtp-Source: AGHT+IEIEIBW08OkV8WK/jMyO0yClG6Glkh0kZ5O3uJlxkndo5BOSqM+ZQ1/IXiO+9a7SW6sezHK1A==
X-Received: by 2002:a05:7301:60e:b0:2a4:3593:cca7 with SMTP id 5a478bee46e88-2aba3394a44mr820588eec.4.1764798655218;
        Wed, 03 Dec 2025 13:50:55 -0800 (PST)
Received: from localhost ([2a00:79e0:2e7c:8:e953:f750:77d0:7f01])
        by smtp.gmail.com with UTF8SMTPSA id 5a478bee46e88-2a965ae9d06sm69699431eec.4.2025.12.03.13.50.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 13:50:54 -0800 (PST)
Date: Wed, 3 Dec 2025 13:50:52 -0800
From: Brian Norris <briannorris@chromium.org>
To: Karel Balej <balejk@matfyz.cz>
Cc: Johannes Berg <johannes@sipsolutions.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Duje =?utf-8?Q?Mihanovi=C4=87?= <duje@dujemihanovic.xyz>,
	Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Francesco Dolcini <francesco@dolcini.it>,
	Ulf Hansson <ulf.hansson@linaro.org>, Frank Li <Frank.Li@nxp.com>,
	linux-wireless@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mmc@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org, Jeff Chen <jeff.chen_1@nxp.com>,
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [DONOTAPPLY RFC PATCH v2 1/4] dt-bindings: mwifiex: document use
 with the SD8777 chipset
Message-ID: <aTCwvFBE6IF6WT1d@google.com>
References: <20251026182602.26464-1-balejk@matfyz.cz>
 <20251026182602.26464-2-balejk@matfyz.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251026182602.26464-2-balejk@matfyz.cz>

On Sun, Oct 26, 2025 at 07:20:38PM +0100, Karel Balej wrote:
> Document the corresponding compatible string for the use of this driver
> with the Marvell SD8777 wireless chipset.

Device tree bindings aren't supposed to be about "drivers". This can
just be:

  Document the compatible string for the Marvell SD8777 wireless chipset.

On the bright side, it's totally legit to describe HW bindings even if
there isn't driver support yet. So:

Acked-by: Brian Norris <briannorris@chromium.org>

> Signed-off-by: Karel Balej <balejk@matfyz.cz>
> ---
>  .../devicetree/bindings/net/wireless/marvell,sd8787.yaml         | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/wireless/marvell,sd8787.yaml b/Documentation/devicetree/bindings/net/wireless/marvell,sd8787.yaml
> index 930b700b73d0..d31ff38f57d1 100644
> --- a/Documentation/devicetree/bindings/net/wireless/marvell,sd8787.yaml
> +++ b/Documentation/devicetree/bindings/net/wireless/marvell,sd8787.yaml
> @@ -18,6 +18,7 @@ description:
>  properties:
>    compatible:
>      enum:
> +      - marvell,sd8777
>        - marvell,sd8787
>        - marvell,sd8897
>        - marvell,sd8978
> -- 
> 2.51.1
> 

