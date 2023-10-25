Return-Path: <devicetree+bounces-11996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 592917D75E4
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 22:39:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8975E1C20EA0
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 20:39:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4941F168DF;
	Wed, 25 Oct 2023 20:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pnQz7nld"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED5F34189
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 20:39:06 +0000 (UTC)
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7920138
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:39:03 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-3b2f507c03cso70636b6e.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698266343; x=1698871143; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6khk/5saRJ5wqqk5EGjL6JypeKXNJsBDKUmUNtNfB6U=;
        b=pnQz7nldP3CvSiz3y3q9b2E9Fvds8IGmkjpONP8Lvg52VcrjFKivWPY9z/SSAadrfM
         FcOQhGkOtCU47FVjofOIQRbYPC70K2uxNtMPldouKQIA/Z2NsrQL2/oUawC34Uuw277X
         FIA8i0VPYGPj/6oaWQBjJZfFLzAXdWxRxkP+oS9UxyGKP2PcMyk+dUwGDa7CrELYBS9V
         4Qe3+xwBWugLMr/16E6grLoDqAxSiozeYEtZnmSJCV0B4MD7v8KoqLFlVicQf0onFTgj
         lyt140Kk/WJhEB75HssRBFS7bo/ADMHCmeTJhh75ti9yul105axQV4G+4Gm1DpRopSsr
         SVRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698266343; x=1698871143;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6khk/5saRJ5wqqk5EGjL6JypeKXNJsBDKUmUNtNfB6U=;
        b=AD/dvNc3hu6D8CO1TFhBA/nB11pUnTFg9cnMpH8A+VtVrkrqj+/tHkciy3xRYu6e5A
         wSBnMu1rwNNYuGpLamONLRaFVAAjerVQw9wMqcciuIhjkiLhN+DLXq/YnduGJ9ZrDBuT
         k/fhjnijthUffZ2uPhorKnptOQWvKNFKI4EHKhn0zGmrDMuljQAb+9/F5Fn0hC0fVc0Q
         L2NR2ntV4cMtMSRDDf5XoPnoaRadJ5fuNs++0k/61tNvl6uARjGoe1J4Zz2l9LdmM30G
         eTOSqsbuo57i6gFCzvruYqRZlx/4wK5DAvxxD5nwo527rB61LuDboG/LVBET/TMLR+Ip
         2GlA==
X-Gm-Message-State: AOJu0Yx/6Jd7/qqBBWXeW46G/st/kf9PvddWpuzxAWqNGzg/rzEIiZ3U
	/G+q/kmb1DoTdVhFZGd/apMzOH/ddx0P/3EEmt2jjQ==
X-Google-Smtp-Source: AGHT+IGREe0uQGqyfG23kicSwvwK4dDtMAqN6R5iQBzlVa/gRHPbGYMD4dpmT7V4Kupo3PvpH+/9VzgtRxdVQGk5XbA=
X-Received: by 2002:a05:6808:d4f:b0:3a9:cfb5:4641 with SMTP id
 w15-20020a0568080d4f00b003a9cfb54641mr18694195oik.48.1698266343061; Wed, 25
 Oct 2023 13:39:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231024-marvell-88e6152-wan-led-v6-0-993ab0949344@linaro.org>
 <20231024-marvell-88e6152-wan-led-v6-1-993ab0949344@linaro.org>
 <169815156038.3447619.17571704457000261488.robh@kernel.org>
 <CACRpkdZMSfKYaXR9NWpvca094=Prc6N8ZfR+QMcfS6VQ-prQRA@mail.gmail.com> <20231024201024.6cyoqy5vbctbgtfe@skbuf>
In-Reply-To: <20231024201024.6cyoqy5vbctbgtfe@skbuf>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 25 Oct 2023 22:38:50 +0200
Message-ID: <CACRpkdb2TRa4v9Phv0Qf3oDz8hAiwsmnSq7oU2dXarHoYZVyVA@mail.gmail.com>
Subject: Re: [PATCH net-next v6 1/7] dt-bindings: net: dsa: Require ports or ethernet-ports
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, devicetree@vger.kernel.org, 
	"David S. Miller" <davem@davemloft.net>, Paolo Abeni <pabeni@redhat.com>, 
	Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>, 
	Jakub Kicinski <kuba@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>, 
	=?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>, 
	Christian Marangi <ansuelsmth@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Eric Dumazet <edumazet@google.com>, Gregory Clement <gregory.clement@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 24, 2023 at 10:10=E2=80=AFPM Vladimir Oltean <olteanv@gmail.com=
> wrote:

> FWIW, we have a rule in Documentation/process/maintainer-netdev.rst to
> not repost more frequently than once every 24 hours. Unfortunately I
> don't have a huge review capacity right now, so in my case it could
> probably take even a bit more than that. But it's a bit unpleasant that
> I left some feedback on v4, you posted v5 yesterday and since then we're
> now at v7, only for me to find that I need to repeat my v4 feedback.

I'm sorry, too enthusiastic.
I'll try to pace it down, the patches will not be for v6.7 anyway.

Yours,
Linus Walleij

