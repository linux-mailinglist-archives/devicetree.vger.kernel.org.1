Return-Path: <devicetree+bounces-20142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 359B97FDF3D
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 19:22:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5C7D282DF8
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 18:22:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBCBC5CD13;
	Wed, 29 Nov 2023 18:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WjvcKD6R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA221111;
	Wed, 29 Nov 2023 10:22:32 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-54b0c7987easo140334a12.3;
        Wed, 29 Nov 2023 10:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701282151; x=1701886951; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kg1pvQxZr0Yp+vscQfTgOv58nNrXqVZgw3mSxR0cbeA=;
        b=WjvcKD6REJ2sJVMH+ZTqq/472Eds/jXeZP7LZuN7V6gCQBAL04obn8w8wgpiuRWfik
         L6fLQXdzf2fGXfy8TaoCAv1Wwzw/iC+zui/FqWBkpmACPFdjtWCy1WcSdCpZFQ+Jgrfw
         Ivl+wZKEVTXsoaig0F4BhqO6GBVwEPYtkOrBD+M40owoCWY7hvaX7rWL6jb5suBTKwGB
         pL6E26PfHTvssvD0sIaBT+ehjcLKhKGls/5Hhob6a0FCGybNnOHjRpO3mirc++bMheeQ
         M9zQkVG2Qx+V3np0SKSes2iW44rAHCIieo5eM14jCtUb3OpuJ3yZA9wrgMdzEN/p1JHZ
         oPyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701282151; x=1701886951;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kg1pvQxZr0Yp+vscQfTgOv58nNrXqVZgw3mSxR0cbeA=;
        b=uVNq3PZiGVauXxHvPRWf/CYXdXKI/mBR5hsp3UslMDDghPBe3WLApLd2rGxb+xT7G+
         EiKz1eCSPwXBQynTLnHGYKTmNulU8QTazhst0r25s9JCD0G+ZVghSDqfHChcZlqZh64b
         Z8XqOmy+gXrTC+zliIRSv3ZuhP0EqeQTKXh6ETbWHFYXO6Ejt/1ydieJwBiotGLT05bF
         FTmAYR7XMosTxADD8F+mt5tZgHpOZ0hlG/9AZIf6+Bo7lEIVmg/sFa+buVN8Xw4Jg9Tu
         7xH+PdUIHiAMJtdJalYYS0glE+R0X+9KaYHdbHEjoikdxeDnrahUMAZc4mJwBkA3aum/
         Vezg==
X-Gm-Message-State: AOJu0YxVUxSgaKnU9YYBpWmDZ8P/l8KoXJFfLAWMQKrBe/MY/FTi2zxB
	Zh8unm5FH1DwokEyvKT+oVHhpHrOt0jMOA==
X-Google-Smtp-Source: AGHT+IHMtF40HxlvRo+APB+jPpalwBuJqn3SbBJUjS6GNEA8Z0uVn10sTkcN1aaginhl4c9XoSsv2A==
X-Received: by 2002:aa7:d30f:0:b0:54b:1530:df8 with SMTP id p15-20020aa7d30f000000b0054b15300df8mr11058630edq.22.1701282151158;
        Wed, 29 Nov 2023 10:22:31 -0800 (PST)
Received: from skbuf ([188.26.185.12])
        by smtp.gmail.com with ESMTPSA id s3-20020a056402014300b00543b2d6f88asm7570447edu.15.2023.11.29.10.22.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 10:22:30 -0800 (PST)
Date: Wed, 29 Nov 2023 20:22:27 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Florian Fainelli <f.fainelli@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	Florian Fainelli <florian.fainelli@broadcom.com>
Subject: Re: [PATCH net-next v8 4/9] ARM: dts: nxp: Fix some common switch
 mistakes
Message-ID: <20231129182227.r226qbtqsubgaoy7@skbuf>
References: <20231114-marvell-88e6152-wan-led-v8-0-50688741691b@linaro.org>
 <20231114-marvell-88e6152-wan-led-v8-0-50688741691b@linaro.org>
 <20231114-marvell-88e6152-wan-led-v8-4-50688741691b@linaro.org>
 <20231114-marvell-88e6152-wan-led-v8-4-50688741691b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231114-marvell-88e6152-wan-led-v8-4-50688741691b@linaro.org>
 <20231114-marvell-88e6152-wan-led-v8-4-50688741691b@linaro.org>

On Tue, Nov 14, 2023 at 12:35:59AM +0100, Linus Walleij wrote:
> Fix some errors in the Marvell MV88E6xxx switch descriptions:
> - switch0@0 is not OK, should be ethernet-switch@0
> - ports should be ethernet-ports
> - port should be ethernet-port
> - phy should be ethernet-phy
> 
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>

