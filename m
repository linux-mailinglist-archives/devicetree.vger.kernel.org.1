Return-Path: <devicetree+bounces-235165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BE17EC3510F
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 11:18:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 082963B9C49
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 10:15:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 050072FCC10;
	Wed,  5 Nov 2025 10:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B2NNK6A8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6F028C00C
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 10:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762337734; cv=none; b=as1ZhePoAjLynXLBwGzRVPFW4j8A7a/xwboUojiluS9lAGRuEmM+xPJ4ilzRj6NIX4PCAk6wF1wCHWK0akM+hBmx0eqJ+9Ckt4ph0TTzZEcuClr9smYmdIbcukzGGH7++/G3qOBL8YC+90a++mddH1FeM3pSUZeNzF0EcenUg7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762337734; c=relaxed/simple;
	bh=vKvXA1UTbQ92fIl4LlcrQgYk+HkGvnd2V0muGOxp17g=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=EdSIHzhTpwDFLqCFSbtTPFNfF3pVqgWIR1ocrlBkH5boUsFr698rY6RI8KXuFrNPw7Q9bbVtLRvDY+49xCYQw6pGamj78/BTSgZpcMEmWI72uVj3we8aWOw0aTco6lFS8ZHA+KI1NvN73toSuSyM5qa0E79Pmb2kLLzWaG+DX50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B2NNK6A8; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3ee15b5435bso4702850f8f.0
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 02:15:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762337731; x=1762942531; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vKvXA1UTbQ92fIl4LlcrQgYk+HkGvnd2V0muGOxp17g=;
        b=B2NNK6A8E5KmSa422zsXDYgGlcT7P0dG9paQ6Sza01WbPGlWesgpCKeCrWv/U+nhEE
         M2xPrKV/6W2sH2YEXBW80IQTM3FhgjWmTATx7fCby+SlUwS5N3xK2R4bcX/0EtgHtSRu
         pTgk6VLKQydBJYW16HyT/wyCWolVmOqD0r4kiv5UVrCM55AVg0lFXi311xULyesFWuOa
         A9RBP5m2kpU25u2c1xMniVhEaMx8fhRkQODOkQeMY6BXd1zakQ1BPq5l4n67/99zMqnT
         q8XjI+UEWkFnEk1tHqJV8cg11kRzhw+/TVo6pyv1coHH4og9PU4jZ4SHgwpH/JvztAoV
         Hnxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762337731; x=1762942531;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vKvXA1UTbQ92fIl4LlcrQgYk+HkGvnd2V0muGOxp17g=;
        b=QV8CuEi/cqrBBFONgBNS2vr+S0X326eLe4ployh21letgpkeab7ZvFq/fiMN9BfKmY
         NMuO2U3f00FmvW/FZaFH8b7UnmIXOCIwf/tQbtOoXxtMR+diBPLc3lSMRQOKlNdVz8G0
         rD2e1RSKrdTAyIWMysz5iXQkR6x623Nt4vxVJkDMvojxDnqzrouxvRCA5ye4PtT0k4+T
         kSFPt5eiuelyccbiCsAzftuytmjtOw55ZDb1JSSb6oMajLE5956NWNU0P9lUjpGFCz0d
         GUvkv+dD20DW8TjIbB+SGpDffENi3ggjapfitJo3DIlDRUx309CJ5RNvQdzEOjRVzd19
         BxRg==
X-Forwarded-Encrypted: i=1; AJvYcCUtOfexh+kb98coBmLyioT5+ZDUbO4ppuAoc90bJT0Djz8/3icvcxKPh327OresCcuX0mwOb7vBLteS@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5OuwA4nxYvUX/lDIJ2mleiH2sris+K+hOqtKP5J/FE71bhmSl
	wM0nbs1s+zKhRawTWJQ4DsAjOuE3F4F7o7DgEuKVC799/7eOxdAqPG8P
X-Gm-Gg: ASbGnctNyN644sJS1lnRj9h5FkfWdQ6QSIwV6x/EIlv1jX33lTLfFd81t2GxSzl6Czg
	5XXftHFb6vHHv2wHdG7BIafaqgTP4nAWIeQI1eJew/FYSC1euQi5bVyy0VCgM9SgY9z4jk/bt4d
	X5UjEfPckOIQbXJTtQojq5U89pORctCWDNoy6ww9uhNr3zwYcFBEJu1S4L6itkSloh6dlpCecOY
	xFeEe+BJu3HNzeyaYcX9agO/1nujXwisdP8RXqp5Kvtv44zBscZ3lil6X3u1TZPJtTI9ASMvne/
	WvOd0jA1PlJH+oRCSSIZ9a54dNsfJ6Y+LNYmtfb0qZ6RRUoK7+U4mwj7O+K5zn/RVqXvDR8MpWa
	tEst3YO+kpXMCYtnKgB8Anj0Er3LDKXEhuF6jdKqTbxUdaf+U65wvGDTKdI9PbgAtCzoxhJZbGG
	ATsk7DgUn6
X-Google-Smtp-Source: AGHT+IHg/WdqdSYGzAqgxwmDrZ4E5OPhTcBs3HnRRo3OubIxfZ7ReFBsy9w4NBpLGROiWYFUqWHvbA==
X-Received: by 2002:a05:6000:65c:b0:429:b9bc:e81a with SMTP id ffacd0b85a97d-429e32755ccmr1709161f8f.0.1762337731336;
        Wed, 05 Nov 2025 02:15:31 -0800 (PST)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429dc1f9c8esm9651425f8f.33.2025.11.05.02.15.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 02:15:31 -0800 (PST)
Message-ID: <76274ec104107516fb5b2d4e07bf95ef7c41a4cc.camel@gmail.com>
Subject: Re: [PATCH v4 03/12] iio: dac: ad5446: Drop duplicated spi_id entry
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>, nuno.sa@analog.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, Michael Hennerich
	 <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, David
 Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>,
 Lars-Peter Clausen	 <lars@metafoo.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Date: Wed, 05 Nov 2025 10:16:07 +0000
In-Reply-To: <aQo0AKjQUNN9FCDR@smile.fi.intel.com>
References: <20251104-dev-add-ad5542-v4-0-6fe35458bf8c@analog.com>
	 <20251104-dev-add-ad5542-v4-3-6fe35458bf8c@analog.com>
	 <aQo0AKjQUNN9FCDR@smile.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2025-11-04 at 19:12 +0200, Andy Shevchenko wrote:
> On Tue, Nov 04, 2025 at 03:35:08PM +0000, Nuno S=C3=A1 via B4 Relay wrote=
:
> >=20
> > AD5600 and AD5541A are compatible so there's no need to have a dedicate=
d
> > entry for ID_AD5600.
>=20
> Suggested-by?

Oh sure, that would make sense yes. Maybe Jonathan can do it when applying.=
..

- Nuno S=C3=A1
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

