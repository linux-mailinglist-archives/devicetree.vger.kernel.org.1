Return-Path: <devicetree+bounces-79225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B23D914696
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 11:45:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB33B1F2434A
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 09:45:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47C525380F;
	Mon, 24 Jun 2024 09:45:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="nGt2aBkn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B0D132128
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 09:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719222306; cv=none; b=JPyZjckIP0MgqBYuRuLtnynlJavxlZt8IdWOatsJ6TMCksDYi2yW2kLMDJWB91gsLqe8JWFdCe6kJ7tNBkyq38rfe3H1Hi/YOmPqvgf5RfShv4sYumeQr97Uw6hsDOtxheoWU9i6T1atWm1QaTUSZ0Zr2up8fDZ1ZyGlsrju0gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719222306; c=relaxed/simple;
	bh=32drQnFIrbuxDvjj7GlWyJnnbwD5qvJD5a/OqydxWbw=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OCBw51Oad9fb7znh0MyTc2B5trqsUF4dtuZGwvDdHXRzIRSSNPHtw7NSwonwWUMCkAqmU1ZIkDPblSx4kyutGoPEeiakrsEArpO9sovjUNtY/Bc+CxztgP2Sxh1a8k8HxOqYNwcHgR9D7WQp8Fel4hw/LXkCOghLnuFP9H+2wbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=nGt2aBkn; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 053C43FE28
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 09:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1719222301;
	bh=32drQnFIrbuxDvjj7GlWyJnnbwD5qvJD5a/OqydxWbw=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=nGt2aBknfeorYHHdVQP7KrTpmmeViKKvb9zdRk6FaFuunMJBEFxVNY4hsy2hsbpUS
	 FuEhIKDZBSdzF9/z71twJJPWUIdHe++rJEkAS9w7R2DztDli1NnnLWNPH1MztdSo/m
	 dmfImvHH6/stsENuer1BZmyTJX+uTX98GqlPpScGUkObEhsf2w9agz+mJuUHPiwQGw
	 a1F/ApqJg/YCdqudJ5pHgjEfZUsBANdQzYScO2OQ7sm+nqqUvZPyWdUB33LxiWPO8+
	 +6YAvK4rTcVch84El0Bzn9dQRVxDQ46jRbf22iycvjwbCIyQpmu4k4Lt+pydn3/mzM
	 9oCxnm6w4vZrQ==
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-444ab7d5202so63663731cf.1
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 02:45:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719222300; x=1719827100;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:references:in-reply-to:from:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=32drQnFIrbuxDvjj7GlWyJnnbwD5qvJD5a/OqydxWbw=;
        b=UFEEM4rp6Fr9h1dCUrQKdNf+T46NuIlGYA1vozi3sPm5N7tDxbnOm8mWqftPogQ5Dj
         V5MqBxVc0S+tkpjjNdasOXp+hG4nIX1gdzooB7BkoDOuEXG/pDzrELtNfpkIlVP3Fxvh
         d3Dw62hlEDBfSq+rvEujvPJE4DRq7YYcyVaE6CfK5J7uYNLxx0ISUNONdVToozU6Ufpk
         GtnOih/4t+0Ig9/gb4ydCklvMxnZti9ufAPvX4tEmv08tfIaThH3Fa4gEpAqhq0tQC0l
         krBoIUFW1824nw7rCnNMeFAmNfFpCOtETz7/K2G0ZEFB7hM3s1AlPkE6Ybe3Q3fXBDyx
         dd0g==
X-Forwarded-Encrypted: i=1; AJvYcCUaqazFNdUlrtqTsP39Hd2E7CpRmEv9LGXUrVoSGQp09ny2/J/4tICs4q8FRqNglAVfvJJUEfff9xiq1PCiJKCTPbYYZtQGfsnNQQ==
X-Gm-Message-State: AOJu0Yw9FVNt1MJRJxXpMLoHypnXRpZzIbtHm/A89Qsh9sr8tMR6jtMr
	4Lf3iD2XTt0dFNRTaQHWJGakpugAErhAWjzFCdoeFBW7vKSt8zzjXtEwrNeMkpcZI0ZCoAroR9n
	0a99TsLzSO2Nb+ZyHQyIkLosKAuxEdtaZkWQeSKe44OVKnME74RAHSGqCfSZSSrFr8Warvi0NEA
	Zs8xTVV4UOB2ax2FHEHpdMadCnxM50e/fuyFslm/aBtwOeBrC4RQ==
X-Received: by 2002:ac8:5fcd:0:b0:441:531f:e06c with SMTP id d75a77b69052e-444d9218d2fmr52829531cf.30.1719222300014;
        Mon, 24 Jun 2024 02:45:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4u6cFs7jB94YopaLyGNwRvqbcbcIUJSolGuohIAL0lCFWbKp8n8kEuV3PjIDPEkyp1X9I5ZqTuPulZcyAGW0=
X-Received: by 2002:ac8:5fcd:0:b0:441:531f:e06c with SMTP id
 d75a77b69052e-444d9218d2fmr52829421cf.30.1719222299655; Mon, 24 Jun 2024
 02:44:59 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 24 Jun 2024 02:44:59 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <2C13D76B7FA9727D+6cf7c812-5cf9-4fd6-a79b-8f2899c7c3de@milkv.io>
References: <20240613024827.36512-1-naoki@milkv.io> <20240613024827.36512-2-naoki@milkv.io>
 <8ceef5c1-03b3-4468-96e3-d86db5434e82@canonical.com> <AC74C056BD8A7945+7d7e4fa9-25e6-40a0-b571-ff3d01cb575f@milkv.io>
 <2C13D76B7FA9727D+6cf7c812-5cf9-4fd6-a79b-8f2899c7c3de@milkv.io>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Mon, 24 Jun 2024 02:44:59 -0700
Message-ID: <CAJM55Z_ORHP2P01CqTN192TBmgfj93aLNhrw4cz4b-itnn5TBw@mail.gmail.com>
Subject: Re: [PATCH 2/2] riscv: dts: starfive: enable heartbeat LED for Milk-V Mars
To: FUKAUMI Naoki <naoki@milkv.io>, Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, kernel@esmil.dk
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

FUKAUMI Naoki wrote:
> Hi,
>
> On 6/21/24 10:02, FUKAUMI Naoki wrote:
> > Hi,
> >
> > On 6/21/24 08:13, Heinrich Schuchardt wrote:
> >> On 6/13/24 04:48, FUKAUMI Naoki wrote:
> >>> Milk-V Mars has a green LED to show system load. This patch enables
> >>> a green LED as a heartbeat LED.
> >>>
> >>> Signed-off-by: FUKAUMI Naoki <naoki@milkv.io>
> >>> ---
> >>> =C2=A0 arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts | 13 ++++++=
+++++++
> >>> =C2=A0 1 file changed, 13 insertions(+)
> >>>
> >>> diff --git a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
> >>> b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
> >>> index fa0eac78e0ba..4f4bbf64dbe4 100644
> >>> --- a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
> >>> +++ b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
> >>> @@ -4,11 +4,24 @@
> >>> =C2=A0=C2=A0 */
> >>> =C2=A0 /dts-v1/;
> >>> +#include <dt-bindings/gpio/gpio.h>
> >>> +#include <dt-bindings/leds/common.h>
> >>> =C2=A0 #include "jh7110-common.dtsi"
> >>> =C2=A0 / {
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 model =3D "Milk-V Mars";
> >>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible =3D "milkv,mars", "starfive=
,jh7110";
> >>> +
> >>> +=C2=A0=C2=A0=C2=A0 leds {
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible =3D "gpio-leds=
";
> >>> +
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 led-0 {
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 g=
pios =3D <&aongpio 3 GPIO_ACTIVE_HIGH>;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 c=
olor =3D <LED_COLOR_ID_GREEN>;
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 l=
inux,default-trigger =3D "heartbeat";
> >>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 f=
unction =3D LED_FUNCTION_HEARTBEAT;
> >>
> >> According to the schematics the StarFive VisionFive 2 board like the
> >> Mars board has RGPIO3 connected to a green LED to display the power
> >> status. Shouldn't we consider both boards?
> >
> > I think LED usage is vendor/board specific.
>
> do I need to do something for VF2 to merge my patch?

It's not strictly required, but it would be great if you could add the LED =
to
the VF2 too, thank you.

Also I'm not sure if you saw my previous reply:
https://lore.kernel.org/linux-riscv/CAJM55Z_j8gWFyKvsiu-oGDV7Hacr4Amt5FdkHd=
jKnhZwZgxncA@mail.gmail.com/

/Emil

