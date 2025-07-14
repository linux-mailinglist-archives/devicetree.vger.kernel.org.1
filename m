Return-Path: <devicetree+bounces-196209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 245A7B047BF
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 21:08:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E57B17F471
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 19:08:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03BB1277035;
	Mon, 14 Jul 2025 19:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LCrCnwWI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC51269D17
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 19:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752520108; cv=none; b=bxT6dgRI9gNCOXvwKbB+SlB3z6AljU3dNIRzJF5Fn+WyebuOGx4AZMjv0X4rD3yTcaRbijIXmGn0G0j9rrwW3WPUUGyDiv5NB/h8ZA5R7rVbqg2fpFleS3ZDzQOtW2T83dMYW4OfDbVr6F5afXY5DaK9nO3JQMuxGwDvvF1mKHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752520108; c=relaxed/simple;
	bh=VRc50o1TNkXkiKCdb7sYh/BGwOy7+sjpbKW7SRTKiiE=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=swVirvY6jDVOXHJsTSubL/Vd02sMlbUAeCX9f8bin1n/05noOhQHu0szxEbxPus5asLOtBJlHQm+S3wUGDGujK90575JRS+xfxDMJ296zYb6Bg71RLQ645HuYZXFrDDxlt5jzei1eA2DvTsvjjRZ+Ubguf5pVStTU42i2igsDHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LCrCnwWI; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-2c6ed7efb1dso3108772fac.2
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 12:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752520106; x=1753124906; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FY8oP8TntW4ytWNHBRG2ykUEsygpkJOVRPFVHGGy1iw=;
        b=LCrCnwWIBTL78Q2Hg9KyuWXNOxsqgoqSLfm/Wy7IPqNc1FixPumgDNLOziNyWcZO6V
         rWAQYgYaiVc9Ffd3e9829lHMzdnSf9neapsXgmg3GvR6IPwHC+wnF/U0mSZ7FrLFjlCx
         TsRX9Prc+ffbpKAIBTizdJ2KroDQZnbZ7i9J0luGrfkAv9PeZnm5dx5tVFUW7bymPkDx
         5DlDGAV6GZIBo1ZHL7y1HxygyknEyWpclkEB2kerzCpXEV5gUp9xehmrXm+b4Gz84hSF
         MlFM9UoVx+5HYKIync+IfP9Gx1+ty9rJ5X4UbQSSEojnFR6g42VuXXbRQbBDKZLtTFl5
         p8Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752520106; x=1753124906;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FY8oP8TntW4ytWNHBRG2ykUEsygpkJOVRPFVHGGy1iw=;
        b=j+mrpuktNmZW3Fpe0gjIfo+nDmUDeHH1jwp1//tn4/JwdzWimQCJs9cJA0TZGm+GgR
         DLXR7u/IcHYNpoMNq+5NrdiBACYlCS9WNYRKfr25qyghOelmSSz9Qgh99Iv1aiq8ALk7
         BP5XtNiBxT7vw02c8m1/ap4bseUpFK16sfDsyPGddptkLvXaOExOUaoJylQz/CVDWZjD
         3UnCZouLJmiO2xQVC//TsJut37RnYLWOib/1Zy7cbXuY6I9Cn5g9u6vSA56eGjSAtI62
         68ylPDd6o0jr5Fb+tEB4m/PL2c5jVGrOLGO4uwDrHQLvNKlqAXRoQiqAjlJiMbo0W8FR
         1hhQ==
X-Forwarded-Encrypted: i=1; AJvYcCUd++Y+g0LZKZj0HjU71+GGpkzf8zJMCaGw4qRkfjiqRDPN72maLiBcz8g8OKKGxe1EzmS9jeBzxBE2@vger.kernel.org
X-Gm-Message-State: AOJu0YxIYMiozuLujhyXeiKU+ViCzdyQRBjgWso3ra0LaVM8+QwPBpZF
	VmNrtgXj6uVbJsdUirzvRIfwcy1t+UD6/dtHaffK3q2cb4W5eG7BA7MTr5gWY5jGIkE=
X-Gm-Gg: ASbGncseHKvw4QUMA4fE9DnrLQVcFbU6rj/aaRgYmD0Qrth5tlnoWQycOkBVEfRw4lt
	gSnAe9LOdgKqbc0U/UwLEbjzFVqoJRdLsvDfXRvDms4QXbsqga6ZG7rurGAfGNgVdd5S968VUfB
	RHJy/333gf6fnZR90oHMLG2wu89Ip6zVrFlVV+1Nk97zJiEeO+YT4fLxMKVn3FjdteZ7l6YA0Pq
	lq2ffR6hmUI8tNHY6osnkJanP20W+8Jhc5WxU9ZAvAfnRQ0FZKI7jvEjzUPE0pyp6Pukx7R83QL
	RhL8nzDXfqQZtdAgw31qCa1tZxSnOasmRgnrNtxkGyYrpJVKqbvqMk7QO53fYSLX+IypNhouHXT
	5N2HURkYkocjJZFdW8ORhGnMrfdTC0A==
X-Google-Smtp-Source: AGHT+IEzO8bUgBmoo1uzE8f4f/z4iMC9jmOc9/Xzy7X6HZpF2LbcgnghTbE4rOCIVgXQl6Q0I/xJmw==
X-Received: by 2002:a05:6871:5d06:b0:2d5:b914:fe2d with SMTP id 586e51a60fabf-2ff270892c7mr10030939fac.33.1752520106283;
        Mon, 14 Jul 2025 12:08:26 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:6bb2:d90f:e5da:befc])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2ff116dd664sm2036650fac.42.2025.07.14.12.08.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 12:08:25 -0700 (PDT)
Date: Mon, 14 Jul 2025 22:08:23 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	davem@davemloft.net
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, thomas.petazzoni@bootlin.com,
	Andrew Lunn <andrew@lunn.ch>, Jakub Kicinski <kuba@kernel.org>,
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	linux-arm-kernel@lists.infradead.org,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Herve Codina <herve.codina@bootlin.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	=?iso-8859-1?Q?K=F6ry?= Maincent <kory.maincent@bootlin.com>,
	Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>,
	Oleksij Rempel <o.rempel@pengutronix.de>,
	=?iso-8859-1?Q?Nicol=F2?= Veronese <nicveronese@gmail.com>,
	Simon Horman <horms@kernel.org>, mwojtas@chromium.org,
	Antoine Tenart <atenart@kernel.org>, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH net-next v7 04/15] net: phy: Introduce PHY ports
 representation
Message-ID: <13e48447-37fb-49d8-8c6a-ce5d198506ae@suswa.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250630143315.250879-5-maxime.chevallier@bootlin.com>

Hi Maxime,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Maxime-Chevallier/dt-bindings-net-Introduce-the-ethernet-connector-description/20250630-224035
base:   net-next/main
patch link:    https://lore.kernel.org/r/20250630143315.250879-5-maxime.chevallier%40bootlin.com
patch subject: [PATCH net-next v7 04/15] net: phy: Introduce PHY ports representation
config: x86_64-randconfig-r071-20250706 (https://download.01.org/0day-ci/archive/20250706/202507061812.0aBYBa9l-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14+deb12u1) 12.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202507061812.0aBYBa9l-lkp@intel.com/

smatch warnings:
drivers/net/phy/phy_port.c:130 phy_port_get_type() warn: bitwise AND condition is false here

vim +130 drivers/net/phy/phy_port.c

055cbf51317b1e Maxime Chevallier 2025-06-30  122  /**
055cbf51317b1e Maxime Chevallier 2025-06-30  123   * phy_port_get_type() - get the PORT_* attribut for that port.
055cbf51317b1e Maxime Chevallier 2025-06-30  124   * @port: The port we want the information from
055cbf51317b1e Maxime Chevallier 2025-06-30  125   *
055cbf51317b1e Maxime Chevallier 2025-06-30  126   * Returns: A PORT_XXX value.
055cbf51317b1e Maxime Chevallier 2025-06-30  127   */
055cbf51317b1e Maxime Chevallier 2025-06-30  128  int phy_port_get_type(struct phy_port *port)
055cbf51317b1e Maxime Chevallier 2025-06-30  129  {
055cbf51317b1e Maxime Chevallier 2025-06-30 @130  	if (port->mediums & ETHTOOL_LINK_MEDIUM_BASET)
                                                                            ^^^^^^^^^^^^^^^^^^^^^^^^^
I think BIT(ETHTOOL_LINK_MEDIUM_BASET) was intended.


-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


