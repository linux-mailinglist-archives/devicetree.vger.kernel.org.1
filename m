Return-Path: <devicetree+bounces-36524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E58F2841A8E
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 04:32:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 87317B22CB7
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 03:32:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3454376F4;
	Tue, 30 Jan 2024 03:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="PrBSYoKc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF508374C9
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 03:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706585544; cv=none; b=AQ95HGtMP5z21dumj3jNKHkhdjUfEjIkjpbKuBpmdlR6A/c3UmYx2FCH93I4ovFC7LAbOjAPNRAukcadi92isjJsekWlj3yE5duf/nniGJjtviliJV8tW6ZDIUeCl5t4sCufS/w38aAaa8snQbVP8Qw5nFUzW2fU06Gp5Sc5AWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706585544; c=relaxed/simple;
	bh=ELYmV9fmW0xc+1ZcDD0YMB3ZtknbgobJp7j2bqTa+U4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=URUgD49MiqYW13DO99yRegasICZaEOt8JSyXfVn8uUl4Yg/qtL3sEya6/1nthMNyLENN8fh7jZ/bzrzTzCvqXmbZhgNMRwmCiTZtqeLFGLtVCYTxNRhALcKR5+j0BQJ2BV/u73+EglOoI3MkDJ6v4iK1fK26AeJPVi19KTCoXcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=PrBSYoKc; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2cf591b5db7so29463901fa.2
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 19:32:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706585541; x=1707190341; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HVSWuVPedMZ0hCiYeV6t6vWEzmV0Yu6IxhjiX+iJPeQ=;
        b=PrBSYoKcl+2yXGVfHd9QXPj4LHFMHrXqGcqU6sb5a4ihQp+TV2fM+BCIuym/mXjN5B
         LN6ZnvtahpuPr4J0CqRMglpaMbsZ/bk0ZGCp3IEU2xpJ/hSvjaRdRIN92/ckf6Sp8Mn9
         L5Y5YXSl6Y/UhaINzAgNvl9NK5iECJjFqS7PA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706585541; x=1707190341;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HVSWuVPedMZ0hCiYeV6t6vWEzmV0Yu6IxhjiX+iJPeQ=;
        b=SkZgCnvifvx2pVjf0KMBUoMchLNWmX+hMrc4vIHZ0djBKDh5wJ8w8AvjN8402ykCJ0
         ruqQxxAmm8Hq1zJLbDwLuCOsWrpBbNqQOEiY/vLZ12YA8JllpCT0Qt/sQ2Sk44v5rfAa
         m5QX6gO5WQ8ariXzzU9okZdJx1RHpXgKpgsYsUPQAQoJ10e3b6ygCvUgPaqU564pHM4N
         Kyqg5EFPJIS9MD0fg+NFz5HY7HVo5nOpNNciuR8m+ZgKqtqVPvvb9FaX5Gpk8AcpPPKW
         rvrpYsddYJKmZjg4BcU2NsaiCiO/cMKMLrDVEdWJLppVkY/8L3m/9l9pigEsD7bDqZZN
         4Siw==
X-Gm-Message-State: AOJu0Yz5fTeGGM6QK0udPu49frHj84ZX8uxkigJykOdkISETXatKtAI4
	IQVfdOTCY3BivMs7m/rL68szVNLIKBmyr1B8gkMIujqPLP/i134+CslQhZ2Lgnedgn3WBzZs3Id
	87vfH5L/wmhPu+I2VtMQygcuar2y7dGI78lTP
X-Google-Smtp-Source: AGHT+IHxJ9h0TpEGL+1arI5K15dK7ZMfTGGFT7sxI5crnwlEMm10GtDatZbLxi1ebhRtIB1BUsGi7EDALv4X9Wo6UoA=
X-Received: by 2002:a2e:8496:0:b0:2cf:34b4:63de with SMTP id
 b22-20020a2e8496000000b002cf34b463demr4704323ljh.35.1706585540108; Mon, 29
 Jan 2024 19:32:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240126063500.2684087-1-wenst@chromium.org> <20240126063500.2684087-2-wenst@chromium.org>
 <74b9f249-fcb4-4338-bf7b-8477de6c935c@linaro.org> <CAGXv+5Hu+KsTBd1JtnKcaE3qUzPhHbunoVaH2++yfNopHtFf4g@mail.gmail.com>
 <21568334-b21f-429e-81cd-5ce77accaf3c@linaro.org>
In-Reply-To: <21568334-b21f-429e-81cd-5ce77accaf3c@linaro.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 30 Jan 2024 11:32:09 +0800
Message-ID: <CAGXv+5HxXzjigN3Bp96vkv71WfTJ1S2b7Wgafc4GxLmhu6+jMg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: net: bluetooth: Add MediaTek MT7921S
 SDIO Bluetooth
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Sean Wang <sean.wang@mediatek.com>, linux-bluetooth@vger.kernel.org, 
	netdev@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 29, 2024 at 3:34=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 29/01/2024 04:38, Chen-Yu Tsai wrote:
>
> >>> +allOf:
> >>> +  - $ref: bluetooth-controller.yaml#
> >>> +
> >>> +properties:
> >>> +  compatible:
> >>> +    enum:
> >>> +      - mediatek,mt7921s-bluetooth
> >>
> >> Can it be also WiFi on separate bus? How many device nodes do you need
> >> for this device?
> >
> > For the "S" variant, WiFi is also on SDIO. For the other two variants,
> > "U" and "E", WiFi goes over USB and PCIe respectively. On both those
> > variants, Bluetooth can either go over USB or UART. That is what I
> > gathered from the pinouts. There are a dozen GPIO pins which don't
> > have detailed descriptions though. If you want a comprehensive
> > binding of the whole chip and all its variants, I suggest we ask
> > MediaTek to provide it instead. My goal with the binding is to document
> > existing usage and allow me to upstream new device trees.
> >
> > For now we only need the Bluetooth node. The WiFi part is perfectly
> > detectable, and the driver doesn't seem to need the WiFi reset pin.
> > The Bluetooth driver only uses its reset pin to reset a hung controller=
.
>
> Then suffix "bluetooth" seems redundant.

I think keeping the suffix makes more sense though. The chip is a two
function piece, and this only targets one of the functions. Also, the
compatible string is already used in an existing driver [1] and
soon-to-be in-tree device tree [2].


ChenYu

[1] https://elixir.bootlin.com/linux/latest/source/drivers/bluetooth/btmtks=
dio.c#L1414
[2] https://elixir.bootlin.com/linux/v6.8-rc1/source/arch/arm64/boot/dts/me=
diatek/mt8183-kukui-jacuzzi-pico6.dts#L86

