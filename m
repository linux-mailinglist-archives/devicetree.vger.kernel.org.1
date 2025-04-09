Return-Path: <devicetree+bounces-164707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F746A8203D
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 10:38:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 76F171B803FE
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 08:39:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 658F825D207;
	Wed,  9 Apr 2025 08:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="VdOCdPAx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 960CA18B46E
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 08:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744187919; cv=none; b=Q/6NRpTCRjPNMUtrO+Xe0r4yrycfG7kTH/zR1QROcOdImh9/hife8wC7kOqPGwyszZcRMi0Nyj6YLzZ9oZZ+SP4DdNiXhtjti17Hi/nDJ/0hvZ/vVW8+IVpNBrssNeZ1KFBd2MGK7NbaqORg5FpqITsWhkEugPktknesNZUs91s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744187919; c=relaxed/simple;
	bh=4d7r93CFGXUsgYwAKRgAOyiDxMOHLB27bOOTVYjroZM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UrPIjd/JT9M9DmovVVaEEnds/0+Qw+wz0Vp7wU1F4xrTIAs5uiJI21qW2Nb3hB4cpdZcj9/eHikdr4x7Z6Ia+RqSPtMrlKJR2zlyLF/jTKRc7wbDR+wVZX6rB0h5jz4/wE6KTJxJlrooH914HF44q+Rd4bCwPMBDQchvs3UNei0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=VdOCdPAx; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2264aefc45dso82897895ad.0
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 01:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744187916; x=1744792716; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PMDTcY+QSM6bxbtbqX/RPBUWVkAI5eV/38uSVpSo7Us=;
        b=VdOCdPAxcmFMusPSeEOAfYyoj6ZVysyJQSWxQ4cx+LsvNWbwQBfl95wtU+x3iGY9LK
         dMGi8I/cTL0co+PNthNBPCCZX81K9OSy8JtHbmawnmVq2TtKPYhXCRa3cPY3yHN34VIg
         x9qDPqGFlpoRcQEHHQTs47sT20k7S0el/W1d/wSBb1ZdFl190Apz/8WaD8ep+GSBY8VO
         z5Vtf5Ww3Xf8PPovlkucbJz3Uom1JkHvkTpxaBfP4IxSpV7aKsztA8BoyfdJUA3ixeAe
         w61C8fbBgsh6uelYcuBtfTaaucX2p2m5xy53cQzorw26akh16eunEaV6xjemmFcp1Toi
         yZ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744187916; x=1744792716;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PMDTcY+QSM6bxbtbqX/RPBUWVkAI5eV/38uSVpSo7Us=;
        b=ZVDxhxBnTH1iJuC5wBcg4aNZoIyv1g42gIkZSpq8n8np8Xuiv3DTCrfJMECGW6MM6m
         2YiwavpiFGNUOQLkW4Tw9RFfZORj9aDWL/+0MFZ8zN59jhroDClzDxo/vJIJm47A8CNP
         5xBOm6PBHNsivnTtXWHBb9ClNS23w3ZR2qJNhoVEp0xWHnNTvfmxtP0Cr39RkicSvaNm
         V/KN38R4KfLzGceVHShxn7RBP8boeGSMeX/xzf6GiQjmPNaDD+GPGllNyoaB95PJBWup
         0AsKHpuygl7XVyvJqC4mp+ydxIB48K3Yo3Ob5yHidCK6Pb2eGcPV2gAhl8G1UNL0ZsK4
         +JQg==
X-Forwarded-Encrypted: i=1; AJvYcCVZOI0StRj01D8phYC4+b40UNkwg/cU7hiIhRA29DLSV98NMKr/staHxiwak+JqPNvcguiILch+5TNO@vger.kernel.org
X-Gm-Message-State: AOJu0YwL/XclgrQ7O2oH4Eb6AQr46PFOsF+X2vkBlGzluAi8674effwH
	5SnYRuJlhtfVBPQ/nV3i/naS2Tbt433rd8Q/TOCdWX+bG5RuCLp8j6FC787/iwU=
X-Gm-Gg: ASbGncsGenEP9BiKhnWMmfkH+GQREcbJF47mMevfaiuaRBqZqVaBXIubOfdoN3OrH4N
	juljTJDEoYkGLHTO8AyBDSYQ48UWX7oZynulrss5pMmbI5VQler115d7S5HB/xTWkZQ205pEJkQ
	EE1oQmRlElxamkCFV7rmBdfGHZUaxXxr6FlALS0nwt3wqJF6EPxwjo54XnVQZgQgKXRPepUBAym
	RcCeFf51ewU1PaTqyEyq/gRXrac/a+O+Qti2qpdvrZD74eDEf4eXK55iv+X/OFeavrMYUG6lfx+
	JcoU+dYSKrgrnUR0Ekvs6FSntyetKdNOAqF56wLEwE5dJp8bRZZcrglToFrz2nJ1iHP6UYWX4D8
	z
X-Google-Smtp-Source: AGHT+IEnaBnd+8JGTNcFE07Pg5u5VCMhvHVH3KD5tf25RaR94ALuGFeb4d5WTs/AGgKbGWudmVdJQg==
X-Received: by 2002:a17:903:2310:b0:227:e709:f71 with SMTP id d9443c01a7336-22ac29b41d7mr36476575ad.29.1744187915879;
        Wed, 09 Apr 2025 01:38:35 -0700 (PDT)
Received: from dev-linux (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c9db26sm6261735ad.140.2025.04.09.01.38.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 01:38:35 -0700 (PDT)
Date: Wed, 9 Apr 2025 01:38:32 -0700
From: Sukrut Bellary <sbellary@baylibre.com>
To: Rob Herring <robh@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Tero Kristo <kristo@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Andreas Kemnade <andreas@kemnade.info>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] dt-bindings: clock: ti: Convert fixed-factor-clock
 to yaml
Message-ID: <Z/YyCGHrd3AEjNRb@dev-linux>
References: <20250404014500.2789830-1-sbellary@baylibre.com>
 <20250404014500.2789830-4-sbellary@baylibre.com>
 <20250404194046.GA167370-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250404194046.GA167370-robh@kernel.org>

On Fri, Apr 04, 2025 at 02:40:46PM -0500, Rob Herring wrote:
> On Thu, Apr 03, 2025 at 06:44:59PM -0700, Sukrut Bellary wrote:
> > Convert TI fixed-factor-clock binding to yaml.
> > 
> > This uses the ti,autoidle.yaml for clock autoidle support.
> > Clean up the example to meet the current standards.
> > 
> > Add the creator of the original binding as a maintainer.
> > 
> > Signed-off-by: Sukrut Bellary <sbellary@baylibre.com>
> > ---
> >  .../bindings/clock/ti/fixed-factor-clock.txt  | 42 ----------
> >  .../clock/ti/ti,fixed-factor-clock.yaml       | 77 +++++++++++++++++++
> >  2 files changed, 77 insertions(+), 42 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/clock/ti/fixed-factor-clock.txt
> >  create mode 100644 Documentation/devicetree/bindings/clock/ti/ti,fixed-factor-clock.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/clock/ti/fixed-factor-clock.txt b/Documentation/devicetree/bindings/clock/ti/fixed-factor-clock.txt
> > deleted file mode 100644
> > index dc69477b6e98..000000000000
> > --- a/Documentation/devicetree/bindings/clock/ti/fixed-factor-clock.txt
> > +++ /dev/null
> > @@ -1,42 +0,0 @@
> > -Binding for TI fixed factor rate clock sources.
> > -
> > -This binding uses the common clock binding[1], and also uses the autoidle
> > -support from TI autoidle clock [2].
> > -
> > -[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
> > -[2] Documentation/devicetree/bindings/clock/ti/autoidle.txt
> > -
> > -Required properties:
> > -- compatible : shall be "ti,fixed-factor-clock".
> > -- #clock-cells : from common clock binding; shall be set to 0.
> > -- ti,clock-div: fixed divider.
> > -- ti,clock-mult: fixed multiplier.
> > -- clocks: parent clock.
> > -
> > -Optional properties:
> > -- clock-output-names : from common clock binding.
> > -- ti,autoidle-shift: bit shift of the autoidle enable bit for the clock,
> > -  see [2]
> > -- reg: offset for the autoidle register of this clock, see [2]
> > -- ti,invert-autoidle-bit: autoidle is enabled by setting the bit to 0, see [2]
> > -- ti,set-rate-parent: clk_set_rate is propagated to parent
> > -
> > -Example:
> > -	clock {
> > -		compatible = "ti,fixed-factor-clock";
> > -		clocks = <&parentclk>;
> > -		#clock-cells = <0>;
> > -		ti,clock-div = <2>;
> > -		ti,clock-mult = <1>;
> > -	};
> > -
> > -	dpll_usb_clkdcoldo_ck: dpll_usb_clkdcoldo_ck {
> > -		#clock-cells = <0>;
> > -		compatible = "ti,fixed-factor-clock";
> > -		clocks = <&dpll_usb_ck>;
> > -		ti,clock-div = <1>;
> > -		ti,autoidle-shift = <8>;
> > -		reg = <0x01b4>;
> > -		ti,clock-mult = <1>;
> > -		ti,invert-autoidle-bit;
> > -	};
> > diff --git a/Documentation/devicetree/bindings/clock/ti/ti,fixed-factor-clock.yaml b/Documentation/devicetree/bindings/clock/ti/ti,fixed-factor-clock.yaml
> > new file mode 100644
> > index 000000000000..f597aedbad05
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/ti/ti,fixed-factor-clock.yaml
> > @@ -0,0 +1,77 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/clock/ti/ti,fixed-factor-clock.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: TI fixed factor rate clock sources
> > +
> > +maintainers:
> > +  - Tero Kristo <kristo@kernel.org>
> > +  - Sukrut Bellary <sbellary@baylibre.com>
> > +
> > +description: |
> 
> Don't need '|'.
> 
> > +  This consists of a divider and a multiplier used to generate
> > +  a fixed rate clock. This also uses the autoidle support from
> > +  TI autoidle clock.
> > +
> > +allOf:
> > +  - $ref: /schemas/clock/ti/ti,autoidle.yaml#
> 
> You can drop '/schemas/clock/ti/'
> 
> > +
> > +properties:
> > +  compatible:
> > +    const: ti,fixed-factor-clock
> > +
> > +  "#clock-cells":
> > +    const: 0
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  ti,clock-div:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: Fixed divider
> 
> Constraints?
> 
> > +
> > +  ti,clock-mult:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: Fixed multiplier
> 
> Constraints?
> 
> > +
> > +  clocks:
> 
>        maxItems: 1
> 
> > +    description:
> > +      Link to phandle of parent clock.
> 
> Drop the description
> 
> > +
> > +  clock-output-names:
> 
>        maxItems: 1
> 
> > +    description:
> > +      From common clock binding
> 
> Drop

Thanks for the review.
I will fix all of the above issues.

> > +
> > +  ti,set-rate-parent:
> > +    description:
> > +      Propagate to parent clock
> > +    type: boolean
> > +
> > +required:
> > +  - compatible
> > +  - clocks
> > +  - "#clock-cells"
> > +  - ti,clock-mult
> > +  - ti,clock-div
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    bus{
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        clock@1b4 {
> > +            compatible = "ti,fixed-factor-clock";
> > +            reg = <0x1b4>;
> > +            clocks = <&dpll_usb_ck>;
> > +            #clock-cells = <0>;
> > +            ti,clock-mult = <1>;
> > +            ti,clock-div = <1>;
> > +            ti,autoidle-shift = <8>;
> > +            ti,invert-autoidle-bit;
> > +        };
> > +    };
> > -- 
> > 2.34.1
> > 

