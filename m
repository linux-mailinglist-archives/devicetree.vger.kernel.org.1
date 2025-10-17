Return-Path: <devicetree+bounces-228164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFDDBE9208
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 16:16:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D37DF507BFA
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 14:14:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 214C132C94A;
	Fri, 17 Oct 2025 14:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Su/2IPOE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE9AD32C94C
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 14:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760710464; cv=none; b=MLWKXfyTKvwL6mx/l4ph/+psJ6l0EaknJ8HOBG99rbxG4SpMOoPdwFYNnYGtB2eUYfgHgw4S/tk2GK7Vs2qgz1nhnK5QpaRmcWNt/BqpWRZco1R5rRIke5YIcS51bHtG5IXhvuM1IqC2WXiBrJvk89wO79K09aZ7EhGvvKTyRro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760710464; c=relaxed/simple;
	bh=959p6xV6CKeeWXiRtPPtRMLL/TFd0b3Xs25RXyKYag0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=R+eK/UFaEauYH2ydphyEQeYzAxdHWVD/zCL+GK8vned5f0hehsBruPFp787nnaHKI2PSXJhgDUCVgabioZ96Oeevag7OMdGsyxFrTqkaO0zw6uVG3NuQI+o8xjyHvgfizuaLGSCODjqAmTgqgr3XnCR2FjLeeryUAcZKBaxpE2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Su/2IPOE; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4712c6d9495so774075e9.2
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 07:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760710460; x=1761315260; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FTLnHbprIsxNg0GlvOz1rxX1RAjfsFXOqHQiYRq25LI=;
        b=Su/2IPOElTtM+RsiQFMRs14hcKxioX7VfmNMd9Wuywrv8kjPCSJROetHVRUc9PhL2I
         ZjpamG/lE1Ugc0wWzT9ea9ryyVtx17N93Es7t2N2ZupCvSUQQ4BX5UNujWZck9SJoR7q
         W0QntK1fjnEpyAYA8Q34ed3VaoKiA8s4bzr5BES39aOL+4KzAcjAK2GMPPmbdKlJBdee
         grP8XDSLyGfaItUt6ripBXvyaBjV4bLCiV7qeau9gC7AfjJ8zVxxQy6cyQy6OFLeQUFV
         m8fuHnlvJgVRx/g2mdKfuCLgmlOr3OR5ADf1tOZR1OHehThLS7ESA71EksyUqROC8bYa
         buhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760710460; x=1761315260;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FTLnHbprIsxNg0GlvOz1rxX1RAjfsFXOqHQiYRq25LI=;
        b=Ucox+b0w9dFPHiRZyCoYVObCFWAW6THbFAJocaGoJ/b2AmwBJP2xbsqcQuR5Y9NY3D
         KAVXYSgl1SDMqzdNHdl8X31orgGvlAfC0SC5N5THQYbdqAMsVHfqRl4NHcZCmfrERHRe
         GtgC5YacS5lExf3/OjqRM/ZlJm4PQlCvSxvYfDqG6ggYTxqWvb5tAyC4FJwUJlnWHpOA
         MJgxJRkPZIp6fYcMavqJA/19K8x6L6CleICt9CGx0cXPLNakeiaCxwt1fO9D6KxtoFon
         FTkV5eHJ54vq82fo7caHCnXPgx6AkfWvXWdpKFyuXp+esX6+SbYCo4C1ktNGH6tOHZy7
         778A==
X-Forwarded-Encrypted: i=1; AJvYcCW4sGmG25uw2gZGEkqtdeDactWzLV36t9KPG16jiMnjdQpkGM3y21qMdnhk3VRgW52m6wYNzfL4c4fu@vger.kernel.org
X-Gm-Message-State: AOJu0Yyam2UkC/nt2peoUxcb6QgL/22CCXBgUlzWKaAsuuGg4XZSKrna
	/XN6JIIFtb9Q5mrwj/uKkFmfut4sEfmQJDx6i04SQBRwoWNju49L4b5/
X-Gm-Gg: ASbGncvPR3QNurpokmcWyq4WPX0XNZew4LGVjFiDTfF/6TZccKlC/FXwighMxOVNn5v
	Vj7LaNstuuHPdmK6+nTVcyjFpMARoB0nxKMlxs9SpXaJog8cBu98yWVN3VdZQLdcVrVyOIG/zWV
	HkTpa4Ez41FV4V9WlkHc9thjYjErzk9hB37oIDcpHhVb/kYONawCiu7MYRAy3wkJJ7NjwvB74iS
	gCwHfhMlxfIVGvKOOsQsMMxvFBX0lsKp+NrkGmZGi4KYmxp6nmyNppMHNGX+CuI1hinwSwKuFJx
	Fxgc+IajurKYknbjRFZ61BRtfz5p4ra5+Eu6IcKjihV5PpcYIYNS5jTeOEdJurcKfnnkXm275sC
	Sx3J+HjCC/hOMpwlTkVcu5f404UB0f7coW28oSadSF8vjE6Gcc71Q2Orr/MT22+fqAkGx2vCHS7
	ldTdp6dLWDKAvslUY3HhI=
X-Google-Smtp-Source: AGHT+IF2EM7mT5D52gnp+VTbfiNcarttRakEXF5/pBTZwv3B+9i+o/ZbwXxFScc6ahCV+wEMQcYNyg==
X-Received: by 2002:a05:600c:821a:b0:46f:b42e:e3a0 with SMTP id 5b1f17b1804b1-4711791dc89mr26441555e9.41.1760710459832;
        Fri, 17 Oct 2025 07:14:19 -0700 (PDT)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47114423862sm87177925e9.1.2025.10.17.07.14.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 07:14:19 -0700 (PDT)
Message-ID: <014f2380e9261a1449214907a149f11267acdd11.camel@gmail.com>
Subject: Re: [PATCH v5 4/7] iio: adc: ad4030: Use BIT macro to improve code
 readability
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
 	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Cc: jic23@kernel.org, michael.hennerich@analog.com, nuno.sa@analog.com, 
	eblanc@baylibre.com, dlechner@baylibre.com, andy@kernel.org,
 robh@kernel.org, 	krzk+dt@kernel.org, conor+dt@kernel.org, corbet@lwn.net, 
	marcelo.schmitt1@gmail.com, Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 17 Oct 2025 15:14:52 +0100
In-Reply-To: <ec78fd7e4348e2cbc99ae08004c48b7ea238ecf7.1760479760.git.marcelo.schmitt@analog.com>
References: <cover.1760479760.git.marcelo.schmitt@analog.com>
	 <ec78fd7e4348e2cbc99ae08004c48b7ea238ecf7.1760479760.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2025-10-14 at 19:21 -0300, Marcelo Schmitt wrote:
> Use BIT macro to make the list of average modes more readable.
>=20
> Suggested-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> Link:
> https://lore.kernel.org/linux-iio/CAHp75Vfu-C3Hd0ZXTj4rxEgRe_O84cfo6jiRCP=
FxZJnYrvROWQ@mail.gmail.com/
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---

I don't find the link particular useful in here. Seems redundant with the
Suggested-by tag. Anyways:

Reviewed-by: Nuno S=C3=A1 <nuno.sa@analog.com>

> =C2=A0drivers/iio/adc/ad4030.c | 8 +++++---
> =C2=A01 file changed, 5 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/iio/adc/ad4030.c b/drivers/iio/adc/ad4030.c
> index 4393160c7c77..b2847fd90271 100644
> --- a/drivers/iio/adc/ad4030.c
> +++ b/drivers/iio/adc/ad4030.c
> @@ -233,9 +233,11 @@ struct ad4030_state {
> =C2=A0}
> =C2=A0
> =C2=A0static const int ad4030_average_modes[] =3D {
> -	1, 2, 4, 8, 16, 32, 64, 128,
> -	256, 512, 1024, 2048, 4096, 8192, 16384, 32768,
> -	65536,
> +	BIT(0),					/* No
> averaging/oversampling */
> +	BIT(1), BIT(2), BIT(3), BIT(4),		/* 2 to 16 */
> +	BIT(5), BIT(6), BIT(7), BIT(8),		/* 32 to 256 */
> +	BIT(9), BIT(10), BIT(11), BIT(12),	/* 512 to 4096 */
> +	BIT(13), BIT(14), BIT(15), BIT(16),	/* 8192 to 65536 */
> =C2=A0};
> =C2=A0
> =C2=A0static int ad4030_enter_config_mode(struct ad4030_state *st)

