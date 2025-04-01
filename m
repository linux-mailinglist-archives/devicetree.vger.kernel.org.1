Return-Path: <devicetree+bounces-162377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D4586A780FF
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 19:05:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 066A6188BBF7
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 17:05:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF6A020DD49;
	Tue,  1 Apr 2025 17:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="dnv9sZxA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BB82EAF7
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 17:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743527112; cv=none; b=N6MRW5ww4suzDmBk5d0nTnTH5+SUQ+Kl50e8lYoYnkakwWlBagk02bIReIkXuLJsQRDFg1cLBpJbLZwA/36Ly92oVnyIzEkit3cHWMGssPLs3Tn0PA7YCmBTTucSfeW1EKLsmILrGxqEGY8QQbFquZyHJ/OueVR4v9/JcROYFuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743527112; c=relaxed/simple;
	bh=aGC9dm6KUtiiQ68RVH7jvL+r6CQi36l1rZPcfEThsok=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lhwWKx4ANT9M1SntsNHd64S2YQAK2RKQMUrwjaeLEDJHaHxkfDQZOuCHPzm4CVDjicPirSrLdaJSjgcpod5SUlcyR6ZIwbGbH3NxktJkL+WRS0gMu0DcNk7c3l12vNHeQofehIcn9cthPGVzFi2KmlTXix+WhEGD5w1yR07MYsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=dnv9sZxA; arc=none smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3fe83c8cbdbso1839453b6e.3
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 10:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1743527110; x=1744131910; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2GHNg+GZR1xh3puiq8oEcYCi8euQPRHec8+8+bjsNQ0=;
        b=dnv9sZxA4Fbtq7LdaMS4xRm7tsqaxKj4NjytCh5QzWIELI1bthtiByDtOlxGXjZkyT
         yK9E05l3/Z3h7AmEFCDtZfyCdsPBqW/pZD9OVUJ76GyzwDLQXG59b+FZTDszw1Ot4TpJ
         2nBAFaTuJwKTtoTWDQ2lguABp7ZieQ4pKJzlDFrZ/5AMW/zGrMB4io4Gg8ZALMSvvibJ
         0WZFuHR6cKu6BpR36PcZhRnxujqcKVfgLCMqzE7BMJ4/fpzy4YYkLlYUP5Pa9P1GthxH
         XybmCVqHldrPaasUoLN+N2oM+aMU4a2p8/9raXDLwznu2+6hkhVy9HJJY5EmibWbZ9W9
         zdVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743527110; x=1744131910;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2GHNg+GZR1xh3puiq8oEcYCi8euQPRHec8+8+bjsNQ0=;
        b=Xx7xxK3WHl1QCdX5VGs5LUAqQKkHJH0E/FdWUgPxLFYZG4cJ8TJt10ZtbOSDXB1Twp
         dILa+gFP14EDfr9bZpgU5c1ua6UThseWA7Bjubu1RC8RVvR0lIYCZESswT+/rH3Rj/BG
         t+vyuOh1eViyP5O/Txu0OYPW2LG0SunoM2/rj1yH1/9mhcNnrZopezS+VGCNXyuqfkZ7
         Ouj1yna6RrF+oRgxLxMcIVpwPwwbWGGl4n9xsNGr6LnPQgBN6EFB30i0hnMmxPYRrozM
         fndQH2CLv/kIuEKtwrDM+MkKQQ9fyJmyYw1mDdC2Gd+TY/HMXG+xsrAbW/WsF6HAz68t
         MyZA==
X-Forwarded-Encrypted: i=1; AJvYcCUtNhUUTq83Trsc9r5AgKa5mlztJHHBFlTuspekWfyFbelCVSV9odTGDYCNtB9SCp6atAdM1wP/18n0@vger.kernel.org
X-Gm-Message-State: AOJu0YyNefvR7kwcIqKWCtkUk0ulwOHDoM1CRgK3eWS/QtPEZijSXEun
	/+qFL9AtOZ2l2Ek0HcvpwSL3u/kb2CNmUxjRrLHN1JYhZjQd1h7vaZNEiau9EOw=
X-Gm-Gg: ASbGncsJD6wl5F89DBdXdQ7c/Cj7wYiQBnQP4MWx6lR/ZRJ0nGwSxHF4B5Ves2nSaGB
	qUTmkinFUXin/7OEpPYL2JIGkgMss9pIYP8DydALMaRLxnHY7G2YYpSqTgl3D2fgzFg0eLnyGvc
	VHhQkRy+ilcPMvi3eXxxygncT1bOBop43WS3KDRit0tYGrKGw9gopX2vmK4HzdGQB6N0qIzeLxf
	SRiPgFB9VzA4n89N5xjq8zYx/HSg77nTvAP80ZD7bd6bUGxJ+0UPgtlAPns2xEpN2YpOfZ9A/2x
	2hmw1SoPmQnk2VU3AH1s3v24t+Ywxv6IxjPZOxhnbK0C8IHe4d56eJ07LLeVAO4Crlt0xw9Ln3T
	akoT6Aw==
X-Google-Smtp-Source: AGHT+IH8zT9NfafTp39gA7w1GuQhxmWEGB+Q5BcMBLrZm7s6gO5+wURUfgUr3IvdChYZ47bg36HrsQ==
X-Received: by 2002:a05:6808:151e:b0:3fc:11a6:7433 with SMTP id 5614622812f47-3ff0f637b5bmr6831543b6e.36.1743527110260;
        Tue, 01 Apr 2025 10:05:10 -0700 (PDT)
Received: from [192.168.0.113] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3ff051aaf60sm2022138b6e.28.2025.04.01.10.05.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 10:05:08 -0700 (PDT)
Message-ID: <df59accd-76da-43bf-b52f-8ef5de0db060@baylibre.com>
Date: Tue, 1 Apr 2025 12:05:06 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 15/17] iio: adc: ad7768-1: replace manual attribute
 declaration
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linus.walleij@linaro.org,
 brgl@bgdev.pl, lgirdwood@gmail.com, broonie@kernel.org,
 marcelo.schmitt1@gmail.com, jonath4nns@gmail.com
References: <cover.1741268122.git.Jonathan.Santos@analog.com>
 <6d429bf18851e9e423e90252d351db550b2da536.1741268122.git.Jonathan.Santos@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <6d429bf18851e9e423e90252d351db550b2da536.1741268122.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 3/6/25 3:04 PM, Jonathan Santos wrote:
> Use read_avail callback from struct iio_info to replace the manual
> declaration of sampling_frequency_available attribute.
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---
Reviewed-by: David Lechner <dlechner@baylibre.com>


