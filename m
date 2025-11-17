Return-Path: <devicetree+bounces-239195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E103BC62919
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 07:46:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1BCE4362947
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 06:44:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0539C315D5E;
	Mon, 17 Nov 2025 06:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZqY0bwSx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6BA315D3E
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 06:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763361864; cv=none; b=mVPz7azO2ytD0R3awO+jZMkS1EOmst3LoQtrDpEdKHBJCxFfwU8myRrvMhfX/+xpWiHYwHTmSro4UgAcx+TVx+OE4L/VyMV6MF524jUGDeMl9Afv1X65XCaJMhy9aDBmHN/gj95qdRcTIYMD49utc96tKf129/20BaBV7+1FpCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763361864; c=relaxed/simple;
	bh=BSHRaWHAGUB8v+6+TObTc9Igi8FYpiAVAk4Ip+k2cgc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=QICoB6qEc6xZU9gwz+67wjqgV7/VdDtDC8PTl7hMHekmf0gZ5d3VZ4+1QTCsIIkiyJndhgYMxVcQwOo1vNYBJb2sBl/GBRnC8bB5oBtaS1405uNTku9sZHme9IJeKhkGJ6BTgF88ppMWd+a350NnrSSd72qU9Ye61PoJ6Hrb6q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZqY0bwSx; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42b38693c4dso1678456f8f.3
        for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 22:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763361861; x=1763966661; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FrySMrt3UwGtQkvIQfdOgxfySxJPiiEl8hprUUf1lDg=;
        b=ZqY0bwSxWfBdjipEyOpFspa27RkvvOb2c/u2C5lPF8Sr1MioW4eLq3+0Jt9jaHowdm
         c9x6uqwaQqVNFEX8bis6YuAsTbsiXBjWl2/CF1T1n3WaOYDAcllVHztoUBtp9AfY8AWU
         Ltd5AMq9+A6xQV9KScMK/1IxgyTsaxZ1UJmKX4QIlIuybA/flZKnjb11bd2RzDi8zutg
         5lS2N0f0GavkJbkd6MNn/9QgGHSX/YRZIKxtRI3pirT/6e5bUp+1P510+tY+e1hDiR9U
         JFUR+pnXGjIbhkHLztp6RKdnaxvve/OjgxeMhSJv0iS7lru3Vbfu2JCXz4DRBMD4Y6XQ
         MvOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763361861; x=1763966661;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FrySMrt3UwGtQkvIQfdOgxfySxJPiiEl8hprUUf1lDg=;
        b=MiMtdpBT5+u73fZxBtHVqVCkzDzONfzf3vhJTdNNtLGDyNwh8jyPvuOK7i9KarFDbP
         7bVChLQPAick4fNhNkxpx5R24veRsI8pvXXRXjSMFLb5HoiW0S47VPd/1Pg05X/JLMm+
         whKlMWyTXZ9RjWQZ+mz1DTQSwaxSZfghVkUYZFhG3KizMcbKcEYcQz5UTjHkF0zQxbvu
         ctQ8JbzyyQ99XaxSDUt0JDdtJlctanEEL3C4KHL6ku2ww0djLuvxp5H38Ztk2MnPkicG
         qdFQ45/RwawnqFQG15bK6dPn9lApdlLQA26qrEl0HiAPmMaCl1OkqyzRSGwqxuDuZO42
         8ycg==
X-Forwarded-Encrypted: i=1; AJvYcCXRXJlKQOrOic/3g1/rT0cgeqWkUg28nd/jtDNXKH7zg60+SITCxyXY44kst4pTxHNkDyialMdSCPLC@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/eQw/051JPNL0ws4x0V1Dp3E7Is77gdaE6f0BQ71+u2nNLAQW
	88ktXuwAtHYRfoHSnOChu9UNGsXd0QLpfeyQ/oC31C7keqv3Qqo7VBV67CCfdr1ybWM=
X-Gm-Gg: ASbGncuATw66YpIf5JUtGpFe2L8TA4/5DIoOz0VqUzs5cTe7r8T8SMMpaSr0JxcXHjZ
	gCr7PbRBFcLy0mJSAgvOFGDQO1Nevm/kaU654vUvIq2i8QCVPvVtpfLf3eOhn5DRWIdlX3qlDmn
	LAY91WQoEQFNSm4Oca3Fp9gXtC0qijMYrM+BtNEWrL1rumLmdYFMNEpnaAPSnwhcDtfl3oEV1jC
	Z3MHLrqKFGA6NHXgj+Zfo/wff55xbUa32tnvA2+GVoDzCGQhRxqrM/k6GvYeE1Lk/mR1wpdPO40
	6yof0NjB8wA6/JJdRt2Kiasrgww3eUeM8dmcp5L9xNw3TnKGBLpeRShmSa1f7tn2GdJH0U6IkUO
	1xd1Ly0MPmAIxFU4L2Cd7FHoOW0Ubs13jx/uizEgrsmXAbdvb9xs7zIPDEBL00SD0lLhPJ2dTw4
	lFzpCnddjqY9uqWEpqF7J+kySMf4yKiSc51RJa7JE=
X-Google-Smtp-Source: AGHT+IHGf7t7PNqLY6EKlBGDR801fpfVT+O04gNE2DbvAjsFlpnI7P8GiwkCXEw4Ef7oTb4QHY9CgQ==
X-Received: by 2002:a05:6000:22c1:b0:42b:3ab7:b8a4 with SMTP id ffacd0b85a97d-42b5938b4b1mr10192510f8f.33.1763361861412;
        Sun, 16 Nov 2025 22:44:21 -0800 (PST)
Received: from draszik.lan ([212.129.83.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f203afsm24850910f8f.39.2025.11.16.22.44.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Nov 2025 22:44:20 -0800 (PST)
Message-ID: <efb6d4a68d70e0f24b981aa0dff69e3186827f75.camel@linaro.org>
Subject: Re: [PATCH v3 09/20] mfd: sec: Add support for S2MPG11 PMIC via ACPM
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Mark Brown <broonie@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,  Liam Girdwood
 <lgirdwood@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz
 Golaszewski	 <brgl@bgdev.pl>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Peter Griffin	 <peter.griffin@linaro.org>, Will McVicker
 <willmcvicker@google.com>, 	kernel-team@android.com,
 linux-kernel@vger.kernel.org, 	linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-gpio@vger.kernel.org
Date: Mon, 17 Nov 2025 06:44:18 +0000
In-Reply-To: <aRn_-o-vie_QoDXD@sirena.co.uk>
References: <20251103-s2mpg1x-regulators-v3-0-b8b96b79e058@linaro.org>
	 <20251103-s2mpg1x-regulators-v3-9-b8b96b79e058@linaro.org>
	 <20251113162534.GO1949330@google.com>
	 <45ce203c03ec34631a0170baa7e4cf26c98b9cd3.camel@linaro.org>
	 <db7e95dd-2361-4579-b52c-b9556da4633a@sirena.org.uk>
	 <f1e9a9e35f7c16d8db0e39128eb184f3f42b7d02.camel@linaro.org>
	 <aRklfJtOJ_Cy7tEE@sirena.co.uk>
	 <845ca29cf8af53bd3093d1dcbea64cc3e04432f2.camel@linaro.org>
	 <aRn_-o-vie_QoDXD@sirena.co.uk>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Mark,

On Sun, 2025-11-16 at 16:46 +0000, Mark Brown wrote:
> On Sun, Nov 16, 2025 at 12:49:55PM +0000, Andr=C3=A9 Draszik wrote:
>=20
> > The typical use of the S2MPG10 PMIC is in combination with an S2MPG11
> > PMIC in a main/sub configuration. Bucks of one are usually used as
> > supplies for LDOs of either itself or of the other: several S2MPG10
> > LDOs are consumers of various S2MPG10 bucks & S2MPG11 bucks, and
> > several S2MPG11 LDOs are supplied by various S2MPG10 bucks & S2MPG11
> > bucks.
>=20
> If you're doing something to resolve such rats nesting of PMICs you
> should do something that works as standard rather than just bodging this
> one driver in a way that treats this specific device as a special
> snowflake.=C2=A0 That might reasonably mean going and refactoring existin=
g
> drivers to look like this one,

I have no insight into which other drivers / setups might have a similar
problem.

>  it is a fairly obvious approach.=C2=A0 We
> should really have a uniform approach that works well rather than random
> variation between devices though.
>=20
> We could also do this at the regulator level by arranging for the
> devices we make for the regulators to have deferrable drivers, that'd
> be a core only change.

That should work, yes, I'll investigate a little.

Thanks
A.

