Return-Path: <devicetree+bounces-244844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B69ECA95C9
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 22:11:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A66BC30577EF
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 21:11:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7DEE2D9493;
	Fri,  5 Dec 2025 21:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ceybAcf1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2088E213254
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 21:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764969071; cv=none; b=b7d6kvFUBZi58ICMEmsUrrskYwydTGB603eMEzZGPPyDhav87fTpnUAiFKrWqtdIZEPqv/GME22IHvv1Qs/r0KBWCW0DFyklUwkotaiYDfOgY6eMFcWpDQvdUWCQe1kB7WAX8ryTsgmpf70S2c2zUrTvvr50canmFYdNje1DLYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764969071; c=relaxed/simple;
	bh=c7c1J1vIUl2RUCCAw3PryaNjjaYVzuxa0pvkJ9f40DI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uFUDJzZB349V6pRbNdBZXN82E8pJgzHy7I6XCNPKGUTP34ziWYSqMwJKZGPiZpDmaD9TCmxi7XdKPrvQBXkMvPHOnNpebxRAQhGrF12mLJ9bFtAP1FGTa6Zu7s2C0FbvEIkGG+RkUGHHxXCGqLow9e2ztKWFd556/Vln24nwa6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ceybAcf1; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7b852bb31d9so3086177b3a.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 13:11:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764969069; x=1765573869; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9dp9/mKBjgaa+hOS/JhmxBoz56rQ07ceIHhKFiTPWfA=;
        b=ceybAcf1xwMEFuJCZDVlTScA7kKEa5jiuiR57JEe8KGzDgCc32QHQ5xWIKXxl5Cagj
         kkpD+s90WFuP1HKGoV8SK66n6aqhMtmDvUzlydMjRHzIOUpbjjy2KK1IML8Q6sEhtlmm
         9BvL1Xs7GTyT3RWnfKtoaHUHsFrNz3SS10SaeNFzJj4kCKdsoYhlwEMED2KYi/PxYgej
         ZqqqXtCEUSjiY8XBgirtFEL/X/mh0CXx5iQ/kypz9IpUOjRhpL4xoSE1A21rLWdoDXUj
         Fpn/MjU4JISXEdebcB68AY90/MSvE5K6OYBMxiq7U0JAEL0kg0Eyqb1e02gNT6DsY5OZ
         XWxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764969069; x=1765573869;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9dp9/mKBjgaa+hOS/JhmxBoz56rQ07ceIHhKFiTPWfA=;
        b=g8xz+qyL2YxkcoTs6eX443M2F7xcyvZDk9mF1lqw1gPw8wyCDtF3Ei7Htu+amkofUM
         X6lobHB1QteOR1EaP+nuMENsH8r2xrtJmeoaW4MWdNaarGRBzEHwDZb+PRkIZmG6fKfj
         oZiHKZqRlnNCwRH1/xtkQVjZPX8delfFhJodTowS3sEh/hvzQMccHTFWDkLCrSKJuhDv
         yzo4XxElkOUH3l/Ol3phjpynvqr7iNMsxhDvYhpzdlWHihfsX7RsGdVhfP+NcMxx/I/m
         FX1C/K2xDVWreQgsX0Kgt+KuuoWwbfsZBDsqVpPveeP61uMrhEbgCOBFsm1DwaF4qE4w
         bKeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdvS0QcgD4mOCukPtcX2nnyrx+Dwsjc8NnD9tcLhLcpkL5yQh1tvJ3bbTRFfl76UXsISsJJ+kgbzMo@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/V9ZXX4jeVHeJx10HGyUQOsWsRSU5hmC/9sqJeRsJZaB0IQRb
	OQ09ONspU6ubjMrYtD3D4OZHRy3J73so78QepJPeSv8qZ7WiCHY9JFyF
X-Gm-Gg: ASbGncuqOvQw0q51akGLGG/GFUfSXAxW792J5xA+5fJzw/c94fJD7ZDcILa9QGb6DCS
	S4RlXPUZ60G9T5lC7S1xCkSWaBJjRfHGcN9fhwbtvKRbp3nlW0VrSo6wFbWz2pZ8GmQrzZNLnM8
	hHj0Y8XVBRRWMKf50Doof0sVXk3opt+BKU7Ew6wRpR8M6eSiYjqT/Ghw/lnthxRlHMlYWD59Dbm
	f1O+2oOUiCKhwRB4yWFk2QsPg/5R3pgtnmjM1aokhxXD1JnfHACMq/rs+goIDdlJiCXG+15HWRP
	nyxniWX6kejq3LEwyJS8+95Hy+/RBnfVAqH9Tn82xoflgAAjXXwRRWMAqnS7HD4p2t7rAMCbr3f
	vVLjPEuVTiZ6EY/HqwYv7DAdllw+IEGIGRpydEZbCBPUdzNGg7dcicCqL0L9PrcckxJwlfFhlfz
	mIPwbLGfoWVzwZaBDZUx7J
X-Google-Smtp-Source: AGHT+IHcEY0Q1FA1vKURG7RgwRQex46GLvAineu1VoXOdKRh8PgkrSImSe/zY+sC4iAx07qvMIjyjw==
X-Received: by 2002:a05:7022:4404:b0:119:e569:f60a with SMTP id a92af1059eb24-11e03162d6amr481897c88.3.1764969069289;
        Fri, 05 Dec 2025 13:11:09 -0800 (PST)
Received: from localhost ([2804:30c:2712:fd00:9579:9ff6:e506:6147])
        by smtp.gmail.com with UTF8SMTPSA id a92af1059eb24-11df7552211sm21303509c88.1.2025.12.05.13.11.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 13:11:08 -0800 (PST)
Date: Fri, 5 Dec 2025 18:12:41 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: David Lechner <dlechner@baylibre.com>, Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marcelo Schmitt <marcelo.schmitt@analog.com>,
	Michael Hennerich <michael.hennerich@analog.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Andy Shevchenko <andy@kernel.org>,
	Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH v3 7/7] dt-bindings: iio: adc: adi,ad4030: add data-lanes
 property
Message-ID: <aTNKyaWAEjVJixMI@debian-BULLSEYE-live-builder-AMD64>
References: <20251201-spi-add-multi-bus-support-v3-0-34e05791de83@baylibre.com>
 <20251201-spi-add-multi-bus-support-v3-7-34e05791de83@baylibre.com>
 <20251204213348.GA2198382-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251204213348.GA2198382-robh@kernel.org>

On 12/04, Rob Herring wrote:
> On Mon, Dec 01, 2025 at 08:20:45PM -0600, David Lechner wrote:
> > Add data-lanes property to specify the number of data lanes used on the
> > ad463x chips that support reading two samples at the same time using
> > two data lanes with a capable SPI controller.
> > 
> > Signed-off-by: David Lechner <dlechner@baylibre.com>
> > ---
> > v3 changes: new patch
> > 
> > I added this one to give a real-world use case where spi-rx-bus-width
> > was not sufficient to fully describe the hardware configuration.
> > 
> > spi-rx-bus-width = <4>; alone could be be interpreted as either:
> > 
> > +--------------+    +----------+
> > | SPI          |    | AD4630   |
> > | Controller   |    | ADC      |
> > |              |    |          |
> > |        SDIA0 |<---| SDOA0    |
> > |        SDIA1 |<---| SDOA1    |
> > |        SDIA2 |<---| SDOA2    |
> > |        SDIA3 |<---| SDOA3    |
> > |              |    |          |
> > |        SDIB0 |x   | SDOB0    |
> > |        SDIB1 |x   | SDOB1    |
> > |        SDIB2 |x   | SDOB2    |
> > |        SDIB3 |x   | SDOB3    |
> > |              |    |          |
> > +--------------+     +---------+
> > 
> > or
> > 
> > +--------------+    +----------+
> > | SPI          |    | AD4630   |
> > | Controller   |    | ADC      |
> > |              |    |          |
> > |        SDIA0 |<---| SDOA0    |
> > |        SDIA1 |<---| SDOA1    |
> > |        SDIA2 |x   | SDOA2    |
> > |        SDIA3 |x   | SDOA3    |
> > |              |    |          |
> > |        SDIB0 |<---| SDOB0    |
> > |        SDIB1 |<---| SDOB1    |
> > |        SDIB2 |x   | SDOB2    |
> > |        SDIB3 |x   | SDOB3    |
> > |              |    |          |
> > +--------------+     +---------+
> > 
> > Now, with data-lanes having a default value of [0] (inherited from
> > spi-peripheral-props.yaml), specifying:
> > 
> >     spi-rx-bus-width = <4>;
> > 
> > is unambiguously the first case and the example given in the binding
> > documentation is the second case:
> > 
> >     spi-rx-bus-width = <2>;
> >     data-lanes = <0>, <1>;
> 
> I just reviewed this and all, but what if you just did:
> 
> spi-rx-bus-width = <2>, <2>;
> 
> So *-bus-width becomes equal to the number of serializers/channels.

Unless I'm missing something, I think that would also describe the currently
possible use cases as well. To me, it actually seems even more accurate than
data-lanes. The data-lanes property only describes the SPI controller input
lines/lanes, no info is given about the output lanes. Well yeah, that would only
be a problem for a device with multiple input serializers and multiple output
serializers. Still, the *-bus-width = <N>, <N>, ... <N>; notation looks clearer,
IMHO.

> 
> Rob
> 

