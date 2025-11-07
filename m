Return-Path: <devicetree+bounces-235927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7F0C3E613
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 04:41:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A7A173AFB1C
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 03:39:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D7932F9C2A;
	Fri,  7 Nov 2025 03:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="WJ8yOBBr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD4516132F
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 03:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762486787; cv=none; b=F+A9ECfTQSZikvWbhsYb+o7SHt8kuY21dionabl3RgTWW5t+FipQHJm6ks/6Xr6D+vkuWgHKDygV+nni5s8BjgnhKGi6caJ5eXtvltlhG7jPf85hsG1o2VJ7KFJuJjAg2RXjopJHiWNXf/X1gwOZWoaLkOvjR4V/9p3KUIuQP54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762486787; c=relaxed/simple;
	bh=hYOeoqXmSEIDHI78r81gIByIxvqycJsoQtqBa4+ZRmc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qkEDSCpxg985GPHS+hpZnVTLbV82llNR7nMi0UmmYWyrhVPOk/4Aw7MNw3llGVfhoRBSxEsBUOlPQuvor2wsQmQqLIxOnJutJIAAWx55xT8bsLe6+P/S3fdQDNov0BprOxaz7zKmN66LSYzaF8meTlpHZN78zs5Wp4CcXa6ujaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=WJ8yOBBr; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-429bf011e6cso257819f8f.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 19:39:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1762486783; x=1763091583; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vbO2nTB7Qh4Qw6JsJr6W4VgsgC2mZidOm7iZWG0m/78=;
        b=WJ8yOBBrnDqu6KHDZuK5drza3tRu8dVg+rG/hNmICmNCO7dTU5mxoekLGBCanXKqVt
         dSssoBFTwMGKUoUKMAGKrzfW/qD26TU6CIRYw8s2Xm53rOzoCJLFhf7208RpAbVq3Uzb
         cwO94UjgK45X3edusQNOkkrHHC7VKWhpPQ/Qvozd0/llLpABPdrZyVy3tyB4rmF3F81I
         TOAeyf07UQl1kRyjW8xINXC62Vd/Buimph0xroSV8A/9rK3JoTWB4ohfDTqAw+RiSP7N
         ZiExonkST1QmcySFfAUIqUBStH2YZIzTpM1eW5j9ID+bgOwoHCqRgf8CF3qr4R/aPvs/
         PYFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762486783; x=1763091583;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vbO2nTB7Qh4Qw6JsJr6W4VgsgC2mZidOm7iZWG0m/78=;
        b=lM4OGllP3tR9gi9mj1VFq04tssp+ILwJ10o1ZUkmCSP4BM8O9dZAB/Yf21L+k8pwpF
         6RXCIyS0lm1NhC+7fY6rOteUTZoAXMi7BSRvcGPz/6AGJj2GzTgtT/e5cTyJhLUsja7+
         MzLBTaS8mmMVHZgY/Z/nYicxKLi+ZQo3ijjHC/1CJ4Vu5XmG803c6xJLb9Bub+mRTYdh
         sCWsIEaorTmDs0DO8mBsarmyP2fMIE5GegaHUcunAOXG7b3glz3NIMrtRNzOubNvtsSp
         T/cQjMSF0OpaLc6lRcVugOXo6bAXQECEKkamn7onQohrZQh0e4lgl5eYxUX6BbDfKkGx
         g/iA==
X-Forwarded-Encrypted: i=1; AJvYcCX7Xx5TQyEFwK79ZXKZ+UYFLIkS3kq5drJjn2c/uCHX/jnFGLrc9uTEkj1Mogoa/8SqXpOrU6jDsjNO@vger.kernel.org
X-Gm-Message-State: AOJu0YzgqxPkb72v/PtjPXfgLhXlOYploeqyugExc8WmhC+WyzsO7RrL
	SN0WNDi+2QrDaRV2wNl00OgRzLHzqcROMAe+Tb4LuVz0tkdGMykO+Dwy7dj6inIF1I9grZqkMTr
	VS4kz4QQR1Y19uIPvJiqD4FZL6HPQ8X6W8qevtilf
X-Gm-Gg: ASbGncuY6X98J8B6QK+Q0440CgBtiBGW0Ct8IMy36Nkiy4DocTbo+WpLVjo8pDjrawW
	JzB6Eg6WIq3HAr5f4hulrQ83vV7zkPUJMN7XNDbalumDIyoRo5HLtQMV1neCFTNof53xM1NyedZ
	oWd/SRih9Ox9aS8TX3XLa+QJ7iDrSlbS/QSUyVpoe65I2aCuk3P0qUjwXm6fkXbf5uOWqQx9dcd
	d5ycjufuooS5CzhPIqdb41tj2Dcw5cVP0VUC+fXS+PolaEO1J4yTIYlqOEheL/i2ptzrOsLUJx/
	PVl6fRgx3HV9fCK4Z0SThm5c
X-Google-Smtp-Source: AGHT+IGEh7IhvQg+TrDD6zZjcWzRpXTsExEgfoQszOkKmBt1xXGm8ca7e3AYQMZfs4zZsYumxirBfUxPg23Zvt75ckw=
X-Received: by 2002:a05:6000:240a:b0:429:d6dc:ae2f with SMTP id
 ffacd0b85a97d-42ae5ac513dmr1043717f8f.31.1762486783011; Thu, 06 Nov 2025
 19:39:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251029214032.3175261-1-royluo@google.com> <20251029214032.3175261-2-royluo@google.com>
In-Reply-To: <20251029214032.3175261-2-royluo@google.com>
From: Doug Anderson <dianders@google.com>
Date: Thu, 6 Nov 2025 19:39:31 -0800
X-Gm-Features: AWmQ_bk0tg9nfbEFrAczn7gf3WHlPnE4d6lMh6R1gsb1gSV599Sr46OpKQ3eUsM
Message-ID: <CAD=FV=VYOD=33secA=2ozE8EO6Z_Wi_ZjiDMov5oP8Z42JytAg@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
To: Roy Luo <royluo@google.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Oct 29, 2025 at 2:40=E2=80=AFPM Roy Luo <royluo@google.com> wrote:
>
> Document the device tree bindings for the USB PHY interfaces integrated
> with the DWC3 controller on Google Tensor SoCs, starting with G5
> generation. The USB PHY on Tensor G5 includes two integrated Synopsys
> PHY IPs: the eUSB 2.0 PHY IP and the USB 3.2/DisplayPort combo PHY IP.
>
> Due to a complete architectural overhaul in the Google Tensor G5, the
> existing Samsung/Exynos USB PHY binding for older generations of Google
> silicons such as gs101 are no longer compatible, necessitating this new
> device tree binding.
>
> Signed-off-by: Roy Luo <royluo@google.com>
> ---
>  .../bindings/phy/google,gs5-usb-phy.yaml      | 127 ++++++++++++++++++
>  1 file changed, 127 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/google,gs5-usb-=
phy.yaml
>
> diff --git a/Documentation/devicetree/bindings/phy/google,gs5-usb-phy.yam=
l b/Documentation/devicetree/bindings/phy/google,gs5-usb-phy.yaml
> new file mode 100644
> index 000000000000..8a590036fbac
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/google,gs5-usb-phy.yaml
> @@ -0,0 +1,127 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2025, Google LLC
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/google,gs5-usb-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Google Tensor Series (G5+) USB PHY
> +
> +maintainers:
> +  - Roy Luo <royluo@google.com>
> +
> +description: |
> +  Describes the USB PHY interfaces integrated with the DWC3 USB controll=
er on
> +  Google Tensor SoCs, starting with the G5 generation.
> +  Two specific PHY IPs from Synopsys are integrated, including eUSB 2.0 =
PHY IP
> +  and USB 3.2/DisplayPort combo PHY IP.
> +
> +properties:
> +  compatible:
> +    const: google,gs5-usb-phy

FWIW, we've had some rather heated bikeshedding at Google about the
use of "gs5" to refer to this processor.

* The processor is almost exclusively referred to as "lga" in code at Googl=
e.

* The processor's code name is "laguna".

* Nobody is aware of the processor being referred to as "gs5"
internally. Though this is the 5th Google Silicon ("GS") processor, so
it makes some sense, "gs5" is not really an official name for it. At
least one person pointed to the fact that it's a tad bit confusing
that the first generation Tensor processor is called "gs101" upstream
and the fifth generation is called "gs5".

* Some folks proposed "gs501" to match the "gs101, gs201, ..." trend.
The first two Tensor processors were definitely called "gs101" and
"gs201" and the next two were referred to as "gs301" and "gs401" in
some internal docs, though this was discouraged. The processor in
Pixel 10 was never called "gs501" internally as far as I can tell.


In any case, it's a bit of a mess. The straw poll I took seemed to
land on "lga" being the preferred name to continue to refer to this
processor in upstream code. Would it be possible to change from "gs5"
to "lga" here? The "laguna" code name for this processor is well known
publicly and it's generally quite common to refer to processors (and
boards) by their codenames, since codenames are often available sooner
than marketing names and also less likely to change. Indeed, I was
even CCed on a change recently where there were plans to move away
from a processor ID and back to a codename [1].


[1] http://lore.kernel.org/r/20251030-rename-dts-2-v1-2-80c0b81c4d77@oss.qu=
alcomm.com

