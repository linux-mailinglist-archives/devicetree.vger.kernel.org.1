Return-Path: <devicetree+bounces-160820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BAF2A7137A
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 10:20:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CA363BAAE3
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 09:19:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCC1B1AAE08;
	Wed, 26 Mar 2025 09:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jqbjhubh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD271917D9
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 09:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742980799; cv=none; b=k2XyGl9d8xS1GxHgkLJSC2tBGt3ALdiuY95aYQ3eGqv7le9wUMW+S/eagAwLrMPTSbLGq/aPZXkBPLtWMyE2oAGkb/HxeiOaV97cP+c1VJmwpCjvHtvesgU1Sjg4ZF+D2OAND3kURgRFtb50Yxf57XXX5U6bB3KNBkHdl3v9gWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742980799; c=relaxed/simple;
	bh=vv+ysNhuxY3ikjLOktcTQGdujTO/tv4t8ztEeTYdJ4I=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=M4iu+0UNN++0gRv/iEPOzBSg9d2BhSK6uVbwIAwEBAaKmT+3nvnrJ3Apx6fVeTPZ3/goRE1lAgqpfsAQGINlKq5I/4PH16uE9rdxROl70GLqYzj/nldHWHr18/8s2bw0mMDf6fPq74yS9yNHrDsy17mnUws/oW3wImxyr4hi2iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jqbjhubh; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-39143200ddaso3770203f8f.1
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 02:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742980795; x=1743585595; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xQ0qjLT5jo3q/gpm8poDUSRXpTxAB+PQfhlD12KVxh4=;
        b=JqbjhubhfeEfIMNzE2UY81wFJ4/6cyejFr+EjI0Lm1FuPPwpd9AEv15RSMf09NbrcD
         OSG26KV0C7eMU3CDWiEsdm4asvFvLKNNRxnCSENqsOaLfCP0O+sPai2b7KWwwMJFY6Wv
         ekk2BGni5kNRLNPtcT6i+Hu3Hh5f6fOhmqYIXKvGR/ROCOemuQ9raoKg08JrefYFd5zi
         DIb8XMhd5Jlxmw8CMw5ybCqqIOl+U10u4w3Fl3TEN45+r/IBO4+fB138SLtM6nwHlcLJ
         qKZkYOLCgE7GQlz4m9UUE9oeoigmThHZbhDW4fDg1/FfvPD4RYPuGzkn0jC8mI1w/M3P
         /vPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742980795; x=1743585595;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xQ0qjLT5jo3q/gpm8poDUSRXpTxAB+PQfhlD12KVxh4=;
        b=rUnSL3/2z0paxtgEWctY6y29AToYSHdizC6s6tkp0akIn+C/w4qs0hiCVh+1YweSld
         BYM4hbL1Xlw8ZKBOa6Vsq1PKZSqJmK9iG5xPTcAHZ5BLI6vuIovbT1j735qs2BM/qsmB
         Pfu0RAxwZG98wVYomYE+R9mTA8gilKN7omfCF713aTD/onWzhm8P29JcHJZL5eJVJN1o
         XDREuU3Q+12xse2WMNbyGmWDHtVysvBjh0CLZTQA7+F6ACgeAKk0vTOtWrF7+B2ZVFk0
         6w7TtYzNOx9sFz2/GXgQZy/JdAfz4BAz/C7Qt3mODzEQVog24dIVEWVbQnjmRG5QlVH6
         x0TQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjZvv/yfWkFRxl3AhXHhqm4wLaP90pWrMBGEDtH534z7QO/wmSzFHYiMK+9GUBUQgdmX6bvRG6Pg7N@vger.kernel.org
X-Gm-Message-State: AOJu0YwQ0HdgCgNeHsG6IZw/ya081aksWBY7eCGrZMGh40ULP+1104Ph
	mGaOFeqell1N79ug0peSg/svWzww419g0/Erw3w39evdxMNhSsRefPRHqbEyNJk=
X-Gm-Gg: ASbGncsy9xrJrE3KyGr5vH6Y7ZyjhR3TQl8FrmYM7edlu7DNL9i12scYXGlWcZxHLvO
	2CUIqE5W9EV2j5PWSWOZY2HYn2CTtSzBPtNJPTDVcDvfeBlIaI4R2RAp0+beSPcmrqaaR+n1Spz
	x2DnWqAQyTRzXL3s3OQyJykLBRsTzpuepngtTZTiH9j1wK1x4UYlZOiOK/1IKZ8t6S/O0UxsjkW
	YQ73jALsixioRCDsOqqUTbvgNJE0xUE42rO0beHB2PJCGFAmS8VXY1ElCMcVfdEo+yFsWi/sIH0
	qtI9Fa6PfGlgeosUQ/6nLRjWZUv1JqMY33Exv99+lrajKUnGIg==
X-Google-Smtp-Source: AGHT+IHdYeX3HXK3HliuVZenB8pY2eBivucP0XkMIaG7LHTPqNsbiA+5ps8ir+J/tmMzC0VVoMgrVA==
X-Received: by 2002:a05:6000:4027:b0:397:8ef9:9963 with SMTP id ffacd0b85a97d-3997f93d54dmr19401353f8f.55.1742980795153;
        Wed, 26 Mar 2025 02:19:55 -0700 (PDT)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d440ed5e0sm224956845e9.37.2025.03.26.02.19.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 02:19:54 -0700 (PDT)
Message-ID: <8c167b83a469d24373486af5936b466d44319409.camel@linaro.org>
Subject: Re: [PATCH 03/34] firmware: exynos-acpm: export
 devm_acpm_get_by_phandle()
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, Rob
 Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Sylwester
 Nawrocki	 <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Alim Akhtar	 <alim.akhtar@samsung.com>, Michael Turquette
 <mturquette@baylibre.com>,  Stephen Boyd <sboyd@kernel.org>, Russell King
 <linux@armlinux.org.uk>, Catalin Marinas	 <catalin.marinas@arm.com>, Will
 Deacon <will@kernel.org>, Alexandre Belloni	 <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus
	 <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rtc@vger.kernel.org
Date: Wed, 26 Mar 2025 09:19:53 +0000
In-Reply-To: <f1e24507-7cf3-4e0d-8989-05ef3aaa2708@kernel.org>
References: <20250323-s2mpg10-v1-0-d08943702707@linaro.org>
	 <20250323-s2mpg10-v1-3-d08943702707@linaro.org>
	 <f1e24507-7cf3-4e0d-8989-05ef3aaa2708@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.53.2-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2025-03-26 at 08:03 +0100, Krzysztof Kozlowski wrote:
> On 23/03/2025 23:39, Andr=C3=A9 Draszik wrote:
> > The upcoming Samsung S2MPG10 PMIC driver will need this symbol to
> > communicate with the IC.
> >=20
> > Export it.
> >=20
> > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> > ---
> > =C2=A0drivers/firmware/samsung/exynos-acpm.c | 1 +
> > =C2=A01 file changed, 1 insertion(+)
> >=20
> > diff --git a/drivers/firmware/samsung/exynos-acpm.c b/drivers/firmware/=
samsung/exynos-acpm.c
> > index a85b2dbdd9f0d7b1f327f54a0a283e4f32587a98..7525bee4c6715edb964fc77=
0ac9d8b3dd2be2172 100644
> > --- a/drivers/firmware/samsung/exynos-acpm.c
> > +++ b/drivers/firmware/samsung/exynos-acpm.c
> > @@ -741,6 +741,7 @@ const struct acpm_handle *devm_acpm_get_by_phandle(=
struct device *dev,
> > =C2=A0
> > =C2=A0	return handle;
> > =C2=A0}
> > +EXPORT_SYMBOL_GPL(devm_acpm_get_by_phandle);
>=20
> If binding changes to parent-child relationship, this might not be needed=
.

Indeed, I've instead added devm_acpm_get_by_node(), and clients are meant t=
o
pass the parent node pointer into it.

Cheers,
Andre'


