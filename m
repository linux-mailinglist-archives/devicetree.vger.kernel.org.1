Return-Path: <devicetree+bounces-115288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D24FA9AEC47
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 18:35:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 81FD61F22E1E
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 16:35:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76DCD1F9EB4;
	Thu, 24 Oct 2024 16:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="0L1zxL3r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A98EB1F941A
	for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 16:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729787687; cv=none; b=upX+y82h3ib+9yqRwkyLGJJ4cm0DiES/ouwTHj/aRwIE2rc8UpRuWDus+E30tTNNymaYZOyS+1cUax5Pd8EPY023E7bPP8EqBaQmTsq0EepsdB4DSwONclQUnTIsUqck0M7PgEMYU5q2DZSwE3TWA2u/2WfJYzp/rFNxDT0YazY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729787687; c=relaxed/simple;
	bh=vuJVKKiBvq7x+Be8hBTG9qd+RUczGZ/Xifbjjii10Mo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CgPinZbq+NhymRmpB+/OfiKupm4TTsK1eiFmHA1ktYHAbMgDebWGI6PReWdocqyaT2iLQb+nd8HeEX9P5VENA8n7L5FeHUOIRDdAVAlGWAR0PSV53RkSKheSB1uUWWplfv9mwsyZGA4YNVn7VDD9Qar0oOpGOxSPQ2TVvt9JhcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=0L1zxL3r; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-460d1145cd8so7679141cf.3
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 09:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729787683; x=1730392483; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vuJVKKiBvq7x+Be8hBTG9qd+RUczGZ/Xifbjjii10Mo=;
        b=0L1zxL3r1X9u707heqhFpHRymH2WwE1ejfWF+ru1h11VyVrhuNih7Uq1W/Re0I6/gZ
         bxvTWc9C5H0btacb+wBi1SVoUQE3l8bcICvFR8ty7V5R9vtyqW6+iMmlWM69/Mc+zNq7
         uvZn/RGcstyu4iZRj1F/UROXzf2Et45eVVqlVejAUAKRV7XDXqLupd2aHOiwTf49ckjc
         gWZ+oE+uOnJ0csoIFm34QMncyf/oFh7YtH1fGHv3D9EZzLy1mBTH5zCQx7SL22+AAFWI
         M9RQ47t5WPCXUhIz86BAd/CjLfQ8fO5gbIMhXrctLMJn7EBbC0vMsQ66BqLiWNaauncX
         GKmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729787683; x=1730392483;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vuJVKKiBvq7x+Be8hBTG9qd+RUczGZ/Xifbjjii10Mo=;
        b=tG035iWv9O4TCTS2Wa6kblw9i2JrIyeE8+5J9dToteistfkUA2EdYlPiuYWvKwUl3T
         QbnSbi0ogsAGHSZRsAzPRpeo8qj5mPjpj6znFdSFK+pZE6WEINRnKBdXBiJZCMYeZmYI
         Tga3tLAtV0rexLRlfkSpqjO4q7ff6mwepKzEu3htGhbW7LHjyK0hwErZiWtZ8iWTX7P3
         hqbPr7Hgk/wM98d3jZgX3+n8Qm1BkvLtRjA40d+CP0NKU0xEC+DARNUu5RUOXiuc1am3
         GW8WsUR3ffWcO1JP0FkcHTWWVJQjYc1ETgCXK9zdqI0crOfwlbibpswis2lt3tK7uQkW
         3XoA==
X-Forwarded-Encrypted: i=1; AJvYcCU004COEkHv46AVJA/wAjv8vwhIlNIKkQP4eLUtNHjEyNFQgUXt1q4goZknsWly3w9sibkIPyiSx6QV@vger.kernel.org
X-Gm-Message-State: AOJu0YylwOWvF31q1vBLvyNoyBCKQIaU/7p8q+VJbNt47hn8Pez/ykIp
	69xH472b5xlHKSZdEc2M6GImU6JLxWw7DuOKHHJxPHfgTZOqEhSh1HUYmS3GgkTomxKMNnfZARU
	R
X-Google-Smtp-Source: AGHT+IEcO+1ZUR1LSQ32jmcrOAMZv0sGdou4K02lY+6UmpJDDyKgzyqsz9Nb54dwt4WMxE+TX0X93g==
X-Received: by 2002:ac8:4444:0:b0:461:148b:1884 with SMTP id d75a77b69052e-461148b195fmr77786911cf.11.1729787683626;
        Thu, 24 Oct 2024 09:34:43 -0700 (PDT)
Received: from [192.168.40.12] (d24-150-219-207.home.cgocable.net. [24.150.219.207])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-460d3c3e701sm53188071cf.18.2024.10.24.09.34.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2024 09:34:43 -0700 (PDT)
Message-ID: <1b6353c6-dab9-4751-8b50-a221f926b1bc@baylibre.com>
Date: Thu, 24 Oct 2024 12:34:42 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: pwm: adi,axi-pwmgen: Increase #pwm-cells to
 3
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org
References: <20241024102554.711689-2-u.kleine-koenig@baylibre.com>
Content-Language: en-US
From: Trevor Gamblin <tgamblin@baylibre.com>
In-Reply-To: <20241024102554.711689-2-u.kleine-koenig@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 2024-10-24 06:25, Uwe Kleine-König wrote:
> Using 3 cells allows to pass additional flags and is the normal
> abstraction for new PWM descriptions. There are no device trees yet to
> adapt to this change.
>
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
> ---
> Hello,
>
> missed that during review of that new binding. Just noticed that now
> when (internally) reviewing a machine dt using that device.
>
> There is no need for driver adaptions, the pwm core handles both cases
> just fine.
>
> Best regards
> Uwe
Reviewed-by: Trevor Gamblin <tgamblin@baylibre.com>

