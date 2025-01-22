Return-Path: <devicetree+bounces-140432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 986C0A19B0A
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 23:43:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BDB03A4DEA
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 22:43:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2562B1C9EAA;
	Wed, 22 Jan 2025 22:43:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LOEDhM79"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AD421C5D4F;
	Wed, 22 Jan 2025 22:43:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737585795; cv=none; b=KoGdaga9XXzaeuARF7mcaa5OKzXEYT6/Zn4n4lZi3iXnecf70pa+/Qdu43GErgyJLyOmiybXf5zRLlMbYeem9Nic3bysKKKW1BXcnNij+iMTp3L5MMB0+NhwfqCE6ivogIGwwAKU14pWXWbUvH/ZWW099aSeMUhNMR+2dal8EKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737585795; c=relaxed/simple;
	bh=KLtJ5UuBThEDvv2fmVOifgtc8X1xfwVeYV1LWyFnU9s=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CQIV5N7jswebu4Gbz+TWDIeroW+jesvoiNTMIGcIQWVM5gl/0s/VImSdXuU/x1KZrMc9Po47YfgA8YOdi6yxdi3hQU3papZP4V9bdcSRQHcIVdUUoXUX0dIwwnI51RlGaa1cn9TsSqFwe/bMqq8Cv1s1Oi7I9rWwYyp6E2bX8ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LOEDhM79; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6d8f75b31bfso4173186d6.3;
        Wed, 22 Jan 2025 14:43:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737585792; x=1738190592; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=E6OZqE7iIZIdCEqIDoZhlJdC19YJ2tsXKOstsn7nEBM=;
        b=LOEDhM797+iHmcVAf9PDHpZ2oS/Io8Wn+6cRfGNbaMCtWDIJM2xDOjwhaRhDEYN5DI
         Jb35cdkSeLRM0D/9XcEDxMib9UJK2g5FvGzaoMgrNthkRUTg/FMXIleNRV4ssuP/RG/5
         /Ifdapwtshs7xPLufoJql5OdC1VRTyYvumEpQglpMxzJwljHgw5Hgd8691wnM1g1u7vo
         97lIz0/RuikruF4/yDz8cidw5BNnTTnugQ9MpE5x9MmL21W0umXOISIHCHMKMR2qSBnU
         AfvZ1AfKVctt47aleUvVeZHyCo6Kvvovfmy1zjzykDOwkttBssuCG1iLm49AA9VvRJJY
         4pFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737585792; x=1738190592;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E6OZqE7iIZIdCEqIDoZhlJdC19YJ2tsXKOstsn7nEBM=;
        b=umu4KV/ChxgkFxJd0cCYysbpc27FNBhGzQtLf81ZM3nZ6ofRU8i75c9Vtvn0LbuC+u
         oi/qhL0hzDFUqgoTf52RLFPmjL2UEOstqBfGA1FfREGfNgbwpJXTh9H/TsxGzE1rSu0h
         LnM8ebmojNdC5VS5+hwpkXFCY02ebPtZG4Zf1Rzcz3jIsG7N0bMTCi4QwhtXzoMDF91h
         6ltxNsQx5AW1relJdz7zR4P8oh9LTVlVAt+gZPzp4UAIbijRt1acsLan9RcI+fQYN9y2
         BREit/tKjgeXnKD8aFV896wmKOs5Dp/F2UcdSkNfEAiLhhWKIixzkCSSdzkXf6yv3d//
         j3kQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzFo7P/iKQXLfTW1cT0Wiv3NhR3M1QZ/VKa2vXgNQlBRTSZ3WkaJCkYz0N3ihnmvsCoY1bSG/18i6DaGDR@vger.kernel.org, AJvYcCWMysiW2FyKPCb/mk77uXZrwTP1wzjaO8AtWrninJJnrCAh2yp0vuaNY2tTTtxwMlBCGRyJciHWncp/@vger.kernel.org
X-Gm-Message-State: AOJu0YxQbFkRlucFNe3bRikfrBZEGuBZwKJRcExGmA0kxOI6zQJuUOm0
	3FWJGwJ0t8Y364a1Nw18gmEcbPlWMxQGl0kJTQ70jNccEZoybAFC
X-Gm-Gg: ASbGncv2OOKDs3oVduxsi4GYrEr/RjlWbv33b6otjSlTO+gQHkmV2w6n+kNwqHMTSPz
	q9Hi6aMP/JtsuVWuF4mQcl+j5DQ4KtxQKxGG/yhrwwWbVRzECxp+SWVlWT/DURoQ7630FP//Vsl
	FPYO3lzpxSIRFkRQD/sbyrXe5AhxKvLfSU0OMUz3RipvBykdzPjumAFTC22f+NIcD9vmLWXITta
	EkYrSD5Zj/sTqzgIgDidD7Oh/k+8o21QuMGda/h+rSktw==
X-Google-Smtp-Source: AGHT+IFoyWf4t/CIJ0HKL6Xnq/hJ7/kW4C818cLFawa82wfPl4faqNL1VWj3EHe1I2PuOVEWgcSkAQ==
X-Received: by 2002:a05:6214:240b:b0:6df:97a3:5e76 with SMTP id 6a1803df08f44-6e1b21d13e5mr384406186d6.27.1737585792443;
        Wed, 22 Jan 2025 14:43:12 -0800 (PST)
Received: from localhost ([2001:da8:7001:11::cb])
        by smtp.gmail.com with UTF8SMTPSA id 6a1803df08f44-6e1e0a39f89sm24469386d6.19.2025.01.22.14.43.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 14:43:12 -0800 (PST)
Date: Thu, 23 Jan 2025 06:42:23 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@gmail.com>, Chen Wang <unicornxw@gmail.com>, u.kleine-koenig@baylibre.com, 
	aou@eecs.berkeley.edu, arnd@arndb.de, conor+dt@kernel.org, guoren@kernel.org, 
	inochiama@outlook.com, krzk+dt@kernel.org, palmer@dabbelt.com, paul.walmsley@sifive.com, 
	robh@kernel.org, tglx@linutronix.de, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, chao.wei@sophgo.com, 
	xiaoguang.xing@sophgo.com, fengchun.li@sophgo.com, samuel.holland@sifive.com, 
	christophe.jaillet@wanadoo.fr
Subject: Re: [PATCH v3 1/3] dt-bindings: interrupt-controller: Add Sophgo
 SG2042 MSI
Message-ID: <wwgb5kx7o3s53tzpjcizrw7ftkxze4ynrwvgxshk6cl3crslx2@erbjvg44h7cb>
References: <cover.1736921549.git.unicorn_wang@outlook.com>
 <c9dd12c3ad77b13dcdfbf4accd51e92e6ea2a4a9.1736921549.git.unicorn_wang@outlook.com>
 <gyf6cdqjnvom3adf3cr7l72e7xevewhrsv4koelpnfm5cd22ge@t4ru6avsihzd>
 <BM1PR01MB254564DCF4004C3E60177331FEE12@BM1PR01MB2545.INDPRD01.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BM1PR01MB254564DCF4004C3E60177331FEE12@BM1PR01MB2545.INDPRD01.PROD.OUTLOOK.COM>

On Wed, Jan 22, 2025 at 09:51:05PM +0800, Chen Wang wrote:
> 
> On 2025/1/20 10:42, Inochi Amaoto wrote:
> > On Wed, Jan 15, 2025 at 02:33:23PM +0800, Chen Wang wrote:
> [......]
> > > +  reg:
> > > +    items:
> > > +      - description: msi doorbell address
> > > +      - description: clear register
> > > +
> > > +  reg-names:
> > > +    items:
> > > +      - const: doorbell
> > > +      - const: clr
> > please reverse the items order, the clr addr is more suitable
> > as the MMIO device address when writing device node. doorbeel
> > address is just a IO address and can not be seen from CPU.
> 
> I find dtbcheck will report error if order is switched.
> 

You should also change the unit address to avoid error.
I think you forgot it.

> On SG2042, address of doorbell is ahead of clr.
> 

It is the same on SG2044, but there is a problem that the
doorbell addr is a IO address and it is not suitable to
represent the device addr in the dtb. It also lead to a
weird unit address on SG2044 which is hard to understand.

Regards,
Inochi

