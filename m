Return-Path: <devicetree+bounces-128331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6BD9E866E
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 17:30:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3EFBB163234
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 16:30:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D49915EFA0;
	Sun,  8 Dec 2024 16:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="OS7lJW0K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90D0D15575F
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 16:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733675432; cv=none; b=bKpcWHGLi3BPqtb5zzfX3RaMzbRSSn/kjIJWaVFCWA7gghIMfjAj93G9LxtfU0ag/TdX/ckANBWk/vSNx/XdgaEIlWpio1J3ltgnb0KPkEpmtlo2BX8UwCiygseBv1al5e3WHxEq4PcTaAU1F+lmwhTtptEirxO1qzuuEzjxszg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733675432; c=relaxed/simple;
	bh=OFDmGehoK600SvToI+7RLgjBAFQXs+mVcolPpCj+dNY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PsO/zo0PKNqj+Xx9r413kowUOpqqkJxrXuEKN4k1SIDoFNMgNv/YseZj0E2lrNnGUjngzEVXXn2cynozMl64wm0KgdFTidIPDTwcJ/wVjSykW4laslJwiwvRE5zSgtz+vsICfegaySIzHtrkUCHD5Y8tHKHaSh+Zgitf/+Cl4rA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=OS7lJW0K; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-aa5f1909d6fso686298166b.3
        for <devicetree@vger.kernel.org>; Sun, 08 Dec 2024 08:30:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733675429; x=1734280229; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8qhusLfuIgsMbQqxPaQUwX3ow4Gf24/DeZxPYGalAiY=;
        b=OS7lJW0KQwPj/dpK1GsZlGQK16iHFjm/dbXHlyMetzafz2DYnsdy8vBj9qCJJT9MQL
         r1Qco8HEW68kiTVWGTw7+gOrzyMzM/kgyHS/vOZmr5cLxLilwaEQzIoR5WM5qsezSQCC
         defBDd+FhjdybNql+C6qk13L6f0giVSdbO1vvDEWFNpf/OCbPFHBUO6xneIbOe0ygXUt
         csd+/DAlQcm2rB5QCjNcMwtBV0AapOSgwDrV78pVpwyjKoRWFWTyP0mZ6Z2kDZj4O2Sn
         8QzRiQ+4qM8dxfwLD+7KMaMSgiafwcEIBO0IvDJgEnw/Pi3p/aXvmEj7pS0feJAzcSaS
         dKdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733675429; x=1734280229;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8qhusLfuIgsMbQqxPaQUwX3ow4Gf24/DeZxPYGalAiY=;
        b=edP0waE8GO5QgnbHDab5qhiBx8Ix7iBvUKbpTqLGd5ZPu/4AT96S/F0qy69O0bkdWX
         AykKdTDvub5nNR9gsT58QLO0iQnh2qLfkOf68GYgdv692i22RyxVoJpPLPMWS9STY0iW
         a8z9vNWHFknw4pEDn3XKKaaMeG05TsF/WASOfvtDwugEru+6BBwY4NRUAi1CSBVzfEZj
         hRDQUXaOyyfB1CdnmFYPYtvCuVOVdEcctozZ792ULSKKfba+xEMX9rz8EGhjqVrzVe0n
         PcsHHClOgyfuVqfrlw9dTG8MO0a7wsysEtTe2S6+yjjN56xchl4m7d7YqMfvGtGrlOB8
         fw5w==
X-Forwarded-Encrypted: i=1; AJvYcCV3hk0NKRMGN2LStjLCrDNSxtGekuSvbAZlQoJyYuX0/IM85khTcAq25+Iyud6Xke3dcARbUH2Ulktk@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn5RSyyOAt3mSE9j0H/gs7YI/TcPxwUFNVO8OKw74qgG7Ri+b1
	69mxYuD6h+EzQvItthCF1lZ+BB+4SvZ+lzhmAHFBNWZqRX/3ildUk45xgUc/lpM=
X-Gm-Gg: ASbGncuKTEkENLYZ+Dd3CN+jHmt+Ci+gXiK09TF8HKl0vQ8A23rSZgez47mhV1J2NTG
	LZ0V93Fe8uuT6YKIKK76x0Xhz5lidp12YgVpudhQbyLj2H9BJGy8hb8VFbUF0hgmluwX63fZY+E
	rdbv2cHAUR3Fw45Lfn39a2Rqu2fI3xbA8Z4runOBnnVxHr3lUl5twCwqXfa0oEMeWkxk8MyfAet
	8hxH6s3CZnylDgLGnIRxWhvGmT/mky2r3Sfzz0o5YKPvk9cPt21AYS2OsE=
X-Google-Smtp-Source: AGHT+IE7YDoN13k+KH8JOtiRLrAMtuSmlPV0i3qWniWezo/cHtHK2Sxr/2xiHf8TyJV2wCkaLPDXWg==
X-Received: by 2002:a17:907:8315:b0:aa6:7148:91f8 with SMTP id a640c23a62f3a-aa67148942dmr286404966b.4.1733675427547;
        Sun, 08 Dec 2024 08:30:27 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa68a97498dsm5949966b.99.2024.12.08.08.30.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Dec 2024 08:30:27 -0800 (PST)
Message-ID: <022a34e4-2a9e-4cb8-8998-d5decc4d9fdb@tuxon.dev>
Date: Sun, 8 Dec 2024 18:30:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/13] ARM: dts: at91: Add sama7d65 pinmux
Content-Language: en-US
To: Ryan.Wanner@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, mturquette@baylibre.com, sboyd@kernel.org,
 arnd@arndb.de
Cc: dharma.b@microchip.com, mihai.sain@microchip.com,
 romain.sioen@microchip.com, varshini.rajendran@microchip.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-serial@vger.kernel.org
References: <cover.1733505542.git.Ryan.Wanner@microchip.com>
 <a8f880b89cd4470526a2955a0b6aaaaa24ba65b8.1733505542.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <a8f880b89cd4470526a2955a0b6aaaaa24ba65b8.1733505542.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 06.12.2024 21:59, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add sama7d65 pin descriptions.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

