Return-Path: <devicetree+bounces-173153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 079BAAA79F6
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 21:04:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 938363AB272
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 19:04:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50F5E1EF368;
	Fri,  2 May 2025 19:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xmCuGVTN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8831EB5EB
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 19:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746212668; cv=none; b=iaPK5LrHxAgohC/SeNJKLbRbkNvsT9UvDWKLu6VlOMWfFYKZmwefx5/DLEEKrpXzO/YSjaWCxHSFH4a02G3vVRKWOnge4x1X6ysMLfz+tJsxoKWRhPNHheBQ5BbfcQsjcLl/9t1QkMCnzgOjVEibIO6besdvoIOCc5Oe2Narbxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746212668; c=relaxed/simple;
	bh=t066xCSdjFWkkNePOxD5BiV1LRz0rsf0Gzi1MYlr/s0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nN+QqFTLDNEaHF9j0nemBPE2yZaWfnAxfGnP0bArO0Ij9yWWEyRCdMs3za9iR+WYnXQ7vgH8+QgN1vf2Sr+Sz8w8TUbiE24Az9l2giBff0QQgdNsjL6zB9yk9aCLFXKHLhLQ0RdGP6zBCeaTz5kRtsKSdbLSDdvb+56sAR7Q9W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xmCuGVTN; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3f9832f798aso1697935b6e.2
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 12:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746212665; x=1746817465; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BjRpOGGgbAWQbSA5NOkI3u2WsID4GcRH8J4ZAsY71WI=;
        b=xmCuGVTNBNKiQR9J3Ssdz/f2p6SPxKfn8YcsbT9c2Z3LZLHJLQLMa6SYPSPcp3NR/W
         fvlLxkFIlUzb3zTmSFj057EhNuCkfYUpgyBbFxeYw+ErKOm6dGqtO2Pgt00Ny8oXWc4F
         lkG9b6C34VdWRvKME/CMqEtviGLuNH35ZvRt1ycBLeEgkWqU9a56fbUfbMP+68yEyyMP
         bU8KQuH1WbockXHxG4cZA/vA6ZUmCX03R5i/Jao61OmkIXeHGioQ95mLIkthwy/bSS60
         a5dWlhs4mOzWvWzNvIranGtIiqt0CYY6SZ+Fi8Tv5WOWPWshSi9SrP28u5o5Qh3LKiZ4
         qBwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746212665; x=1746817465;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BjRpOGGgbAWQbSA5NOkI3u2WsID4GcRH8J4ZAsY71WI=;
        b=E/x5TjqEaeg0ekF93L+6geh5XNU4zs7m3YF5g5QxWaxBvpDt5hIoPabwWUzIj1CzmH
         6q5EGUsvbC9+MxZXxfEs+NXEGl5fos/8FNBPO9eklSeWqRRr1u5xmEsiJRIH9Bs+t97V
         qkhRdNtlkKThh1/i2ODGWxbPQyA7gqn7MfYj3gk02TbYoVBBtk1ajsxUuWVpreDgjgmZ
         hYqm2lHKOZJyutvtuKLK+BIeRstSlkIVZ1CgexNOtnb1NSDHFaGBVpc5J2G9mzDM1sO3
         ErGnQRmQqXXW/Lof37/fh8+9c7Wwo0xgQOVoY+TWnYm5LlsSU8xnvvK5ObxXIIeSVnhk
         RYIw==
X-Forwarded-Encrypted: i=1; AJvYcCUb5qYrJEtjptbXunMNjnAgL0tIsBev/BmnGrWo7E0UFAnVK6UmC8MHASx3lNP4hGRvQNI2kSLHDMaX@vger.kernel.org
X-Gm-Message-State: AOJu0YyiN51LDyuR5eEazybRHmrPptvy3RLVkMiYNLKnkVhsLkNYic2V
	RRJ6ALBoSkyozadApxu4aR8A5mcGOCSLic4ThBnVkwhg9hgu6N4cjpKRe4VZ85Y=
X-Gm-Gg: ASbGnctYBSronA8cWmZe8xSVH8eebS4IxssPNN26YW3/KI/LrmYj0/FT/QrO1inLiun
	aeynil7y/ey/eT4gsPiAVHA3nhXzngJ2qT4pgFHBVjkYAmK8B/s+GhQ7g13DuDltpCRYsMdCDys
	dUlF5hZAambCuhXjkdZK5LXkxWWJ0LiLjV/2MWTDYkgHNRyGOUXgSHTYlJAhiwfcQmWH9SNMbmP
	X42Ua8Ph2soPWK33ViIFV490FpHqA+pPpw2HrWyrRQ/1c+6+SDaX/kD+UFriBdMr08/cf7rgoRi
	XLgOmen+du38IzRas8hEd3+P/YzwyKJBd+yW15sHvOMe3jcI3+zOT7npT8YgHzDH7noOISBw5aZ
	5T35iEqsPkShKq26rNg==
X-Google-Smtp-Source: AGHT+IEfYJCLCxyAOFGQT4FLH2tIQ4AoMpU7TsaalCGnIgP55NFMW7fYVOitfdDNvza3Q28GZSzsgg==
X-Received: by 2002:a05:6808:1a0d:b0:3f8:acb4:8d8e with SMTP id 5614622812f47-40341c7bc0bmr2418662b6e.39.1746212664840;
        Fri, 02 May 2025 12:04:24 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:4489:d382:ca90:f531? ([2600:8803:e7e4:1d00:4489:d382:ca90:f531])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-607e7fb645bsm638237eaf.28.2025.05.02.12.04.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 12:04:23 -0700 (PDT)
Message-ID: <66eaff22-a3cb-4975-811c-5e85bd5b125b@baylibre.com>
Date: Fri, 2 May 2025 14:04:21 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] iio: adc: ad7606: add offset and phase calibration
 support
To: Angelo Dureghello <adureghello@baylibre.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250502-wip-bl-ad7606-calibration-v2-0-174bd0af081b@baylibre.com>
 <20250502-wip-bl-ad7606-calibration-v2-3-174bd0af081b@baylibre.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250502-wip-bl-ad7606-calibration-v2-3-174bd0af081b@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/2/25 8:27 AM, Angelo Dureghello wrote:
> From: Angelo Dureghello <adureghello@baylibre.com>
> 
> Add support for offset and phase calibration, only for
> devices that support software mode, that are:
> 
> ad7606b
> ad7606c-16
> ad7606c-18
> 
> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> ---
Tested-by: David Lechner <dlechner@baylibre.com>

