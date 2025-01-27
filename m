Return-Path: <devicetree+bounces-141027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B63FA1D287
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 09:45:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E62CD16675C
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 08:45:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC7471FCCE5;
	Mon, 27 Jan 2025 08:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="pdj5lU+D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C77241FCD00
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 08:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737967508; cv=none; b=EyJyVfZopdZ9H/en+GBRQd9TSEY0gL1fdaLFf7Hvox/O9ZFDTDZ9xiWCUgZFAE4O+yTHEr2QxcnDxCWhY6r03gKoLO7W8p+/zBvycFSibnogEcArsBeYykoiFfx8Gxd/jIFDYVCS9CvwtMr5PEF8WB70TML4+zNnrzrJpoBHXIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737967508; c=relaxed/simple;
	bh=DRgRHg2H9HZndRrP19dAAUkF/GOcikF2Dd4jfd5iTPk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HBX4UwveRGtrgRPlCTg18p8GXm9viYXd//m+cDsToeA1YhBHocU++Y1/iR4ukXyQj8HHUN2f4NkyjcV4hey3F1740yV0c5M3JOTbGmHI1vIUV9Khx4+FezrpLymVLeJLBrSlb6VYvKl4j0CfzUYp4aFjDQspqjs6Y4Nu+dIGHFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=pdj5lU+D; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-386329da1d9so2084597f8f.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 00:45:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1737967504; x=1738572304; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bz2kSYLl3e38VCG/b+eXaZea6pK/eL1ZVqCIQrW1rHw=;
        b=pdj5lU+DvNs15tLNvzWQp3FHPJNjXDjVDe2GnZ7On2VpyXlGi94/xA5UGKaq2JF9Ru
         wsRJZawYHzhwInDGtpodNfD1gOdY58gWSL7egw4DhN/8aedkXx+bb3SnrJVnRokoFwSK
         XKegrU/qbEN8nalAZYwhgqPQZ0YQ3FhZ2USQoVdhr12lgxbPt1Svvv9riynDRoO4cJ7V
         ckL/TKTRF2yW8/2U4a8Gy3mSgOxUrHFN4tdApSL5CvbJHVG2nwK1jg3v4affA7vRiioj
         Gh+EQH5mpCJP5+i6stSeyO/jLg42MYLZjepLSoxc3W8L33j7eD0PmzlpU9Rx9jH08BtJ
         FsMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737967504; x=1738572304;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bz2kSYLl3e38VCG/b+eXaZea6pK/eL1ZVqCIQrW1rHw=;
        b=u4nd6Z97GroHS2Wge2Vt5m+fAy2cXsS3xxLnmJ1kk/o6UiEjsr+cpd/4IhXCocHO2Q
         1AM5P1rWaidXh/CkWo+vpEIjUiNP/NhlcYfKpp5xn0wdYVu3vQrNIDwh/oFzvxWO8cfi
         q+85E6GTS3X4uZSqblTpU7np2t3FHEtUbe6YIs9CbE89o4XsJeuPd++7t0D4vsz9BfbS
         +f/dkmC1bew2U3ExZ9Yt2etuOoG/IA1CjAsCiylgp4jtZTB+cjQ2yX54aFFgUoFw4MHD
         pSCU6VUYwf7NkdSQ806Vz3sXpxRSrI5z8nHQWdwzoylFi+XtUEmXGreCUNrJ9NzAbZeP
         8vxA==
X-Forwarded-Encrypted: i=1; AJvYcCUqTS6VtTlhWNOqzyf7DJxqKC+StFtoPrcHPMtLp3qwXiTU13LL+YHXr5EHLZ1WIfqYZKX6RgW2zIne@vger.kernel.org
X-Gm-Message-State: AOJu0YxgGN6H4200ITAhKvYCbUhv2ysfQf+82ze3juS9uISjbQK56qf0
	vEjB41is88JWelNnUmxD01VsipNUnn35FcN9cfIc/s2AuaJ1GbrolJpucSQEPN8=
X-Gm-Gg: ASbGnctE/z6TxJ0DXa3JakwhTL1B9PhtPFhlgHDvzhV3kgaDbsHtDNaN2yzpXfO/2rj
	60IafdH2k2KfhtukhBdLcUhGdAqcm1a9MydYKmC1SvCVsK03QNb8gJoZHWASB/jebhJ7I7ncIwF
	KdidpeVYJMUsx9GRk7MXoJk2/DGmDJg4lSMrid8+SWqMHybwqeH1E/NJOj5PPhMBcSMQ6Wr8NAe
	lpdwCxDaZzGT2UDVV/TxY6Dh8EbkhuU8nRch11UbhBj7aEgnsgDhNrmHAJBXGNtNU1Bx6PSNmjG
	zDNlZCIwO0GT
X-Google-Smtp-Source: AGHT+IGWqfhgnm7mqqj6MlWyyva4ixlrWco+wQr8HSdWnEWxXD9z+L+c1tqnICNsQrM+oKfyIH0FqQ==
X-Received: by 2002:a05:6000:18ab:b0:37e:d2b7:acd5 with SMTP id ffacd0b85a97d-38bf5655900mr33401129f8f.8.1737967504213;
        Mon, 27 Jan 2025 00:45:04 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.35])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a17d6b2sm10635095f8f.34.2025.01.27.00.45.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 00:45:03 -0800 (PST)
Message-ID: <4074b42d-fb49-45ee-9f38-31a105ce6a67@tuxon.dev>
Date: Mon, 27 Jan 2025 10:45:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] arm64: dts: renesas: r9a08g045s33-smarc-pmod: Add
 overlay for SCIF1
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: magnus.damm@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, jirislaby@kernel.org,
 p.zabel@pengutronix.de, claudiu.beznea.uj@bp.renesas.com,
 wsa+renesas@sang-engineering.com, prabhakar.mahadev-lad.rj@bp.renesas.com,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org
References: <20250120130936.1080069-1-claudiu.beznea.uj@bp.renesas.com>
 <20250120130936.1080069-5-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdVjvKmR-0ZiYGiAwXf6dfx9O9HtG2JXht9iDwV7oKdwDQ@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <CAMuHMdVjvKmR-0ZiYGiAwXf6dfx9O9HtG2JXht9iDwV7oKdwDQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 24.01.2025 21:15, Geert Uytterhoeven wrote:
> On Mon, Jan 20, 2025 at 2:09 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Add DT overlay for SCIF1 (of the Renesas RZ/G3S SoC) routed through the
>> PMOD1_3A interface available on the Renesas RZ SMARC Carrier II board.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
>> --- a/arch/arm64/boot/dts/renesas/Makefile
>> +++ b/arch/arm64/boot/dts/renesas/Makefile
>> @@ -143,6 +143,9 @@ r9a07g054l2-smarc-cru-csi-ov5645-dtbs := r9a07g054l2-smarc.dtb r9a07g054l2-smarc
>>  dtb-$(CONFIG_ARCH_R9A07G054) += r9a07g054l2-smarc-cru-csi-ov5645.dtb
>>
>>  dtb-$(CONFIG_ARCH_R9A08G045) += r9a08g045s33-smarc.dtb
>> +dtb-$(CONFIG_ARCH_R9A07G043) += r9a08g045s33-smarc-pmod1-type-3a.dtbo
>> +r9a08g045s33-smarc-pmod1-type-3a-dtbs := r9a08g045s33-smarc.dtb r9a08g045s33-smarc-pmod1-type-3a.dtbo
>> +dtb-$(CONFIG_ARCH_R9A07G043) += r9a08g045s33-smarc-pmod1-type-3a.dtb
> 
> s/7G043/8G045/ while applying...

Sorry about that! Thank you for handling it.

> 
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds


