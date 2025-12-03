Return-Path: <devicetree+bounces-243998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A26E5C9EE80
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 12:54:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E3E53A6CF1
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 11:54:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B2D62F60DA;
	Wed,  3 Dec 2025 11:54:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fU9DCvKv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA5A52F5496
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 11:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764762892; cv=none; b=c/SlPAqPSQw4RqDAOC4np8h2SOSscQM5ZB5Yo+9hCrX23CpbWJrTyVkgIki6yL4eHBXTARQEFFAteHUFUTsIT+CDJ1Lc7O+HSin67pd/kFQ+oRUaQX9dzlLynvrKYfbdaAo+/qs1/pdi8FvS/p2iMYuYNN104tjcWf0f9ccuHFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764762892; c=relaxed/simple;
	bh=ELQVVr6X3DQ5vkoskTSwAR07IuJDLZA6brxp2H71SIU=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=i5xcBjHK8/vS6CK03ZB9z8H/gYeAynYgYiA6K61WxEa6jH/UzDMQd+Mg8w8PLOmUseGot4I45y0bWnoJn9SwWAh9GQNptAhytjSOzKH1B8xZnFwGTCSoVl7IYLRHnzBt6+dc7z91VZi9k5TnTAcjoWqtzZaQco4vOR+Rmwn+c80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fU9DCvKv; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-559748bcf99so5197866e0c.3
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 03:54:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764762889; x=1765367689; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vxMEbZ5hVBOhGVLtG70nLqghsEUEtF9xMuE9bTIExzk=;
        b=fU9DCvKvWejP9dlcWcrzPcrAe6j+wRZuP2k7t9xKlSzBLZUomz96V5aIroB37wp2qD
         DBDJV9L9UasOmfcaiXR/wVI4KJZML9fYvXYW2IqpRQmnPV+07WoZGVuNCaVb/S1KiMB+
         hHHm31TC3sBg9ssQwpV5cMclERiDGug5Pd9aWL19/E6DChCoznJXdSb3DEb8thzXC23n
         FlILNfb9LGlbS7jlASYX9gfd7Rhh/Fu9B6fjwmePnSy035L0FOhDb76bMWAT2LuOkprP
         6Z2A/tvAaXyK/hgQ5NJ2ehnMhzI2LUAkFXfTf/hJGWnwbThuFW4kNT5t175VdZaY2O6a
         vqFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764762889; x=1765367689;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vxMEbZ5hVBOhGVLtG70nLqghsEUEtF9xMuE9bTIExzk=;
        b=nnaUAkJ0qdZiYsTBz2txXYtRRTIIhkpLLVi3BSwp0//4tn7/aGzV7n7LoOSUwfqgHV
         SAt7f1ONXwGOu7P9x3M88pmgH1SMZGqSlRI/AaG4vI0X+X2KDqoZoB8MvtQF+i/V9pSb
         eDovW5Z3vJnGaMMEOBXyfxGIuIGLuBTY53YHh1m6jyNuhezXPwu01XN/gZNPRF+U6AkP
         evOPOkWgjGRtwuNkNbM5PTejb1wehY9Cz5S1KCQ2dQiIIL/Dv97pmAKK2gwuS9IaPlsB
         DdzUce2l4sMQTnoiDsC1U1R24WuKZUXUp7n8g7VVlke68kDNG03CYIbejnqwRHQd69gW
         QyWw==
X-Forwarded-Encrypted: i=1; AJvYcCVb6LmV1ErKoaHTBI3/2OMUjPKmgNZry4Mr7W4MCfvpmigIyR54TorAg8Xlo/LDjR41c4TaAVI0qUZs@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx40TwseQB7yArs6SCoWK3/z2zLaUZRa2HTWc+TxmFBO8XLyql
	RpIlgx/9nd1UybqkTQcd+Hwu65YRbCgKKz7TYkCVqkkyG1+GUX53zS67
X-Gm-Gg: ASbGncvHCYv7GU0O7l/BcKLyutnUHL9u86ltr9J4w8YVqCx8sCUlDk6RGuP4r4cG+rZ
	sXqZpbOM2wiC5QD/Cl5JoeqUQRfjtaprVknbY97uE67RM9BCGhA7dzpxifuvfjqDYj0E31P914b
	vefA/uWVKMD9yQ3MZOCFxpInL3jJ1KGBlg1mNQNwrwooTrYv+tsgBIxUbaho3p1RaHxokrxFpKg
	f59toRRJqrBl3Eufxg8LGerGp2AZP+l8QUeoliy4MshaOMoLcu0//LsG45W53RqX09cXi0OBloe
	+Xw6S5JpZlz84ngKJTII2bcMfTsaFFTBY+quBji2wSHgCY6u4MA+4wmuLioXonaz9WTl/13mdHv
	b3//VCBAvUF6pGhn1XBHKXdNT5tWHR3hcL57iTdpliywXLVugWmW4euhGG7Xk6ASgK/mq8Uq5Uz
	mzmeg=
X-Google-Smtp-Source: AGHT+IHC/URL7zOZS7seUyXI3W5yB2QrrgxRdVCPZB28hcnqrADnibVC36noIpOW2CZp1hdbsnLA1A==
X-Received: by 2002:a05:6122:3d01:b0:559:3d59:1fdc with SMTP id 71dfb90a1353d-55e5bf914a7mr499897e0c.14.1764762889632;
        Wed, 03 Dec 2025 03:54:49 -0800 (PST)
Received: from localhost ([2800:bf0:82:3d2:875c:6c76:e06b:3095])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55e5c2850e7sm644701e0c.3.2025.12.03.03.54.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 03:54:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 03 Dec 2025 06:54:46 -0500
Message-Id: <DEOK8E55YR0L.3ST80EKZ08QE8@gmail.com>
Cc: "Jonathan Cameron" <jic23@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Tobias Sperling" <tobias.sperling@softing.com>,
 "David Lechner" <dlechner@baylibre.com>, =?utf-8?q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, "Andy Shevchenko" <andy@kernel.org>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Jonathan Cameron"
 <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v4 2/2] iio: adc: Add ti-ads1018 driver
From: "Kurt Borja" <kuurtb@gmail.com>
To: "Andy Shevchenko" <andriy.shevchenko@intel.com>, "Kurt Borja"
 <kuurtb@gmail.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251202-ads1x18-v4-0-8c3580bc273f@gmail.com>
 <20251202-ads1x18-v4-2-8c3580bc273f@gmail.com>
 <aS_7xrMwW42qolG4@smile.fi.intel.com>
In-Reply-To: <aS_7xrMwW42qolG4@smile.fi.intel.com>

On Wed Dec 3, 2025 at 3:58 AM -05, Andy Shevchenko wrote:
> On Tue, Dec 02, 2025 at 11:56:19PM -0500, Kurt Borja wrote:
>> Add ti-ads1018 driver for Texas Instruments ADS1018 and ADS1118 SPI
>> analog-to-digital converters.
>>=20
>> These chips' MOSI pin is shared with a data-ready interrupt. Defining
>> this interrupt in devicetree is optional, therefore we only create an
>> IIO trigger if one is found.
>>=20
>> Handling this interrupt requires some considerations. When enabling the
>> trigger the CS line is tied low (active), thus we need to hold
>> spi_bus_lock() too, to avoid state corruption. This is done inside the
>> set_trigger_state() callback, to let users use other triggers without
>> wasting a bus lock.
>
> ...
>
>> +/**
>> + * ADS1018_FSR_TO_SCALE - Converts FSR into scale
>> + * @_fsr: Full-scale range in millivolts
>> + * @_res: ADC resolution
>> + *
>> + * The macro is crafted to avoid potential overflows on 32-bit machines=
. This
>> + * imposes restrictions on the possible values for @_fsr (less than 274=
878),
>
>> + * and @_res (greater than or equal to 6 bits).
>
> This is actually incorrect. See below.

I'll fix this!

>
>> + * Return: Scale in IIO_VAL_INT_PLUS_NANO format
>> + */
>> +#define ADS1018_FSR_TO_SCALE(_fsr, _res) \
>> +	{ 0, ((_fsr) * (MICRO >> 6)) / (BIT((_res) - 1) >> 6) }
>
> This is different from what I suggested. But I think I was mistaken with
> the parentheses and thought that you are dividing on the mask-like value.
>
> If the current version correct by the result, first of all, the limitatio=
n for

The calculation is correct because I sum one in all cases bellow
(advertised resolution).

> @_res is 7 and not 6. And second, it can be rewritten in a simpler form.
>
> 	{ 0, ((_fsr) * (MICRO >> 6)) >> ((_res) - 6 - 1) }

I wanted to use (>> 6) in the numerator and denominator to make it clear
it cancels out. But that (- 6) is equivalent so I can change it.

>
> Please, check it again.

Thanks!


--=20
 ~ Kurt


