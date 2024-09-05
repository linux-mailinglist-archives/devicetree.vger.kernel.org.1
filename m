Return-Path: <devicetree+bounces-100580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA4B96E287
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 20:57:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2800D289388
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 18:57:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27B4A189514;
	Thu,  5 Sep 2024 18:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b="jes/yyjZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07CD043AD7
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 18:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725562618; cv=none; b=fR5IZ7mVyDgFpXGH4/bU8ta9YOB2wG9lNC4MUfExt81s2dozaGCAslqhQaeqvsjO0zhqgqdcF9lk4n5PDQK06pkoTBqWBJoM5EPut/p71gskqo/WGSQ41K71wRo904O/yusKTquGYs+lj5dRnCEKBx1Yn+X1F7ePw5r4OzZIgjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725562618; c=relaxed/simple;
	bh=5Kl2tZr706GSf18Hbk3w3yTELR9WRKf0WWMV0a8g2Vg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QgmpFGIkG8AUEG33wOlUTIQacpVrWBiAilQM2JamoZlDOtr9nw25B9o9+KMdqiJC0X0yMiFkpfqa1fyzSLeeEQEaI6hTSEYWc7n/9iVl6VxiiiLItiZ7DAXwzXyAx/pvP6xc2zvUvGlZ9B2F3Kywp8y3Hh/+C87Gpq9ABXD3TrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com; spf=pass smtp.mailfrom=gateworks.com; dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b=jes/yyjZ; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gateworks.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a86e5e9ff05so146769766b.1
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 11:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks.com; s=google; t=1725562613; x=1726167413; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7AimnlZvO4vX1o0LABlUFzAbcpYQGtu+zhlXenwh5uE=;
        b=jes/yyjZansc89GH8X8Lw1V1MtwB7mpZMxA+igfDhW9Un3ssExfbOtUr3sXepUhIQY
         dndyXhzHvstvEv5ISq32QTdI9V+EhypXHm8N1SHM33HqiPYMv3Pdwc4cFFVO7UCMhUqM
         b7KmguXkDt9XNYOpboWN4p6wrUizZQKUfmExLotD6VglXs9hXGrw4Dk7vs6pNP0o2IwY
         cfTtIJVcPAUvwov55LcZDZr8nfCSl1yk7tPTr6p5iyvbO9vigkdPNE0cuGgI1kVmcKjb
         rxOReW1TagrwcXw4b7YUGp1g9G+0Ugz8NRv1TEHenaSzs3ME2E4YnDwqUR7cFKcuWMdA
         QZSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725562613; x=1726167413;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7AimnlZvO4vX1o0LABlUFzAbcpYQGtu+zhlXenwh5uE=;
        b=mVhakHXZizNonCJCV3NRvRBgaA/Hb2IdxfE7O1Pj+uJb76PG0fvUFQGaWBV08i3vrA
         YKEFr9sRAbCuvzmnMB2yGtIlDk6TE4omEOposNZu0pMWq8xmIONfrhcK6j+ROGWRJTB3
         bwRiSGTTbViK4RGGsgSEdq0YWom5lyR80SnShySg5em01QJ+3UlNVQTNgMjDddX3usIe
         ZoC5ybczp4arTyhnAuw9lzOYlBmOR6LCk8HrP6LL7xV7dYqddYZQVgIGM9QIeWrXqU+P
         LIx3Hkw14gVrkSQcZGMXduiVzcJVoGC8Gh7n3r+qbvaV7vxkhf8x58JzYVORPNWIW1vw
         aAyg==
X-Forwarded-Encrypted: i=1; AJvYcCXLGvnbKTYy1AQXQR0i/rTT2sgsWYqupjEZN5uzBj8FMF6yQ4LFG3MvzzNhEjohvF+ZQTPvnAGDlrVL@vger.kernel.org
X-Gm-Message-State: AOJu0Yxoe6XpsLgxoFJYFY4Yjz9OPohfT066sb/cH7eiytl2KZshugIr
	dxbwI/htNJwkt+UOE5VQwv9ihnVlJVJ3LTN3tmFGeQrANkdfNrLqFKFvQgHupDNX9yEhwPSSP0Z
	ighkbnplfzUYZtNojG9yaX8Hk8CjW/XhlvPOKcA==
X-Google-Smtp-Source: AGHT+IGdoYNXI+zkFvkIv/Pf0iKRQ0TdFYopTZLghqtcSzK7K7EJ5wlRtOTdvPGPRBWz6UTGgTXgE416ziaIjjvKK9Y=
X-Received: by 2002:a17:907:2da5:b0:a86:9cff:6798 with SMTP id
 a640c23a62f3a-a8a32ed4b43mr754624966b.30.1725562612865; Thu, 05 Sep 2024
 11:56:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240807-fsl_dts_warning-v2-0-89e08c38831a@nxp.com> <20240807-fsl_dts_warning-v2-3-89e08c38831a@nxp.com>
In-Reply-To: <20240807-fsl_dts_warning-v2-3-89e08c38831a@nxp.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Thu, 5 Sep 2024 11:56:41 -0700
Message-ID: <CAJ+vNU3ZsJG-eoqf3JcHTyDwjp4uOW1XiEhnOfWZ1FJ-q1Y9Hw@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] arm64: dts: imx8mm-venice-gw7901: add
 #address(size)-cells for gsc@20
To: Frank Li <Frank.Li@nxp.com>
Cc: Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 7, 2024 at 7:54=E2=80=AFAM Frank Li <Frank.Li@nxp.com> wrote:
>
> Add #address-cells and #size-cells for gsc@20 to fix below warning:
> arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dtb: gsc@20: '#address=
-cells' is a required propert
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts b/arc=
h/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> index 136cb30df03a6..35ae0faa815bc 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> @@ -364,6 +364,8 @@ gsc: gsc@20 {
>                 interrupts =3D <16 IRQ_TYPE_EDGE_FALLING>;
>                 interrupt-controller;
>                 #interrupt-cells =3D <1>;
> +               #address-cells =3D <1>;
> +               #size-cells =3D <0>;
>
>                 adc {
>                         compatible =3D "gw,gsc-adc";
>
> --
> 2.34.1
>
>

Hi Frank,

I just noticed this patch (along with a few others to
imx8m*venice*dts* which undoes what was done in commit 3343ab4cc698
"arm64: dts: freescale: imx8m*-venice-*: fix gw,gsc dt-schema
warnings" which my commit message states: Fix the dt-schema warnings
due to #address-cells/#size-cells being unnecessary when there are no
children with reg cells.

With your patch applied I now see warnings again:
$ touch arch/arm64/boot/dts/freescale/imx8m*venice*.dts*; make dtbs W=3D1
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx-0x.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw75xx-0x.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dtb
arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts:361.14-467.4:
Warning (avoid_unnecessary_addr_size): /soc@0/bus@30800000/i2c@3
0a20000/gsc@20: unnecessary #address-cells/#size-cells without
"ranges", "dma-ranges" or child "reg" property
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dtb
arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts:311.14-418.4:
Warning (avoid_unnecessary_addr_size): /soc@0/bus@30800000/i2c@3
0a20000/gsc@20: unnecessary #address-cells/#size-cells without
"ranges", "dma-ranges" or child "reg" property
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dtb
arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts:277.14-364.4:
Warning (avoid_unnecessary_addr_size): /soc@0/bus@30800000/i2c@3
0a20000/gsc@20: unnecessary #address-cells/#size-cells without
"ranges", "dma-ranges" or child "reg" property
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dtb
arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dts:330.14-411.4:
Warning (avoid_unnecessary_addr_size): /soc@0/bus@30800000/i2c@3
0a20000/gsc@20: unnecessary #address-cells/#size-cells without
"ranges", "dma-ranges" or child "reg" property
  DTC     arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dtb
arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts:309.14-416.4:
Warning (avoid_unnecessary_addr_size): /soc@0/bus@30800000/i2c@3
0a20000/gsc@20: unnecessary #address-cells/#size-cells without
"ranges", "dma-ranges" or child "reg" property
arch/arm64/boot/dts/freescale/imx8mn.dtsi:1128.11-1138.7: Warning
(graph_child_address): /soc@0/bus@32c00000/isi@32e20000/ports: grap
h node has single child node 'port@0', #address-cells/#size-cells are
not necessary
  DTC     arch/arm64/boot/dts/freescale/imx8mp-venice-gw71xx-2x.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mp-venice-gw72xx-2x.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mp-venice-gw73xx-2x.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mp-venice-gw75xx-2x.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-imx219.dtbo
  DTOVL   arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-imx219.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rpidsi.dtbo
  DTOVL   arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rpidsi.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.d=
tbo
  DTOVL   arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs232-rts.d=
tb
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs422.dtbo
  DTOVL   arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs422.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs485.dtbo
  DTOVL   arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx-0x-rs485.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-imx219.dtbo
  DTOVL   arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-imx219.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rpidsi.dtbo
  DTOVL   arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rpidsi.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.d=
tbo
  DTOVL   arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.d=
tb
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs422.dtbo
  DTOVL   arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs422.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs485.dtbo
  DTOVL   arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs485.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx-imx219.dtbo
  DTOVL   arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx-imx219.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx-rpidsi.dtbo
  DTOVL   arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx-rpidsi.dtb

Is this some case of dueling dt-schema checks for dtb checks?

Best Regards,

Tim

