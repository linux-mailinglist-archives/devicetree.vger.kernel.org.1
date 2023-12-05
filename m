Return-Path: <devicetree+bounces-21813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A99805374
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 12:49:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C807AB20CD7
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 11:49:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF52759E2A;
	Tue,  5 Dec 2023 11:49:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SEVVCGo/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 660C31AB;
	Tue,  5 Dec 2023 03:49:46 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-50bf898c43cso1994651e87.1;
        Tue, 05 Dec 2023 03:49:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701776984; x=1702381784; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AcNcuzGaQBjUBsiLWETqgO5QGNFrGHbqm/wUp0AM8dI=;
        b=SEVVCGo/NXb7w7bSjOiZx0rYuK6Eyyy6rI6Gyc5cnev3w19Ma7/WpOQ9C9G4onTNPx
         wKZBDQXA/2MV4lNYaS3zuiFoFg9ZTwn5IU4kIdyvvEoBjcfpp5sgDMTr79/meJ+N6IYv
         UjIIC4dqE7/9J5S1bgpgL11toczURz8AbNHLOL+ei2tT3BaSjI7HN8xViK7X19GX+WGP
         C6L0JPvPnsIDkhCPToPi9EcxH625z74X+p5EhPiTk4mzlC7IGRpwkn2Inwfqa5kRtQ65
         5MIJCcbtwmByC2tc2nQum1LvzDC637VpJwcU3xkyess+cqPgQJmCZeI/f++hWQ3sEQec
         YJgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701776984; x=1702381784;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AcNcuzGaQBjUBsiLWETqgO5QGNFrGHbqm/wUp0AM8dI=;
        b=DcTITSU7NLfBJDMD6ZIFR/m6G2RbEe7GUtYmWk43DpuIleGO0wSv353YaERfYvLVp6
         jFdpcqdngvznMyM4RnvbGN/X3HmVLiOQ+jENJYXdMQkHp+329JX1ka/NOqnd+fywYTaI
         19BeZ+xNU+0TwAXGQuZsXzXIAfQmzJzv29r5mfXrF2Z1HUTUvdr1/N0GbN/3geKXTfJt
         MInDixlGftEpc3duOGktoofP1bTEALPFyZMDegOlxb+YDxQy39qmHg1CzbUzb7TahBt0
         B1ogjnECDg2ZHeRKMdb60vKwx7EDa4sZ5uWuMBhzxYzsjlr8Vdeo3FkBMmiDvZlDSzOO
         72IQ==
X-Gm-Message-State: AOJu0YxBz0CE622HQ+NsnTv/VGV3pILyHe80prybPmtsDtojM77zygTD
	42aQP0rt+jCnRTYlSQmWW1E=
X-Google-Smtp-Source: AGHT+IHG01Rbi7bi2+HqRxjF1g6Uid7DKqoIjAsfnJUvTJZdfjRyLs23pzhCbhHBaCrpogRFumVNSg==
X-Received: by 2002:a05:6512:1394:b0:50c:320:f171 with SMTP id fc20-20020a056512139400b0050c0320f171mr476503lfb.197.1701776983952;
        Tue, 05 Dec 2023 03:49:43 -0800 (PST)
Received: from mobilestation ([178.176.56.174])
        by smtp.gmail.com with ESMTPSA id e2-20020a05651236c200b0050bf0921ac1sm792193lfs.206.2023.12.05.03.49.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 03:49:43 -0800 (PST)
Date: Tue, 5 Dec 2023 14:49:41 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Jose Abreu <joabreu@synopsys.com>, Jose Abreu <Jose.Abreu@synopsys.com>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Tomer Maimon <tmaimon77@gmail.com>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, openbmc@lists.ozlabs.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next 05/16] net: pcs: xpcs: Move native device ID
 macro to linux/pcs/pcs-xpcs.h
Message-ID: <6zejbbv6oriaztbbgyjy6r6hycccq6rvypb5ywxf7nqx3vlq7r@na5eossdsuec>
References: <20231205103559.9605-1-fancer.lancer@gmail.com>
 <20231205103559.9605-1-fancer.lancer@gmail.com>
 <20231205103559.9605-6-fancer.lancer@gmail.com>
 <20231205103559.9605-6-fancer.lancer@gmail.com>
 <20231205112755.3am2mazwireflpkq@skbuf>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231205112755.3am2mazwireflpkq@skbuf>

On Tue, Dec 05, 2023 at 01:27:55PM +0200, Vladimir Oltean wrote:
> On Tue, Dec 05, 2023 at 01:35:26PM +0300, Serge Semin wrote:
> > In addition to that having all supported DW XPCS device IDs defined in
> > a sinle place will improve the code maintainability and readability.
> 
> single

Got it. Thanks. Seeing there are so many comments about the log
messages I'll double check them on v2.

-Serge(y)

