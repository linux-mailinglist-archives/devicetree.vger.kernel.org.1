Return-Path: <devicetree+bounces-11434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A94577D5C4F
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 22:20:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D9002819D9
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 20:20:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B65A3E478;
	Tue, 24 Oct 2023 20:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cwAwqyI3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A04EC24A09;
	Tue, 24 Oct 2023 20:20:16 +0000 (UTC)
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A17EFE8;
	Tue, 24 Oct 2023 13:20:14 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-53e08e439c7so8007352a12.0;
        Tue, 24 Oct 2023 13:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698178813; x=1698783613; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oMOf6mvt5XWqcYfTZrj1wqL7HtLPA8K+oGsv6/KXbh0=;
        b=cwAwqyI3vszZ63q+MUVJjrvaHL8/Uds3OBQUkJjP6+kSaZ+GnfXBXleZmqhjwNPAIs
         la0gz3rgNfpN8QYhCCbtirC/uRqQrfq196f8/+41hXJJr45Wsbnb4Oa0JkTNgzv1VgMc
         7QIaswtKSPQU4cf/JoObBeTzsyWEhv1x2Ht+MS5OU/2jBhk4HNSFEooVPEtFBs+GKvOn
         x36XEqRl+5uOS2Mk+F3rnZK7p0UNRk0F4vQyEzx8BCkwkqVZyksVjwyfj1NzFyZ84/ME
         i169FAvnRErNRz1GBNpofZ3fFyGDlatS4HW6TYHmUxLndjIasnAFYRJ3o0WhaXffupIN
         2t+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698178813; x=1698783613;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oMOf6mvt5XWqcYfTZrj1wqL7HtLPA8K+oGsv6/KXbh0=;
        b=PSCUFXLucQ1ELVYNnPLW5GNTXoNbcs2H/gcrgy1H+dLXd9u47qtCdY6uqJ2CdfhXws
         viMERxk3sJro7nc0iTtW+BAq2KyCYE05rnImzVnRhDwQE709VVCo5k/kdzc5/jaRiSxc
         FQVouDJDVWZ9XqScDcUxCtaArBNP1tUTYMcd5Ys3P6ljWNMs7W5gV7Brmi+6PLzaAjf3
         COP1jWTMoCZQckx7HZjEfniZ/MsKBhOk3NJk27CdBYtCm8binM79t7kT1YV0H28h4kIr
         cCF1jvjW2dyeoqoTDUyzRZo15cMBXuhrvm05NPCGNr+QkGQJU6OovoESXv3J/+3VONUO
         HEBw==
X-Gm-Message-State: AOJu0YzbuG3gP0+oc9qfBkqptbuB3zC4l15ZR2lajckO0xmjhCj66tRh
	jQ0tG7QtxZsms+d7EPk97eI=
X-Google-Smtp-Source: AGHT+IGyToQEaWdoT9WaOi2etA7oObeCX7wSy+SV5Ta1d1D2Xtbppj468ISKE/SauqAkAecwlJVjUw==
X-Received: by 2002:a17:907:97d4:b0:9be:7b67:1673 with SMTP id js20-20020a17090797d400b009be7b671673mr10560452ejc.1.1698178812542;
        Tue, 24 Oct 2023 13:20:12 -0700 (PDT)
Received: from skbuf ([188.26.57.160])
        by smtp.gmail.com with ESMTPSA id v21-20020a170906489500b00997d76981e0sm8675517ejq.208.2023.10.24.13.20.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 13:20:12 -0700 (PDT)
Date: Tue, 24 Oct 2023 23:20:09 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>,
	Enrico Mioso <mrkiko.rs@gmail.com>,
	Robert Marko <robert.marko@sartura.hr>,
	Russell King <linux@armlinux.org.uk>, Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>
Subject: Re: [PATCH net-next v7 5/7] ARM64: dts: marvell: Fix some common
 switch mistakes
Message-ID: <20231024202009.mq7fu7zetc3nfyum@skbuf>
References: <20231024-marvell-88e6152-wan-led-v7-0-2869347697d1@linaro.org>
 <20231024-marvell-88e6152-wan-led-v7-5-2869347697d1@linaro.org>
 <20231024182842.flxrg3hjm3scnhjo@skbuf>
 <1dff08d1-339b-4d5a-9dd4-6a6daca1dbde@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1dff08d1-339b-4d5a-9dd4-6a6daca1dbde@alliedtelesis.co.nz>

Hello Chris,

On Tue, Oct 24, 2023 at 08:10:14PM +0000, Chris Packham wrote:
> > Chris, does this look okay?
> 
> There's nothing in the u-boot code for the CN9130-CRB that cares about 
> the switch so I don't think there's any issue ABI wise. We are working 
> on our own CN9130 based router with a L2 switch but it's at a point we 
> can follow whatever upstream decide is the final schema.

Thank you for taking the time to confirm.

> In terms of my personal preference the schema quoted up thread has the 
> pattern  '^(ethernet-)?switch(@.*)?$' (i.e. the 'ethernet-' part is 
> optional) so I'd personally prefer switch0@6 -> switch@6 but that's only 
> a slight preference because I deal with Ethernet switches day in day out.

The movement originally came from "ports" to "ethernet-ports" at Rob's
suggestion, because of the name clash with the ports from graph.yaml.
Then we also did "switch" -> "ethernet-switch" because you'll also find
"pcie-switch" in mainline device trees.

