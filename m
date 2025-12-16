Return-Path: <devicetree+bounces-247188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 59025CC5661
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 23:48:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 39F453026230
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 22:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B772322B60;
	Tue, 16 Dec 2025 22:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ViRQANN5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CED92FFFA3
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 22:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765925324; cv=none; b=k9r/8Uqkr1e8ZcAXrVKC4ZDnu/rPxoeJAen8zAgJfO/QSkBTm8LaB6rWoAE49rcC54GzqSt3XtxwOysCkTgcS4uFn787D5n+IhBYFux9hL07BuP+QhWD2KiOI7ihr52e4SAkHTdGNLwkKwZPyg//yEPsoz2rH0JLZyRhP7vHzXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765925324; c=relaxed/simple;
	bh=IxHqxoNNy3wXGQLhP0+4PHorGbBuY0pS5c5hJzhMoo4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kSbS+KgOpNs948tL3wHZ1rKD8taD/Nq7TcGVp+4VjfCKjBrwx51UhT/wFtU6+PgnciYx84UKzDWoDK2Ex/ZGAYgK3rs5uEszXVbmaV6HHcahB1Zg6mPDLY1sqVLq3hp90bTzZW0fQwh3xzCJ48LH3rV2KW1F9kZqYS2emEUQR84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ViRQANN5; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47bd9de2ed2so952015e9.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765925321; x=1766530121; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tGXRZ05qx8U5oH8vemlQWNqv2IHE34HX0JuKIxOR9r8=;
        b=ViRQANN5khlC7XbV9jDxj8ycLqBeIwdpoS05CGwNlENtORb9VglgOWlBfAvef9b7mJ
         mKropc2lWyU/puIqniDJuAKcAYbnRnbGj6w3K1fST3eXsdJBAwUFA4PskesDLK7jMygf
         qQsR2r2W/elQI0mYwONL4fYtEFxe7xDTlTwsj+MXaFFID6ylm4wfr0a9zqqAo0zoRuft
         ZmvSWcyQ0rE1kf+0ilu/9k9oBNXfkXhAdorvJAAiTngKOvW0Gw2bHdH0knCAzjLYsSkB
         hVRfdA1ls1+410/OD4tzA59KH/QJewdQO3nJdsFoitzX68x3C18lySu2qWXAoaf7YZmL
         l83w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765925321; x=1766530121;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tGXRZ05qx8U5oH8vemlQWNqv2IHE34HX0JuKIxOR9r8=;
        b=BqejBSEEh59kFiIrgSgwafNGNIwG/QvdzdXmlM5lf3EtREc426iRxwJTDbQPCgRCGH
         Tgj8ge2zlOr3+9syFvX5thqMU1nmj+ZJ3pFTubPNpiJ5e2vCcasc8MOg+3MBWilM1iQS
         h1jpl77x+CtGI2u0OL7psn7LNjWiM6TSfT4gg3mK6qga6kkDUfKVpMaTIb9PuuoL0eXq
         doMnCS132uhHUA2/n6awvR/qeru6gZnkkXvmZYz0k+V/HKlEkfJtxxjLxf9aj9SBtdTw
         zXZBNcd0HM2bQGb0Zz32ypj2p6dCYmoUXh39VUOrvK9Rc0WmXlO0NSV1pm2I5FCsecnE
         bghQ==
X-Forwarded-Encrypted: i=1; AJvYcCXqBnWBw1PZoeiaDtwNqKeplr2LvPh44TEpxHlDf8aC1R2LSj95chpJwPFhu/lEEv4/enG/hI+djEuI@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3DI8y1xz9t6qfKwQMJKB+BujvQujXfiVs//IFlGveFcy7d0dl
	mVvz1er3t1t7RB3/r/4vSEB4xVAVrLC0he3T40GMBJhU9QzuhmKk8wWR
X-Gm-Gg: AY/fxX6fxgb8Vyf4u3EY0FXs0QuBjndvv+3b/LufzIx/meiIqluoHczo/RZdowfm0ED
	77o9YH2gaw+qyMQWZF5Rk12Xc2GLbtNN6/QXOXm7gRlzgLI3w7UB+PQqg6ZHKBxZdmG4J4upBBX
	7/cNCrDHpqkI4vt4fCT1/msH/vQHjaKTIC3aDS8hJ/oglY/MhpIVvDkKTXwqahXbWScWD97EeEy
	jFG6QTuWIkB8t9r8zpMvvspN6ZWuSfeXyLwG1qbfPl+zPbqxqpVXBk9RnQAKx0ugBDMA/WSjZLB
	WS7nm2oFshi2fFZdunBRFI5iQZR1O0g9QCs7xJi3qDJhV5T3tbSB8v81flhTebehvrTD68PRHBk
	YBwjVxUY+UB0Wp8z3vh/g0btgALO6fhZ1PVd7QNeCcqPSMCobiip5fmQ1+HimSyi4FNapa7MHtC
	nM
X-Google-Smtp-Source: AGHT+IFvce4UGc7D5Mr+v+EA824QMnFjv+6amcat5/cBlI/KPdmjkfJCha9ggV5j0f7bEEnuAqtWqg==
X-Received: by 2002:a05:6000:18a7:b0:429:ebf5:ff1d with SMTP id ffacd0b85a97d-42fb42d1641mr8793864f8f.0.1765925320745;
        Tue, 16 Dec 2025 14:48:40 -0800 (PST)
Received: from skbuf ([2a02:2f04:d106:d600:c18:aa1:b847:17e5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4310ada8477sm1452258f8f.7.2025.12.16.14.48.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 14:48:39 -0800 (PST)
Date: Wed, 17 Dec 2025 00:48:34 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Frank Wunderlich <frankwu@gmx.de>, Chad Monroe <chad@monroe.io>,
	Cezary Wilmanski <cezary.wilmanski@adtran.com>,
	Avinash Jayaraman <ajayaraman@maxlinear.com>,
	Bing tao Xu <bxu@maxlinear.com>, Liang Xu <lxu@maxlinear.com>,
	Juraj Povazanec <jpovazanec@maxlinear.com>,
	"Fanni (Fang-Yi) Chan" <fchan@maxlinear.com>,
	"Benny (Ying-Tsan) Weng" <yweng@maxlinear.com>,
	"Livia M. Rosu" <lrosu@maxlinear.com>,
	John Crispin <john@phrozen.org>
Subject: Re: [PATCH RFC net-next v3 1/4] dt-bindings: net: dsa: add bindings
 for MaxLinear MxL862xx
Message-ID: <20251216224834.ondmgo4av5vn24qg@skbuf>
References: <cover.1765757027.git.daniel@makrotopia.org>
 <cover.1765757027.git.daniel@makrotopia.org>
 <cf190e3a4192f38eecba260cd2775b660874746e.1765757027.git.daniel@makrotopia.org>
 <cf190e3a4192f38eecba260cd2775b660874746e.1765757027.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cf190e3a4192f38eecba260cd2775b660874746e.1765757027.git.daniel@makrotopia.org>
 <cf190e3a4192f38eecba260cd2775b660874746e.1765757027.git.daniel@makrotopia.org>

On Mon, Dec 15, 2025 at 12:11:22AM +0000, Daniel Golle wrote:
> +examples:
> +  - |
> +    mdio {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        switch@0 {
> +            compatible = "maxlinear,mxl86282";
> +            reg = <0>;
> +
> +            ethernet-ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                port@0 {
> +                    reg = <0>;
> +                    label = "lan1";

Please remove port labels from the example.

> +                    phy-handle = <&phy0>;
> +                    phy-mode = "internal";
> +                };
> +
> +                port@1 {
> +                    reg = <1>;
> +                    label = "lan2";
> +                    phy-handle = <&phy1>;
> +                    phy-mode = "internal";
> +                };
> +
> +                port@2 {
> +                    reg = <2>;
> +                    label = "lan3";
> +                    phy-handle = <&phy2>;
> +                    phy-mode = "internal";
> +                };
> +
> +                port@3 {
> +                    reg = <3>;
> +                    label = "lan4";
> +                    phy-handle = <&phy3>;
> +                    phy-mode = "internal";
> +                };
> +
> +                port@4 {
> +                    reg = <4>;
> +                    label = "lan5";
> +                    phy-handle = <&phy4>;
> +                    phy-mode = "internal";
> +                };
> +
> +                port@5 {
> +                    reg = <5>;
> +                    label = "lan6";
> +                    phy-handle = <&phy5>;
> +                    phy-mode = "internal";
> +                };
> +
> +                port@6 {
> +                    reg = <6>;
> +                    label = "lan7";
> +                    phy-handle = <&phy6>;
> +                    phy-mode = "internal";
> +                };
> +
> +                port@7 {
> +                    reg = <7>;
> +                    label = "lan8";
> +                    phy-handle = <&phy7>;
> +                    phy-mode = "internal";
> +                };
> +
> +                port@8 {
> +                    reg = <8>;
> +                    label = "cpu";
> +                    ethernet = <&gmac0>;
> +                    phy-mode = "usxgmii";
> +
> +                    fixed-link {
> +                        speed = <10000>;
> +                        full-duplex;
> +                    };
> +                };
> +            };

