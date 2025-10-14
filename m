Return-Path: <devicetree+bounces-226455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E04BD8C6F
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:33:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7AB231924701
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:34:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D77AE2ED871;
	Tue, 14 Oct 2025 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K6nK6nN1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9082C0F87
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760438033; cv=none; b=XoZ2VhzEM82LRh/JIWSNT0W/IpufhBkY7b9WbQmW0meaojpaf0o56qIeNaQ0jJ3GvFho/EhrXx6hIehup74seAn3nnRdAmH3aruw16nPMA+jzrJkbxztGtz8G9Gi+sLGnWTk3Zj6qVaDLxtvl/Qk1wEwfDzTxBQDnxfPDxrs4gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760438033; c=relaxed/simple;
	bh=QuEinUhar14YF6Y240Ai1C75X6imD/kq72QMKNsJnaw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nta6Ddwj+JrwpCcPh3GaZ3tnE3UMiQaKowXOIlGjQ/p2u0az2V4u76JOoo/MbGhz/Iu1D4sOBTS/an8y48eEyl5UhrjxnwOpJ99pqcG1TgCAXXjD2F8LiJZKeX2Cj2LhzSgOvmxUpFKK504ZdsV5LEAICIzNC49nk/YVb4Fbq0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K6nK6nN1; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-7815092cd05so4096927b3.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 03:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760438031; x=1761042831; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QuEinUhar14YF6Y240Ai1C75X6imD/kq72QMKNsJnaw=;
        b=K6nK6nN1LZvtp0hED3zEFDzNNzywxC7uHu5qIoAYDTMOe2xFKwCCMppI9y2WiakW6z
         t2GFxrxJVJKp5AmXIfQKMwzJVpjEgc2yqkYjXvBziCM37VNwY9oVrntdOZCYIBLKf6Co
         K1JTtw09FIbGrZkzLbB4gi9QXNjiLZwtPjhP6OqGY1YWI1vPM5UPoqQsPqP2cymCjpee
         +Aful/AlBTAerfWQLlN2v1lSsSm0L1MoRvCpyO5v022/6XWUki199KpnMr39xFU0X4hF
         uuRPDsHZbz/FyjuDW3+AuqpCxfW2/z5QVMvu69PmTaetzYkjt2As9VSd+vk5c52vnEpX
         3CCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760438031; x=1761042831;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QuEinUhar14YF6Y240Ai1C75X6imD/kq72QMKNsJnaw=;
        b=Gp6HpYxxyq1FuG1soUube5f0naCBm7Tm7GH5F8/585/LKWw5/rfHKg6DctzuqARjHE
         JxxHdd2xLCACHhcv6YiTZv+mlfmqVK6Rgg+pgn1DZ8T6IUDBFoQmGs8xLP28q9VepZ9H
         HKac51YsU2hjfM6MAh4dgsTPv0Pt/gn3CjOGWbLhWipj6wOpE0+gLKxCVVPF3NhFIGix
         p2UEHTTTv6keAuGd3NnAZk/gA9o9ubbBk/E/isWCJwp+dTekpfrei80/VHUGT4zZf8rV
         voUnXhrzL2HAo6PxSaxq8y/CmL2oeYooGi/7kqt2hehC6KLaHkQFCqIKZKO8BhLBdl3I
         7fMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUL3Eb07Omo8MPCVs9IrclWBMku3yYenWBkIBIYr601cDwfG0jhdSClqZSK4H9Zw8w6LhVv2NuhFHBc@vger.kernel.org
X-Gm-Message-State: AOJu0Yy06iuuSTd6BL2bzHHvz4Gn22UBakrLkTKdeMj/vHSdeg/CfAwM
	gMYRkpgCDNwqoSaW6POJRkncm4vfqIOKSG6lzCdcDr9BBfmyo+mvHjIf7afx8zdfA4tPsMhn1sU
	CMLP8vMQopEb1XvGq02Rrw4z11nI4IqBYedJhI5dsJZpGU8x96NdysMQ=
X-Gm-Gg: ASbGncsG7NktZlrg+LlggzKYWqH8OH5BXLshRjAWwieNErcLxoKNsiGPcPN37kA2AkP
	0dRt5hQ1QKfbkcTDZNWhRo/KtBlr5xZJ6wF4FAXChuy6nojs9FQ8c0y2PS5/IqHMIX5cYJAtKcr
	WBolLob0mpa3dyEgrZwbOd02TaapxQfsjEAEt20rDjk0dpl2Atkcbf4s7lY1YShUcRdFksuSCT4
	+0HLfDkykf+Hf91HgeyyNBvwmvRHm5fGj4uQv2i
X-Google-Smtp-Source: AGHT+IHeonKC9+QYhOM7VuQykvKPFitUUF6gnFNcpL2LefNyxqXwa4BkJdaKg1KHUyXSH+yyFuP/4//FX0boj6kq7HM=
X-Received: by 2002:a53:b243:0:b0:63b:9347:1a5c with SMTP id
 956f58d0204a3-63ccb9035bcmr14962219d50.40.1760438031225; Tue, 14 Oct 2025
 03:33:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250926-manpower-glacial-e9756c82b427@spud> <CACRpkdYXh2MCs=vAif7BpxfYVRuDTkYYNwpV2t=J_ZRW+N4Vyg@mail.gmail.com>
 <20251001-unfreeze-ludicrous-9d744548bf65@spud> <20251009-amendable-trimming-da31551d730b@spud>
 <CACRpkdYssH8zObJTUH2VVB7FrVFmJUd+Ea7etTGbicQgkuU=CA@mail.gmail.com> <20251013-prune-deflector-b10b84425a33@spud>
In-Reply-To: <20251013-prune-deflector-b10b84425a33@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 Oct 2025 12:33:36 +0200
X-Gm-Features: AS18NWDV62aIljpFKFrK57lWd5X1J4MSy0Hiz2Im8y-KTaCpfNHGRNY7xZpNzks
Message-ID: <CACRpkdaat_pNJ=_r51JuXXggDtmRrfjmN1AQffJVEA29yoojKg@mail.gmail.com>
Subject: Re: [RFC 0/5] microchip mpfs/pic64gx pinctrl questions
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 13, 2025 at 3:55=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:

[me]
> > entanglement of the GPIO function with another function, then
> > there is the recent patch from Bartosz in commit
> > 11aa02d6a9c222260490f952d041dec6d7f16a92
> > which makes it possible to give the pin control framework
> > an awareness of what a GPIO function is by reading hardware
> > properties, and that it is sometimes separate from other functions.
>
> That is unrelated, but interesting. What I don't really understand from
> the commit message itself is whether this is useful if the pinctrl
> driver is not also acting as a gpiochip driver. In my case, the pinctrl
> hardware is not capable of doing anything more than muxing functions,
> and the gpio function I talk about means routing a "real" gpio
> controller's IO to the pins controlled by the driver I am talking about.
> The 2 in "gpio 2" refers to the specific controller.
> The rest of that thread makes it seem like this is intended for some
> qcom devices where the pinctrl hardware is also a gpiochip.

It's useful if you want to use the .strict setting on the pin
controller and implement the shortcut GPIO enablement functions
such as .gpio_request_enable, .gpio_disable_free
and .gpio_set_direction.

These are often preferred when using the pin control driver
as a "back-end" for a GPIO "front-end".

Yours,
Linus Walleij

