Return-Path: <devicetree+bounces-72060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D8D8FABA4
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 09:14:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 480FE1C21131
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 07:14:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E755013FD82;
	Tue,  4 Jun 2024 07:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KRrEFkAY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2A813790F
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 07:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717485275; cv=none; b=i4Y0dJ2Fcbhei+lGDGPZEJJObtCjG1HiNYFYoAf1V86jJoAWFYl6lcuOHw1yvfJaI51ziwVZdxn8WVQd4d4c0R8lcIdQoJKMr/R2LFmeIsrdK7knvUhvOXuSopWvvytmMk14dkNwMXGprkgJTfWZwdhgJC334kyEvFOwtDXftxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717485275; c=relaxed/simple;
	bh=st3hcGVp0tOsF4Y8GBrMS+6T/5V0Hr8s1521nOBSXPI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XHX/dcValx/jP/jBZQydwTt3LeWhCfMXej5bJM9a7oGqqIA+ya+v7onwczKnbLKlaqIw8cDncN+WCkJGg4th9tg7yt4udqHXGR9cW52QwkfCFcKWC5l8QUWPtJu16KPW7uEW9vjm4NIFMpk4rpi2O5SPCU+Fbq9wZ3hll7m/HdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KRrEFkAY; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a68a9a4e9a6so305793966b.3
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 00:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717485273; x=1718090073; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1O0SMHNCQdNY7eE1ZfPsRKnx5uzxN0Q7ClqTL82kBfE=;
        b=KRrEFkAYKf4nmNwtzR12q6WhvgQaoxOJNuhyGB7Dk3RYGvm/xSQe4zxh702HurRtdg
         r3LS8OCSiLkZzcB7MblCF3Rls0pg0xoK5qhzANsD/96/tNwRl4wXkqYxytgWLfu5CIw3
         gqVV/6gguyQ0MxJsqJ2NNijRPDnIDD094jajpv422pP8VpU0bgi0bRZH8M+XvKizz3Rm
         K1SiAGkTX/bftV6alqQngGUrJ9MD02YWZLgYP3DEkJ0AyLqAurzsxlTQRPZLn4MewUrf
         SMBQiE/8ukS1LyXp7V3ESCORfDECgeIjCuQzdqZpzB4pw8nhCBGoU/xWZGJh3lYldTRU
         zxAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717485273; x=1718090073;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1O0SMHNCQdNY7eE1ZfPsRKnx5uzxN0Q7ClqTL82kBfE=;
        b=ZR1qotg9QrmXuDWOQ07a9EJHnu2bXlJJmMI8Qt9DJ1sw6mmUzvWv3gQHvks/tPT8s9
         5sCeLQN9alclyC4dojQspSQ3RiGgn/OocfiErXHepC3DHNO/ALAz2Usryej6f8EZVVsQ
         UeRaLBHND88sIrOa6KwRwJvbnUJveYEyoem9kOanZJTvuf+LJkG8zIBdIDVIVpw7x2OJ
         mn6a8Ea/yyZVR242eHYm+gLXB3Q4QMsPaeA5B7c9eEb26fGkWUgRBumY6t4L6aJX/BnY
         op2YtNFpGpKYkkzRhFiVyYq5NKZyb85yk18fLjVnshrxLQ6OjP2a4xpzSL3SWMfyLF46
         BLDA==
X-Forwarded-Encrypted: i=1; AJvYcCWsR900HC0YBcx1BQm+tCmNyCtxUIcLOYbUcVIVBKbdtg7QKV7breErN6t4lTz+4HDHY49s58hsNwpN0lBjvweKpTlLoI3fj+KUUg==
X-Gm-Message-State: AOJu0YxnvmX0QOoifkOn1wQIRgawmHP8441T26ikIfvepClK/3asrLS+
	Wt15Yb3Ty8nNHlYU8HWakKLpRM+eJp2E2XWcq2Ej8dcyH8imdvtO
X-Google-Smtp-Source: AGHT+IH/HoOTvOP1YSrMHxJv9HF+dks0c4NXtd8r+IyQkn7/51/OXLwRI8a2BGTAekCG+qQ77XdGHg==
X-Received: by 2002:a17:906:5655:b0:a68:b839:485a with SMTP id a640c23a62f3a-a68b839626cmr594199966b.77.1717485272415;
        Tue, 04 Jun 2024 00:14:32 -0700 (PDT)
Received: from [192.168.26.149] (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a68ccf77cd3sm402597366b.13.2024.06.04.00.14.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jun 2024 00:14:32 -0700 (PDT)
Message-ID: <a8845e9a-839c-4741-a868-1f415b926d40@gmail.com>
Date: Tue, 4 Jun 2024 09:14:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: add OpenWrt
Content-Language: en-US
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Linus Walleij <linus.walleij@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>,
 Chen-Yu Tsai <wenst@chromium.org>, Hsin-Yi Wang <hsinyi@chromium.org>,
 =?UTF-8?Q?N=C3=ADcolas_F_=2E_R_=2E_A_=2E_Prado?= <nfraprado@collabora.com>,
 Macpaul Lin <macpaul.lin@mediatek.com>,
 Heiko Stuebner <heiko.stuebner@cherry.de>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Chris Morgan <macromorgan@hotmail.com>, Sebastian Reichel <sre@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 openwrt-devel@lists.openwrt.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>
References: <20240527115933.7396-1-zajec5@gmail.com>
 <20240527115933.7396-2-zajec5@gmail.com>
 <CACRpkda-egxVtP8Tan9T_EfQX6ekqQDf3LaVUu0by7aWY1Qmag@mail.gmail.com>
 <ed191114-0259-4de9-8e32-6718fd5e6747@collabora.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <ed191114-0259-4de9-8e32-6718fd5e6747@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 3.06.2024 09:37, AngeloGioacchino Del Regno wrote:
> Il 29/05/24 09:42, Linus Walleij ha scritto:
>> On Mon, May 27, 2024 at 2:00 PM Rafał Miłecki <zajec5@gmail.com> wrote:
>>
>>> From: Rafał Miłecki <rafal@milecki.pl>
>>>
>>> OpenWrt project (with the help of MediaTek and Banana Pi) has produced
>>> its very first own hardware. It needs its own prefix.
>>>
>>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>>
>> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>>
> 
> Hello,
> 
> I'm not sure about who should pick this particular patch - should I pick it into
> the MediaTek tree, or...?

We have ack from DT maintainer. Similar PATCH was picked by you during
the previous merge windows in the commit d67c211261d1 ("dt-bindings:
vendor-prefixes: add Cudy"). I don't see why this one couldn't go
through your / mediatek tree :)

