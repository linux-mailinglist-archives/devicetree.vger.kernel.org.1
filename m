Return-Path: <devicetree+bounces-21782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 172FE8051C6
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 12:14:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3454FB20C33
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 11:14:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78EBB5644F;
	Tue,  5 Dec 2023 11:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K+Ud0UNE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F21F6134;
	Tue,  5 Dec 2023 03:14:38 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-50be3eed85aso4323481e87.2;
        Tue, 05 Dec 2023 03:14:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701774877; x=1702379677; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zN4p9mMSLweMOX963KYS5AfN9Bd0ihIcJsLmbUm7JFg=;
        b=K+Ud0UNEOQN7vWwqFW3/KpWwWNc/ZDnTmFjGFq/5HYW9GdwND6gI0SqzHNqvwjHCnW
         tKz4IQikF/dLHbyQTfEbRJIn7ik1OW8oAxz3bfjCp1gM0WdW/+xwBdjcLiYUcL8MH1MQ
         p1JbDy7dj7r6A7xQGJtOGe/VxT78E4O6iCvMhiAmfREEWvSXIq6cXqESt+XsZABlG2p9
         x0zTOC/X2gordpoFcKutmpIzd6cxCDvY/A/K7KXpBOuLlrJAjFM/HcXzmcs9WwwmRQXK
         AFkk5+q2AB5d1PB1i3cHhwUPHqi1FL0/3a8fzaTOltEa/8DsyT2YMsghaIv2PhEHHYwm
         RP5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701774877; x=1702379677;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zN4p9mMSLweMOX963KYS5AfN9Bd0ihIcJsLmbUm7JFg=;
        b=LJ8SpLPSRAuAjjMQIP8VUE4Fgy1ng6MH02hf8FynAwEGBuNcsl10uuuM/+ekiWGVLD
         RmR9LeOOSOpi59ViM5u3kW+w8R+M94tL7wEKgdQ+Yc3JrJo4jaKwVk80F+u84yl6fxtW
         gx6mVWyxgc5l8VPXd5dRl86DdxY0ypTdWsuAOI6oIDKyU+fov/H3px5n3bKA/iyp/jcB
         +kFyOyTVJ3IVSK5hKaWlkIgZuI5CwwRWBV49ABtfq8QWfBksTvs+DZg76/0avv1eQXlx
         3pmoqraZxyiCpahaAyUzIcYf3baR9PsTL5tq1qYSkbhbko1yCFT7cjC+QyZWXskQ1V2V
         GDzA==
X-Gm-Message-State: AOJu0Yz6cfeUevi/PWXkpRHmadmry8Kr9oGSMaLrjlvR9F+WJkcZM8fi
	2OEGuKi0F7HmoRaB+fhtn70=
X-Google-Smtp-Source: AGHT+IFO6YQ2N6cG11AmaArtSFV31rZG99Hh99XcCX4X/mpgvCD31u2wtEom9rvvimoggkIAkJoWDQ==
X-Received: by 2002:a05:6512:3082:b0:50c:aa5:1214 with SMTP id z2-20020a056512308200b0050c0aa51214mr400277lfd.38.1701774876689;
        Tue, 05 Dec 2023 03:14:36 -0800 (PST)
Received: from mobilestation ([178.176.56.174])
        by smtp.gmail.com with ESMTPSA id z28-20020a19505c000000b0050bfe37d283sm358069lfj.262.2023.12.05.03.14.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 03:14:36 -0800 (PST)
Date: Tue, 5 Dec 2023 14:14:34 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Jose Abreu <joabreu@synopsys.com>, 
	Jose Abreu <Jose.Abreu@synopsys.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Tomer Maimon <tmaimon77@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, openbmc@lists.ozlabs.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next 05/16] net: pcs: xpcs: Move native device ID
 macro to linux/pcs/pcs-xpcs.h
Message-ID: <bas6l42vk2zzrwo22ss7fuganf4ekvhtvkb32duydjise7ui3o@o4f3rbcpokur>
References: <20231205103559.9605-1-fancer.lancer@gmail.com>
 <20231205103559.9605-6-fancer.lancer@gmail.com>
 <ZW7/TrtSols1igy/@shell.armlinux.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZW7/TrtSols1igy/@shell.armlinux.org.uk>

On Tue, Dec 05, 2023 at 10:45:34AM +0000, Russell King (Oracle) wrote:
> On Tue, Dec 05, 2023 at 01:35:26PM +0300, Serge Semin wrote:
> > Generic MDIO-device driver will support setting a custom device ID for the
> > particular MDIO-device.
> 
> Why future tense? I don't see anything later in this patch set adding
> this.

After the next patch is applied
[PATCH net-next 10/16] net: pcs: xpcs: Add generic DW XPCS MDIO-device support
the DW XPCS driver _will_ support setting custom IDs based on the
platform data and the DT compatibles. It can be used for instance to
fix the already available SJ1105 and SJ1110 MDIO bus implementations,
so instead of substituting the XPCS IDs on the PHYSID CSR reads the
driver could just pass the device ID and PMA ID via the device
platform data.

If my patch log text looks unclear anyway, just say so. I'll change it
accordingly. I guess it would be enough to say that moving is required
just to collect all the IDs in a single place.

-Serge(y)

> 
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

