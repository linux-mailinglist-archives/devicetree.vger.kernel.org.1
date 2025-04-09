Return-Path: <devicetree+bounces-164678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B0EA81E99
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 09:46:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4EE053B2B8B
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 07:46:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D647325A2B1;
	Wed,  9 Apr 2025 07:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="M6I3P3n6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7D81E32A0
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 07:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744184814; cv=none; b=l+03fpZ8pucUlSXFinrVnWvEW3ySrrb0w1wAxjhGojCdhDhX/2Iuq4t/mfGBOcbZPpLY5jqIq6+tB7enJHUFYsRXDrILovK9DB179Qnvq+T3WpPZjG152218HDafvsfrfFxyfjV8btFTpC1nw/8q8uWehxR3/0riqkcatUnqIbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744184814; c=relaxed/simple;
	bh=8pXvC8saaovmNYWD6LB2NpHiAdgmwvzHy3vNJ/rR0r0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iNxYlEumK7A3r4ZHW/dcX8shf+vcKCEs7Jv5uPaVujw7NkqeQq8xG7VY2F+paGF1BYcVCDfRtdT66uX/tciOxNI5al7C3NX7n/g7/sKjz0CgtCiXFo05lKfsZ/GOPKPwx/2XC/sXZ2saopuaeM0p9WtnpOkDL18OXtnHszieBkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=M6I3P3n6; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-aee773df955so348861a12.1
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 00:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744184812; x=1744789612; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uPe5EFIk2JAls1hezPuV2MYzcMhxRkzu+28tJeOhpVU=;
        b=M6I3P3n6maq1tXoPvrqkl5A+iLIfsf2HTf09lfMjFwcuIVHbhSsvNQ+963hauJz4pq
         TDIbgAcg1U1C0v87XFRLAJWnuqeuRvJKtPZ9NNK8KWkq6rd5mRzmUy4VVxIuOuMpsQ98
         8UDyAi/gPWuq1h/DX9YUVlxFyYcT/Dp1zqXrn64G4ZC9H3JXU4LUXNdrzhhpQPchq1ex
         KW46y776YXJyVK+1uwM8E5qewYdxUFk9MadY6Q/vkzoofsIz8eA8HQYpY6RcQZiiAl8g
         ypE8AvaS0iUCjlM9YR1VrAdt+NhAcIWAC/hMXkLPYlft7ksiaqniHtfeegvMWq7A7GBE
         ZU8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744184812; x=1744789612;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uPe5EFIk2JAls1hezPuV2MYzcMhxRkzu+28tJeOhpVU=;
        b=sUluW9tkORjr3bfLpLOTsrAfLv75e/iOWhJ7Au5aOteDVvj5iErnUZNzx0UOeUZONa
         9/EYrsMZgzaRPGoDMEdnulJMTPm6lCieccNeQShiLtz1dQvf4ZvIAMMotU6ag+2bmh5F
         ZaFSXhV7ytD87tS5TuHYOB2Vy1basR2YTu+TuLyWWw05iy3R2rG55FYEh+PAWvrbaDNZ
         fBEsBD/AVN0KrbFIa55z9xaDfCzSVBprAaOSM/h8O6LwHWInzxFhiJuIj0p+YjteDYwX
         AEDlLQ7EOCKpj4dLzbwT8XdlvaFssFEHoPiDvegzcYGVxtNaWhWv4qbnscV0ouNeuY2M
         v5mA==
X-Forwarded-Encrypted: i=1; AJvYcCUp4QH3KyFyVdkJTaKd+0NUDWjxRz7Rs0sgQ8+WRew53fh5r7t9VHk4C2md3ELu6kFV4FrRkEpbhXRQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzXbvtnU2OsCmuIxfSJVTBMIOsAG6eXZ3CKtnnl/41EIVRLzgaw
	f4y/gHy/gNs3k7I6qWDBmsoBqBD1ZWNmlNubSjf72o98NMwPjizyPXhIVjNJexY=
X-Gm-Gg: ASbGncsfHYYz/Q2YDNFxKlOOAs0ehXByP8zZwAZZ20SgJMEw1I6d+ASApW+9qu9F8Js
	GcMrfPNEtezKUDyqixAf4hDidJBOiGqsMMFCtRRnzRjt06ZyyCOEFjppfTAjGmz9fGoMPXfb2WN
	4Xjg0SivU3fsi0bZ4ONle0js5Y2lScjmWqWF6Ele6bLG3wwZD95cmaaHAV06BxPfMiRZwGbhDvT
	75XUFVQMLHI1AVTGnVuFW4vwY53Q9SAvdU9rwC4m4tqVdLmqbDtBXjbMlWc3VRgIjikobpTwcI9
	zFDq0v7icttowNNk5FeOVFKDaTcJlWoUk46mPCSpScI2ceDMBaSboSefdu+Nwgy1idk5ccjl9xr
	k
X-Google-Smtp-Source: AGHT+IGeWFAmHsxFBBGDibBbsDrhNmr+0jD0MhdR2n98VfY5WnHP5Tsxjn8/Be23AVtU2AtbXgk7BA==
X-Received: by 2002:a17:90a:d64d:b0:2ff:4a8d:74f9 with SMTP id 98e67ed59e1d1-306dc054d59mr2731761a91.10.1744184811953;
        Wed, 09 Apr 2025 00:46:51 -0700 (PDT)
Received: from dev-linux (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-306df07dc59sm728781a91.13.2025.04.09.00.46.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 00:46:51 -0700 (PDT)
Date: Wed, 9 Apr 2025 00:46:33 -0700
From: Sukrut Bellary <sbellary@baylibre.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Tero Kristo <kristo@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Andreas Kemnade <andreas@kemnade.info>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: clock: ti: Convert to yaml
Message-ID: <Z/Yl2cvTEhM7y9Dz@dev-linux>
References: <20250404014500.2789830-1-sbellary@baylibre.com>
 <20250404014500.2789830-2-sbellary@baylibre.com>
 <20250404-famous-rottweiler-of-perspective-e5dcbc@shite>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250404-famous-rottweiler-of-perspective-e5dcbc@shite>

On Fri, Apr 04, 2025 at 12:44:39PM +0200, Krzysztof Kozlowski wrote:
> On Thu, Apr 03, 2025 at 06:44:57PM GMT, Sukrut Bellary wrote:
> > +properties:
> > +  reg:
> > +    maxItems: 1
> 
> How reg is part of this? Every clock has reg, doesn't it? Otherwise how
> do you control it? Drop.

Thanks for the review.
I will drop.

> > +
> > +  ti,autoidle-shift:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      bit shift of the autoidle enable bit for the clock
> > +    maximum: 31
> > +    default: 0
> > +
> > +  ti,invert-autoidle-bit:
> > +    type: boolean
> > +    description:
> > +      autoidle is enabled by setting the bit to 0
> 
> required:
>   - ti,autoidle-shift
>   - ti,invert-autoidle-bit - although this makes no sense, so probably
> old binding was not correct here

Yes, all clocks don't support autoidle. So, required is not applicable
here.

> > +
> > +additionalProperties: true
> > +
> > +examples:
> > +  - |
> > +    bus {
> > +      #address-cells = <1>;
> > +      #size-cells = <0>;
> > +
> > +      clock@1b4 {
> > +        reg = <0x01b4>;
> > +        ti,autoidle-shift = <8>;
> > +        ti,invert-autoidle-bit;
> > +      };
> 
> Drop example, pointless here - noop due to lack of compatible. Instead
> provide complete examples in schemas referencing this.

Ok, will remove from here.

> > +    };
> > -- 
> > 2.34.1
> > 

