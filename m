Return-Path: <devicetree+bounces-10194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A727D004F
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 19:13:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A97091C20BB4
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 17:13:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00C2C32C72;
	Thu, 19 Oct 2023 17:13:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m09vXIe0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FCB230F82;
	Thu, 19 Oct 2023 17:13:15 +0000 (UTC)
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 884BACA;
	Thu, 19 Oct 2023 10:13:13 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9b9faf05f51so1266871166b.2;
        Thu, 19 Oct 2023 10:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697735592; x=1698340392; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=s6iwLM0YBViy6qG2DuV5dnNM1f+x36wBRet7e+ne2fk=;
        b=m09vXIe0hdA9ubEgSsqThErJtixatDw899c9+3ObjTFCxFrG5ZRlCEwflX7UYD7lb2
         ScWyEuOnqJ6Uh0dKvXXATUrJTvWrVYogPcuWSwIrJ2ntAmWbmkfy6fgEGQ7gBRa6KfMv
         aXmisM4BrNA7f5+U1HJUv7PpUQdfdaiJpIbnqMZpihVjOdWhxybBnQebrg8l0y6pK+Dk
         COKGiouOsIsTUdqD5Kzh/rVoLQ4JqKnQCMXl+iI8lkd/7dFZTwURSI+RupIYOQZZexR1
         8X6HGeiaooV9D4DH3AVT+0kPl2+JIIBfsjXuF46kJaMhACCHTZn3v6qy3PwsuabfWZsm
         PHBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697735592; x=1698340392;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s6iwLM0YBViy6qG2DuV5dnNM1f+x36wBRet7e+ne2fk=;
        b=FxhY+Qrm8Vz4iZhocLw8vNBZVJS/6WhuMTh+QxzgGn1TSLVyvrUrmIvmfpT/OBV5Ni
         Q0gkGzDkEvH6g/HYftASR7J4UZrp65NTEmt+CMUI/RDaIwjRJ9xBM7vJA1I03r/ACgH5
         SQQ4JSZjfsdcZKaQ/LegZYBj+h4y+Eev1F7gTu1J/tmw2Z81OZLVPeigrIuc0sITAM3E
         E6D02TZ4luwZJQrzfl4tzTuc/WiaY2SSe1qLAxwxA8+qsN7KAUf6OmS+8VZCcw5+Mwz1
         uIzCJH5XhxFzYHizx7E65HqvwQJFaGh4GQBwkBl+u8r3id8cqHtLh3zVQXxpFlEjqKt1
         +cQw==
X-Gm-Message-State: AOJu0YyaCMMke5c260yvPIwVDXeF68CMwNmWKyflg8W/Pw9U/aM8+WoT
	U0p+W/0863+fEu1tGKDtgqo=
X-Google-Smtp-Source: AGHT+IGy7Nb6X4ZsEGDDZ03TGprusUPHHbwluTI4vMpPcPOcuI8iPS5Rf+2QZRdK+bUFHrfd/2/z3Q==
X-Received: by 2002:a17:907:72c8:b0:9be:45b3:1c3d with SMTP id du8-20020a17090772c800b009be45b31c3dmr2443967ejc.48.1697735591764;
        Thu, 19 Oct 2023 10:13:11 -0700 (PDT)
Received: from skbuf ([188.26.57.160])
        by smtp.gmail.com with ESMTPSA id y17-20020a170906519100b009a9fbeb15f5sm3793772ejk.46.2023.10.19.10.13.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 10:13:11 -0700 (PDT)
Date: Thu, 19 Oct 2023 20:13:08 +0300
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
	Rob Herring <robh+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	kernel@pengutronix.de, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, UNGLinuxDriver@microchip.com,
	"Russell King (Oracle)" <linux@armlinux.org.uk>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH net-next v6 7/9] net: dsa: microchip: Add error handling
 for ksz_switch_macaddr_get()
Message-ID: <20231019171308.tpjdevvnrqhly6cu@skbuf>
References: <20231019122850.1199821-1-o.rempel@pengutronix.de>
 <20231019122850.1199821-8-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231019122850.1199821-8-o.rempel@pengutronix.de>

On Thu, Oct 19, 2023 at 02:28:48PM +0200, Oleksij Rempel wrote:
> Enhance the ksz_switch_macaddr_get() function to handle errors that may
> occur during the call to ksz_write8(). Specifically, this update checks
> the return value of ksz_write8(), which may fail if regmap ranges
> validation is not passed and returns the error code.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
> ---
>  drivers/net/dsa/microchip/ksz_common.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/dsa/microchip/ksz_common.c b/drivers/net/dsa/microchip/ksz_common.c
> index 7b05de6fe987..79052a54880c 100644
> --- a/drivers/net/dsa/microchip/ksz_common.c
> +++ b/drivers/net/dsa/microchip/ksz_common.c
> @@ -3612,7 +3612,7 @@ int ksz_switch_macaddr_get(struct dsa_switch *ds, int port,
>  	struct ksz_switch_macaddr *switch_macaddr;
>  	struct ksz_device *dev = ds->priv;
>  	const u16 *regs = dev->info->regs;
> -	int i;
> +	int i, ret;
>  
>  	/* Make sure concurrent MAC address changes are blocked */
>  	ASSERT_RTNL();
> @@ -3639,8 +3639,11 @@ int ksz_switch_macaddr_get(struct dsa_switch *ds, int port,
>  	dev->switch_macaddr = switch_macaddr;
>  
>  	/* Program the switch MAC address to hardware */
> -	for (i = 0; i < ETH_ALEN; i++)
> -		ksz_write8(dev, regs[REG_SW_MAC_ADDR] + i, addr[i]);
> +	for (i = 0; i < ETH_ALEN; i++) {
> +		ret = ksz_write8(dev, regs[REG_SW_MAC_ADDR] + i, addr[i]);
> +		if (ret)
> +			return ret;
> +	}

I understand that you intend the error to be fatal, but this leaks memory and a refcount.

