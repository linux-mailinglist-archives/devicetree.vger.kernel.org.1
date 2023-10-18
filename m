Return-Path: <devicetree+bounces-9646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0B17CDAD2
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 13:40:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7438E281C44
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 11:40:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDDF5328DB;
	Wed, 18 Oct 2023 11:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nGv8WXFG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B02D2E3FA
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 11:40:05 +0000 (UTC)
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28B8BD58
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 04:39:57 -0700 (PDT)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-5a7dafb659cso81901897b3.0
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 04:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697629196; x=1698233996; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=seUdplTAMb/zRp5FDRW3ieCXWuBCH/+x0BQ3MBVM2m0=;
        b=nGv8WXFGFB/xUG42snGADeTohgk11NlPAXED8Xn1vzcosZuH65oLc0DMOYJP1FnQMm
         h5j2zwTGZsQdafrdca9b9Lrw16d0hn22Al3FH+XL3T7ALzFOOaoQZ7w/dFgddVz34AYk
         AxZ335FLmBojzFhs6kh3pIcjbKHRLSNHReH0Nh76NHIrKOexVddJe68pzvOLBHXs+uo1
         r6ttOJIhNeBJKCpSYHlK96femSM35QMOjwMn3vPy7fcSlX+BdiS2Ka+MPPqgEZt9WjVx
         N4r+c6ykcQVr3TAxfuhXMkJJzKVlvFZS8wTibWs2YFGQPP8IuDszo6wukzHJOSWl9yAE
         H/sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697629196; x=1698233996;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=seUdplTAMb/zRp5FDRW3ieCXWuBCH/+x0BQ3MBVM2m0=;
        b=SSchNAjqdzepH12G11bsQOlJFMdR2vdjA70CznYID3MTtAaJ/m694duzzz/OvNGTjH
         ++7kATCOWCeInFRAZZ5TISyIzrpEN5WXMDfaBFJe5ZK5Md+fkU6fz259OcoFA4qem7UO
         jqY0wbs7XcsM6Lpiq5OFtZNKVtCC1+GqvbvAvNvtqTtk4oQM0ytiWSGm21a/2U2ncygT
         hDICTvt1S+eVR/7okoruVSCN7lffmyY2vMKgyFgV0AzQlBpDXMBTh1/nd7/zeveXYHVo
         ITrUrpzNaAOME6Mg4dsEIoOH3BPv6Zu/sORPiLByZ9OlsvNJgomHXUeJ+nyGzs7ITxJr
         UG5Q==
X-Gm-Message-State: AOJu0YydBW/LpI4HkLd+PCfhoNfAZ34Jj02ExmCNTzmpQW9PSzzxxsoh
	RXWSCC+7sNhIsqn5cypGTDKPOegrbmNHn6M5vmBhyg==
X-Google-Smtp-Source: AGHT+IGd6pMmcUmYhIP19DAntAI7kjrqy+WPuQL4RuNHhD2KtYzr3w/qLLHu6U4w6Mo5RaObRLXBuuHLDdyNrlBBvQI=
X-Received: by 2002:a0d:e8c2:0:b0:5a4:db86:4ea8 with SMTP id
 r185-20020a0de8c2000000b005a4db864ea8mr4887814ywe.31.1697629196493; Wed, 18
 Oct 2023 04:39:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231018-marvell-88e6152-wan-led-v4-0-3ee0c67383be@linaro.org>
 <20231018-marvell-88e6152-wan-led-v4-6-3ee0c67383be@linaro.org> <169762516805.391872.4190043734592153628.robh@kernel.org>
In-Reply-To: <169762516805.391872.4190043734592153628.robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 18 Oct 2023 13:39:45 +0200
Message-ID: <CACRpkdZz_+WAt7GG4Chm_xRiBNBP=pin2dx39z27Nx0PuyVN7w@mail.gmail.com>
Subject: Re: [PATCH net-next v4 6/7] dt-bindings: marvell: Rewrite MV88E6xxx
 in schema
To: Rob Herring <robh@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Christian Marangi <ansuelsmth@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Gregory Clement <gregory.clement@bootlin.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Andrew Lunn <andrew@lunn.ch>, 
	Vladimir Oltean <olteanv@gmail.com>, linux-kernel@vger.kernel.org, 
	"David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org, 
	Florian Fainelli <f.fainelli@gmail.com>, Jakub Kicinski <kuba@kernel.org>, 
	Russell King <linux@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>, 
	Eric Dumazet <edumazet@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 18, 2023 at 12:32=E2=80=AFPM Rob Herring <robh@kernel.org> wrot=
e:

> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/n=
et/marvell,mvusb.example.dtb: switch@0: ports: '#address-cells' is a requir=
ed property
>         from schema $id: http://devicetree.org/schemas/net/dsa/marvell,mv=
88e6xxx.yaml#
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/n=
et/marvell,mvusb.example.dtb: switch@0: ports: '#size-cells' is a required =
property
>         from schema $id: http://devicetree.org/schemas/net/dsa/marvell,mv=
88e6xxx.yaml#
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/n=
et/marvell,mvusb.example.dtb: switch@0: ports: '#address-cells' is a requir=
ed property
>         from schema $id: http://devicetree.org/schemas/net/dsa/marvell,mv=
88e6xxx.yaml#
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/n=
et/marvell,mvusb.example.dtb: switch@0: ports: '#size-cells' is a required =
property
>         from schema $id: http://devicetree.org/schemas/net/dsa/marvell,mv=
88e6xxx.yaml#

Fixed in patch 2/7?

Yours,
Linus Walleij

