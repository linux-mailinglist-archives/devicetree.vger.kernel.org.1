Return-Path: <devicetree+bounces-140342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF2DA193CA
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 15:21:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EE6CB7A06E2
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 14:21:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D097213E85;
	Wed, 22 Jan 2025 14:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b="RWxzg9Xq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087B3213259
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 14:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737555665; cv=none; b=Eao6BLxRL0qA9cXM3Yb+R9UHjyiKuPInrieQCF8IxI3iQfnAkhyxT8Ew+mI/4pxl9IST1+YPXk/vtDu5iSevK9CuB8D64u9lGh3ulWmm+8U5bWym//GIiH80XeIRRA11l0aErSF+NiQI4zEzi4vwqmjAW+6dQPEQNlqlA2j0dHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737555665; c=relaxed/simple;
	bh=8fwY6kTWqZJP+F8McYMJayWDziJEAZ7kVqsk3l4veEc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rRPPknHI2YubaqE22BXuAUBnHHGwXyM/t2D8CFXaEb5AOMGCvRU59H81eGZcRc+iH0zbRBG118mduCMBeFuwuPNo88uywHV5YT1JaFuK3SnpL/3KDUqWiZ5Fm1vjjoN4VOEiAySfDkl+KE5pHj37WExpaZvBJkH6RCG09r+LSYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com; spf=pass smtp.mailfrom=konsulko.com; dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b=RWxzg9Xq; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=konsulko.com
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7b6eeff1fdfso615268485a.2
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 06:21:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1737555662; x=1738160462; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=n/Dl3FYX/VwwDw0wkHGCvisbFWwwAgLfF8gWwTxkl9E=;
        b=RWxzg9Xq+osF9mqXYoJ3McGlMtdGC9bz4rs5HygIYEpjOqW8eOBGQCfnMtklHI2sEk
         YvIGXlXNqoekS+WoMmmYUzEGwekj7A8jdXNJe3XoJLxoHV/PXGlvHu3sXYf4enwIKPhX
         FdKO7Hi7WP1w10dr2ivv26YAp7K7tHC49ILwc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737555662; x=1738160462;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n/Dl3FYX/VwwDw0wkHGCvisbFWwwAgLfF8gWwTxkl9E=;
        b=J7C71Ci+jvcegPuXa+nH3tERaDKM4pX13ifpjPVrKSPOnsJT5Cb8iHB+IZB/y67NAC
         ej7P3rl/V9DCB7I5hyZrlD3mrH1ujES443S958mToKMf9HRIBdmDrEGBgJFw1HrM8hWl
         KVVRo6s21Xh/oGRrUxQtN1zJNB613owxDHF3XniXB3/gJpdXAyOJoExhGry/0fXTOPD6
         NhJqUUjrC4B9Ulgq9rbFBm12I9MEINEtQEpo638bt3VBc+QlvWGgfvNS7hGEWuoXvEuL
         hnieqB2rD7xGaJ+dmPPb51TmCWod0AWrXm9L4+Pio95gWxyyJiYvJ5YG1sYNTHdVBpPD
         i0Yw==
X-Forwarded-Encrypted: i=1; AJvYcCX5KI2+Uw1I//TmfCfzOfZfymXMtAtpTSGyETqkpQ85A6csaVdMwE8DQ5KjKMTPgWjoHXXq9YGDs++1@vger.kernel.org
X-Gm-Message-State: AOJu0YziIFKAfj9CW3CDY1p82mhguOJzzbSDzVFH9fISYcH7qwhu8Gp+
	Go4gEfBk5R4HV+B6yU0dgfmsO37NKnBP9wwov7xPA8IkiUv7E0JNyVjwgvz88d8=
X-Gm-Gg: ASbGnctiEVHzzNsA1z9QbCZHISaJ0voR16zGH3kEv8Ws22MPX6n0W03RpVMgsXxbwXE
	PbbDpc25v2QG1v122LxDD4C/92l3PU904HtR2hHAp06M6C/0c7wP/+rCx5Pyba0aLdb/6BmxW0J
	oJgYej4EcCmXOYGz0K9lRCwdgDrRaufqh/teM/vwZCasuogtwMc4VlTYwkpJwta6+12t5uQfAk+
	cSks4AzrIQK0NfFcowA3HczGVEd5UH/vSAhNnIbBe4VBvPgLICh3Lo12ATBixLxnNo=
X-Google-Smtp-Source: AGHT+IEausbvjRjRJh6qlOTGxlvHplotZ2vhhvLe3+TnJgyOHPU3fKATDt2iOZTs/FUx7HQWeD6EcA==
X-Received: by 2002:a05:6214:2a4c:b0:6d8:9127:e71e with SMTP id 6a1803df08f44-6e1b224c303mr331206806d6.41.1737555661943;
        Wed, 22 Jan 2025 06:21:01 -0800 (PST)
Received: from bill-the-cat ([187.144.16.9])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6e1afc233ecsm61538926d6.57.2025.01.22.06.21.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 06:21:01 -0800 (PST)
Date: Wed, 22 Jan 2025 08:20:58 -0600
From: Tom Rini <trini@konsulko.com>
To: Andreas Kemnade <andreas@kemnade.info>
Cc: linux-kernel@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: omap: Add TI Pandaboard A4 variant
Message-ID: <20250122142058.GM3476@bill-the-cat>
References: <20250122001240.4166460-1-trini@konsulko.com>
 <20250122093236.6152c56c@akair>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250122093236.6152c56c@akair>
X-Clacks-Overhead: GNU Terry Pratchett

On Wed, Jan 22, 2025 at 09:32:36AM +0100, Andreas Kemnade wrote:
> Am Tue, 21 Jan 2025 18:12:40 -0600
> schrieb Tom Rini <trini@konsulko.com>:
> 
> > Document the ti,omap4-panda-a4 compatible string in the appropriate
> > place within the omap family binding file.
> > 
> > Signed-off-by: Tom Rini <trini@konsulko.com>
> > ---
> > Cc: Aaro Koskinen <aaro.koskinen@iki.fi>
> > Cc: Andreas Kemnade <andreas@kemnade.info>
> > Cc: Kevin Hilman <khilman@baylibre.com>
> > Cc: Roger Quadros <rogerq@kernel.org>
> > Cc: Tony Lindgren <tony@atomide.com>
> > Cc: Rob Herring <robh@kernel.org>
> > Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> > Cc: Conor Dooley <conor+dt@kernel.org>
> > Cc: linux-omap@vger.kernel.org
> > Cc: devicetree@vger.kernel.org
> > Cc: linux-kernel@vger.kernel.org
> > ---
> >  Documentation/devicetree/bindings/arm/ti/omap.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/ti/omap.yaml b/Documentation/devicetree/bindings/arm/ti/omap.yaml
> > index 93e04a109a12..28e23ca766b4 100644
> > --- a/Documentation/devicetree/bindings/arm/ti/omap.yaml
> > +++ b/Documentation/devicetree/bindings/arm/ti/omap.yaml
> > @@ -137,6 +137,7 @@ properties:
> >                - motorola,xyboard-mz609
> >                - motorola,xyboard-mz617
> >                - ti,omap4-panda
> > +              - ti,omap4-panda-a4
> >                - ti,omap4-sdp
> >            - const: ti,omap4430
> >            - const: ti,omap4
> 
> This allows compatible = "ti,omap4-panda-a4", "ti,omap4430", "ti,omap4"
> 
> According to your other patch, you want
> compatible = "ti,omap4-panda-a4", "ti,omap4-panda", "ti,omap4430",
> "ti,omap4"
> 
> so you need a construction similar to the "ti,omap3-beagle-ab4"

Do you mean the order should change, or it should be an enum? I'm not
sure where this is documented (the $id and $schema values in the file
are just 404s so I guess not something to read directly?).

-- 
Tom

