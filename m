Return-Path: <devicetree+bounces-113120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 649309A4B4F
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 07:36:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7AEDF1C20E48
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 05:36:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7142A1BDAB3;
	Sat, 19 Oct 2024 05:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="od2+UPDr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0E81EA73
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 05:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729316189; cv=none; b=dPRlYZ4boaTdB2ZMHA8vHbD8wgMyChjfJIhA3AgyV02rTRvqRuZtppYFTVltna68IRkj24MQHBkkTKpF7VwgPT41bUTkc5GdYGFht+UTiHsqSo75UoSIrs28dgc3NYFNYbSqmKcIW+fl3JigMyckfKhxvsQ0TgtbZiKWx0OlTd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729316189; c=relaxed/simple;
	bh=eYJKIDjRTwY3Rk9kGcr2qmp+hceUxdxx2Saubylp8dA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XZB77/rTov81vD9jW/eyfZNQga2j/kla/zO8U6kNyqswxaUHqfQO618n4B5aKO+BVANj4Rh4cc8hGOse5Pwre1JsfF7429okyhtDvxtCS387bm8WNoqzrLoRQCTQk3/Z+8nSkQNfkBHrE4/SQxESoLPJV4OcTyDAhxbnZXdO7yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=od2+UPDr; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-50c9f4efd09so856644e0c.2
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 22:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729316186; x=1729920986; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lzfvgqsAxHWenBWftlkZ/uVSGEyAz3grmzhqBSSTfDI=;
        b=od2+UPDrRKDY5tmnr5KXJ3fV9gdJ953B9CdKTN7qVoa6oUjxTMHJgghTUBvCf2GRhY
         TkVxgSIdRllBsuO8eQ+N2+MpKxR12VYSn84L88Of1/9TIs31Nm6imI+i5cCsjTXkKYz0
         n3nLwzf6OPBu97JQ66Adku8axOtURwNzkacsc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729316186; x=1729920986;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lzfvgqsAxHWenBWftlkZ/uVSGEyAz3grmzhqBSSTfDI=;
        b=X9sFgKIWU/soc/YhOWJt5IaiXpHfm0ohZJz6989kt2sN1goRN4kQaIW51/DvRtOqJf
         LdlHolwVrZUZJl0u6mwDy3A26dN4zEF9HakU0O2s/xZw5na+UfJUgSXS6p+2H7UaDjQl
         7oT1/QReDNiXRG9JSukexZleuqKY4BJB2aR+UT/CIsfPQp2EjIw4IyPMKUdLA8lq4Ggx
         D6urx6yuJb21gEj5EbE13mZovdmzkeqafuR/axtGGMp8gXuYO83uj9VM4uod2rBvOdtG
         2qKuq0ki7hH2jAXelT2ay2s5VouFHQyOa4vIlI7YVnePsMYy1rJWuYp9TqNA1Hwbqml2
         hbCw==
X-Forwarded-Encrypted: i=1; AJvYcCWtstStieq8l+QehyzyFT5wq9brwMarRK8gp/Qb8cJwlHeeO+fhiuj6gBNHJyNjxUVWY5oy2aFzSQE4@vger.kernel.org
X-Gm-Message-State: AOJu0Yyqkf/f7Eqe2V+duUpUODTNABCAIZrm2pSbJorojSGnYAhDkFXT
	6tbyO1jV6e7b8nWiZ2WOfNQMocDRZE0Fy5aGGfX9vTafqNtNJ5j7u+HcNm8MQYmwa7JEN66vucs
	AFg==
X-Google-Smtp-Source: AGHT+IGHkqtMQ9xJWtTkiHKqPcBZg5eTmP4WcL2wC3c4legVyjKOys7YsXKDfA0i5PROK77lDilGgQ==
X-Received: by 2002:a05:6122:3088:b0:50a:c70b:9453 with SMTP id 71dfb90a1353d-50dda38a57emr4656724e0c.10.1729316185745;
        Fri, 18 Oct 2024 22:36:25 -0700 (PDT)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com. [209.85.221.171])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-50dd750a3c7sm440838e0c.24.2024.10.18.22.36.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2024 22:36:25 -0700 (PDT)
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-50d35639d0aso839717e0c.0
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 22:36:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUzVqKfmkKWb8+KjiTelfjxG/AnsgzE/A8YWhFhta3arZvaNoXWg+0zATQBa1aefnxb+d/8cC9mAHOZ@vger.kernel.org
X-Received: by 2002:a05:6102:3711:b0:48f:de23:14f0 with SMTP id
 ada2fe7eead31-4a5d6ad1703mr5830263137.8.1729316184547; Fri, 18 Oct 2024
 22:36:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241018-post-reset-v1-0-5aadb7550037@chromium.org> <172925540096.17773.4550001283125132036.robh@kernel.org>
In-Reply-To: <172925540096.17773.4550001283125132036.robh@kernel.org>
From: Fei Shao <fshao@chromium.org>
Date: Sat, 19 Oct 2024 13:35:47 +0800
X-Gmail-Original-Message-ID: <CAC=S1njH=D247j80MezGPHjwg_ZLWtH5gasXfOB-Y9Geq50frA@mail.gmail.com>
Message-ID: <CAC=S1njH=D247j80MezGPHjwg_ZLWtH5gasXfOB-Y9Geq50frA@mail.gmail.com>
Subject: Re: [PATCH 0/2] Using i2c-hid-of-elan driver instead of i2c-hid-of driver
To: "Rob Herring (Arm)" <robh@kernel.org>, Hsin-Te Yuan <yuanhsinte@chromium.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	Hsin-Yi Wang <hsinyi@chromium.org>, Benjamin Tissoires <bentiss@kernel.org>, linux-kernel@vger.kernel.org, 
	Conor Dooley <conor+dt@kernel.org>, Enric Balletbo i Serra <eballetbo@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Hans de Goede <hdegoede@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 18, 2024 at 8:57=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org>=
 wrote:
>
>
> On Fri, 18 Oct 2024 12:03:03 +0000, Hsin-Te Yuan wrote:
> > After commit 2be404486c05 ("HID: i2c-hid-of: Add reset GPIO support to
> > i2c-hid-of"), i2c-hid-of driver resets the touchscreen without having
> > proper post-reset delay on OF platform.  From the commit message of tha=
t
> > commit, not to decribe poset-reset delay in device tree is intended.
> > Instead, describing the delay in platform data and changing to use
> > specialized driver is more preferable solution.
> >
> > Also workaround the race condition of pinctrl used by touchscreen and
> > trackpad in this series to avoid merge conflict.
> >
> > Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
> > ---
> > Hsin-Te Yuan (2):
> >       arm64: dts: mediatek: mt8183: Fix race condition of pinctrl
> >       arm64: dts: mediatek: mt8183: Switch to Elan touchscreen driver
> >
> >  arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts |  2 --
> >  arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts  |  3 ---
> >  arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts   | 12 +++-=
--------
> >  .../boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts   | 11 ++--=
-------
> >  .../boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts   | 11 ++--=
-------
> >  .../boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts   | 11 ++--=
-------
> >  .../arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi |  3 ---
> >  .../boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper.dtsi      |  3 ---
> >  arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico.dts   |  3 ---
> >  arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts  |  3 ---
> >  .../arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-willow.dtsi |  3 ---
> >  arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi       | 10 +++-=
------
> >  12 files changed, 12 insertions(+), 63 deletions(-)
> > ---
> > base-commit: eca631b8fe808748d7585059c4307005ca5c5820
> > change-id: 20241018-post-reset-ac66b0351613
> >
> > Best regards,
> > --
> > Hsin-Te Yuan <yuanhsinte@chromium.org>
> >
> >
> >
>
>
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
>
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
>
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
>
>   pip3 install dtschema --upgrade
>
>
> New warnings running 'make CHECK_DTBS=3Dy mediatek/mt8183-kukui-jacuzzi-b=
urnet.dtb mediatek/mt8183-kukui-jacuzzi-cozmo.dtb mediatek/mt8183-kukui-jac=
uzzi-damu.dtb mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dtb mediatek/mt8183=
-kukui-jacuzzi-fennel-sku6.dtb mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dt=
b mediatek/mt8183-kukui-jacuzzi-pico.dtb mediatek/mt8183-kukui-jacuzzi-pico=
6.dtb' for 20241018-post-reset-v1-0-5aadb7550037@chromium.org:
>
> arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico.dtb: dpi@14015000:=
 power-domains: False schema does not allow [[92, 7]]
>         from schema $id: http://devicetree.org/schemas/display/mediatek/m=
ediatek,dpi.yaml#
> arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dtb: dpi@14015000:=
 power-domains: False schema does not allow [[94, 7]]
>         from schema $id: http://devicetree.org/schemas/display/mediatek/m=
ediatek,dpi.yaml#
> arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dtb: dpi@14015000=
: power-domains: False schema does not allow [[92, 7]]
>         from schema $id: http://devicetree.org/schemas/display/mediatek/m=
ediatek,dpi.yaml#
> arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dtb: dpi@14015000=
: power-domains: False schema does not allow [[90, 7]]
>         from schema $id: http://devicetree.org/schemas/display/mediatek/m=
ediatek,dpi.yaml#
> arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dtb: dpi@1401500=
0: power-domains: False schema does not allow [[92, 7]]
>         from schema $id: http://devicetree.org/schemas/display/mediatek/m=
ediatek,dpi.yaml#
>

I sent a patch that should fix these errors:
https://lore.kernel.org/all/20241019052935.553886-1-fshao@chromium.org/

Regards,
Fei

