Return-Path: <devicetree+bounces-12107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8A07D7FC7
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 11:40:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE82F1C20F0B
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 09:40:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C56C2869E;
	Thu, 26 Oct 2023 09:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="elLNWVpZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8939E28682;
	Thu, 26 Oct 2023 09:40:39 +0000 (UTC)
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84ECA184;
	Thu, 26 Oct 2023 02:40:36 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-50802148be9so745786e87.2;
        Thu, 26 Oct 2023 02:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698313235; x=1698918035; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=16C1WfT2DwpGvrfebh3jri2daMchrLPYq4YQrge37a8=;
        b=elLNWVpZVMRaAiRJjSYDRNBaItDFGjUB0f13H6Ob5ymiFThwZD5C7dGTVYVbAPP2H/
         KnhJITmC0DgdnIoBpo0WF3sHuo8XBAe8eFaYFd3nuxsFZwf4LFsSp8icpmihL7PqJBse
         I8pDDMNg1f1eGROl7V1hptyTy8n7wP46ktLhct9oiNtLOEO9dYAtHe9uw8mEpjVCOkgA
         HycXl4uLgxLn9vMOzNO/Y74XbVLb8o1+Yk5Lq2tobcPrMI+qIsR8owbTcSh4qYpivRem
         gLTDV+RXgDmZ+MjG5GrWQ4rOX2EI1xB/CcDwPHE2N16mgoH0a0BA9gn9O0vwRC2c48mc
         FMiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698313235; x=1698918035;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=16C1WfT2DwpGvrfebh3jri2daMchrLPYq4YQrge37a8=;
        b=pomHkzS9FE7Sj6dFZRMA8zi69Pkn03upbnoGmnPARD9sxEcsj/f1hONuYEVmk6ps7T
         kkxoag6sAI8GQP1AfiCnRisbNMP6kFVIcNGjHsNg0bRMEq4YQTCzfuTVUC93EddH4+1P
         r2wUM2cByeprAMACL75pNrrtxdBn+SNkzGyAtGfrvbF/koDu9qxAE3C1CayNT/ppq7Ps
         8o8GTTp/93w2XqUdX6+xDPNphQerWZq2RYrYBdWnR+lnnNx8X4LELuN3sLeY35TNgwNf
         JGz4yYojgdf4g+MolSyrAie0ySmdsLck5j29S0I29Tm3mDPLI3NW1irh7lk6by7IH6x2
         zkuw==
X-Gm-Message-State: AOJu0YzuaxBcYgt8rqiOBCNpQFrohOVnFvVu6nqs1M6muoztbgBJCfaH
	R8tUYQc5Q9rwuQWwmAFp2eE=
X-Google-Smtp-Source: AGHT+IGlwr9dCU6ecQBIYTesn3xkLbGBkhX7LjmKR030UIvrvCcdj5ZXyGut84ci6KoZvBvRdraMrg==
X-Received: by 2002:a05:6512:2352:b0:507:a5dc:6d3e with SMTP id p18-20020a056512235200b00507a5dc6d3emr13866269lfu.31.1698313234359;
        Thu, 26 Oct 2023 02:40:34 -0700 (PDT)
Received: from skbuf ([188.26.57.160])
        by smtp.gmail.com with ESMTPSA id l18-20020a5d5272000000b00323293bd023sm14028072wrc.6.2023.10.26.02.40.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 02:40:34 -0700 (PDT)
Date: Thu, 26 Oct 2023 12:40:30 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew@lunn.ch>,
	Eric Dumazet <edumazet@google.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Woojung Huh <woojung.huh@microchip.com>,
	Arun Ramadoss <arun.ramadoss@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	UNGLinuxDriver@microchip.com,
	"Russell King (Oracle)" <linux@armlinux.org.uk>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH net-next v8 0/5] net: dsa: microchip: provide Wake on LAN
 support (part 2)
Message-ID: <20231026094030.wyoz3rj2jiim7ptx@skbuf>
References: <20231026051051.2316937-1-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231026051051.2316937-1-o.rempel@pengutronix.de>

On Thu, Oct 26, 2023 at 07:10:46AM +0200, Oleksij Rempel wrote:
> This patch series introduces extensive Wake on LAN (WoL) support for the
> Microchip KSZ9477 family of switches, coupled with some code refactoring
> and error handling enhancements. The principal aim is to enable and
> manage Wake on Magic Packet and other PHY event triggers for waking up
> the system, whilst ensuring that the switch isn't reset during a
> shutdown if WoL is active.
> 
> The Wake on LAN functionality is optional and is particularly beneficial
> if the PME pins are connected to the SoC as a wake source or to a PMIC
> that can enable or wake the SoC.
> 
> changes v8:
> - rebase on top of net-next and s/slave/user/

I am stunned by what happened here. The timeline seems to be:

- On the 23rd of October, you sent a 9-patch series constituting v7.
- On the 25th of October, 4 of those patches were silently merged, as
  follows:

93aa731e6133 Merge branch 'dsa-microchip-WoL-support'
d264f24409b8 net: dsa: microchip: ksz9477: add Wake on LAN support
aed7425d6510 net: dsa: microchip: use wakeup-source DT property to enable PME output
4e1799ae84fc dt-bindings: net: dsa: microchip: add wakeup-source property
02e987f52cf0 net: dsa: microchip: Add missing MAC address register offset for ksz8863

 commit 93aa731e613399f5145166940b20224a8d116920
 Merge: e43e6d9582e0 d264f24409b8
 Author: David S. Miller <davem@davemloft.net>
 Date:   Wed Oct 25 08:47:33 2023 +0100

     Merge branch 'dsa-microchip-WoL-support'

with no further details as usual (cover letter becomes merge commit
message), no patchwork bot notification, nothing.

- Today you are sending the rest of 5 unmerged patches.
- In parallel, Colin Ian King has sent a fixup for a review comment on
  the first 4 patches from v7, which got silently applied without that
  comment being addressed.

So, given the circumstances, I see that you did the right thing. It's
just that I'm starting to understand less and less of what the rules are
supposed to be.

