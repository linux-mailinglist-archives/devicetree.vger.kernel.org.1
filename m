Return-Path: <devicetree+bounces-225997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FFDBD2CD4
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 13:36:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CAED43BF62F
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 11:36:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E36B425A651;
	Mon, 13 Oct 2025 11:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iGfBZ6s8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A36221F26
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 11:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760355371; cv=none; b=lm/DOBcd0xOWiNolCK+elCDOU4mN++9g+1BteIaowTnm/81jvq59fZJboRLk/86KuZPhxlj+zD0FhrZ5xZXm6Rw2PqBVSuF+TFaOd7H0+Wt3ctqzfszepXj+a4zTFY0DlRI+sZziJpWx4hGa//guGOfV/vqelqHZuB4ahCxczO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760355371; c=relaxed/simple;
	bh=Uoa6fwRxFOp5yXcDSCcsfCQDeelrFY9em5JImD7PkCo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SP+ZFcNHUSpqqqj0OM0nJBn5jP+wg3TbcLuK6atXMhtUa3OQ+C6LaK57iEYHbobhQvyjnalHH3BO10eOQHEXmpsG3Yo0tzdkAhg44GX3loGAEC04Rq4ubpmaXaDc/iM/aJruHOr0DDWb1ZAzd5Is5Uc1sCB57Xr1j6qbrprJ0JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iGfBZ6s8; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3ee1221ceaaso3179179f8f.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 04:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760355367; x=1760960167; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Iwo/yWdnbRioc3LFvtoHLGlkOOJnVDJyMIr5OhIkIk0=;
        b=iGfBZ6s8zrM8gDiHiEgul/3cjUP7cIp0oChsm4qnQW/NTNd9F4Wi4IlzkOmjqFWor8
         jL8tlTm30NEpbQHBi8vR+IQgITlgQQGhFubUfiBbxMSZNDzmD87rirQEGXNguQkkjrYY
         Cb6a7JcnCj2Y0udKy9GUGiQiAELA3c8tDHYwuVQI/oho6Pqp8qusA1xsGAsVJjDy+xAJ
         D8x2BbQlrNHx1/5L6fhWgXJCgU8r8GJFJNEcWMrfKN5iQxz8pY8tSlgIUpcZPJ6qzf0F
         EHrtpdQon6yatczImw6m1M9onCBjkfXhwUhIV/roUWcBJDLvcvpoRUnyEM4LW4g2iuaK
         WA+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760355367; x=1760960167;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Iwo/yWdnbRioc3LFvtoHLGlkOOJnVDJyMIr5OhIkIk0=;
        b=FUaWEKU0m9Hnv+apYC01+SKkjGBaMJqgrXsdmuq61tzN8oYpRLFbF0N35CXWUCAn2t
         hriQHksUbRaSODY7pQec/1jsE+SDT26S3UBhxM0gi/lj/Ga53BAxaFApyghOonQ3Yuo6
         d3+QAoBik56uKkoTJ3L0IG+HeS7BwXDvCyCHfkWphB4ysJV7z0qrRu7lsPYlXhirM82f
         eRiyP9NjOxENa2vvQeGAMsB79KxW1RjCINoaRp2SKX8eHE0gr5AOirqm2MnqMqtOTBS+
         /MsBdfL/EzPXoCHDxs1nbPoaeTNHsaudUihluIYy74NOm0iYDxmCJ/efrjhRU6QeycLA
         H+mw==
X-Forwarded-Encrypted: i=1; AJvYcCUuTBJMbuVDfGMB9ZtzO2ngIifMDHqwwl40InX+kv/oatn6hjSvvClGjBtib3z9YOCev/PWj/86psYY@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8aevRXPU8zm8P03DJ5KHw96Hj8JO/B5vKrRcGHXcxi63vkpi7
	g25oWh/tr9tk9fM9dpFFb5dASsmxFYkCQOg0xIod2VIyKd3Ywfof5gzj
X-Gm-Gg: ASbGnctd2i5mrhtwtOCdtfh2ukWvnBYaOg31uncSj82S/ppqKIFaXBjC9jdiBnPXJJp
	iWATx2M92RwHGp58khJyFYdlwGgjoUHJ7DXYiL8vlETHKDRzG83OQ5+17+SXQEWGdggjveO51Ud
	xMeWohArnCXnVNYYKSIKf7lCyrxTx4x5zuQBjre4p1U+0iFbqdtwlsk8YiStYU5B6cAkffzpV8r
	+yQMNW3IqsQAxEzFBn9VVt+CEUcClLon7FTy26f1wIpiJNNkz7EGk6tzFChYwFzXt0NAYxTVVK/
	lEFPZm7f+iRjY1QbuHJMxzSiTngR7wL/ogP1A8Zg1or3vrObl3c+N3faNrxi+qH9a6EmNOjMWPN
	B9t79Y5JeZAh0sM7jEk6jRVnjJQcJ/CE1ruU/ROEU0dPeV/VAYg==
X-Google-Smtp-Source: AGHT+IF6Zt79HEXygH9EvfjQww7YVx29OAymvSr0uzjmK79t/sPfIN0gA2m0SBb6YfkT2CsUA/urvw==
X-Received: by 2002:a05:6000:4901:b0:426:d5bf:aa7 with SMTP id ffacd0b85a97d-426d5bf0c0bmr6137423f8f.63.1760355367228;
        Mon, 13 Oct 2025 04:36:07 -0700 (PDT)
Received: from legfed1 ([2a00:79c0:6da:da00:22ea:3d6a:5919:85f8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce57d4bbsm18111993f8f.2.2025.10.13.04.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 04:36:06 -0700 (PDT)
Date: Mon, 13 Oct 2025 13:36:05 +0200
From: Dimitri Fedrau <dima.fedrau@gmail.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Dimitri Fedrau <dimitri.fedrau@liebherr.com>,
	linux-can@vger.kernel.org
Subject: Re: [PATCH v3 2/2] phy: add basic support for NXPs TJA1145 CAN
 transceiver
Message-ID: <20251013113605.GA177845@legfed1>
References: <20251013-tja1145-support-v3-0-4a9d245fe067@liebherr.com>
 <20251013-tja1145-support-v3-2-4a9d245fe067@liebherr.com>
 <20251013-unyielding-turquoise-mamba-76a0ea-mkl@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251013-unyielding-turquoise-mamba-76a0ea-mkl@pengutronix.de>

Am Mon, Oct 13, 2025 at 11:51:51AM +0200 schrieb Marc Kleine-Budde:
> On 13.10.2025 11:19:19, Dimitri Fedrau via B4 Relay wrote:
> > Add basic driver support for NXPs TJA1145 CAN transceiver which brings the
> > PHY up/down by switching to normal/standby mode using SPI commands.
> 
> The PHY supports standby and sleep mode. Does the PHY framework provide
> a way to configure this?
> 

Didn't find anything related.

> Why do you put the transceiver into standby not in sleep mode?
> 
Datasheet states:

Standby mode is the first-level power-saving mode of the TJA1145A,
featuring low current consumption. The transceiver is unable to transmit
or receive data in Standby mode, but the INH pin remains active so voltage
regulators controlled by this pin will be active.

Sleep mode is the second-level power saving mode of the TJA1145A. In Sleep
mode, the transceiver behaves as in Standby Mode with the exception that
pin INH is set to a high-ohmic state. Voltage regulators controlled by this
pin will be switched off, and the current into pin BAT will be reduced to a
minimum.

I'm assuming that the sleep state would fit into some suspend,
power-off, ... scenario, because the INH pin maybe used to control
regulators.

Best regards,
Dimitri Fedrau

