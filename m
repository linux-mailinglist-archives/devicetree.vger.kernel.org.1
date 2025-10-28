Return-Path: <devicetree+bounces-231890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EC030C12925
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 02:39:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D94744E64E2
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 01:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 974732472A4;
	Tue, 28 Oct 2025 01:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TvDNA4hN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FD2E24676A
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 01:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761615592; cv=none; b=lWOSVFDCLzTQGl5DS2CSjMOjrRwiDsq6EXfZhz1vNiqMlTxG2644/wj1ZU+6dCI7yMIU4xq/SzIZrTVbhpcdY6uUlSCFNs2dHbUPnWkNXVwksVPvOQMUvI6el8CJrTYv8H/2KJ5fYWp+fvGrkeKHCGers/TijywP8ODqoG1OvcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761615592; c=relaxed/simple;
	bh=PaaP9fdww3JPs0IwiX5e4GSI4u3vKpvVQOB5b/eN0Ck=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rnhcSNIaCuS0Cif+VkEi1pEcZncfhGKjKpi02+ch4HskMZUk/jANHaCMOxYI9bnfB3KovSAPyr621dFvI1wLxYHOq0lk9LAB6nK6G9oIY5+xDO9yVFYjjMjy+SrMpvZ4DioxUIZhDgxSQiACc1P29o5d8yaWxtZzTdh+gNIva/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TvDNA4hN; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-475daf41e47so2266585e9.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 18:39:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761615589; x=1762220389; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mBblJ3nsftn2mS8ULy+s3OXZomR0giH+rj9ZthWrG/c=;
        b=TvDNA4hN7mg1cY6ig39lumptD5kQrClyB8jIvMQBOilSLN2WDiSP1Cwl2sFT5c7bmC
         U3Nij3PGhKlLnWLbF8bNl2XNd93vxSVc08kDzxl/fi37opTRqeDXQ+eDS86LDZhh7kk2
         vvJn7smy1RX/1025eXHOLuXK1krulqtd62G1XzpBpPSHSvWj2lZ1jsch+kMI3lJOgfBS
         S3XBa3S026GK9Gdh+MFw8QOHti4W9v3czDCh9Fxe/LXIMWUlo9UjoaNkV3q//ebXNzVc
         zzU5ytSVAo/ObNMk7FSnLt7dthn4Y7AaozxmJLhs8jAbjw2YaRRZipN3wIYUJtn4ooGe
         5VVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761615589; x=1762220389;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mBblJ3nsftn2mS8ULy+s3OXZomR0giH+rj9ZthWrG/c=;
        b=JobbeI7HpXTzIbtfLXBgsbosrVs7xGWSPCtmMKlfVMaCL7RgfMz1WZ4v99XninBypY
         hxYjkXcDIoehKPLuJYjW3MqbUDK7FJfdAQyN/1snoIvxnQaoXIxZqk0hyexRcSGsSGQc
         wZpQ78vJBnU2ASTmrIHuX4YESJWvrMgr6lcFdxPvaGhINHc0Xyr04ZyQnj0CtPxF95+5
         A4cCawBhE2v3+FjhbiN49PGP+dd1dEH+vIgZDpbOFZ+4avqVnY6eBVPgt4V+1eD0vnW8
         bmjBrGSS7X5LidNYQfItqm/QLEsYvt/isvmPAyLi06DJhTIq/if0pG2lVFcYcgx7CCGz
         ce9w==
X-Forwarded-Encrypted: i=1; AJvYcCUgWORdR8/3eKyi0LAIiaVJzSJ/7SLvGL6yfFpctEMi6xSnW2Jy4r5RFuHqY3d1WPux+eHNPsqWkKEL@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1EgC7my7zLoBiKhlFqoTl5tOtg7XFjCT7LGsy0UuMKWzvGNzP
	VGftntpMK9Ei1Ay1iJLCIUaUc7F69qSPouDT+82ZZVr68Df2y+pIqbvZ
X-Gm-Gg: ASbGncuTKVOLkOMWldNLWk9B2Q8/K3SgCCJFhEqMf6x6ZNMndFwvZBZFlWm5cUC5fR8
	htPbbQkf+g/tD+zFgYyLW/MqoyRSDCKxuwUMGqGevRzjnOxpRI0Tg+VTWQ5izmeAHViqvmGH1rh
	rW1oT8dsdLu3fNSVv3fCcNSjTdtTPJqCLIaWSH/eQrDm4nPYgsHqOvYNebxONaIMV4zlJ9v6yif
	WHQny0Twnn1D8tMrJgn4EDUujsnlM9eASma1cxST5HUOK9niu0GARSAnTV0DsGvAS3XiEbpHmuK
	I4ASVckcXzAk/27ht4owXFBpj8yi6SSauGoaPpdJUxlggs4VDANhIDkUj8BeqRAqZSSI/E3meNn
	UqQjdApm3Rv8Vlt8AXPyzs3RHdy3yXpRDS7OUjApZmp+H1qBoHTvRB9uuiImErSxlFUyK
X-Google-Smtp-Source: AGHT+IHe7guKvzidfJFf4IbFz3oSjaETN9prbXYTVEJHNFR2d9Uk4DABdSF+8z9fO+jHVcJW38gmVA==
X-Received: by 2002:a05:600c:4446:b0:475:dade:b94c with SMTP id 5b1f17b1804b1-47717e573fcmr7007035e9.5.1761615588805;
        Mon, 27 Oct 2025 18:39:48 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d406:ee00:3eb9:f316:6516:8b90])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475dd4924a4sm168027855e9.7.2025.10.27.18.39.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 18:39:48 -0700 (PDT)
Date: Tue, 28 Oct 2025 03:39:44 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Andrew Lunn <andrew@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Simon Horman <horms@kernel.org>,
	Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Andreas Schirm <andreas.schirm@siemens.com>,
	Lukas Stockmann <lukas.stockmann@siemens.com>,
	Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	Peter Christen <peter.christen@siemens.com>,
	Avinash Jayaraman <ajayaraman@maxlinear.com>,
	Bing tao Xu <bxu@maxlinear.com>, Liang Xu <lxu@maxlinear.com>,
	Juraj Povazanec <jpovazanec@maxlinear.com>,
	"Fanni (Fang-Yi) Chan" <fchan@maxlinear.com>,
	"Benny (Ying-Tsan) Weng" <yweng@maxlinear.com>,
	"Livia M. Rosu" <lrosu@maxlinear.com>,
	John Crispin <john@phrozen.org>
Subject: Re: [PATCH net-next v3 06/12] dt-bindings: net: dsa: lantiq,gswip:
 add support for MII delay properties
Message-ID: <20251028013944.lmjboagptxl4dob7@skbuf>
References: <cover.1761521845.git.daniel@makrotopia.org>
 <cover.1761521845.git.daniel@makrotopia.org>
 <e7a4dadf49c506ff71124166b7ca3009e30d64d8.1761521845.git.daniel@makrotopia.org>
 <e7a4dadf49c506ff71124166b7ca3009e30d64d8.1761521845.git.daniel@makrotopia.org>
 <20251027230439.7zsi3k6da3rohrfo@skbuf>
 <aQADFttLJeUXRyRF@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aQADFttLJeUXRyRF@makrotopia.org>

On Mon, Oct 27, 2025 at 11:41:10PM +0000, Daniel Golle wrote:
> On Tue, Oct 28, 2025 at 01:04:39AM +0200, Vladimir Oltean wrote:
> > On Sun, Oct 26, 2025 at 11:45:19PM +0000, Daniel Golle wrote:
> > > Add support for standard tx-internal-delay-ps and rx-internal-delay-ps
> > > properties on port nodes to allow fine-tuning of RGMII clock delays.
> > > 
> > > The GSWIP switch hardware supports delay values in 500 picosecond
> > > increments from 0 to 3500 picoseconds, with a default of 2000
> > > picoseconds for both TX and RX delays.
> > > 
> > > This corresponds to the driver changes that allow adjusting MII delays
> > > using Device Tree properties instead of relying solely on the PHY
> > > interface mode.
> > > 
> > > Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> > > ---
> > > v3:
> > >  * redefine ports node so properties are defined actually apply
> > >  * RGMII port with 2ps delay is 'rgmii-id' mode
> > > 
> > >  .../bindings/net/dsa/lantiq,gswip.yaml        | 29 +++++++++++++++++--
> > >  1 file changed, 26 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/net/dsa/lantiq,gswip.yaml b/Documentation/devicetree/bindings/net/dsa/lantiq,gswip.yaml
> > > index f3154b19af78..b0227b80716c 100644
> > > --- a/Documentation/devicetree/bindings/net/dsa/lantiq,gswip.yaml
> > > +++ b/Documentation/devicetree/bindings/net/dsa/lantiq,gswip.yaml
> > > @@ -6,8 +6,29 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
> > >  
> > >  title: Lantiq GSWIP Ethernet switches
> > >  
> > > -allOf:
> > > -  - $ref: dsa.yaml#/$defs/ethernet-ports
> > > +$ref: dsa.yaml#
> > > +
> > > +patternProperties:
> > > +  "^(ethernet-)?ports$":
> > > +    type: object
> > > +    patternProperties:
> > > +      "^(ethernet-)?port@[0-6]$":
> > > +        $ref: dsa-port.yaml#
> > > +        unevaluatedProperties: false
> > > +
> > > +        properties:
> > > +          tx-internal-delay-ps:
> > > +            enum: [0, 500, 1000, 1500, 2000, 2500, 3000, 3500]
> > > +            default: 2000
> > 
> > No. This is confusing and wrong. I looked at the driver implementation
> > code, wanting to note that it has the potential of being a breaking
> > change for device trees without the "tx-internal-delay-ps" and
> > "rx-internal-delay-ps" properties.
> > 
> > But then I saw that the driver implementation is subtly different.
> > "tx-internal-delay-ps" defaults to 2000 only if "rx-internal-delay-ps" is set, and
> > "rx-internal-delay-ps" defaults to 2000 only if "tx-internal-delay-ps" is set.
> > 
> > So when implemented in this way, it won't cause the regressions I was
> > concerned about, but it is misrepresented in the schema.
> > 
> > Why overcomplicate this and just not set a default? Modify the RX clock
> > skew if set, and the TX clock skew if set.
> 
> The problem is that before adding support for both *-internal-delay-ps
> properties the internal delays would be set exclusively based on the
> interface mode -- and are inverted logic:
> 
> ```
>          switch (state->interface) {
>          case PHY_INTERFACE_MODE_RGMII_ID:
>                  gswip_mii_mask_pcdu(priv, GSWIP_MII_PCDU_TXDLY_MASK |
>                                            GSWIP_MII_PCDU_RXDLY_MASK, 0, port);
>                  break;
>          case PHY_INTERFACE_MODE_RGMII_RXID:
>                  gswip_mii_mask_pcdu(priv, GSWIP_MII_PCDU_RXDLY_MASK, 0, port);
>                  break;
>          case PHY_INTERFACE_MODE_RGMII_TXID:
>                  gswip_mii_mask_pcdu(priv, GSWIP_MII_PCDU_TXDLY_MASK, 0, port);
>                  break;
>          default:
>                  break;
>          }
> ```
> 
> As you can see the delays are set to 0 in case of the interface mode
> being RGMII_ID (and the same for RGMII_RXID and RGMII_TXID
> respectively).
> 
> This is probably the result of the delays being initialized to 2000ps by
> default, and if the **PHY connected to the switch port** is set to take
> care of the clk/data delay then the switch port RGMII interface doesn't
> have to do it.
> 
> From my understanding this is a bit awkward as "internal delay" usually
> means the delay is taken care of by the PHY rather than by discrete
> parts of the board design. Here, however, it is *never* part of the
> board design and always handled by either the switch RGMII interface
> (MAC side) or the connected PHY.
> 
> So in order to not break existing board device trees expecting this
> behavior I've decided to only fall-back to adjust the delay based on the
> interface mode in case both properties are missing.
> 
> Please correct me if that's the wrong thing to do or if my understanding
> is flawed in any way.

Ok, I missed the fact that there's RGMII delay handling outside of
gswip_mii_delay_setup() too (a bit bizarre).

So "why overcomplicate this" has a good reason. You have legacy to
maintain for xrx200, xrx300, xrx330 - essentially the same situation as
documented in sja1105_parse_rgmii_delays(). But no legacy for the newly
introduced switches though?  I don't see why you'd opt them into this
behaviour of applying MAC delays based on phy-mode.

Also, the point still stands that your documented default delay value
is incorrect. What happens in lack of one property depends on the
presence of the other, and on the phy-mode. I think deleting the
default value from the schema is much better than having wrong
documentation for it.

