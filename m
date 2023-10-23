Return-Path: <devicetree+bounces-10798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC447D2BE5
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 09:51:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1756CB20D15
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 07:51:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49DEB10950;
	Mon, 23 Oct 2023 07:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x0SPzP8T"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E363323C5
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:51:13 +0000 (UTC)
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DD3EDB
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 00:51:12 -0700 (PDT)
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-d9b2ca542e5so2840608276.3
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 00:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698047472; x=1698652272; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hwpfXuSMxW2SQUceKEQObxa1Va7HSYmmlN8vyK0Wa9g=;
        b=x0SPzP8TWH+DPfQr77Ql2yskLtJZKTK8bIJotYstSKFjPUB1x17bq6XAliStZmCSg2
         T0nHM6LbOFkUkwMc1cMQqgc8JOVQ1Nihi0Sia48WHr6x0uC/zA5uuA9hYCcpdEToOMk+
         wKYjwFA6orwPnjeNhaNA80itrbQcBmUPyWusyHH8PL1XOmHk6Pob6k9U7NvwHvAFfgTA
         vh83w/x7MCu8lJ/BW/6bo7yv76YG8xh7L0i+wUGG10XhbXcrEgnKsQJvEPSAtDOKtqt9
         wsoJp3OFO9suLPOvSywFp24515u6f/aMX1GBe9bS9L4CqCHpSyUcZPc6YBOlM2sFqgbK
         R/fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698047472; x=1698652272;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hwpfXuSMxW2SQUceKEQObxa1Va7HSYmmlN8vyK0Wa9g=;
        b=mUl3/JtjEiz/cwnxEXDqz72kc/c+Af9F4dYTVtIAq31m+C4t0sBMNXvMlX1dF1b8Pb
         ZhWkdoVWezaEw9g6pgTsV84OdNgYYTDsxxqY2rnqcGGybaeS7ikBWDTRRG/eZqG6SRjC
         CZRGnE5uC/Ldbzz0+HDWcozAgTmASaIu0I8aWrqo6IZYRVR5eyps5dxWFspbmD4JKGWE
         bqCOGgorgliJP8FvNTOkCRFWm2g4YLnevsy1K67IyI12p+iN0R2/FQupNYJ0esXPF3PG
         55lUnqtH2mKdoIQbanaB7g4tjpvlW1h152kQtccjtjFgMOEQqCx+ws+gbGLg4lZUCkR5
         yn2Q==
X-Gm-Message-State: AOJu0YxuvTv2BUdaCJIU6usqsy6TWekAF8AXIxfJjVw7MyVraunRT+k7
	sPE74VyRfNvSoDkQ1Qqf+Nb1Emv1v9tdask+q1FNog==
X-Google-Smtp-Source: AGHT+IHjwVacJ7rVA2lCtIQF3l4kMyb0ZMctra14lquxIIj/j34f3PN6Hrfc6Nsb/yiuys+Hr1x5NE7foptIZcLlM+c=
X-Received: by 2002:a25:d8ca:0:b0:d81:6151:2031 with SMTP id
 p193-20020a25d8ca000000b00d8161512031mr9021111ybg.61.1698047471820; Mon, 23
 Oct 2023 00:51:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231023-marvell-88e6152-wan-led-v5-0-0e82952015a7@linaro.org> <20231023-marvell-88e6152-wan-led-v5-1-0e82952015a7@linaro.org>
In-Reply-To: <20231023-marvell-88e6152-wan-led-v5-1-0e82952015a7@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 23 Oct 2023 09:51:00 +0200
Message-ID: <CACRpkdZ_o0pMXZEVWfGiu2tPjv=dLMagT6KF-d=kaZ6fJZqr0A@mail.gmail.com>
Subject: Re: [PATCH net-next v5 1/7] dt-bindings: net: dsa: Require ports or ethernet-ports
To: Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Russell King <linux@armlinux.org.uk>, Florian Fainelli <f.fainelli@gmail.com>, 
	Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: Christian Marangi <ansuelsmth@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 23, 2023 at 9:19=E2=80=AFAM Linus Walleij <linus.walleij@linaro=
.org> wrote:

> Bindings using dsa.yaml#/$defs/ethernet-ports specify that
> a DSA switch node need to have a ports or ethernet-ports
> subnode, and that is actually required, so add requirements
> using oneOf.
>
> Suggested-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
(...)
> +  oneOf:
> +    - required:
> +      - ports
> +    - required:
> +      - ethernet-ports

Ooops I meant to drop the patch altogether because I just
couldn't figure out how to test this.

Ignore bot complaints on this one then.

Yours,
Linus Walleij

