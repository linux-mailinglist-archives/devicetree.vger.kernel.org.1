Return-Path: <devicetree+bounces-226297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F2010BD6DC9
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 02:21:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B1AB73E4E10
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 00:21:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E9832D248C;
	Tue, 14 Oct 2025 00:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fEQhYGZ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2FED2D77F1
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 00:20:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760401262; cv=none; b=Zoi764nZcrb14MB5jmRwTmGBaA1vL3gf+M/FVdSLFEq1xeCPolMzY4FLxOjljiFmNyq9k+lm6T2WRtctR0Uq8bBi/BuAyOlznodG/8EsaETFMivdlTu1ezfcKV9ATuk/z5Bc2FX6csOJkpX3VjfkZCL0cb1NZHTTGjlphw3gzWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760401262; c=relaxed/simple;
	bh=czJo/08EzicNODWCp4n9pGlV1SP7i5jLiuhBbGK2fh4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bDKetngfbLFSGzIspVKckIkTdLZb3+2WsG59Yzl+awwm1uLjSZ0DV82XCQF9d/XW9nbQ/NUdcg1rLXZ0/QMCCzojMwmYNIaOcEX4aUoraK+m0v87l0aBNm8GM+tdaCD+GP53t7IpbkjGCveb8ZCRl+Ucd6Oirz+fkZ7H1Y8zr3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fEQhYGZ3; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b67684e2904so2616351a12.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 17:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760401259; x=1761006059; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FapHoBZSBBgkeAPgfh0/hnIRZ5RySUGbBwY1QHLC79Q=;
        b=fEQhYGZ39LYXk/aKMatjdk48yyF2BsVjko5oZT+WLyawHjt50/yGAP2kejSTTUm04/
         jlE3795qaN27eV/kCWMNIUYo7PD2DBFu/PB9tQdVUB2LLGpe2CGCDpWj9PAbVCIeVxb9
         tRBgssr08wJG9ZmfVfoq0M99OPTz7WWaN9FUgVbtlijFmTmNJte5AOH0vTF/wCyMfm1e
         zwUiR0fk+CRD+sb+m/gzXanwTS0PaY46P3jgGU3lXjzyvUUFe+88cn6olQjj90bUBqRH
         NDkUykAFJE7yyHfO7ViNdPJuBVBVe+QS0UVqySmiLk8za6v62DJF9JdV7mq3rqZ6J+r9
         whZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760401259; x=1761006059;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FapHoBZSBBgkeAPgfh0/hnIRZ5RySUGbBwY1QHLC79Q=;
        b=qZwXOUdC8tpJ4av172FpMjkZuSRg2m5Pl6y8QiuJuDwks6B37PgzBTQyS16nv8+mxK
         uwq/v2cAC+EAiLz3sEm+wbN4Lytq19ekxEEepzv9GOdjVQU+ebl5rOz9mW5+9Lg/GnqC
         eJnvrmS/vNhzw8vjs4wCMJMBAogAbCnlCjbPGj1lMs13/bY5AtWdIv2XHXUdSMTRNyY7
         R+PVbBDNFIr7vULw8Twh2hJq/NNWaiXFK//Oev4BBcsNuIoWJNUjSAiQfHYpbdwca0sy
         GHhAHpmjmXRwrbSechb6NYuPf/aObT/orgw6c5Ey9lChadowzQhYx/dgbSMoTY4Vu3Q3
         lBHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWydjZ6Cq62v9Vor1arlvpda36zpp21bLDR3Ufot/6Snx1mucnZiYWNjPspRoHPSlsrcTj8edozEQ7W@vger.kernel.org
X-Gm-Message-State: AOJu0YyxqmuMcsJQWOBDX2D0bKoep+ZCc0sGYOkZNPUj92rvQS0ZCjj6
	BJhfETj9C6PCjjOR5fCoZvjEyRPEQytpYcNQNXM/F7BJKzUcBBdbvlSo
X-Gm-Gg: ASbGnctfWh8P2yXahpU2gzCSfqGimuMncJ32BP2sf20LdSH4ZFmMyh1wWDJBY8VD2l6
	vXgvhgiMvjBuCsJcmSCyt9jY0gOH83z4yCVl3UTokjDtHNc0CtfIqolaURS12PAHQBbXCm8mXvc
	2tm326F1ylL8mRyn34KccZlntjN6I3YrmJRRIa1Q4DBmvp7fPUE7wT11WcPy46A4mIMeJLFND6Y
	7KBHeNAYHo9keuF1X5wPWT5iCiRa12ET0dYOG9no6RrpuPdOU5ElvVswcnB1WHbQS8HkoQHIWBn
	iU7i3ptlxpGbGK8/q50UQJO06WpJu7KMZhsXkkyz3RAf6uDGM/Cg26q8EJhi7KNXPaQaRuXBqIB
	AUlDxBjBnuRZOD2BoP8gnxmp+qfXkv+ePVRFSSrg3sB5NfH8WRF6DQjBIE/3L/Ho8
X-Google-Smtp-Source: AGHT+IF8IIF9dA+nUndexMgc/HlI7FOKBRCbLWHhmSyCq1fdJ7LM7JOtkUdL7gTzQp9WcaLBJmQIJw==
X-Received: by 2002:a17:903:8cc:b0:27d:69cc:990 with SMTP id d9443c01a7336-29027402f43mr305469345ad.49.1760401258830;
        Mon, 13 Oct 2025 17:20:58 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de6c7bsm145479255ad.3.2025.10.13.17.20.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 17:20:58 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Mon, 13 Oct 2025 17:20:57 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: rentao.bupt@gmail.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	Andrew Lunn <andrew@lunn.ch>, Tao Ren <taoren@meta.com>
Subject: Re: [PATCH v4 11/13] ARM: dts: aspeed: facebook-fuji: Include
 facebook-fuji-data64.dts
Message-ID: <79ddc7b9-ef26-4959-9a16-aa4e006eb145@roeck-us.net>
References: <20250728055618.61616-1-rentao.bupt@gmail.com>
 <20250728055618.61616-12-rentao.bupt@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250728055618.61616-12-rentao.bupt@gmail.com>

Hi,

On Sun, Jul 27, 2025 at 10:56:13PM -0700, rentao.bupt@gmail.com wrote:
> From: Tao Ren <rentao.bupt@gmail.com>
> 
> Include "facebook-fuji-data64.dts" in facebook-fuji dts to avoid
> duplicated code.
> 
> Fuji-data64 and Fuji are identical except the BMC flash layout.
> 
> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>

With this patch in the mainline kernel, the Ethernet interface I use for
testing does not come online when loading fuji-bmc in qemu.

Reverting this patch fixes the problem.

Looking into this patch,

> -
> -#include <dt-bindings/leds/common.h>
> -#include "ast2600-facebook-netbmc-common.dtsi"
> +#include "aspeed-bmc-facebook-fuji-data64.dts"
>  
...
> -&mac3 {
> -	status = "okay";
> -	phy-mode = "rgmii";
> -	phy-handle = <&ethphy3>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_rgmii4_default>;
> -};

I don't see this in aspeed-bmc-facebook-fuji-data64.dts, meaning that
interface is now disabled. Adding it back in fixes the problem.
Also, MAC3 is explicitly enabled for fuji-bmc in qemu.

Was the interface disabled on purpose ?

Thanks,
Guenter

