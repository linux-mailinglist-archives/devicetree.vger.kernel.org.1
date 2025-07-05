Return-Path: <devicetree+bounces-193215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A98BAAF9EC9
	for <lists+devicetree@lfdr.de>; Sat,  5 Jul 2025 09:33:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C15C1C822B9
	for <lists+devicetree@lfdr.de>; Sat,  5 Jul 2025 07:33:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D43B274B35;
	Sat,  5 Jul 2025 07:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="adVATb9y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE68B1E833D
	for <devicetree@vger.kernel.org>; Sat,  5 Jul 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751700776; cv=none; b=O5PnOyDblYDYSrWoajIoVZQnbx7A4+b50d8aVMsnHwYkfqw/JJslpw4Qum3mZ1z0UsOxAQRo2xlUMamnywCP1DP7PC6FqvMs2i9EzFv3b0e2APz1jlgmkacDG7hg8FiViZogHOcX1tsZpzrzDNsAdcI4QSg0h8324cL9fYJqO6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751700776; c=relaxed/simple;
	bh=UEWdtFYVv5xswZzUo6j7gc3O3mQD6Ix16Qjm+RL/zoQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Oc9TvUyTp0wqBalXQaAsQ+DyWFuxMhEaWb78DSY9A3J9O9kr/trwTQhiitd5Bn5sVWQRxeKWesbFta7O9jcqPkFxxZS339Y9Wy2uCCfl7wsBfMcNUsE7Gd8LmKuw/BUaDzT5Y2/yevD7KMhZ2NWIZ4NoyMr8aR4KsZB+3rzyW1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=adVATb9y; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ae3ec622d2fso261090666b.1
        for <devicetree@vger.kernel.org>; Sat, 05 Jul 2025 00:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1751700772; x=1752305572; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GhylvSenSTzbTSHgGzTYtUpcoD6+sjQINmEOCQtWK6w=;
        b=adVATb9yNk0bjrR/e/O/SmU86XzEgkGIR+tezDGg1eowq4gt+1r7ivbrUmgb5uSCUA
         uD2EarSNsENbNJhjHeF0+z8TEaFkNEqDqzrlyi5rJH/Y992avffKgDCTBwRhk4IIXlm6
         DLYMkxH7uHHE7Hg8hD9kzhHm1Kyp6yMU9PtSthh3IYxFiO2YKviMX36wIoIrJFJUXS59
         j37YuMXDSpVXuggyrujUtuuWY3Ab5b6BPrrO8UNavtorPH4LXP4riiSjjcyoTEINCUtV
         vflGaK0TzF47MDraJKoojFllbDvOEeEzQF8YR0pEIeVQpqx05WqhUv5NdTxwMwh/Xl+B
         0RfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751700772; x=1752305572;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GhylvSenSTzbTSHgGzTYtUpcoD6+sjQINmEOCQtWK6w=;
        b=nM6EDJPIWxL6prDFD1XRfFk5Ofh4MqheOhn1exd09F1gqhEhP7pMQ3pL1Bx+ftXf8h
         WI4fsfFC1+q9JGOOt29bZ/wbuA/8QQRmS/bl1441wu826/uwAJXlSulE8p4AgQ/xNC/w
         umyZ47smM89ruYUdRS4y88emIDf7PeYTqZgN5er4Lq5ZmyJFvVtUn1iDMj7k0AcmTBjo
         KHhFhbruIYnKnz4CNFMsuulhxThwOkITar208HDJtmMlWiYMhJ9NpRIwfl9m9pSeijSp
         W8wQqI5IsTK8peRKXsNTJjQJngMFlmGpmp6PMp2U/PL98XvPVbwKZOriv0VQFD1GZNGR
         wbgg==
X-Forwarded-Encrypted: i=1; AJvYcCWI1B4d18E0W9VZf5qGClBSdWWP8fNFsJyLkSpTqlv3tc6wF+Prtbf/tCnDawokNlhD4KJJmuHYMKi6@vger.kernel.org
X-Gm-Message-State: AOJu0YxrmEkY3lAfxhBCOUvRQG6gcs+IRm+dWPuTkSvj3ecjfqhzAOqo
	EPcaoha+itlRA50nPNf+Uo8Rn6FH/pN3g7xVQpTUFrhy+LnfetPwbfXMPVkk0EwYrrM=
X-Gm-Gg: ASbGncvmXke+jgJ5BWhrqQBAf2h6YMZ5Q1BF+NqVmFPYRIH1GNwXYcbJnHBM5Px/nvi
	+eZ0+yCgDYlZz3pce9PqIe1JO3VX1k6bizyzT9w7BZFsXnp+Wf8JZ54SKmKZEInGbVsYApIulK0
	GofgCm7n5xe6bNyGJvNEB8Qb6WlRomntLRJ8W44/6OZifidfBpjxB00erYYsZq/DW2ywf9BVxoG
	3IO3g4nnvQqFWhvOoj1f6zILTU0xUo31nLAmowfNb8CJru/N57PXahLggEh+S6BruxaT6nvjyff
	aWpQQP7si/UTm3SP38qWhiRegp6ntzGrcOhLuvfzoriD1eq9REdQK08ptExoSl4w/WehzQ==
X-Google-Smtp-Source: AGHT+IGypJ6ZzkoJSLfm7mtSoGrYFW/oBciDR2Yh9zboCch1QPddzX5kM1vpeJocDK+Uauw6ezziIQ==
X-Received: by 2002:a17:907:798d:b0:ad8:9997:aa76 with SMTP id a640c23a62f3a-ae3fe599332mr424341866b.37.1751700771848;
        Sat, 05 Jul 2025 00:32:51 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.83])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b5e785sm300317266b.155.2025.07.05.00.32.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Jul 2025 00:32:51 -0700 (PDT)
Message-ID: <a70087a3-b9d4-48d0-b03d-8d48468b79b3@tuxon.dev>
Date: Sat, 5 Jul 2025 10:32:49 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] ARM: dts: microchip: sama5d27_som1: rename
 spi-cs-setup-ns property to spi-cs-setup-delay-ns
To: Manikandan Muralidharan <manikandan.m@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, tudor.ambarus@linaro.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250521054309.361894-1-manikandan.m@microchip.com>
 <20250521054309.361894-2-manikandan.m@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250521054309.361894-2-manikandan.m@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 21.05.2025 08:43, Manikandan Muralidharan wrote:
> The naming scheme for delay properties includes "delay" in the name,
> so renaming spi-cs-setup-ns property to spi-cs-setup-delay-ns.
> 
> Fixes: 09ce8651229b ("ARM: dts: at91-sama5d27_som1: Set sst26vf064b SPI NOR flash at its maximum frequency")
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>


Applied to at91-dt, thanks!

