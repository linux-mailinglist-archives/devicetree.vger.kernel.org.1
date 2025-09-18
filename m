Return-Path: <devicetree+bounces-215860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A47FEB52E10
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 12:12:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1F30A7BB876
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 10:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42B35310630;
	Thu, 11 Sep 2025 10:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="1Wo5DFeq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C260530F533
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 10:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757585493; cv=none; b=b28H7bbeImysNJsJIsm59IZQ7e+E/uwGvJwQU7IEM7heDjfCmUBDu72n7h1H1viGjUXiO+9BSRfCqZ6o634xiD/I7ZOc20kwPtP6VfZyHxD0rFh3ajoCxAi2KHyyOkIQdXONX5N9369bXNytLahCurK7W0aDTkbgGPNzJvOJPV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757585493; c=relaxed/simple;
	bh=wiEOdXPNQ7fjXJ3tEfgZ5DQcck3zCSzqWg3orVepiBU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nXJH6qfP+ap5pH82TbTEcVq+JvFOqia3grp/EHjoZujb/9PvfD9mqsLvkjw1DWuiyJdbQorIjQUiPrVuHyLbKt17vyzwGAsy2N/IvbIzOE2VUne7ZpydIvOgcYTCLV9wQiLStMR7MwPGq4iklMqkpg+U1wMh2opdFEc49Ovn4w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=1Wo5DFeq; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 12C024E40C5F;
	Thu, 11 Sep 2025 10:11:27 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id B7505606BB;
	Thu, 11 Sep 2025 10:11:26 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 90DEB102F1BF2;
	Thu, 11 Sep 2025 12:11:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1757585485; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=nKw7C3NYAy5Aaj3r8xHKrXFpWDbbwE9fY6z70DvQPug=;
	b=1Wo5DFeqhOilTi/yYNIuH0qMj2Tz6xqaNaLR2kquaQRRH4/vW/2fLtIb2sdsxFioGcidSR
	nzqOTn38aIx0LE467Ua1c0JHu1e+hPBei5kBpI22Y/QZqLANS9dtEQuqVSXOrpmlf6hGe6
	6Zl6gHONtP4ITaxGu49HEWVaeWmiKF0+lKW83wEo21YRRHjNGIcYpBW+vcuvxsjl5ys2Xf
	UeP5UmRj4u22c8CwwT1kexxcbckAgVtDo5OycsPP55DFmY8DkQOoudRVsAmLMcJ0krrEao
	IFedE6Ntsm75yVuElXGcq+XmUYz9GZ2d3Fj966M81dq4zS2USo7Sb2efUUs3Dw==
Date: Thu, 11 Sep 2025 12:11:03 +0200
From: Herve Codina <herve.codina@bootlin.com>
To: David Gibson <david@gibson.dropbear.id.au>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Ayush Singh
 <ayush@beagleboard.org>, Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, Rob
 Herring <robh@kernel.org>, Jason Kridner <jkridner@gmail.com>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree-compiler@vger.kernel.org, linux-kernel@vger.kernel.org, Thomas
 Petazzoni <thomas.petazzoni@bootlin.com>, Andrew Davis <afd@ti.com>
Subject: Re: Device tree representation of (hotplug) connectors: discussion
 at ELCE
Message-ID: <20250911121103.40ccb112@bootlin.com>
In-Reply-To: <aMEAXrAC0uEW2sCc@zatzit>
References: <20250902105710.00512c6d@booty>
	<aLkiNdGIXsogC6Rr@zatzit>
	<337281a8-77f9-4158-beef-ae0eda5000e4@beagleboard.org>
	<aL5dNtzwiinq_geg@zatzit>
	<20250908145155.4f130aec@bootlin.com>
	<aL-2fmYsbexEtpNp@zatzit>
	<20250909114126.219c57b8@bootlin.com>
	<CAMuHMdVarhTFEhQoYHWCnJp0iWRCjm0wh_ryP73aOdUwVa0X4Q@mail.gmail.com>
	<aMEAXrAC0uEW2sCc@zatzit>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.43; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Hi David, Geert,

On Wed, 10 Sep 2025 14:36:46 +1000
David Gibson <david@gibson.dropbear.id.au> wrote:

...
> > 
> > A PMOD Type 2A (expanded SPI) connector provides SPI and 4 GPIOS.
> > A PMOD Type 6A (expanded I2C) connector provides I2C and 4 GPIOS.
> > Hence a plug-in board that needs SPI, I2C, and a few GPIOs, would need
> > to plug into two PMOD connectors.
> > 
> > Or:
> > A PMOD Type 1A (expanded GPIO) connector provides 8 GPIOS.
> > Hence a non-multiplexed dual 7-segment LED display plug-in board needs
> > 14 or 16 GPIOS, and thus would plug into two PMOD connectors.
> > 
> > To plug into two connectors, a mapping needs to provided between two
> > connectors on base and add-on board.
> > 

Base on this, let me draft some ideas to have some basis to move forward.

Suppose:
- A base board with:
  2x PMOD Type 2A (SPI + 4 GPIOS)
  1x PMOD Type 6A (I2C + 4 GPIOS)
  3x PMOD Type 1A ( 8 GPIOS)

- An addon board which needs:
  - 1x PMOD type 2A
  - 2x PMOD type 1A

Hardware connection:
  base board               addon board
    PMOD 2A #0    +------+ PMOD 2A
    PMOD 2A #1
    PMOD 6A
    PMOD 1A #0 
    PMOD 1A #1    +------+ PMOD 1A I
    PMOD 1A #2    +------+ PMOD 1A II

The base board 'PMOD 1A #0' is not connected to the addon board.
The addon board uses the base board PMOD 1A #1 and #2.


The base board DT:
    pmods {
	compatible = "pmods";

        pmod_2a_0: pmod-2a-0 {
	    compatible = "pmod-2a"

            /* Describe 4 gpios connected to this connector */
            gpio-map = < 0 &gpio 10>,
                       ...
                       < 3 &gpio 43>;

            /* Describe the bus connected to this connector */
            spi_bus_2a_0: spi-bus {
                compatible = "spi-bus-extension";
                spi-parent = <&spi2>;
            };
		
            /* Export symbols related to this connector */
            export-symbols {
                pmod-2a = <&pmod_2a_0>;
                spi = <&spi_bus_2a_0>;
	        ...
            };
	};

	pmod_2a_1: pmod-2a-1 {
	    compatible = "pmod-2a"

            /* Describe 4 gpios connected to this connector */
            gpio-map = ...

            /* Describe the bus connected to this connector */
            spi_bus_2a_1: spi-bus { ... };
		
	    /* Export symbols related to this connector */
            export-symbols {
                pmod_2a = <&pmod_2a_1>;
                spi = <&spi_bus_2a_1>;
                ...
            };
	};

	pmod_6a: pmod-6a {
            compatible = "pmod-6a";
            ...
            export-symbols {
               pmod_6a = <&pmod_6a>;
			...
		};
	};

	pmod_1a_0: pmod-1a-0 {
            compatible = "pmod-1a"

            /* Describe 8 gpios connected to this connector */
            gpio-map = < 0 &gpio 16>,
                       ...
                       < 7 &gpio 33>;

            export-symbols {
                pmod_1a = <&pmod_1a_0>;
                gpio0_muxed_as_gpio = <&pin_mux_xxxx>;
                gpio1_muxed_as_gpio = <&pin_mux_yyyy>;
		gpio2_muxed_as_gpio = <&pin_mux_zzzz>;
            };
        };

        pmod_1a_1: pmod-1a-1 {
            compatible = "pmod-1a"

            /* Describe 8 gpios connected to this connector */
            ...

            export-symbols {
                pmod_1a = <&pmod_1a_1>;
            };
        };

        pmod_1a_2: pmod-1a-2 {
            compatible = "pmod-1a"

            /* Describe 8 gpios connected to this connector */
            ...

            export-symbols {
                pmod_1a = <&pmod_1a_2>;
            };
        };
    };


-- Question 1: How to describe resources needed by the addon

On the addon side, we need to tell that we need 1 PMOD 2A and 2
PMODs 1A (named i and ii).

Proposal supposing that this description will be applied at
base board pmods node (the one grouping pmod connectors):

\{ or ??? corresponding to the entry point of the addon
   import-symbols {
      pmod_2a = "pmod_2a";
      pmod_1a_i = "pmod_1a";
      pmod_1a_ii = "pmod_1a";
   };

   &pmod_2a {
      spi-bus {
        regulator@0 {
           compatible "gpio-regulator";
	   pinctrl-0 = <&pmod_1a_i.gpio2_muxed_as_gpio>;
           enable-gpios = <&pmod_1a_i 2>; /* Use GPIO #2 available on PMOD 1A I */
        };

        ...
   };
};

Import-symbols asked for symbols with local name and type (compatible string ?).
for instance 'pmod_1a_i = "pmod_2a";' means:
  Hey I refernce localy 'pmod_1a_i' but I don't define it and so 'pmod_1a_i' should
  be remapped to a symbol, probably a node of my expected type "pmod_2a".

Also, we can node the syntax:
  &pmod_1a_i.gpio2_muxed_as_gpio

meaning I use the symbols gpio2_muxed_as_gpio provided by pmod_1a_i (namespace).
In other word, to have the addon DT successfully applied,
the node remapped to 'pmod_1a_i' has to export the symbol 'gpio2_muxed_as_gpio'.

--- Question 2: how to perform the mapping between pmods available on the
    base board and pmods needed by the addon board.

The addon board describes what it is expected:
  import-symbols {
      pmod_2a = "pmod_2a";
      pmod_1a_i = "pmod_1a";
      pmod_1a_ii = "pmod_1a";
   };

Based on compatible string:
  pmod_2a expected by the addon can be remapped to the node
  pmod-2a-0 or pmod-2a-1 described in the base board.

  pmod_1a_i and pmod_1a_ii expected by the addon can be remapped
  to pmod-1a-0, pmod-1a-1, pmod-1a-2.  

  We need some more information to set correct mapping
    pmod_2a <---> pmod-2a-0
    pmod_1a_i <---> pmod-1a-1
    pmod_1a_ii <---> pmod-1a-2

  Can we imagine that this mapping is set by the compatible "pmods"
  driver base on some specific external information.
   - Read info from addon to have some more hardware connection
     details (not sure it is relavant with PMODs connector)

   - Expect this information from user-space ?

   - Any other ideas ?


Best regards,
Hervé

