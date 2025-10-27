Return-Path: <devicetree+bounces-231584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F82C0E9ED
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 15:53:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DFFF74F9754
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 14:48:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 356A92C3768;
	Mon, 27 Oct 2025 14:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K1roUxdW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 751BB2C11D7
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 14:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761576527; cv=none; b=OOwLqwg+sNRhaTyAHMDR/4ccaFHow16YTx7JGgVNZSNfj9X5Vy+9ARbYFIwNsDXiWI+qxFLiiTE0MuZXqQGmBHVMRp3PyMfKNLc1TtO8xpXamEXYWpHccd/pGas8DdQpT2Gadht9jQ+7Q/wXJ5pJNrnUCGbBgS+/jh/WHRwuK8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761576527; c=relaxed/simple;
	bh=KoXCnR/8OVPOCR36vUOTalb8YBdJN/eB6ZDnzrx3k0w=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=bS09QFWkVlS21xyNOxTTA3QZmUaxgl5dVSsiqsA/Ksn48G9Wt6/4Zj53eCxLdWvWLG7ZnX9KOwfiNYXEnF0jlN5/MWA2L2ZqLxgGYC6Nl1VAm/yetlZ0FcbYMi0ohOp7cQ69HvN4ZS4wv/1D5cj7CaI56oISbXcjrVubM1paHk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K1roUxdW; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42420c7de22so2391217f8f.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 07:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761576524; x=1762181324; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KoXCnR/8OVPOCR36vUOTalb8YBdJN/eB6ZDnzrx3k0w=;
        b=K1roUxdWn6qZkxewn7rnkn7SRosRNvslcMoLcPPEjZPejY87LwhhSHmEQXPTvhlO0A
         9iD4oULeOiCBcyERqn54V7ZXaJUZJSWWQp9iaLdm8aZ52bh8Bbi80EN0RwDN18g/WHjm
         3NjClhAym6JxIeTDcPZw5276EwuRxwhuH+h9pxEzfwjRi+tUe/ki2lLq3fO7uagCO6AY
         KgIWZdRlKSFHmOJqpCAeV1X/NvvBUIu4bxlpfuDOlGAslRavROA8Bn8hLL3JW9V36HjH
         +obarUq0FWV0mutC7nb8M1Wk2JsoVeEAQ7zDBCk/RgqG1UOHtXNysfWXIH63uxL0Ywu2
         vbbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761576524; x=1762181324;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KoXCnR/8OVPOCR36vUOTalb8YBdJN/eB6ZDnzrx3k0w=;
        b=Ojm8RqY4ZRGfd0TNuOYHOPdo75N2Uz+dXvOHWEzqLQHmXjqUrdmW/xAE0fEs4Y8yOy
         nYNSyMRRsLGVZxUfPLEPe7JTEbutXBpn13AkoKxYB+GkBP1i4eGRMT3EMTjzN6ry9f4i
         g6kAGrNRsaw1IFVzhcKyV07xUxAsGw+VvsJ8gGqW00PmooCZPxmtKTiUKNWJEUDy7AP1
         6Ax4igcWT94hI9Yx1h/qajh/qaQKrwUyWagFpUUq33jT9SGYy3mWya9ctD6StCjw5YDq
         S+LVsl1ZaV/1XBM5oUTjSQElhDHx//7whfv0gEnnKmg9+xnTnLOY3kWPUC7YhNttTqBD
         LTcw==
X-Forwarded-Encrypted: i=1; AJvYcCXfr/gp/sdhseqalw5bBGThFZcpaLoc5xgqmGdhy0tHJz29Ph2kfMMb9MO4IEeN2oQq1YzEZVSDz/pt@vger.kernel.org
X-Gm-Message-State: AOJu0YxXLzEi+uQCagsiZWZaNrEAp6qdTZKXr2vBZvhSNP6xFafWq4t+
	bTbmv0GgVQrAZXFzai4w4h4np8gMSGzRigucUyMdVDqdN+o4z2hGs6Ak
X-Gm-Gg: ASbGnctsujZrKnca97N3t4r8shZRbbpi2Sdf2hR9eXXBgzhAasNF52HaJN7t5Pc/dcb
	WdlT+fOuwi1OM21/4SMbDtm+KqNtbmyd9Ca7sCibzrFkIMeFYnzKhHMmJHfL68plpt7f07xyV84
	scEQIGUSEyL8SEkO8L358nzJPr7dzi/Ub+H79a1l5XKYiN/3tVjvYvwFz5QNudabTPaJwaNK7eQ
	Ae2qggETVo5VLrM5BHuJAAIYj7ZYs21s4iKt2NTMp5XmyBGvor/wxzHJlVme12qheFFlTbx0uwv
	/iv4y6bjwDH6DwKzTo8fwLRmtFfOZluhJ+rPLXwH9HK9VtVzpETkq9yxvEI/E5Mq+/8mECdEFjz
	uD/Ag0GkcctWGM6PIO0Sweh1gBXHrXzV07eG4AjDgSO83wITyBB6ST6ttSKBkuq57W6wTbgFYMB
	irFXv0SwMqotTcaCOUZMmu91Z1V1sodg==
X-Google-Smtp-Source: AGHT+IGoYikAP69z1flgnsxyqhVrQIR7leCSTkTetaeNmgrJ7bMZ3dRj6mFAQSQhije6hwXG/Ee1vA==
X-Received: by 2002:a05:6000:26d1:b0:425:7cf6:5b9e with SMTP id ffacd0b85a97d-42704d146a5mr27358721f8f.3.1761576523620;
        Mon, 27 Oct 2025 07:48:43 -0700 (PDT)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952e3201sm14780242f8f.47.2025.10.27.07.48.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 07:48:43 -0700 (PDT)
Message-ID: <305ab5a2bd292885bd57fafba6d64f9ff06bfada.camel@gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: iio: dac: Document AD5446 and
 similar devices
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Conor Dooley <conor@kernel.org>, Jonathan Cameron
	 <jonathan.cameron@huawei.com>
Cc: Nuno =?ISO-8859-1?Q?S=E1?= <nuno.sa@analog.com>, Michael Hennerich	
 <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, David
 Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, Rob
 Herring <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, 	linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org
Date: Mon, 27 Oct 2025 14:49:17 +0000
In-Reply-To: <20251024-scope-uncle-93183d40ef11@spud>
References: <20251023-ad5446-bindings-v2-0-27fab9891e86@analog.com>
	 <20251023-ad5446-bindings-v2-1-27fab9891e86@analog.com>
	 <20251023-food-say-5e396be087af@spud> <20251024111207.00007427@huawei.com>
	 <20251024-scope-uncle-93183d40ef11@spud>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2025-10-24 at 12:04 +0100, Conor Dooley wrote:
> On Fri, Oct 24, 2025 at 11:12:07AM +0100, Jonathan Cameron wrote:
> > On Thu, 23 Oct 2025 19:24:17 +0100
> > Conor Dooley <conor@kernel.org> wrote:
> >=20
> > > On Thu, Oct 23, 2025 at 02:01:37PM +0300, Nuno S=C3=A1 wrote:
> > > > Add device tree binding documentation for the Analog Devices AD5446
> > > > family of Digital-to-Analog Converters and compatible devices from
> > > > Texas Instruments. There's both SPI and I2C interfaces and feature
> > > > resolutions ranging from 8-bit to 16-bit.
> > > >=20
> > > > The binding covers 29 compatible devices including the AD5446 serie=
s,=C2=A0=20
> > >=20
> > > If they're compatible, how come there's no fallback use? Just to keep
> > > things consistent with how they've always been while probing as spi
> > > child devices?
> > Hi Conor,
> >=20
> > They aren't compatible. The 2nd patch is misleading because it doesn't
> > associate data with the of_device_id.=C2=A0 The driver is getting that =
from
> > matching the compatible property with manufacturer stripped off.
> >=20
> > I've requested Nuno sort that out in v3. It's a bit more than just
> > adding the data as would also involve moving away from using an enum
> > to using pointers to the structures that the enum indexes (currently in
> > an array).
> >=20
> > https://elixir.bootlin.com/linux/v6.17.4/source/drivers/iio/dac/ad5446.=
c#L315
> >=20
>=20
> Right, I think the wording about "compatible" should be removed from the
> commit message here then. Maybe something like "derivative devices"
> would be a better fit?

Will do that for v3

- Nuno S=C3=A1

