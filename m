Return-Path: <devicetree+bounces-22070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B37C806538
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 03:43:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7BFF31C210F6
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 02:43:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF0C9EC9;
	Wed,  6 Dec 2023 02:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EAqMPUCv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DD29129
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 18:43:55 -0800 (PST)
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-6d8750718adso3265676a34.0
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 18:43:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701830634; x=1702435434; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lNRQu6oyNFbpjA1kqXJBdLfx5S4cnvF7XoM5bFKpgiE=;
        b=EAqMPUCveYO/eZ54ipPErWC5iEbotaNLUUVvcJgaSu9ze9ecSZ4ONnhqM9y07GG9Ft
         TcnwYTIMGWzuxz+ERjoEYKh9XTiVw6WWEvh0hhm5h9PWGLnZedMAtsrVHy0aoNHKHK2d
         RasIXMHz1OlwIi8IEUUBWgEAsfLtYpsyomBuSOj+oX69gVbd9yKPdWAZP1w1U7XFrHWS
         XeOimAE8bkESfmShVRCEvIfvADXuM0Wko+sSgIw/MfEOzj2mx5IhUETqrmq5JejPMMPj
         zTrx2ZZZWsE72LdAjL/2qUZK778bYQxTJFdfOKfAo4EXMWHdlcxdLGXwuxFeRVaV2y3k
         38oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701830634; x=1702435434;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lNRQu6oyNFbpjA1kqXJBdLfx5S4cnvF7XoM5bFKpgiE=;
        b=gZUxlkwCdt7Vak7ARM0uadWzgj7kOSER0Tw0UgCjwDt3iaytE3X+/9m8vQ482tqGs6
         wxng5aszRSRGTWiOWgK7rIqY25TIics2v0lejABooCCZOnUWuEd3eUjAqYgVvRX3aiEH
         G/rFuNs4UBDxJHzDzN29mUA91WsiV6g3+6N53oSdMFqN1FnwoEuPdrwA37sFSLMI71nf
         bok2yNMx2cIiEH1mVHF7xMsofS2iSPxqvyaP2jZouSLAKxALXMgVnYwrJp6W2hMzXlVR
         OMnBQ+WR4m9lca6z1bcj9PTJCIfKevci9LSg2pWPpQeQZjdsbo+d0OzRDKshTDUyoBS9
         Xh+g==
X-Gm-Message-State: AOJu0YzeG2QgUAk+HsvF99F7rNZgtgY0iuB+VeueKxo8jZAEqW8O17CC
	x55J44iVE/43YDgckmSP44r25dBh+mT33RLj1a0iQrX/ivc=
X-Google-Smtp-Source: AGHT+IE/01zByJdpwb+ejZn+nZCVZSSt1bpaoOMo+UVjmmFQ7HJnu/gZHm4xhXcv1QQlqg3R+sMuh9ZUGzC3iN8jO+4=
X-Received: by 2002:a05:6358:5921:b0:16e:5950:67c with SMTP id
 g33-20020a056358592100b0016e5950067cmr474038rwf.25.1701830633962; Tue, 05 Dec
 2023 18:43:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231206012831.2179356-1-festevam@gmail.com>
In-Reply-To: <20231206012831.2179356-1-festevam@gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 5 Dec 2023 20:43:42 -0600
Message-ID: <CAHCN7xLiSpYN4BF4MGWdUypKf0YLaCsAq1RfSeo1xTOyAiyXkw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display: adi,adv75xx: Document #sound-dai-cells
To: Fabio Estevam <festevam@gmail.com>
Cc: Laurent.pinchart@ideasonboard.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 5, 2023 at 7:28=E2=80=AFPM Fabio Estevam <festevam@gmail.com> w=
rote:
>
> From: Fabio Estevam <festevam@denx.de>
>
> When using audio from ADV7533 or ADV7535 and describing the audio
> card via simple-audio-card, the '#sound-dai-cells' needs to be passed.
>
> Document the '#sound-dai-cells' property to fix the following
> dt-schema warning:
>

Thanks for doing that.

> imx8mn-beacon-kit.dtb: hdmi@3d: '#sound-dai-cells' does not match any of =
the regexes: 'pinctrl-[0-9]+'
>         from schema $id: http://devicetree.org/schemas/display/bridge/adi=
,adv7533.yaml#
>

Acked-by: Adam Ford <aford173@gmail.com>

> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  .../devicetree/bindings/display/bridge/adi,adv7533.yaml        | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/adi,adv7533=
.yaml b/Documentation/devicetree/bindings/display/bridge/adi,adv7533.yaml
> index 987aa83c2649..e15ae072922e 100644
> --- a/Documentation/devicetree/bindings/display/bridge/adi,adv7533.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/adi,adv7533.yaml
> @@ -89,6 +89,9 @@ properties:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      enum: [ 1, 2, 3, 4 ]
>
> +  '#sound-dai-cells':
> +    const: 0
> +
>    ports:
>      description:
>        The ADV7533/35 has two video ports and one audio port.
> --
> 2.34.1
>

