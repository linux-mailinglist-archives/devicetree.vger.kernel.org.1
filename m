Return-Path: <devicetree+bounces-228666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 943A9BEFE4A
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 10:20:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DAFFB4EEE24
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 08:20:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D6502EA738;
	Mon, 20 Oct 2025 08:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XjOe2YZm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 957C61DF26E
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 08:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760948403; cv=none; b=QhXioiapPwvOLT7MYWZvs10wD/KA/LCcSohuqoY2YfJRdqO6Kwunrq1ZsmdSIRUygVAAzEmHz2iQqJkxa2EajCvN5CAyzIjq7zm+PJ+srjRmCy8C5QqxOOnQ/tzVvdTB+Eas5g3VmwJKZTmqg5s3Ul+BzcN0ByJDfJWMPIo7aK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760948403; c=relaxed/simple;
	bh=9CLN3XP4gT6Uua1C96RINMvaSgMZmj50DVjXUb+alrk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f7suK5euvSn6w8zwFXu7XQVhL2dLk6BApGaGBlyubnHw76FhHQTwDonFcawcFW7psZXRLnuM+NDQKXkvrnaSPZgRBMIiWbtCKHjFBUnRj/V/edsmRiKFjFiHiGHYov7KrqgWVfyBNiHfR5XRDCrveIP+0nkwjxQCnQ8zGEpwvgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XjOe2YZm; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-816ac9f9507so729072185a.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 01:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760948400; x=1761553200; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=krtDUBIIbBhf5txhvHZ8ViDPiZJA8hj1zGguCfZUNVQ=;
        b=XjOe2YZmUmzWNDgutBTWleHJZSCEW4s6qisehzrkDZjXcK3fDmxuv5jE5Wu83MMSDT
         qLJ6zm902boqrXqh5jdwhnRpOZF4YdR+js0/tDqIhtDdbpxYWgsfOQbzNf9XrKlX7Dv3
         n2ygL58W0bfwFtZjhNFv+qB/Ziu26ff43w14DXwwgExCyJpYTewKi2kl7yxqXKxc7lA7
         Y1uOwOHEWCdcGB3KbrTBgRyU8ijdUwSs8BaclEOHf+bbP25gEMedFlGuXbmpkUXASv8N
         dyQWf3lBTjbg6wjBDPlAOozdiCkGxEsH/llKpnMS+ZliVLpoT1yoTdx3mfml4LNQ8oCr
         nxCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760948400; x=1761553200;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=krtDUBIIbBhf5txhvHZ8ViDPiZJA8hj1zGguCfZUNVQ=;
        b=aQrVJEF6LIwYnGrvLbe+aRlUOsavUnCYYy2rkvL1s6mqj7HFMFoeAJd4/r6GsdqsLG
         bp2ISD6/6Auyk87uBG/sd2ShPpAQoeFTX3f9h5KTMFw5H5eDnWc1Fv7tR/aUqiRGm3Jd
         ex4YTnneOhGoTCPMkwKmNjtAVhZahzy7cesCZT5BP2+tgs0bH6F0J+FH8Wb+D1iM1rWI
         AYIlnNIfTUFOs9PIsplX6J2tnZEaSHxh6jkDwXbXGnOmRRiXvKwaUewMS0BNIPENaOkz
         J55h9lUu+rh88KtUNE6vFsW2HLV8jA8tu8X5MkZ81AdqS1AOQ/SePT6zfaAYCzK8z1G7
         77Hg==
X-Gm-Message-State: AOJu0Yw1cqSdV3xUfZGVMBOUZyBNxI5o5YNPqV1D5/t8jwXyDKjgeuKz
	SbKSw6DgVhxymmq6uivJYUkjTq1YAsKBVTLeWLP3QmkLypUxyvV3ZwSztgV1+gMADjIZO67SYnV
	GrY6GPKh5bAa9MrgaCkINvyAqaIOpeoY=
X-Gm-Gg: ASbGncsOM3gSEV7PtaJbgoO/t7Ckw3E0iybq5VHEF4UCVbuJ9ibqCiwzT9i4sF5GQX+
	MMQwTliPGgY+YgoA18J1OMwot4Og1ToTiX4Xifh0lnKthl2nWWaYng4aO74Ef8zXWliq9z7Btj8
	wGPn5S6HEkG3BJzXCRoZbRn+Ejk2IWOSUk9AnpLVK9bdGNT30iArjIq19oj3BaZYgBjpQUsW/iX
	t5150PpOjFPD/74wo1lBV8pYD2cIIBa3xGC7zhJnFHAXdluySFUohxLI+IRH79z+U9q/ybxhKJ0
	r98CHxhDdYRyqeSBjg==
X-Google-Smtp-Source: AGHT+IH00fZSiLlpv5/iK2nqClbPVqEOFs6NjYUaaUpZZ81WenopkIUOdg2ZPbRIOvaCbrU3WZ4RbOVGHG7Hebvs9Kw=
X-Received: by 2002:a05:622a:55:b0:4b3:4fa9:4cd2 with SMTP id
 d75a77b69052e-4e89cfb2443mr191567221cf.33.1760948400448; Mon, 20 Oct 2025
 01:20:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925-rk3576-evb1-dsi-v1-1-c76fc3740abc@gmail.com>
In-Reply-To: <20250925-rk3576-evb1-dsi-v1-1-c76fc3740abc@gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 20 Oct 2025 12:19:51 +0400
X-Gm-Features: AS18NWCBDCEZzvVwJX4XETqmgmCCBqTdNAVD0aLBXbcVgyOY6pJqe52HL1dPqJA
Message-ID: <CABjd4YwVfrzxYKM4cAG=-fMbw9OcQGZD20CVCG8FvC8phDsw+Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add DSI LCD display on rk3576-evb1
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 25, 2025 at 12:38=E2=80=AFAM Alexey Charkov <alchark@gmail.com>=
 wrote:
>
> Add support for the Rockchip W552793DBA-V10 LCD+touchscreen assembly whic=
h
> comes physically attached to Rockchip RK3576 EVB1 boards.
>
> The display part is driven by the on-chip MIPI DSI controller, and the
> touchscreen is connected over I2C.
>
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
> Note that backlight support is left out for now, as it depends on PWM
> support [0] which has not yet been merged.
>
> A workaround is simply `gpioset -c 0 13=3D1` to set the respective GPIO
> pin high and thus to light up the display unconditionally.
>
> [0] https://lore.kernel.org/lkml/20250602-rk3576-pwm-v2-0-a6434b0ce60c@co=
llabora.com/
> ---
>  arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 89 ++++++++++++++++++=
++++++
>  1 file changed, 89 insertions(+)

Hi Heiko,

Any thoughts about this one? Can we perhaps get it merged for -next?

Thanks a lot,
Alexey

