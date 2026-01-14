Return-Path: <devicetree+bounces-255066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C206CD1F5BF
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:17:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 01C20305CA3C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 14:15:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B1872D837C;
	Wed, 14 Jan 2026 14:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wv8GtboC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3192D6624
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 14:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768400108; cv=none; b=ugw4ZlScFl2wM7t0hpLoPUvntyns0fZ4H3PSMQi6vwlYpMPyA7uZ2gLIijlvIVEwQMEJ0Skunba5aNXCC8BYunuGCxI6UhTD01Mp9yk6hp3phb/8updgTr0PlGigth7svTCCs5XoIMmHfQKVFE0icgEC7MHCP7EpjBXg+X4rp7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768400108; c=relaxed/simple;
	bh=NKlOFQD6uXj0VWLLS8qWtWdchxZnwtrtwtRRdnryD+E=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=dsyzzSH6RepnG0XW1qSaloVEd8oqUBIoZCF7FFiZiLY/BhS9tkj+cWo6s/5jT7Dqk0+rzEfvvADYxj3Bx0nqKeWKbturpEQrnzTf1Zz+JXbiE1+HXQYXOxwc37CyDx+BDxdvfslHIvbFxVAj5uSEVJ/NxkQusHVA0lW0F4HeId4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wv8GtboC; arc=none smtp.client-ip=209.85.210.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f193.google.com with SMTP id d2e1a72fcca58-7f89d0b37f0so511452b3a.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 06:15:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768400106; x=1769004906; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NKlOFQD6uXj0VWLLS8qWtWdchxZnwtrtwtRRdnryD+E=;
        b=wv8GtboCLQVEKX3PxvU0xn7QrVV8gNToyphPCAMqAL7T7WFhU8eTGxMoH+NDoFP8no
         akGDuzs0wBcK+eJsp7Wk9d9l1M3gTdI2UNqHMQWablpOzka3O9zIV0SAiwsSzEMTkOg+
         oYVE4Q/aaiFymr4zjme/8z8hkfklGGkVzVN6RElslZp7LjL3bqHmiLiedVDuUdS2/qZt
         rTt1IlsBqcFZUHiVXgZkam0cHwnxa+A6itw71WYhgwXEErqkSBjtGLyew4JOzm3AfYn3
         5gKhJwoyVlmZHsj+I4XWEuTU2CJXTr3A/tVO6SBs4cI3RX/RoZNjB+LPf19O+hvN5nO2
         4AoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768400106; x=1769004906;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NKlOFQD6uXj0VWLLS8qWtWdchxZnwtrtwtRRdnryD+E=;
        b=UgWvk04wghYvApE++mE/W7BWfEv2wRs5V4TXGLv6QLR+anIdAZUmYeLzB6j4JnAgZD
         C1zb0tYr8wzaE6NbiydgIcZuhR7gGSbkxuG9FWZtGq7a2NLCnEfinsEIdAdXAh5gLBbO
         aTuSXEG3eqSs7KqiN2UBNFiHmrNSC9C4if9KdBqrVjiYm77zG8x+Y9XpiIjI0gzqiuLU
         CsaexhwUx4+3f51wcOqyLUlgyS7i5B2W8Nun0b9VgfCoN9bDRL7d2Zw9qdaskVJZTCT0
         rs35dOUUa1JbzPhnNulFpYS9A/FQT5RzjEuvLv3cTQfYMGDrSftzlgp5O5sWGVtzY8eR
         mYKA==
X-Forwarded-Encrypted: i=1; AJvYcCWMwdSYwrmIw5lNyLogBA2UOnP0ePbhb9a+VbdfVhKfrpdjAgNaMWHB7JEb31n/4OW+1x6o13UhQyoy@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3B0QtZmaW7CN5yqDLDZBASsXz1YHZbvHGjg14b3WFi1m9oVCl
	kfMKsmPHtqiSIYJj2EyNQO/RdO3vSz/ffDO2ozn9kgifkyJ04mzZb3/MWfimvgzG2Qc=
X-Gm-Gg: AY/fxX4ygfTlp8VrYN2WdN0qr2q1CjbVrda0BQfZgn8U2vJp13fas9OIueWR082Oc3z
	VI5mwmkop9CVMMDZDXOfUiJ38M2hXVgoMTGhS1LThJMQg0e3Z60pqb+2/oVI8XAf7LTmU4dHjLV
	KfLO08auCvFCnvF5Oi1zQxcmcng36m5q+LIMwFGp02VXySS56YJdkRhRscwc2j0T61ExqqTJCf+
	uX0k5KjbldbTShwK71QtaTS+xRdMFDcSf1Ir8I6/p+AY0K8xsVRowzUhzmF+14AnfHS4liZEHmK
	pJkGkQsPmccDT5i5Y6yUlh6G6/c1QDccIMagCYE8+AcyK97cCwmWLI2oveltvBcf/D4L/XYntGD
	FGD6TJUsakmMshpZc8eCkzPu9JV48NuXUsiFUxuln4NL8fUOEh/VGJ3mzqNiSH6XyXqUYSNIxVB
	OBV3m5DGBzLMFsJI7W
X-Received: by 2002:a05:6a20:430e:b0:366:57e1:3919 with SMTP id adf61e73a8af0-38bed3b0a3emr3088839637.26.1768400105900;
        Wed, 14 Jan 2026 06:15:05 -0800 (PST)
Received: from draszik.lan ([212.129.75.26])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52f88casm23418638b3a.34.2026.01.14.06.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 06:15:05 -0800 (PST)
Message-ID: <08a972c7a0fd17260a91f09ce0201167cb6ed7fd.camel@linaro.org>
Subject: Re: [PATCH v6 00/20] Samsung S2MPG10 regulator and S2MPG11 PMIC
 drivers
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Mark Brown <broonie@kernel.org>, Lee Jones <lee@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,  Bartosz Golaszewski	 <brgl@bgdev.pl>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij	
 <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, Peter Griffin	
 <peter.griffin@linaro.org>, Will McVicker <willmcvicker@google.com>, Juan
 Yescas <jyescas@google.com>, kernel-team@android.com,
 linux-kernel@vger.kernel.org, 	linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-gpio@vger.kernel.org, Bartosz
 Golaszewski	 <bartosz.golaszewski@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 14:15:34 +0000
In-Reply-To: <4502ece1dc8e949e23f971a93dc06dab2d4f0bf7.camel@linaro.org>
References: <20260105-s2mpg1x-regulators-v6-0-80f4b6d1bf9d@linaro.org>
		 <20260113112244.GE1902656@google.com>
		 <6ace23c4-d858-4bdf-9987-104e706190cd@sirena.org.uk>
	 <4502ece1dc8e949e23f971a93dc06dab2d4f0bf7.camel@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2026-01-13 at 17:28 +0000, Andr=C3=A9 Draszik wrote:
> Hi Mark, Lee,
>=20
> On Tue, 2026-01-13 at 16:20 +0000, Mark Brown wrote:
> > On Tue, Jan 13, 2026 at 11:22:44AM +0000, Lee Jones wrote:
> >=20
> > > MFD pieces look okay to me.
> >=20
> > > Once Mark provides his AB, I can merge the set.
> >=20
> > Given that the bulk of the series is regulator changes I'd been
> > expecting to take it?
>=20
> Just FYI:
> 1) I just noticed I have to rebase/resend this mainly due to
> patch context of the binding updates.

I take this back, I got mixed up with a different branch. This series
doesn't need rebasing and is good to go.

A.

>=20
> 2) this series depends on another MFD series of mine
> https://lore.kernel.org/all/20260113-s5m-alarm-v3-0-855a19db1277@linaro.o=
rg/
> (again only due to patch context) which is still pending.
>=20
> I was under the (perhaps incorrect) impression that changes that touch
> MFD always go via the MFD tree. I guess that's not the case. I'll update
> the relevant phrasing in the cover letter with whatever you two decide :-=
)
>=20
>=20
> Cheers,
> Andre'

