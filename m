Return-Path: <devicetree+bounces-231866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AC2C11EDA
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 00:04:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B9F7E19A2575
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:05:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79321316912;
	Mon, 27 Oct 2025 23:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L8RsLztn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 961E1194137
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 23:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761606287; cv=none; b=QcrTniQ0JMGdxxwcMUEyj7C//I2aknaymuMDjadUyXV9Gn9XOQF9TqvYiSEMRRMOQbZ91AbuzF70R9q0hYZRk8a8e+0ZbwNwenTX/6BCuuDtckhBpYyIQ4x2GG8snxjqyZPdSAykIeYfas3PceTK8znvSQ8QOBySq6l0Zk42RY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761606287; c=relaxed/simple;
	bh=qN5DIDtUbYFdcO8Yk11fGrXNo+5jkI7lDW2qRFTRa2A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CX/BDyQInCgILr7GqlKQU8L4jqlxmyr2AWI1YztKDaFPtGDVj4TvnAIvrjI9N36ndv3K3J2ifFQ8L71Qv6giQf450HTOt9OI/F7DG5r+49nkwP2Ok2P5aSPVPd1q8X91F1agoqn349HKuXfWdzp5wzH1wf6IB1LaEGHnFJgNBcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L8RsLztn; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b6d676a512eso90149966b.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 16:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761606284; x=1762211084; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vAAQrvgUUkIWSk6BjIqi7cF8427EB0fHMH0Z6+LmVTg=;
        b=L8RsLztnf73q84Uiq000gr9HVVNIOol8ML1rdW5GoIwvUcqoIhXMDun3d+HgLexXCe
         yTCUao3FptjSS7SlFdKuftfr2Y4AzxIAzMxGQ04cPt5zAleYBK6/jaJxi6E7tlCx4CoC
         E/yxaHNEcGshHK+jsgKvFNPCvUZhjSnN+rOOvzdMa15gN2S5WARp+4EY4W3ESMHf6Sa1
         6Z6UHllrXQ7jLa5ud6vh3R6m/A/8UaS1EQE1u4jed0dngmFCB8J7mhJeHHsz5DiMVf7v
         sOtdzBUr0JNxet67SzLtmeFgvzuTa6jEUmxUEork5wl5vF6ceS9W49E125NjvlGw9MeD
         3B+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761606284; x=1762211084;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vAAQrvgUUkIWSk6BjIqi7cF8427EB0fHMH0Z6+LmVTg=;
        b=ct053qJw1nb4/vE5puIipiWfZNolIHrQoDIrDDZYFU9wNA+ghBYBCfZ7FYS4hAR+jm
         QS64cdrhgueqhxGgV/iyO6u5EHtz90a5d5sVR+5Gsga3bbp5A/wmVclqEu+Uty0PC1Qg
         vA2CvFA5jNSBv2dmEHA3wDyRSWPn70q39yVXUNzSABlRh1Q67FWHYb/4vjdnmSpq24le
         zygGxpDHCm/fyuLvEuYjrhzajGH+PLP0uQq4OxGmeofX33pNHQyo/shN2RU5btiyO/u/
         lAOWb1Hk5iOGKut00jXIU/bLgTOL6v+5N0IbtXAC7P7+KWYFKQnHvne6ChH9Ptdiu8Zj
         fK4w==
X-Forwarded-Encrypted: i=1; AJvYcCVGZ3BYv6/Br0xExz3vCAw/YSGCLUwd8yLdDNQ+HLruKGm6PVmv89WBzWeNHcrhhcZSLfFYn0Wfuba/@vger.kernel.org
X-Gm-Message-State: AOJu0YyeQSroUNnxOsn9GadEMIkjwWDxfqurb4Y42VziWGrCUPsmQ+Xi
	gucUcXHsHQVjYFnQRQtorbKKoPHlZtoYd76kvHXJoNn1K7MqTMBLZH8z
X-Gm-Gg: ASbGncvHM0ovM5VHD11CKd2gEsFZKIyf6ODs1Efy0xrD6odRShzSBRE3Z4owN3Nf+BB
	4wknie4Nw6JyDGPTuMRZTzLObRDjtu4pi1kxLpnAczX+U4jl8xUgJJpaarUOGh1wGkpD3Ao34Ci
	Be6AxSOVD2RFjiSfh5LucCbXVIYIPF1CHX9vtirSkh0HcgtYcsMB6Wt6LNxWnuMuRfxmO+IHPgc
	m9qW73Ed7uG4IPxyxByKqsz69ya4ptdj3HaEXZ57aXesKHhTHW+Fs8fMT5eAT4Uhd6GcNKezSsg
	pYkxV2quTkRmc62bfdd9GkSa+/xXQ/LENxNKwAViDDwK6+LJw4S9UkrKC3BHwhsd7o5b4cRhEgY
	jvA0d2IgAPZCs9gX++3w95XQhYCVLBH4glWR8JR5vjEBuerTqSbn73KRNdtfIIKlhcClooUJhFu
	O0vBs=
X-Google-Smtp-Source: AGHT+IGucY7gsurHx82Q1yOr7E/bkizarFTj/IDrhH6Jq39r5tG48aF9wDEkzLwyLpWD70pcdp6ORA==
X-Received: by 2002:a17:907:3d88:b0:b4e:e4c4:4245 with SMTP id a640c23a62f3a-b6dba47ea3amr92863966b.3.1761606283832;
        Mon, 27 Oct 2025 16:04:43 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d406:ee00:3eb9:f316:6516:8b90])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d8992aa28sm851014966b.41.2025.10.27.16.04.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 16:04:43 -0700 (PDT)
Date: Tue, 28 Oct 2025 01:04:39 +0200
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
Message-ID: <20251027230439.7zsi3k6da3rohrfo@skbuf>
References: <cover.1761521845.git.daniel@makrotopia.org>
 <cover.1761521845.git.daniel@makrotopia.org>
 <e7a4dadf49c506ff71124166b7ca3009e30d64d8.1761521845.git.daniel@makrotopia.org>
 <e7a4dadf49c506ff71124166b7ca3009e30d64d8.1761521845.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e7a4dadf49c506ff71124166b7ca3009e30d64d8.1761521845.git.daniel@makrotopia.org>
 <e7a4dadf49c506ff71124166b7ca3009e30d64d8.1761521845.git.daniel@makrotopia.org>

On Sun, Oct 26, 2025 at 11:45:19PM +0000, Daniel Golle wrote:
> Add support for standard tx-internal-delay-ps and rx-internal-delay-ps
> properties on port nodes to allow fine-tuning of RGMII clock delays.
> 
> The GSWIP switch hardware supports delay values in 500 picosecond
> increments from 0 to 3500 picoseconds, with a default of 2000
> picoseconds for both TX and RX delays.
> 
> This corresponds to the driver changes that allow adjusting MII delays
> using Device Tree properties instead of relying solely on the PHY
> interface mode.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
> v3:
>  * redefine ports node so properties are defined actually apply
>  * RGMII port with 2ps delay is 'rgmii-id' mode
> 
>  .../bindings/net/dsa/lantiq,gswip.yaml        | 29 +++++++++++++++++--
>  1 file changed, 26 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/dsa/lantiq,gswip.yaml b/Documentation/devicetree/bindings/net/dsa/lantiq,gswip.yaml
> index f3154b19af78..b0227b80716c 100644
> --- a/Documentation/devicetree/bindings/net/dsa/lantiq,gswip.yaml
> +++ b/Documentation/devicetree/bindings/net/dsa/lantiq,gswip.yaml
> @@ -6,8 +6,29 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: Lantiq GSWIP Ethernet switches
>  
> -allOf:
> -  - $ref: dsa.yaml#/$defs/ethernet-ports
> +$ref: dsa.yaml#
> +
> +patternProperties:
> +  "^(ethernet-)?ports$":
> +    type: object
> +    patternProperties:
> +      "^(ethernet-)?port@[0-6]$":
> +        $ref: dsa-port.yaml#
> +        unevaluatedProperties: false
> +
> +        properties:
> +          tx-internal-delay-ps:
> +            enum: [0, 500, 1000, 1500, 2000, 2500, 3000, 3500]
> +            default: 2000

No. This is confusing and wrong. I looked at the driver implementation
code, wanting to note that it has the potential of being a breaking
change for device trees without the "tx-internal-delay-ps" and
"rx-internal-delay-ps" properties.

But then I saw that the driver implementation is subtly different.
"tx-internal-delay-ps" defaults to 2000 only if "rx-internal-delay-ps" is set, and
"rx-internal-delay-ps" defaults to 2000 only if "tx-internal-delay-ps" is set.

So when implemented in this way, it won't cause the regressions I was
concerned about, but it is misrepresented in the schema.

Why overcomplicate this and just not set a default? Modify the RX clock
skew if set, and the TX clock skew if set.

> +            description:
> +              RGMII TX Clock Delay defined in pico seconds.
> +              The delay lines adjust the MII clock vs. data timing.
> +          rx-internal-delay-ps:
> +            enum: [0, 500, 1000, 1500, 2000, 2500, 3000, 3500]
> +            default: 2000
> +            description:
> +              RGMII RX Clock Delay defined in pico seconds.
> +              The delay lines adjust the MII clock vs. data timing.
>  
>  maintainers:
>    - Hauke Mehrtens <hauke@hauke-m.de>
> @@ -113,8 +134,10 @@ examples:
>                      port@0 {
>                              reg = <0>;
>                              label = "lan3";
> -                            phy-mode = "rgmii";
> +                            phy-mode = "rgmii-id";
>                              phy-handle = <&phy0>;
> +                            tx-internal-delay-ps = <2000>;
> +                            rx-internal-delay-ps = <2000>;
>                      };
>  
>                      port@1 {
> -- 
> 2.51.1


