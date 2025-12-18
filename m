Return-Path: <devicetree+bounces-247977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5316ECCD4D8
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 19:59:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39017305E71A
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 18:58:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE92232E6A4;
	Thu, 18 Dec 2025 18:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NzOjmPrn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF2732E15A
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 18:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766084334; cv=none; b=q3zcvug9Qn4ZUI9XeIIAkenh3Krd/3slhR9l/+BZVMiH8mo7+qlyi21is3GrYvMcMjCH9uBCN6KkDhIksTRRyOLYmU7ygWY4OIYjnD04oLT7sUxCGtyoDjUG7oU/8ER31hIoCLMMF6VUt5DfgUf4X9y/1R2bt/uv7a7QLmm36Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766084334; c=relaxed/simple;
	bh=Jku28IM/c1IYSHnKsavbvy9aaLBIgMj3F4YQHgrupho=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eBQSMPSdsHoCLxGBDFHJCGIV0Xmajibj2jD5XSRzWLVVoQuPrc6uSJvYMDlVlgl/2kivIuIwhBXlC48KdTuThOi4eBlAUCEEIkARxNm+Dmo7q7FmkKo7IM6lvAt1vPzlLsDJ4OyQDPqgFk+9+8IqXcrc4DSn4yfAAorFEuZ3k/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NzOjmPrn; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-7ade456b6abso883745b3a.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 10:58:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766084317; x=1766689117; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AQfRVSe9fO1PObUKRZHse1cNpjrf0uUXBusNVMTFfiA=;
        b=NzOjmPrn46f7eL94kTiu7+0zvL7EqcBFTL/HGLf3Rc6h3rBZjvJM5i3qCCD2fYrXy7
         eJklrOOWGmpDdYURm2bD9+/3PlBRsY8WKHCZ2GLGzwLcw74QlWuQ3QwUrvnoh8XgWay8
         gOij/Oftk04H9HcDeMjrum7Gp/tJMDS9TcpBQwDo75WutLi+yiY8j3WBiG0hbm0He5W7
         e9CpO9bAAOVDpz+N+io0xTJRBjOcs9kNkjAd+Z+kY0znjtSG4hOPaCJlbg1PV1xakEpj
         cFYP81lVX+QhyL2f1NFGqqWTbtem9suiHwzZLYFwy//KO+NJmpEmbUADkYq65Km/0XcM
         myZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766084317; x=1766689117;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AQfRVSe9fO1PObUKRZHse1cNpjrf0uUXBusNVMTFfiA=;
        b=lO6BTXgKVhNE0yHRUMzkwr0fs4SG+AN1HL/xq/RTcWOzJcDy5O/yVZNVXBFyFUgcrI
         ZdHyOjuLqLGnJ/5l0TeyLu9dqEOeIdN0u3eLALrq87fegYadZHs8ZSTPhwTRPpzhIiYe
         vx/COCsGvNuq/+swaISeqwyTHV3LRP6xd88I6TLC+kAGciDkVeZJgX0fhlIx4e3lmQQt
         C0RbT+79k5+eUYYJyGfoOFQ4P0yaUMlVoCSJrVy7U2Y9P1iPvToCZI2euQu+DLurbQu9
         2u7srVbGyQkfgrmSCTFOAaZsg/gQegZQedjZlYyXX3tbLO9vjroVRljvKwiY5dt54cZC
         08BA==
X-Forwarded-Encrypted: i=1; AJvYcCU1b8uX6jyP4dzBoaP6QBrM7zjdSxDH2GgNYgH+Jt4JBq3Xz3YoQVLgFpLmGsBPnilW5ByI6sTELIsd@vger.kernel.org
X-Gm-Message-State: AOJu0Yyvgpia+bw8c6ULtR2ahoHx1zlsZBIlJCZ4WKJ4CGUU0tOWay9f
	RcTSJFo81IWjLkxKCTM2pAbL9Mk1tkQEEeBQg7SgqV698H2kdFMsbh30
X-Gm-Gg: AY/fxX4lRvl6Bnb7ABe7QT1Oy5yKpiJdrMPyWAdJOrb7coIuNkWaeYHR2EYYsl8xO+5
	fRYNS15cQPwvWfqbrGmwNClKskJi4N4fRxgEj3IDt+Lemd+x72nw2+WCusXHoV4C2CZ62GWI9Iz
	NmhtQx3hvKC8GmL8CtEroeZemTYyVL/4f2H74KzFGJbojsiMIKYqmm3dS/DrM5mW46XtZqDoHEu
	nueIWog4OESMgo/CzGncqevBFFWmQpSaYOVTZI4cvkg4f5VFswIgFIVZL1hUDX5lUJ+fc7Rfq3D
	/hYkhch8I4Hl2jDlDpDxqlIIOL4ASdVwKJQXAUO3mGW8pcBYejOKrZDiSl4NhlwpQjKxL4HgfD5
	8w2Hbt0hCQogd8JEridI4PPyBnaiNST2bcrlWznz/yAFaeIQ8PoCNzRwrIQj22AyIhU+TVDLPcY
	Lsbxieti641xCUQ/LvtWH2/kHq
X-Google-Smtp-Source: AGHT+IFf3D0xeHaQPPXEeazhorZHgIgTwRHiyRuussKNgJjGtFBYIJhQUMgRhb/IHzjPiFdB5lKzgg==
X-Received: by 2002:a05:7022:3705:b0:119:e56b:91e9 with SMTP id a92af1059eb24-121722dff1cmr177764c88.26.1766084317443;
        Thu, 18 Dec 2025 10:58:37 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1217253c0c6sm299016c88.12.2025.12.18.10.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 10:58:36 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 18 Dec 2025 10:58:35 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Robert Marko <robert.marko@sartura.hr>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev, Steen.Hegelund@microchip.com,
	daniel.machon@microchip.com, UNGLinuxDriver@microchip.com,
	herbert@gondor.apana.org.au, davem@davemloft.net, vkoul@kernel.org,
	andi.shyti@kernel.org, lee@kernel.org, andrew+netdev@lunn.ch,
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
	linusw@kernel.org, olivia@selenic.com, radu_nicolae.pirea@upb.ro,
	richard.genoud@bootlin.com, gregkh@linuxfoundation.org,
	jirislaby@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	richardcochran@gmail.com, wsa+renesas@sang-engineering.com,
	romain.sioen@microchip.com, Ryan.Wanner@microchip.com,
	lars.povlsen@microchip.com, tudor.ambarus@linaro.org,
	charan.pedumuru@microchip.com, kavyasree.kotagiri@microchip.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
	dmaengine@vger.kernel.org, linux-hwmon@vger.kernel.org,
	linux-i2c@vger.kernel.org, netdev@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-spi@vger.kernel.org,
	linux-serial@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-clk@vger.kernel.org, mwalle@kernel.org,
	luka.perkov@sartura.hr
Subject: Re: [PATCH v2 15/19] dt-bindings: hwmon: sparx5: add
 microchip,lan9691-temp
Message-ID: <8462a516-4e8f-413c-813d-e7ff0e6eaa1d@roeck-us.net>
References: <20251215163820.1584926-1-robert.marko@sartura.hr>
 <20251215163820.1584926-15-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215163820.1584926-15-robert.marko@sartura.hr>

On Mon, Dec 15, 2025 at 05:35:32PM +0100, Robert Marko wrote:
> Document LAN969x hwmon temperature sensor compatible.
> 
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Applied.

Thanks,
Guenter

