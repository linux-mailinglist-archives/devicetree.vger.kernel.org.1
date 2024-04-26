Return-Path: <devicetree+bounces-63105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E1F8B3C12
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 17:51:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 71ACFB23706
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 15:50:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24CB9149E07;
	Fri, 26 Apr 2024 15:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jPe7G5oN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 819C5149C7B
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 15:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714146653; cv=none; b=LNkbknRizQHPfyjycIpM8CSMexx3FHR6tI5Pio0tH7WDQm/t1ztVy1vhH3ShJNAENVZ0TLm7XFfkaO5PWCzP+U0/xpaRv86uvkZdc57RPadey7mYBCqR8qhI8OGu46B8AWZit1g1o1y/+91pfkkOuqSJOfiry6S2hrOFhugVl08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714146653; c=relaxed/simple;
	bh=HEZxzTUlvfAvWH362AImClgysiczjyTH9oIQoyBYXfQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WccnOUifhtnhfZrGT6n2iq4Ka3rML9/2EdYDLZPYLJ4X0iQfMzBx9U36ozQ16zHxnmEWRU9YLj4d7504YbaZwRXjsYaZcJ7k/lNR44KoaCiWkBA1b2NPc3UzLrBrlO669FdHEcEa7uobP8mbn68Sy2FGYA/lfmrpvHrFdwP4JYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jPe7G5oN; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-343c891bca5so1789471f8f.2
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 08:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714146650; x=1714751450; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dwBRvxZJTvr5sS2FaOQcws8h2pvQvln9cuhoPBlSIXg=;
        b=jPe7G5oNgtujreYPSMhFnTqB8f5OYFjxLrs8a9bRSUBoC7yYFKaMLCN40nLm5AEzNK
         l+t0wEYDfzJyUZLTDq7PaMMsyJWgk/N1OlTqV0xOlJag24t9pOkXe4YZo5WWVEGz/W+p
         nes6dYgejMe7kw1UzAVQerseMdZQwHzD78dQ6nkkbF47MEJHaFuoyeATA/6FTmUciWM2
         W+jhQN64aLsM1gJRr2n9kMarFJexy/WsDm479FkYG2F0OM9k4Q9vLyyCESttf0r0kb3P
         1DjzOChzvKMXJtxC00Z9buRnCJ48MA/S3qOqe8lirBtizVbjX18T82r6Hp7Va0gHnhR1
         6fwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714146650; x=1714751450;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dwBRvxZJTvr5sS2FaOQcws8h2pvQvln9cuhoPBlSIXg=;
        b=XgEwOnm/aRMhgR9alL2kdXrBIylEwojWEkGGC7KKGsQEawkzhZzc+k0GdFaixSQ9iR
         shgWpViBfNfKyDtHbCZxQL7507ph88rHrorlKDXzXVZa4BqFd9avHCdlsiJKJeKzhPaF
         xQtfD0WMCW2kg655SEfwB/h0qgbmdTyPhUp+uaKxzR9Y+nEdKqGcs1zaUSr/FOR+Yno0
         ju4HN3WsVOZEA2JnVxQoI2meRgCiGxldRXlhFLoFmGbkTMkQRNGmJNOYca0/NbAPL/c1
         0vI2rgQBihfCWWAZpFYcHffAB2Wz7r6fpgPpcs4rdJyX5niEE9znT37GESJiCC7qW738
         WFrA==
X-Gm-Message-State: AOJu0YzofACw5neEfVg9k8XoSCfLBl3Fy9JG303Hl8vJeZKYLjxWTou4
	pmy+A9F4T7J8cjkX+GPgy62SgfMSdyj7ph05rTTdV4jbv3+0T8YV
X-Google-Smtp-Source: AGHT+IFSkQKVS4L9bRnLMqiPlSV4hCkr22LUrY8PWUZrtmGGbHNA7rl6TvT9/JKufs9BvNl9wJkCgQ==
X-Received: by 2002:a05:6000:719:b0:34a:48a0:fa70 with SMTP id bs25-20020a056000071900b0034a48a0fa70mr3350287wrb.40.1714146649673;
        Fri, 26 Apr 2024 08:50:49 -0700 (PDT)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id q30-20020adfb19e000000b0034a9addd4e6sm17704489wra.81.2024.04.26.08.50.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 08:50:49 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@lists.linux.dev, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, tglx@linutronix.de,
 Chris Morgan <macromorgan@hotmail.com>,
 Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH V2 2/2] arm64: dts: allwinner: h616: Add NMI device node
Date: Fri, 26 Apr 2024 17:50:48 +0200
Message-ID: <3217281.5fSG56mABF@jernej-laptop>
In-Reply-To: <20240418181615.1370179-3-macroalpha82@gmail.com>
References:
 <20240418181615.1370179-1-macroalpha82@gmail.com>
 <20240418181615.1370179-3-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne =C4=8Detrtek, 18. april 2024 ob 20:16:15 GMT +2 je Chris Morgan napisal=
(a):
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add device node for the H616 Non Maskable Interrupt (NMI) controller.
> This controller is present on all H616 boards and derivatives such as
> the T507 and H700. Note that on the H616 no NMI pad is exposed.
>=20
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Applied, thanks!

Best regards,
Jernej

> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/=
boot/dts/allwinner/sun50i-h616.dtsi
> index b2e85e52d1a1..1e066f3057be 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> @@ -775,6 +775,15 @@ r_ccu: clock@7010000 {
>  			#reset-cells =3D <1>;
>  		};
> =20
> +		nmi_intc: interrupt-controller@7010320 {
> +			compatible =3D "allwinner,sun50i-h616-nmi",
> +				     "allwinner,sun9i-a80-nmi";
> +			reg =3D <0x07010320 0xc>;
> +			interrupt-controller;
> +			#interrupt-cells =3D <2>;
> +			interrupts =3D <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
> +		};
> +
>  		r_pio: pinctrl@7022000 {
>  			compatible =3D "allwinner,sun50i-h616-r-pinctrl";
>  			reg =3D <0x07022000 0x400>;
>=20





