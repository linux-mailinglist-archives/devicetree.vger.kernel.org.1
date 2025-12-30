Return-Path: <devicetree+bounces-250628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE3CCEA810
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:52:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D1DC3011FB7
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:52:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D1E51E8329;
	Tue, 30 Dec 2025 18:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jQpx4bxJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D2117AE11
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767120736; cv=none; b=qR5h6WpsbNH9HCbvQdq+Q5rCoAppD3pCSD8q3Yyp2T4iqc0pVwf2OEHSEWSzlr03D2Z7/cjgRnIzanifH0Bryj/++4dNb1G8TLXMdfBH/AhgcR3cw0wqiHX1tpCJHQORHTo/wzOvjLbIQPqlo1mfJkDW3+a442jQwmDByqc2Bpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767120736; c=relaxed/simple;
	bh=mKXPtbc05cOGV1jo7EsldQLGLi8dz4bhVniBKjogV+w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mYYwuBL6f3DMdQqlsF0NCZ66aZBAEhkePza/xwVQICWZEivmKJe9m3KHLoS47lggGDKC9u+jawZij4w7es2/dGNA8DEIz2JwRvysTYlpyxPL9fXSB2S9Nr06/D1f3rXvOmq5hZGU31KJ2khdCHcc10Eo22GWEVNcwm0q4LSTnrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jQpx4bxJ; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-37ba5af5951so93333711fa.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 10:52:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767120733; x=1767725533; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WCfXUzqG3cVftHj53I17dFR7YjIPCtvXBTRyCBkqeHM=;
        b=jQpx4bxJdt0vcEF7+IxqRyYv58W0tgDJEgPiiOGU410P26yi7hsyAFp87e7VPi1+dE
         Tpjf/kAKCq5bc/EbPzJ3QRfj4q3oA07XEt/Ii3uDZecT/7+bxMTV6/6jMHAf/kzMmpPa
         Da3EUPR4PrNGjPFANJUOLd9NvRpib2fb2qTVG0kMRuDKgFC8Or+0CfQtQbzcFnMuhz96
         IMnFPedlAGoZMD1jpQn1TygM6rK95fLCIkAYwsx9ByfG/pbL5zO68EHYr7cKH4vabfn8
         dCydzjyvDrBnyFSLQ/WEZgibv7Zof6/caSXJ8SmTCw4VBvsHzTCOitXvUXxLFPpLVvkh
         pNMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767120733; x=1767725533;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WCfXUzqG3cVftHj53I17dFR7YjIPCtvXBTRyCBkqeHM=;
        b=gxqzIDQ6YUNKS9MLz1wokEAYItGAwvOQ4WS4C5C5TsLhAjwG0ivt+pvTNVe0ngjwpY
         KVHLJfPDrmJdLqaV1V+DSQqLwdJPPSq2NlHgR4cBhpFUfmYFbv+lMXmnWJYm6Yghq08Z
         mpQI09takg0encH2sW+nS/q0COJm2YKuoF2KVU0Du6WiT/xjUKIsrDlh7m34VEthUuXH
         jnjcvWEFHLxIUCqkxj7G/8SzEv3YxIfQCdVyOsxUHGNQOrTD9Av4KUIfHls48fgXYHO9
         yBh0y3dk9cUW0aSLitffEQgcZ9XphhGORUucNSq2/59HdDv1Bl6xVDJ2qs/zln/A5Bu6
         PP6A==
X-Forwarded-Encrypted: i=1; AJvYcCVa7d0cyjyw6HhGLwPvKWzmuZ/oIWxiFeY73Iiqrju4eg6o5nrl8yL2GqzKyJKHxydswLTatI3i6Tv+@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8le0e6samUnGRDgtFEilIspG2Ia3QPIbtb8jrl+AG6XryNfcl
	HqNJao+/vA1BAsGn7n7RRJB3FpmJtUjArmlppRC6wvWEcD1/61KEST0hEA4dGz6IEaBfPVQnkBK
	RkTiCDs/WIoWhNMJjqW5tdESMK9/tkVQ=
X-Gm-Gg: AY/fxX5hBoio5h4IPgvkwyqiZCBED6t7WeCYPiuxwTg3sL3QybManGTZpZc+AQlvIw2
	O61G6zT1nveG9bq292PXAwbH1GsqBkxGnRmOxKMpsm/jmNZEmTJKXqiDtJk53d+UK8BUb3fcVFO
	IkoMmMxfDWZU59QTko0c40PHmZ8gPt22yANI9xFKzanoCVpCDJq0X5e8BSfiRuGG5CWvezUONzp
	ESyP+gxfchii2BLPJnrhk195RRn199rcrGAAxuXcX6oMe68bQdPn/jC6babB1479OcAjEt+R9qJ
	+g0dL4j5DdJ2FXchRIdf+8KojOw=
X-Google-Smtp-Source: AGHT+IFUnSlXZesKC7/z2Gedmk72Vyhz3T3P9a2mLpOhYQo2tRcPsOk9zvHAtYmSF9PmyTomhYgLnFqHRIU4PBG0H44=
X-Received: by 2002:a2e:b8cc:0:b0:37b:aa90:1f5 with SMTP id
 38308e7fff4ca-3812167ec45mr111776001fa.39.1767120732669; Tue, 30 Dec 2025
 10:52:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251230184121.52635-1-marex@nabladev.com> <20251230184121.52635-4-marex@nabladev.com>
In-Reply-To: <20251230184121.52635-4-marex@nabladev.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 30 Dec 2025 15:52:01 -0300
X-Gm-Features: AQt7F2rn2wnlugSDBnS70XdP_2HLYj3sWlBtsvhMqL_ZKxQusvKKkquuYWpTCf0
Message-ID: <CAOMZO5Aa6iDg2u-sJu1yPZX8T2wE=QVzwSbxjZHo1bMwfDW5HQ@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] arm64: dts: imx8mn: Add ifm VHIP4 EvalBoard v1 and v2
To: Marek Vasut <marex@nabladev.com>
Cc: linux-arm-kernel@lists.infradead.org, Fedor Ross <fedor.ross@ifm.com>, 
	Christian Eggers <ceggers@arri.de>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Markus Heidelberg <m.heidelberg@cab.de>, Rob Herring <robh@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 30, 2025 at 3:41=E2=80=AFPM Marek Vasut <marex@nabladev.com> wr=
ote:

> +&gpio4 {
> +       /*
> +        * Hog USB-nRESET high here, since neither U-Boot nor Linux
> +        * has any support for USB Hub GPIO reset so far.

Which USB hub chip is used?

Documentation/devicetree/bindings/usb/microchip,usb2514.yaml describes
a reset-gpios property.

> +       lm75@48 {

Node names should be generic: temperature-sensor@48

