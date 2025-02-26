Return-Path: <devicetree+bounces-151315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 775AAA45620
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 07:59:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 929833A278C
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 06:59:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68E99269CE4;
	Wed, 26 Feb 2025 06:59:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED9F269AE6
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 06:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740553177; cv=none; b=hx3s5shYrh7/82qqlImdsChcCutbiXO1XRA54ewQIKuQbUp8m6ocUq5cXnJNul/o5rtmE090V1XjpCglWNovPcGU1DB+/aBUZVVZiMEZzAMTObyEiPqYWD0UdB2Qeuyjl5osxw0wQKJi3G67qdqWX+uhEBwkkKDt8/mK4SG/Djc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740553177; c=relaxed/simple;
	bh=q3TROAVWAgk8f7+TCOM9K38XnJcQ5RmL26L3R4aAYCQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ndXtMWe1nkA/uJXNaUYbWelaQHLlCIz15SqIIMoI8pOynv7isR3y848ISrYtUuDRmeNOlMK0K0x6IiOtiUafaYR9Q6kPSJIuSEumP/kgCmCMbl9NKX4nF9sK2Y+RbPIkojytyplMeQA3kWmGePoCtNMk7feB4za9KlRbGhwqmDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tnBO3-0003ie-L6; Wed, 26 Feb 2025 07:59:19 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tnBO2-002uE4-0w;
	Wed, 26 Feb 2025 07:59:18 +0100
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tnBO2-001TMd-0J;
	Wed, 26 Feb 2025 07:59:18 +0100
Date: Wed, 26 Feb 2025 07:59:18 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, linux-kernel@vger.kernel.org,
	Jakub Kicinski <kuba@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Woojung Huh <woojung.huh@microchip.com>,
	Paolo Abeni <pabeni@redhat.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>, devicetree@vger.kernel.org,
	Eric Dumazet <edumazet@google.com>,
	linux-stm32@st-md-mailman.stormreply.com,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
	kernel@pengutronix.de
Subject: Re: [PATCH v3 0/4] Add support for Priva E-Measuringbox board
Message-ID: <Z767xqh9T8mdoiAP@pengutronix.de>
References: <20250203085820.609176-1-o.rempel@pengutronix.de>
 <173859694746.2601652.11244969424431209545.robh@kernel.org>
 <Z6Msn8AxgG_JTVNs@pengutronix.de>
 <6db6e1d4-a0b1-4ce3-9235-d92bb19da1d6@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6db6e1d4-a0b1-4ce3-9235-d92bb19da1d6@foss.st.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi Alexandre,

Just wanted to check if there’s anything needed from my side for this
patch. Let me know if further input is required.

Best Regards,
Oleksij

On Wed, Feb 05, 2025 at 05:02:19PM +0100, Alexandre TORGUE wrote:
> Hi Oleksij
> 
> On 2/5/25 10:17, Oleksij Rempel wrote:
> > Hi Alexandre,
> > 
> > On Mon, Feb 03, 2025 at 09:37:06AM -0600, Rob Herring (Arm) wrote:
> > > 
> > > On Mon, 03 Feb 2025 09:58:16 +0100, Oleksij Rempel wrote:
> > > > This patch series introduces support for the Priva E-Measuringbox board
> > > > based on the ST STM32MP133 SoC. The set includes all the necessary
> > > > changes for device tree bindings, vendor prefixes, thermal support, and
> > > > board-specific devicetree to pass devicetree validation and checkpatch
> > > > tests.
> > > > 
> > 
> > ...
> > 
> > > arch/arm/boot/dts/st/stm32mp133c-prihmb.dtb: adc@48004000: adc@0:interrupts: 0 was expected
> > > 	from schema $id: http://devicetree.org/schemas/iio/adc/st,stm32-adc.yaml#
> > > arch/arm/boot/dts/st/stm32mp133c-prihmb.dtb: adc@48003000: adc@0:interrupts: 0 was expected
> > > 	from schema $id: http://devicetree.org/schemas/iio/adc/st,stm32-adc.yaml#
> > 
> > 
> > Can I please get your attention here. The reported issue is not related
> > to this patch set. adc@0:interrupts are set in the dtsi file.
> 
> Yes I saw this issue too when I tried to merge your series. I'm discussing
> with STM32 ADC driver owner to fix the issue (either in stm32 adc yaml or
> maybe in schema).
> 
> Anyway we also have the issue for STM32MP135F-DK board so I'll merge your
> series as it doesn't introduce the issue.
> 
> regards
> Alex
> 
> 
> 
> 
> > Kind regards,
> > Oleksij
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

