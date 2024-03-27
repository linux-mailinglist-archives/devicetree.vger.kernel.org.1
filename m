Return-Path: <devicetree+bounces-53880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD1D88E83F
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 16:16:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 08E141F32BBF
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 15:16:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B646114A09E;
	Wed, 27 Mar 2024 14:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="nfOucbI7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB2ED12837C
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 14:46:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711550782; cv=none; b=DAhf8MiXbWZIxZc4Chy89VEiZ5nww5K043nL9Rt6YRd3AKls6y4oYly7Kb4m5YXFwbPL0cF1HmAqc0GRlaK9lGR7quqvBaMjiQqpGHNaTCrYgucQWXW9g2hDnWRS3eBuSnv+E5/Z9XK6YJSaPl/g0aOFp7tTxVqRg4I+wuwBmCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711550782; c=relaxed/simple;
	bh=ty69EDBotx/UcBz2jHMOzZSW0yeSN9kpZaRN4ZT0sCQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pOozgbQG0jrq+B5YdaQX5XEgb6hZ8pR/GtqK/WBX5OIUUr2QBSEjxWZPWHKrRTwFtemLlqe2Gp0Ptpgq+0DyLGUZeUxqKTWZmLaM7G0aWUADWQPtT+g+BTu5UFWzb0Yw0ictIe8rVD69Fe9kdM09SaqKOx0k16sT39BfYAyavGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=nfOucbI7; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-dcbef31a9dbso4977762276.1
        for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 07:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1711550780; x=1712155580; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=o6jymgrMRCzVllYnTIIijLM/WDdBq3vbQoCGzHwFID4=;
        b=nfOucbI7BYJ+rd9sSfjnT4SRdXDe4/eJ+ZO1lZQhSNVKeaCVFY4mdPtyidUZ2Ytg6M
         CL7go2FrjvPMEmicyE1i/TYf9NLmMgJStfNRh1VQTchRLbnWMEh2dZixaJ0UHIkAELbx
         S4Ex2yvS2rFOfo85Bd/Zoo/1/2IriviQ+uRoYwSMRaeSIRJLrxLm7kKdPUDXgqBVgnNV
         loduKogKtZMaV/Gidvp5LrzEK6AgMsCRC0DUsRLWqM9Hj4JUODLavXP7wPBWMgdWGEcq
         ggtLVevrRshqxdgrzVNX68Vxe1D16TD9xqs0NxYmRcP/hmRLmjgXJTV2ZtwCLxWFCvW7
         qA/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711550780; x=1712155580;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o6jymgrMRCzVllYnTIIijLM/WDdBq3vbQoCGzHwFID4=;
        b=f/o4Tg0ainGiqVkzoVWLjUcXwvCnLXpj+zABh5tKOl/34VVDBd9IN+VKumQS6saJFN
         gFB0B+62DlJGgE30gANkVy7h5LdASqNfnjxjBobrvD/7Ul0I9a0AWp7SDCv0MzgKot8x
         pbU4dkzaAOuanJT3qjX/tnMtsXZdu0c4iO0yDzbuW/2pKdyVxMBHIKouw++PpeHJ0pZV
         JBgraKuyecX8eu4qOMdwZs3Rrv5NQjbTReDfBxCEa/PwNy9a8p7si9Sd2TWl5eSquRy+
         YEZMcLy75ZXpld4RCYgZieB1AFKVe3WZ5/kNFMzjirchQI80BtjullJihk5o02rKIhh0
         39pQ==
X-Forwarded-Encrypted: i=1; AJvYcCXraOLQrnVy4cD4OgdP94RHqACYh5SbaYLvMBm6uUBFd/c/XnUb3KfVWAVVcsNtXoXhUApnJ7vr4jYnx4lKZgFnqS+FGXid5V8CZQ==
X-Gm-Message-State: AOJu0Yykw8zhBm9+3dEqaCVeKuILRLvV4E5U1CHJpBawqkT56adAQt/i
	qVMP7nvJ2C2sD3vr2uIxdh1vwoh0qLfk+dnctOvBpKBM6f8znzYVe3iAkAnxsrbD7Fgl4grZR/K
	y5bBTYhah+eOC5xWgqfeNj2El2LZHtuVOgobibQ==
X-Google-Smtp-Source: AGHT+IFuKCPl4LaxIUySpuHYRkg46zOwYVxft21FYlHW9+9YIOEs081PxvUBucElWrgpGVk9d9ULmcuF09O/kNzPYAs=
X-Received: by 2002:a25:fc21:0:b0:dc6:9399:849e with SMTP id
 v33-20020a25fc21000000b00dc69399849emr1419002ybd.11.1711550779831; Wed, 27
 Mar 2024 07:46:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240327000510.2541-1-laurent.pinchart@ideasonboard.com> <20240327000510.2541-6-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20240327000510.2541-6-laurent.pinchart@ideasonboard.com>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 27 Mar 2024 14:46:03 +0000
Message-ID: <CAPY8ntBikMRhWe7chnF9czp+drzQZ5QxceT1sX+pEda8QAZugg@mail.gmail.com>
Subject: Re: [PATCH v8 05/10] ARM: dts: bcm2835-rpi: Move firmware-clocks from
 bcm2711 to bcm2835
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, David Plowman <david.plowman@raspberrypi.com>, 
	Jean-Michel Hautbois <jeanmichel.hautbois@yoseli.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
	Naushir Patuck <naush@raspberrypi.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	kernel-list@raspberrypi.com, linux-rpi-kernel@lists.infradead.org, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com, 
	Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	devicetree@vger.kernel.org, Phil Elwell <phil@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"

Hi Laurent

On Wed, 27 Mar 2024 at 00:05, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> The Raspberry Pi firmware handles clocks on all BCM2835-derived SoCs,
> not just on the BCM2711. Move the corresponding DT node from
> bcm2711-rpi.dtsi to bcm2835-rpi.dtsi.

It's already present in bcm2835-rpi-common.dtsi [1]. That is included
for all Pi0-3 platforms, but not bcm2711 / Pi4.
I don't see any reason why it needs to be defined separately for the
bcm283x vs bcm2711 (I suspect it's just evolution), but having it
defined twice on the bcm283x platforms isn't that great.

Drop the firmware_clocks node from bcm2835-rpi-common.dtsi as well, and it gets:

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>

[1] https://github.com/torvalds/linux/blob/master/arch/arm/boot/dts/broadcom/bcm2835-rpi-common.dtsi#L10-L15


> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi | 5 -----
>  arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi | 5 +++++
>  2 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi b/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi
> index d233a191c139..86188eabeb24 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi
> +++ b/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi
> @@ -20,11 +20,6 @@ aliases {
>  };
>
>  &firmware {
> -       firmware_clocks: clocks {
> -               compatible = "raspberrypi,firmware-clocks";
> -               #clock-cells = <1>;
> -       };
> -
>         expgpio: gpio {
>                 compatible = "raspberrypi,firmware-gpio";
>                 gpio-controller;
> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi b/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
> index 761a9da97bd0..6e6dc109f0c2 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi.dtsi
> @@ -5,6 +5,11 @@ soc {
>                 firmware: firmware {
>                         compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
>                         mboxes = <&mailbox>;
> +
> +                       firmware_clocks: clocks {
> +                               compatible = "raspberrypi,firmware-clocks";
> +                               #clock-cells = <1>;
> +                       };
>                 };
>
>                 power: power {
> --
> Regards,
>
> Laurent Pinchart
>

