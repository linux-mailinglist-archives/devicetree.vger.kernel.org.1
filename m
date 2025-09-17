Return-Path: <devicetree+bounces-218392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 06339B7F505
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:31:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A7E701B274A9
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 13:25:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C6C3244662;
	Wed, 17 Sep 2025 13:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qj/Thras"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213101F4192
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758115508; cv=none; b=mzU3RxOKpSu7p82ueGVeux4zuRhbUVlx2wdZc7cXzAPZ9ysArX5A5D/X3b9vHPk5utCBZcPBdQWCQhBeOo4fliyBAFt1mSgrB/E0QQ9C5x3yXLpyzzW62XFsqD4PL8fwnYQO4n6bVPRn6HCXid2TYGg3GkkQQWJ/eDZ5azB5m4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758115508; c=relaxed/simple;
	bh=3MD+nT2bAWZX72DWsoioTXhieL+ehQibl5aVvtcfd8E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aHAhHQVkm/VYPFJA16YbiPTVc1MsS75Vlm4tHywpdMSEeYTzu/Wx3M0ITpzpE8TixNLkQmSdlalofx0NS+9oLYBySeHa1wwshZU+lnhp4huAK8mz/07ybPt2IOgcEbwa3Bj8ZiCzEidhGsaaf/vcs2MKEc2/fBNHxFBkf9Nae7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qj/Thras; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-746c06937c3so463338a34.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758115505; x=1758720305; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m8q4pnZHASLYPEvExV/oNTuEhXYw8/V1jtaAGiihTOE=;
        b=qj/Thras62q71BoSmqFuRq/MyGzFTGo3cT5wIdlDOoW1c7GYAD2yKZGNgrvY5JYUXp
         0Ob/hPo2ztE6IX0SR2FdyI6UjfwV5QGDNa+9GbsyFkx9Hgm+X2UDLZZtVvruIVtPZyuC
         xLLHpOiryhE78S4MZanvRXB3WpfoS8mY8mNSBWcFdvbGEIym5cUkNlrvf46GhBB35hpy
         5S1UfzupAl89Lb4NvsI2beTSyKhee5tmtVqmioEFaN2gtU9otvqr/DhqRzm6yTbnamVH
         0zYpKBoOjHWb8qHV05kqzNyZ7pc/6QRWUOmmIlKNKAE7XIxbp1A6VPP+77yFWDucqtjt
         94DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758115505; x=1758720305;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m8q4pnZHASLYPEvExV/oNTuEhXYw8/V1jtaAGiihTOE=;
        b=OZcsYNJaXf6wY/H3BMj6r+48QtdB+TTgj7sc+TspgEiYOIb54lcb88kGukxuZMyPxA
         Rm6Sk4V5x1UV+P1Ca7IDy6WJIUAOYG7X6KrlMVIbnYuh4/+wZyi9zfCzf4Smk1O4XONu
         KWc+JTjUo9hyYwpO7DylCQWvfu66QgAirHb1smcfFlbpDfuGGRLwrUCrcr9nUBfQOA5Z
         GplRs/+iHxBGCEvkih/ZCUNbDTMYHNrQvi7iZEmlvKd27k8rBza7vOepAJT9p2H7P1Bh
         ukkPBn3cBXyGYSS0genflbeeW6qk0RveBXi2Fv9/L8dWlHiAZOq3y/zCHqoop9NzEzD4
         3XwA==
X-Forwarded-Encrypted: i=1; AJvYcCXjpah21xyDxNFx9BggWVI62OVm9hbFP1fRI846J5x8YCIugTRBetto+hKuSHVf/dmptqTEh1wbnnfc@vger.kernel.org
X-Gm-Message-State: AOJu0YxfAM2z6mrFC3C5HfsicgTwQiuxoKyyB1EfBf8YZFjM8KWvFKmJ
	JxJJh6W1EgfMKApgGyZVyuiQownLu/x8arIATU1AvSvSkUt4A4LJILwUA9CkpebYcGc=
X-Gm-Gg: ASbGnctXY9fgDnIeJ35WK/87z5wIPTnMxdvllOffbMk+NlmY9LpwW2nkkLfmlb0FrLJ
	8LyPsWYvOIZdSvB4abCreTPlARzGX8hAd+srMpLgtIw531RSCwNhuKCJ1PlYnRKoPHNnhA2Lxmq
	sb2o93XdrJlrrZWWUO8bAZdPmnOVzvoTcSLenBe7GbdgwjL7CErj+8/oE2bWJ8ZJcHeQVLxV9k7
	bLkUjx8/mQ6sKC31Udz/dzH5HR/D/ilRquEeNyKMXpruvHW7Sb+p2CyMp+3z9+28O1n+JVV6PLV
	EqiAGU5q1rFG3y+Xi14bAnTh5x/QfShF5iG2BoJpGWbXNsJRppmShY0+ajjC1BgiRJ0GFScEtcn
	+cM8ADM4OFWXhi3PDT2231yRXQ+/9FzpDaJMKchNpEvBmVT8qtpTXpCyX2zPcrnLhH1bcjga6CQ
	i/gbKOVQU=
X-Google-Smtp-Source: AGHT+IG1u7fASL/1WA75d1Wor2F1IZmchDq7YS6/itsUAj9zXiSwllVgUQzVye0hFI5oYPpcXOy4nQ==
X-Received: by 2002:a05:6830:3c8c:b0:745:9769:ea51 with SMTP id 46e09a7af769-76368fc2105mr1455163a34.9.1758115505093;
        Wed, 17 Sep 2025 06:25:05 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:72c:cb37:521d:46e2? ([2600:8803:e7e4:1d00:72c:cb37:521d:46e2])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-758d8131976sm2894436a34.3.2025.09.17.06.25.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 06:25:03 -0700 (PDT)
Message-ID: <e9379a2f-be0e-4f8a-b464-df7382338107@baylibre.com>
Date: Wed, 17 Sep 2025 08:25:03 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Add support for Microchip EMC1812
To: Marius Cristea <marius.cristea@microchip.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250917-iio-emc1812-v1-0-0b1f74cea7ab@microchip.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250917-iio-emc1812-v1-0-0b1f74cea7ab@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/17/25 7:21 AM, Marius Cristea wrote:
> This is the iio driver for EMC1812/13/14/15/33 multichannel Low-Voltage
> Remote Diode Sensor Family. The chips in the family have one internal
> and different numbers of external channels, ranging from 1 (EMC1812) to
> 4 channels (EMC1815).
> Reading diodes in anti-parallel connection is supported by EMC1814, EMC1815
> and EMC1833.
> 
> Current version of driver does not support interrupts, events and data
> buffering.
> 
> Differences related to previous patch:

This is confusing. I think this version is v1, so there is
no previous patch. So why does this say "previous patch"?
Is this actually v2?

> 
> v1:
> - initial version.
> 
> Signed-off-by: Marius Cristea <marius.cristea@microchip.com>
> ---
> Marius Cristea (2):
>       dt-bindings: iio: temperature: add support for EMC1812
>       iio: temperature: add support for EMC1812
> 
>  .../iio/temperature/microchip,emc1812.yaml         | 223 ++++++
>  MAINTAINERS                                        |   7 +
>  drivers/iio/temperature/Kconfig                    |  10 +
>  drivers/iio/temperature/Makefile                   |   1 +
>  drivers/iio/temperature/emc1812.c                  | 792 +++++++++++++++++++++
>  5 files changed, 1033 insertions(+)
> ---
> base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
> change-id: 20250805-iio-emc1812-e666183b07b5
> 
> Best regards,


