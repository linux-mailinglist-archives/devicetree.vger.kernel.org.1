Return-Path: <devicetree+bounces-255265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 965C1D21AD3
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 23:57:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9D17D30133C9
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 22:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53C8738F225;
	Wed, 14 Jan 2026 22:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KC0CYTo8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0283738BF88
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 22:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768431469; cv=none; b=cxKqmywK2O8I2TBNFFZrcBBypueVxZNq5A8cQ++Jvxrux4P8xhWr2OhT1++UIzoHdbnVI2/3rke6qvpudfnkFSIkcRSlIeNrs6Q7P0DDSJuPB7ir90uQPZBvgEwCxMDvQ9xWYIuMZv1Pf+lqVFFA9jHvUrFgpe/cy+W9aHPG114=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768431469; c=relaxed/simple;
	bh=X4m5VYxNJdf+yKlu1tqW+laO95L93p8ppKJQ7NmDSNQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rXLJ4l/xh/V0AS9rcZwPeokQcyxaqxhCnB5AVmngGaT1Qx3Jm/jglUAeVevqDLQW7dXaNS3QIwV9Y3T6TSOiwspLlUgak/C9cH9JXyJe/ryww5QklfeTmBO4T2K0GvWwT6I65sRXCVjTP+0sb9ixLPA1nbsFrn7/QIsORh5A1CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KC0CYTo8; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47ee66dab14so417315e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 14:57:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768431462; x=1769036262; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MDobwa87FnFNj7Jj1JsOkjtdbqkfgMfRw4tVEyrijTI=;
        b=KC0CYTo86H+DHpVcySlUbm1ce14VT3pI3B/Er2bJodB/2MMqNXzxvSlolLjKqKiFaI
         0EhPeYgHxywPdUeFcDLzgXZ7LuXAi/ocH1i1lE6yDiFiQC++0GXzlpvMdh+4QyXebU4j
         lv7nTJrrYM6B9e+9lKS93XFiLEEcnsM+mwXUZsMiHGtqd9WF88zyvlNtTWk64r6/Y5W+
         t3pTcJOI3EjSMhYUg6sWVwvfEcYLvZcWLrBBT9UeG3in7DdvoqXXiWkdBF8SX28eNUGL
         ji58X9wsLa1OPm7z/ONeSbf6ca3y4dkMYv69ylvKgJUDp0jSm4/G+T7d0raEacOTUJnn
         rkJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768431462; x=1769036262;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MDobwa87FnFNj7Jj1JsOkjtdbqkfgMfRw4tVEyrijTI=;
        b=b8xQEJrsgA+m8PH4DhOcJunmbkmxxfMTEC/9BXZMKRM9qcO/zyjaLYeqEqSVcuDGi0
         HN6znNr7rCZ5cAH4DR0L5zrAMSKRN3rCwdccNBzTQYYkqf3KNTpoXcHrc2BVG0JTGxjy
         Ui8KuzvuKAG27WXUK/oeNvBZk2+r5nwZQL6GitzepK/4kpic367GQfedKdWXsOwtNQOC
         mGEexyOe+pKDXbNAPGHfHf/TBrbc/wuUjJwup8pdjecIKYvQbiqlr/RDxDdYyUR4SCzv
         iHznNFgph8NjqInmEcJ5fqGsH7obK/miN9RPl6tpGioLREX78YK1ZalJupx6QcVD6RL7
         3Apg==
X-Forwarded-Encrypted: i=1; AJvYcCXPbfCvl5Ws/jV0X+R2fxmLpIS0zgJNiXSukoFjzfuh8zIrureiAZ+NQ1fwxfSxkVZyoC8jDb5m2keb@vger.kernel.org
X-Gm-Message-State: AOJu0YwPUK52c46XNYT8ki5sCRHmlz9hQPhWJSBMmOiWL3GGfFppr2qa
	jwIM/TA4tK9poraJ244GtZjvttrUnaGDbd4ydUukk8MCT8nWmG9goDYx
X-Gm-Gg: AY/fxX6W4GtAtXVY9MP6ZKe68ouA6HsKPNXoa2gv5B25PLivzjPg6jZurT8H1SvUH3U
	aHtqadty9+4GBEZIKuq6LgeipDa7OGaOQ73PU0EQNs4PaONiFszfROkLUcPtnjXIqcCWSULFrVE
	XZIntNf+QGFM4LeOe76AuRGY+Naj06nv2y0g9XC/0/UwSh/G0HmhxMmrh6XDUEm1uYV8qSFGu0Y
	iA987MuXEC3h/oEDDHZYGPJjilM/0feapo/tnBNlPMzw9Swk53T44w82H0j0Ud3hJHkOqyldFs9
	tJRIlAscYDdE0dOmneFQWvkIyPLMlmhtWsFKxy4lgG9N0bQukld9RtJzimnn5eazr5CI0uN5K5R
	QBQhcWYgpRErFM4r9yEmGnVRXUajR5c5mUlBvZ5O69BDiZPoWHAgA42WRhowJISfORmqPL+AtDi
	7Clg==
X-Received: by 2002:a05:6000:1a8a:b0:429:d084:d217 with SMTP id ffacd0b85a97d-4342c38bf52mr2902416f8f.0.1768431461615;
        Wed, 14 Jan 2026 14:57:41 -0800 (PST)
Received: from skbuf ([2a02:2f04:d703:5400:d5b0:b41:b5b3:8c4d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af6e1698sm1957816f8f.37.2026.01.14.14.57.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 14:57:39 -0800 (PST)
Date: Thu, 15 Jan 2026 00:57:36 +0200
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
Subject: Re: [PATCH net-next v5 4/4] net: dsa: add basic initial driver for
 MxL862xx switches
Message-ID: <20260114225736.c7w3tpfol7bdc4so@skbuf>
References: <cover.1768225363.git.daniel@makrotopia.org>
 <cover.1768225363.git.daniel@makrotopia.org>
 <169e8a64d3f4db3139f2c85ac5164c52ca861156.1768225363.git.daniel@makrotopia.org>
 <169e8a64d3f4db3139f2c85ac5164c52ca861156.1768225363.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <169e8a64d3f4db3139f2c85ac5164c52ca861156.1768225363.git.daniel@makrotopia.org>
 <169e8a64d3f4db3139f2c85ac5164c52ca861156.1768225363.git.daniel@makrotopia.org>

On Mon, Jan 12, 2026 at 01:52:52PM +0000, Daniel Golle wrote:
> Add very basic DSA driver for MaxLinear's MxL862xx switches.
> 
> In contrast to previous MaxLinear switches the MxL862xx has a built-in
> processor that runs a sophisticated firmware based on Zephyr RTOS.
> Interaction between the host and the switch hence is organized using a
> software API of that firmware rather than accessing hardware registers
> directly.
> 
> Add descriptions of the most basic firmware API calls to access the
> built-in MDIO bus hosting the 2.5GE PHYs, basic port control as well as
> setting up the CPU port.
> 
> Implement a very basic DSA driver using that API which is sufficient to
> get packets flowing between the user ports and the CPU port.
> 
> The firmware offers all features one would expect from a modern switch
> hardware, they will be added one by one in follow-up patch series.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
> v5:
>  * output warning in .setup regarding unknown pre-configuration
>  * add comment explaining why CFGGET is used in reset function
> 
> RFC v4:
>  * poll switch readiness after reset
>  * implement driver shutdown
>  * added port_fast_aging API call and driver op
>  * unified port setup in new .port_setup op
>  * improve comment explaining special handlign for unaligned API read
>  * various typos
> 
> RFC v3:
>  * fix return value being uninitialized on error in mxl862xx_api_wrap()
>  * add missing descrition in kerneldoc comment of
>    struct mxl862xx_ss_sp_tag
> 
> RFC v2:
>  * make use of struct mdio_device
>  * add phylink_mac_ops stubs
>  * drop leftover nonsense from mxl862xx_phylink_get_caps()
>  * use __le32 instead of enum types in over-the-wire structs
>  * use existing MDIO_* macros whenever possible
>  * simplify API constants to be more readable
>  * use readx_poll_timeout instead of open-coding poll timeout loop
>  * add mxl862xx_reg_read() and mxl862xx_reg_write() helpers
>  * demystify error codes returned by the firmware
>  * add #defines for mxl862xx_ss_sp_tag member values
>  * move reset to dedicated function, clarify magic number being the
>    reset command ID
> 
>  MAINTAINERS                              |   1 +
>  drivers/net/dsa/Kconfig                  |   2 +
>  drivers/net/dsa/Makefile                 |   1 +
>  drivers/net/dsa/mxl862xx/Kconfig         |  12 +
>  drivers/net/dsa/mxl862xx/Makefile        |   3 +
>  drivers/net/dsa/mxl862xx/mxl862xx-api.h  | 177 +++++++++
>  drivers/net/dsa/mxl862xx/mxl862xx-cmd.h  |  32 ++
>  drivers/net/dsa/mxl862xx/mxl862xx-host.c | 230 ++++++++++++
>  drivers/net/dsa/mxl862xx/mxl862xx-host.h |   5 +
>  drivers/net/dsa/mxl862xx/mxl862xx.c      | 433 +++++++++++++++++++++++
>  drivers/net/dsa/mxl862xx/mxl862xx.h      |  24 ++
>  11 files changed, 920 insertions(+)
>  create mode 100644 drivers/net/dsa/mxl862xx/Kconfig
>  create mode 100644 drivers/net/dsa/mxl862xx/Makefile
>  create mode 100644 drivers/net/dsa/mxl862xx/mxl862xx-api.h
>  create mode 100644 drivers/net/dsa/mxl862xx/mxl862xx-cmd.h
>  create mode 100644 drivers/net/dsa/mxl862xx/mxl862xx-host.c
>  create mode 100644 drivers/net/dsa/mxl862xx/mxl862xx-host.h
>  create mode 100644 drivers/net/dsa/mxl862xx/mxl862xx.c
>  create mode 100644 drivers/net/dsa/mxl862xx/mxl862xx.h
> 
> +static int mxl862xx_setup(struct dsa_switch *ds)
> +{
> +	struct mxl862xx_priv *priv = ds->priv;
> +	int ret;
> +
> +	ret = mxl862xx_reset(priv);
> +	if (ret)
> +		return ret;
> +
> +	ret = mxl862xx_wait_ready(ds);
> +	if (ret)
> +		return ret;
> +
> +	ret = mxl862xx_setup_mdio(ds);
> +	if (ret)
> +		return ret;
> +
> +	dev_warn(ds->dev, "Unknown switch pre-configuration, ports may be bridged!\n");

Nack. User space needs to be in control of the forwarding domain of the
ports, and isolating user ports is the bare minimum requirement,
otherwise you cannot even connect the ports of this device to a switch
without creating L2 loops.

It seems that it is too early for this switch to be supported by
mainline. Maybe in staging...

> +
> +	return 0;
> +}

