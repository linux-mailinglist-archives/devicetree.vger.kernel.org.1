Return-Path: <devicetree+bounces-10808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCBE7D2C93
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 10:23:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DABED1C2031C
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 08:23:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB4E963A8;
	Mon, 23 Oct 2023 08:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TJWrolUY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89D314C8E
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 08:23:49 +0000 (UTC)
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09E64E0
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 01:23:47 -0700 (PDT)
Received: by mail-yb1-xb2e.google.com with SMTP id 3f1490d57ef6-d9caf5cc948so2805903276.0
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 01:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698049426; x=1698654226; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YpnntzEb5o/Ml0Qqe0KCKq4eq7J7NuQ3k8IMCzED+Ts=;
        b=TJWrolUYCT5emRY6ml9XKBbUnfz5Zl1sbvwSQ9hcWNUCqssj4QzlWiwg+aO4ZhI40n
         MlSgozndN7cWKneUbFK/z51CtG5YcM/RrDdGzSHlEjoFQoCQDiaLeog6AA2zyCXFC03U
         oRRo5f/TuC1y81Goa/bChFYycNRpzEuYVoCV6PBjgotYMynlUXO8bg1bDIYFOWS6wCHw
         aqYWSoWzSaVT5mzUp9hPQWaf1+kcP7/jXg3U2CKMcLakQb0G0BxBSwPefDRRno9hRLjC
         EyDcL5t4iTDdFHdbkDmyiT9DXpx1A3LPAGongWichdtjich3C4Xbonw0XTD85MtNVr3i
         Lm9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698049426; x=1698654226;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YpnntzEb5o/Ml0Qqe0KCKq4eq7J7NuQ3k8IMCzED+Ts=;
        b=fK4VDoS76BBWwaEJdRryOankqMHG0bKSyA9vakoQ/ogQ9lmdFmdkbSt4N1YC76ZMZa
         y2h6MFI094Df+iDKdI8tLXMUL68hR13NHTDpr5sIDJOO97eSjmpLj/ocsBua86kKso6v
         dYYNgPQuufc74GxEkoU51BgM1ZUDQsC/2p5J7WQAKFlQ16DKAcxvMH4HvJWrtbAa3Ogl
         o+zy+Mbdj9LePFuqQkedUu1SM457nn3qzIwKNBhOiDU18j8PXOrKQqZdiQFTxWd1CELI
         pTLpiJNhS1GyZswXmUeXRnKWWXCRx14WtPexYFJQixf/V/1LBmeuwRoQqToJthfJm90Y
         Qyqw==
X-Gm-Message-State: AOJu0YxDL7fexJT4JphN2tQ8BVIt5H7g7PhXDidoozkHFDQ24ZBcb5Q5
	LZOJCCI9U5fcFaDkupdFLKoDleOkwm09Pn+3TBTJ8g==
X-Google-Smtp-Source: AGHT+IF6ftqwtJugUOJmnNX5j0h06zjDNP/RGkApQv6ItGfNW54yB/Tbq1iZq2wbglRvkVe+knfJjLN9DZIKxICOgMM=
X-Received: by 2002:a25:e606:0:b0:d9a:56c2:545c with SMTP id
 d6-20020a25e606000000b00d9a56c2545cmr7898590ybh.15.1698049426245; Mon, 23 Oct
 2023 01:23:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231020185203.3941590-2-robh@kernel.org>
In-Reply-To: <20231020185203.3941590-2-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 23 Oct 2023 10:23:35 +0200
Message-ID: <CACRpkdY7eroz_+wgb9p8y4DnsNs4w=X1DpqPhVx2LTuedUO55Q@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: pinctrl: brcm: Ensure all child node
 properties are documented
To: Rob Herring <robh@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>, 
	Jonas Gorski <jonas.gorski@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 20, 2023 at 8:59=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:

> The Broadcom pinctrl bindings are incomplete for child nodes as they are
> missing 'unevaluatedProperties: false' to prevent unknown properties.
> Fixing this reveals many warnings including having grandchild nodes in so=
me
> cases. Many cases in the examples use 'group' property which is
> undocumented and not used by the driver. As the schemas define 'pins', I
> assume that is the correct name except for the one case, 6358, using
> 'groups' which is documented.
>
> Signed-off-by: Rob Herring <robh@kernel.org>

Patch applied!

> Well, it's been a year[1] and no one else has stepped up to fix these
> bindings. I'm still not certain where "pins" vs. "groups" is correct or
> whether it even matters (to the driver). As there are no .dts files to
> go by, I went with the schema being correct unless the example was the
> complete opposite (6358).
>
> This is about the last thing blocking enabling checks that child node
> schemas have unevaluatedProperties or additionalProperties. If no one
> wants to fix this correctly, then apply this or we should remove the
> bindings.
>
> [1] https://lore.kernel.org/all/20220816183911.2517173-1-robh@kernel.org/

AFAICT you did the right thing, thanks for your perseverance on
this Rob!

Yours,
Linus Walleij

