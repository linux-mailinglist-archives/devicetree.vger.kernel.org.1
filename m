Return-Path: <devicetree+bounces-46856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0F186AFF6
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 14:10:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A0271F273A5
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 13:10:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFDFE14A081;
	Wed, 28 Feb 2024 13:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="o2TwxEsP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E96149DE2
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 13:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709125786; cv=none; b=UXmZCJ4qXGLb+ZNAwmoWAGx3uLmxjUuNvWQB6upcRqgu4YwxLLX9Ew5B+1jmDpQTzlPY+Kh5M1u2ZMk48C7uzgIc7N9X1zkMN2Vzosj6sWvvLRCdswHB4GW+1NFrsaOVP4g8c9pQVPYYa9xdSqYTMeoy0J0AO2Zu4WbPk+l3b5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709125786; c=relaxed/simple;
	bh=22zXZ9PodnLDXQmS1om0gHCZZMIyrw8AhQ46vkhZT5A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WHk9Dq9zYLPin8GjPxudFolAG8pWq6AL66Pct87JaRwOjCMLqm/WHWEoKFT5EKY0bAQvmnifNYHUkSDLYjJFxAJRTReL27joca54TAZdcIiPeuDtSccqbQB3Da/LxiVC8XNrQpEvsuk967ros/ZCHhRA4Z/wOVuTgkgYySwZd4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=o2TwxEsP; arc=none smtp.client-ip=209.85.166.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-il1-f181.google.com with SMTP id e9e14a558f8ab-363bdac74c6so14992685ab.2
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 05:09:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709125784; x=1709730584; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JGd0yKh3396kCNNhs33PFvPTU/Yg35V86efPvYcoBpQ=;
        b=o2TwxEsP+gJMp3ow03MGNdnOkUCkXkZNZFxkG0bFRwyp6Hhjy8AS2TD4hf4Bv+okW2
         24/VnbmudIBL25D/AVoY6Foj7WagMoDIQxiY0pVjv6/9nqCVUu3BXW3MQXuWm6LTbrGT
         NWKAra5/5GkECn5ovSOpbgZDOwkOkUzGOJGFXx4pkIeWIDH+lcHFcMI/Ozms+8aNfIyT
         IVDhHbvhq2ebmsGsRRundQ42jYDwGFoQDvubxsG3nIDPRP9XCaqmAQ9aqJpUJaPXUvpR
         G1mIa5tu9M3HIhj3nTd0Y43zU0mReo3XgHNm9UooQA5xJEh15TWKtyaTpsFa7ccI4YXw
         Fd3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709125784; x=1709730584;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JGd0yKh3396kCNNhs33PFvPTU/Yg35V86efPvYcoBpQ=;
        b=aoULfN99RJx7tkvo61/BZpkkQQPsZF7nH1aILO8UDS57t48vHt/vacnSiLOJwQ21yo
         Yy2j45ljVkjGIGdfAg/6MH+PdmC2aNqpayNYqE/TPzM7eQ6x321VUGnHYBjE2vmDg3H/
         2Q5FGsh4JLKf2lg9XLzlHsiy5dbqoaNGUhMbHnM8n1fnPbJpIDRQSk0J2f7AS1HNSD+V
         2uk9MIvRdHIOwfJt18eBL8D8MVup+qv9Lw2zstJ6ZlYl+cNiK0C0zWvPN/tS/QfTPXzj
         LvovUuPz1XzTh4SWdu8bUJKWxgXmhNvMjIxsxLBycSQzTyjDqW53tZIUdmDlMEjzPjsX
         ZWXw==
X-Forwarded-Encrypted: i=1; AJvYcCVpeXUiZ4FFIzf9cSY0xN9Vj28ipckVceFxo22LcPXtXkjPsXN8E/+np4AHwMX8FyKtGFQWqNLdwSqCFhp1c7YP7oBnPNWi6dB64A==
X-Gm-Message-State: AOJu0Yxt4nKNT3TKCn+Ha7cDFEEk+ionxr7BVd3cY5KgBGsuT39mCB6z
	JZKmKAwT0yEXxcknKlizE30JihAZFG+e92d0N/lBoYq1TAP7eaK8iMsoFTj15rxiZLMrDL9Tc17
	K617zU0m0eC5fEKtB0npm72usbcZTx2Zl7ZZy
X-Google-Smtp-Source: AGHT+IGJeisdEj/eLYFhHeYjt+DGbEpr7KtQvVdRL5zUoH9Jx4NyFYMg/jqhD2nJmIFuj/tYaRq+v96fJA2neOwJEpk=
X-Received: by 2002:a05:6e02:2147:b0:365:d8a:21e0 with SMTP id
 d7-20020a056e02214700b003650d8a21e0mr17157230ilv.21.1709125784147; Wed, 28
 Feb 2024 05:09:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221160215.484151-1-panikiel@google.com> <20240221160215.484151-9-panikiel@google.com>
 <13aeb2ff-72f4-49d9-b65e-ddc31569a936@linaro.org> <CAM5zL5q0oKoTMR0jSwYVAChCOJ9iKYPRFiU1vH4qDqhHALKz4w@mail.gmail.com>
 <20240227142911.GB3863852-robh@kernel.org> <CAM5zL5pXu5sbzCHY_BrCJ7eZj-p9n0tCo6CmuTqUpvniTrqWJg@mail.gmail.com>
 <324f7b6e-c72c-40aa-afe6-779345c2eade@linaro.org>
In-Reply-To: <324f7b6e-c72c-40aa-afe6-779345c2eade@linaro.org>
From: =?UTF-8?Q?Pawe=C5=82_Anikiel?= <panikiel@google.com>
Date: Wed, 28 Feb 2024 14:09:33 +0100
Message-ID: <CAM5zL5oJSHxJK4QWsr2X23g-cN6G54VhGfuwHhMJ9rNu6+gZ=w@mail.gmail.com>
Subject: Re: [PATCH v2 8/9] media: dt-bindings: Add Intel Displayport RX IP
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, airlied@gmail.com, akpm@linux-foundation.org, 
	conor+dt@kernel.org, daniel@ffwll.ch, dinguyen@kernel.org, 
	hverkuil-cisco@xs4all.nl, krzysztof.kozlowski+dt@linaro.org, 
	maarten.lankhorst@linux.intel.com, mchehab@kernel.org, mripard@kernel.org, 
	tzimmermann@suse.de, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, chromeos-krk-upstreaming@google.com, 
	ribalda@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 28, 2024 at 1:18=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 28/02/2024 12:05, Pawe=C5=82 Anikiel wrote:
> > On Tue, Feb 27, 2024 at 3:29=E2=80=AFPM Rob Herring <robh@kernel.org> w=
rote:
> >>
> >> On Mon, Feb 26, 2024 at 11:59:42AM +0100, Pawe=C5=82 Anikiel wrote:
> >>> On Mon, Feb 26, 2024 at 10:13=E2=80=AFAM Krzysztof Kozlowski
> >>> <krzysztof.kozlowski@linaro.org> wrote:
> >>>>
> >>>> On 21/02/2024 17:02, Pawe=C5=82 Anikiel wrote:
> >>>>> The Intel Displayport RX IP is a part of the DisplayPort Intel FPGA=
 IP
> >>>>> Core. It implements a DisplayPort 1.4 receiver capable of HBR3 vide=
o
> >>>>> capture and Multi-Stream Transport. The user guide can be found her=
e:
> >>>>>
> >>>>> https://www.intel.com/programmable/technical-pdfs/683273.pdf
> >>>>>
> >>>>> Signed-off-by: Pawe=C5=82 Anikiel <panikiel@google.com>
> >>>>> ---
> >>>>>  .../devicetree/bindings/media/intel,dprx.yaml | 160 ++++++++++++++=
++++
> >>>>>  1 file changed, 160 insertions(+)
> >>>>>  create mode 100644 Documentation/devicetree/bindings/media/intel,d=
prx.yaml
> >>>>>
> >>>>> diff --git a/Documentation/devicetree/bindings/media/intel,dprx.yam=
l b/Documentation/devicetree/bindings/media/intel,dprx.yaml
> >>>>> new file mode 100644
> >>>>> index 000000000000..31025f2d5dcd
> >>>>> --- /dev/null
> >>>>> +++ b/Documentation/devicetree/bindings/media/intel,dprx.yaml
> >>>>> @@ -0,0 +1,160 @@
> >>>>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> >>>>> +%YAML 1.2
> >>>>> +---
> >>>>> +$id: http://devicetree.org/schemas/media/intel,dprx.yaml#
> >>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>>>> +
> >>>>> +title: Intel DisplayPort RX IP
> >>>>> +
> >>>>> +maintainers:
> >>>>> +  - Pawe=C5=82 Anikiel <panikiel@google.com>
> >>>>> +
> >>>>> +description: |
> >>>>> +  The Intel Displayport RX IP is a part of the DisplayPort Intel F=
PGA IP
> >>>>> +  Core. It implements a DisplayPort 1.4 receiver capable of HBR3 v=
ideo
> >>>>> +  capture and Multi-Stream Transport.
> >>>>> +
> >>>>> +  The IP features a large number of configuration parameters, foun=
d at:
> >>>>> +  https://www.intel.com/content/www/us/en/docs/programmable/683273=
/23-3-20-0-1/sink-parameters.html
> >>>>> +
> >>>>> +  The following parameters have to be enabled:
> >>>>> +    - Support DisplayPort sink
> >>>>> +    - Enable GPU control
> >>>>> +  The following parameters' values have to be set in the devicetre=
e:
> >>>>> +    - RX maximum link rate
> >>>>> +    - Maximum lane count
> >>>>> +    - Support MST
> >>>>> +    - Max stream count (only if Support MST is enabled)
> >>>>> +
> >>>>> +properties:
> >>>>> +  compatible:
> >>>>> +    const: intel,dprx-20.0.1
> >>>>> +
> >>>>> +  reg:
> >>>>> +    maxItems: 1
> >>>>> +
> >>>>> +  interrupts:
> >>>>> +    maxItems: 1
> >>>>> +
> >>>>> +  intel,max-link-rate:
> >>>>> +    $ref: /schemas/types.yaml#/definitions/uint32
> >>>>> +    description: Max link rate configuration parameter
> >>>>
> >>>> Please do not duplicate property name in description. It's useless.
> >>>> Instead explain what is this responsible for.
> >>>>
> >>>> Why max-link-rate would differ for the same dprx-20.0.1? And why
> >>>> standard properties cannot be used?
> >>>>
> >>>> Same for all questions below.
> >>>
> >>> These four properties are the IP configuration parameters mentioned i=
n
> >>> the device description. When generating the IP core you can set these
> >>> parameters, which could make them differ for the same dprx-20.0.1.
> >>> They are documented in the user guide, for which I also put a link in
> >>> the description. Is that enough? Or should I also document these
> >>> parameters here?
> >>
> >> Use the standard properties: link-frequencies and data-lanes. Those go
> >> under the port(s) because they are inheritly per logical link.
> >
> > The DP receiver has one input interface (a deserialized DP stream),
> > and up to four output interfaces (the decoded video streams). The "max
> > link rate" and "max lane count" parameters only describe the input
> > interface to the receiver. However, the port(s) I am using here are
> > for the output streams. They are not affected by those parameters, so
> > I don't think these properties should go under the output port(s).
> >
> > The receiver doesn't have an input port in the DT, because there isn't
> > any controllable entity on the other side - the deserializer doesn't
> > have any software interface. Since these standard properties
> > (link-frequencies and data-lanes) are only defined in
> > video-interfaces.yaml (which IIUC describes a graph endpoint), I can't
> > use them directly in the device node.
>
> DT describes the hardware, so where does the input come? From something,
> right? Regardless if you have a driver or not. There is dp-connector
> binding, if this is physical port.

Yes, it is a physical port. I agree adding a DT node for the physical
DP input connector would let us add link-frequencies to the input port
of the receiver.

However, dp-connector seems to be a binding for an output port - it's
under schemas/display/connector, and DP_PWR can be a power supply only
for an output port (looking at the dp-pwr-supply property). Also, the
driver for this binding is a DRM bridge driver (display-connector.c)
which would not be compatible with a v4l2 (sub)device.

