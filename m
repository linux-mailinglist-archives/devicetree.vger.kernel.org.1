Return-Path: <devicetree+bounces-108065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A75991818
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2024 18:05:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 15B1F1F22288
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2024 16:05:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B45F4158524;
	Sat,  5 Oct 2024 16:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="13/2Zl3B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB49157E78
	for <devicetree@vger.kernel.org>; Sat,  5 Oct 2024 16:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728144287; cv=none; b=jqVIVq2nQJsHHcp6Rk02cqINLxBkaHhCs6/nIRGpLodUWXtt+AFYXylrxGUVWQIP3PRje82z4NuiYPjP8iXCGAXNuHTa8moxoeWfPTnfNDRsPSte8oDRmtDI5QtLc+UNQJx1UrnzsPbZfndPQCSHZCkkFCIQlPLUj8mRxy3n9zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728144287; c=relaxed/simple;
	bh=7G8Idj89zb2EI/kVrjhy0YfPRleOfpA5LbmpcuA/zRA=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=RC1Qr9+rdC6u5EHz4y/K6YztOe5kBEiOA4c8yX0Yt1iVA4Oh7Rd5npxFU/sYnuJZsue6oSNlGt0DJgc43pGrQ9KCFLbj9QNLTt0xKQrLs4pC64QNRK/wwBtFa2jh/VQZkVu5pwRcyOaehY1iFAwpMNtAskwJbZqsgCWQ53q1/R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=13/2Zl3B; arc=none smtp.client-ip=209.85.161.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-5e5a0519d00so1109420eaf.3
        for <devicetree@vger.kernel.org>; Sat, 05 Oct 2024 09:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728144284; x=1728749084; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5Kwl0dXoGvk4I1L3ha2mUXPb6YQ/5kfQsKUBo54j7RM=;
        b=13/2Zl3B98PpVXeySxA/QP5kR3TpBrmfMXAhzO/PYiWBI7rMvq/WLgmlceLliSGSfj
         QjdHBXvGnpaUxjdLtWWjxagcxlyaZGUHiRJZAtihP++M8ep6n0gK3FiuItFUa+NY2She
         eIgBZZb91ECOFtSpRy8dK78dxc+MvpUQtLvnGASc1jGzrhEu90QUQy5Q0LV3kugXnwp5
         LonVx8jKtYHDxSIWMAATXN227hvtNiYnl+bQLYXP+cXoqi23ox+mZl0iSLtD+NVOc4AP
         oaYOdCMtAYifDW7QkLLut7UYmJ3UVv0JqMZrCGCS5uKHTErx5gTYnA1ADdsLoOqNh/yS
         OLCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728144284; x=1728749084;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5Kwl0dXoGvk4I1L3ha2mUXPb6YQ/5kfQsKUBo54j7RM=;
        b=vzAa+1Zq1Jj+SuvBSIt8XPF4oi1i8bFV/qIqcP4i7kR510dGQ6qNsKzs3HpSEKS+OJ
         PAMEw0QSsIeDMpEsRgXFZrpYmq+jDXP38ke/AHthHyxn9TmNbJYHdcuz9wIg6hEws/Vb
         X+xQQeyFeYyEsozg6O+wJ9XZBzKuFxnuEkLLFNKfMfScLbqqIDoKabqvxW95nNQsg9J1
         mCAoOuWU5IVhIDiVkpUhDwmGofVZw9IOho4ewQidvxULGXWgIhOLjqqrDH8NPzLN6q+L
         R23p4iwybbEDwsQr0wEFU4M3YWezhh5kLAJ1RAXOGoQDcJE68/GW4HpKYpy4RlV/xk0U
         JimA==
X-Forwarded-Encrypted: i=1; AJvYcCWvyMQysRd+76lNeyyRKbOg4tsQOWKhw4DJ8c86g46EFSX5CbsPnBWxlG8nBuUX41n1SbXJ8+z8XL83@vger.kernel.org
X-Gm-Message-State: AOJu0YzWugQ/l2FJxvyEErAcXg2J9/H1goxr4geMxu+3Zs0cNPJ+muo+
	vIE7bX9j+f5HXiKHr/qmi9r65HjKLdi/xCuU/PeiXgIHgPR3Vty1sotnzPCsSA4xWQBne4MVxQp
	5
X-Google-Smtp-Source: AGHT+IGlbSF2O7STOLHo7SpIZU5tLsjFrVnpfRxE0DIBRR39U8WUKT+qVDkdrC2mG0giRQE9tWO4ng==
X-Received: by 2002:a05:6820:1c84:b0:5e1:cabe:a3 with SMTP id 006d021491bc7-5e7cbe5f4e4mr2972082eaf.0.1728144283944;
        Sat, 05 Oct 2024 09:04:43 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71556847358sm550142a34.61.2024.10.05.09.04.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Oct 2024 09:04:42 -0700 (PDT)
Message-ID: <7696952c-acee-4906-a37d-03aab2b23352@baylibre.com>
Date: Sat, 5 Oct 2024 11:04:40 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/7] dt-bindings: iio: adc: add ad485x
To: Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Nuno Sa <nuno.sa@analog.com>,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
 Andy Shevchenko <andy@kernel.org>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>,
 =?UTF-8?Q?Jo=C3=A3o_Paulo_Gon=C3=A7alves?= <joao.goncalves@toradex.com>,
 Ivan Mikhaylov <fr0st61te@gmail.com>,
 Dumitru Ceclan <mitrutzceclan@gmail.com>,
 Alisa-Dariana Roman <alisadariana@gmail.com>,
 Marius Cristea <marius.cristea@microchip.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Mike Looijmans <mike.looijmans@topic.nl>,
 Sergiu Cuciurean <sergiu.cuciurean@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-pwm@vger.kernel.org
References: <20241004140922.233939-1-antoniu.miclaus@analog.com>
 <20241004140922.233939-5-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241004140922.233939-5-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/4/24 9:07 AM, Antoniu Miclaus wrote:
> Add devicetree bindings for ad485x family.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---

...

> +
> +  vcc-supply: true
> +
> +  vee-supply: true
> +
> +  vdd-supply: true
> +
> +  vddh-supply: true
> +
> +  vddl-supply: true
> +
> +  vio-supply: true

What about REFIO and REFBUF supplies? These are optional, but
no reason we can't add them now.


