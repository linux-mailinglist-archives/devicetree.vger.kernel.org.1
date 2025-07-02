Return-Path: <devicetree+bounces-192076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF03AF14CE
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 14:01:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A004E3A712E
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 12:01:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 062FC263F47;
	Wed,  2 Jul 2025 12:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com header.i=@resnulli-us.20230601.gappssmtp.com header.b="HgqKojtH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D6525F793
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 12:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751457702; cv=none; b=etqTokOKnZ+lfI2DCNmKaGwxDW8J53AWMr6+Pbm9wQfuONHsu4EGTmhItWUtFCaOU5NLCDXm4wTOi24o4kHWrmlDbAMVGo8GDuPFt7PuFUy6vyLqRqfIhHsdHi3+egKFHy4wa7RstILkE+4LyfwQlJnyCD2iayeME/KYsmfVp4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751457702; c=relaxed/simple;
	bh=nIVOyH1pNNhYSIg0y80x9hchFkRGUaJXVGD49xjbamE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iK8wHFrvmX7jR/VsFy9ruORF8juJxSG1Gnn417xTaVZmMOEZSq/QZi1CArpGRm3DIGgvZvRdr4vSGqKulVd6o14B1YaTJxbFt4hNWTPqi134vWUCt/dOMQaCUVzqkAeDmHmo2MBhjQ20iB9FLklXZLqkzwXUD9tTSx+r2QkVJxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=resnulli.us; spf=none smtp.mailfrom=resnulli.us; dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com header.i=@resnulli-us.20230601.gappssmtp.com header.b=HgqKojtH; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=resnulli.us
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=resnulli.us
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3a575a988f9so4406114f8f.0
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 05:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1751457699; x=1752062499; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GP5yXE53ih0sxTNELPBB00JWDnKqbTnSZYff+1z9sqA=;
        b=HgqKojtHbQIpdtF4QNdC33oTdaStSRuXzRCoQF4Cr2opy0KITR0/uDQsHhcBSgUgIZ
         B9nri9yh9WhwPVki3PgRAoF7vU/xPKBCcIQ6hjzlr/vrlxmK4QcWXDARD4S3B8mA1nIr
         n/tQJZVD+39Kpw/cVjcmzZIE6BjC0VVemiYNmYmPMd6ALH11saxnEkVlOXyT4spcSrwT
         MxL1N4F660ZrphSuhgEzGGIWJz72mub91F95y0osSA3c+NmQRZsYkUVsF5toOoNB34Zi
         2lkSv0/c7cWxzGIJORiEr2BqaTe3ljRKsSytEqjKMtly4g0rN6Wp8Jxu7Lrxx6GaoRKm
         hiQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751457699; x=1752062499;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GP5yXE53ih0sxTNELPBB00JWDnKqbTnSZYff+1z9sqA=;
        b=m3K8tVCiadCt+v0PYq2S2tPZ7T+Tg2MUAXRJq69Rtet2ti8v2B4jWmVsoEnNdR64aP
         Ld8YIRuVThnrI8eqQ+JxOZosrrB60ZlAlYLRR5528xegMs3om6Rx5PVunTMIulNlUZnO
         Bl6ghfEIl4FE/Ht/mnlTna/OfoPYET1X+tDoCZmGcBWJ/6YewhrnugIDMQ3/w/3Hn7+H
         1qUbZ7+lLXsS05XJcq+PysDVqBQtJw0C3BWpkV/a1595POdxFUcCj29iqfS31gutXvvy
         Rnwe33+ieKEnh2NMx8FweVIKhZGcqNvDX08qeFQ4h0YYa/nH+fdUyvi7q/0HvsJeryVE
         xT7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWQmZ6Ng0j3FIx//cS2wDnAIsDSgOgV1aVvtkGWiVgBL9yB8nmrJ08HAWrJgCy/VlikT4ef7t4aH+ik@vger.kernel.org
X-Gm-Message-State: AOJu0YzjXLt4L0ynQWOj4r6s6bIgtAje+JFcKNnrEhdtUL7414YNzvFD
	aDTymnajDjZ4IOKJM0lLpEmOmpnYBAvhvdfjKiZxkb5AzHqMGUwd87fitzJM403fVA8=
X-Gm-Gg: ASbGncvJIe8snUwaTFhUecOG0hx90cwHqypmfF4SewWyUbhD41/9PBEiguPxB+5XNLq
	KG1ODv+puaAyChEd97f9lbG08XRVUve1E3ovbNljkKkXw8ehgy385hYYyASxrk8B89BFlOMBHDe
	tquW6BDxrZq4dqNDpkVG6hwKRqdKV+siH5wzHT3HY1XD7D+Y6MJW47cFoxQeQOILx3emGYDkO0U
	CjLkYbfMdYj0lIdtDn9wJiTYDzq7M7Pnl2MRtJ4sAUZ447EMsZ7MKTTkb3sZRt0+Ik72mHteomm
	jDcJ74A+50dRCtJCn6bDvIb7ZqUHuzbJF11PdS+OPA2xWv4F8Ek1nV77MaQu4tEXSg9zXQ==
X-Google-Smtp-Source: AGHT+IHB1JKTxeR2sHIwzZ+aS7YH5ll4SYWX78Jqml5XoTj/zuWa+7i2inAbVYYF2YrORcoFyNx64g==
X-Received: by 2002:a05:6000:23c8:b0:3a4:f722:f98d with SMTP id ffacd0b85a97d-3b200c3ed50mr1295857f8f.51.1751457698903;
        Wed, 02 Jul 2025 05:01:38 -0700 (PDT)
Received: from jiri-mlt ([193.47.165.251])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a88c800eaasm16233867f8f.37.2025.07.02.05.01.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 05:01:38 -0700 (PDT)
Date: Wed, 2 Jul 2025 14:01:27 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Ivan Vecera <ivecera@redhat.com>
Cc: netdev@vger.kernel.org, Vadim Fedorenko <vadim.fedorenko@linux.dev>, 
	Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Prathosh Satish <Prathosh.Satish@microchip.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Jason Gunthorpe <jgg@ziepe.ca>, 
	Shannon Nelson <shannon.nelson@amd.com>, Dave Jiang <dave.jiang@intel.com>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-doc@vger.kernel.org, Michal Schmidt <mschmidt@redhat.com>, 
	Petr Oros <poros@redhat.com>
Subject: Re: [PATCH net-next v12 07/14] dpll: zl3073x: Add clock_id field
Message-ID: <cpgoccukn5tuespqse5fep4gzzaeggth2dkzqh6l5jjchumfyc@5kjorwx57med>
References: <20250629191049.64398-1-ivecera@redhat.com>
 <20250629191049.64398-8-ivecera@redhat.com>
 <amsh2xeltgadepx22kvcq4cfyhb3psnxafqhr33ra6nznswsaq@hfq6yrb4zvo7>
 <e5e3409e-b6a8-4a63-97ac-33e6b1215979@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e5e3409e-b6a8-4a63-97ac-33e6b1215979@redhat.com>

Wed, Jul 02, 2025 at 01:43:38PM +0200, ivecera@redhat.com wrote:
>
>On 02. 07. 25 12:31 odp., Jiri Pirko wrote:
>> Sun, Jun 29, 2025 at 09:10:42PM +0200, ivecera@redhat.com wrote:
>> > Add .clock_id to zl3073x_dev structure that will be used by later
>> > commits introducing DPLL feature. The clock ID is required for DPLL
>> > device registration.
>> > 
>> > To generate this ID, use chip ID read during device initialization.
>> > In case where multiple zl3073x based chips are present, the chip ID
>> > is shifted and lower bits are filled by an unique value - using
>> > the I2C device address for I2C connections and the chip-select value
>> > for SPI connections.
>> 
>> You say that multiple chips may have the same chip ID? How is that
>> possible? Isn't it supposed to be unique?
>> I understand clock ID to be invariant regardless where you plug your
>> device. When you construct it from i2c address, sounds wrong.
>
>The chip id is not like serial number but it is like device id under
>PCI. So if you will have multiple chips with this chip id you have to
>distinguish somehow between them, this is the reason why I2C address
>is added into the final value.
>
>Anyway this device does not have any attribute that corresponds to
>clock id (as per our previous discussion) and it will be better to NOT
>require clock id from DPLL core side.

Yes, better not to require it comparing to having it wrong.

>
>Ivan
>
>

