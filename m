Return-Path: <devicetree+bounces-118620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6112C9BAFA7
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 10:29:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9337E1C21301
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 09:29:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D51EE1AC444;
	Mon,  4 Nov 2024 09:29:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D80E1ABECD
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 09:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730712556; cv=none; b=howZrAeOGMDa8W1yUwH/mc1cN/dG3Cby3npcUMRp2Mldk5hZgtWb5S9WPPzTnXNFPzrOBrqgOHN3AAqg4ckrWmD06EIbe93mlNKsRfoyzkbG7ho+f9APQ8F85sBA+EmuUsRm5HmvSKMt2LG0XPbzoFtgFTT47hCDPzQilQUHg7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730712556; c=relaxed/simple;
	bh=NQdTQuUXttSeZskJgvBHkm84TGVBusiWG1zoAQ102s4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=mlRGX2r27oHTnC4Nt7FYqg67gt/WztGooUYjqdFnU2QVHPG0Z6zReGuS6Naed3i4HWg0c/XXXae5EclRUEjDOu4b9mNcwuak30Mn52bwLvnuKRGNSEm3FM+WMVIsATFx44nqOku/brhzNKBmH2P97mzNO4z5mprwgaoJ2xLPkqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1t7tOR-0008L6-4O; Mon, 04 Nov 2024 10:29:03 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,  Stephen Boyd
 <sboyd@kernel.org>,  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Dinh Nguyen
 <dinguyen@kernel.org>,  Richard Cochran <richardcochran@gmail.com>,
  linux-kernel@vger.kernel.org,  linux-clk@vger.kernel.org,
  devicetree@vger.kernel.org,  netdev@vger.kernel.org,  Teh Wen Ping
 <wen.ping.teh@intel.com>
Subject: Re: [PATCH 1/2] dt-bindings: clk: agilex5: Add Agilex5 clock bindings
In-Reply-To: <5168bb64-f5cf-4cf4-81c9-3bbf0662a334@kernel.org> (Krzysztof
	Kozlowski's message of "Wed, 30 Oct 2024 15:36:09 +0100")
References: <20241030-v6-12-topic-socfpga-agilex5-clk-v1-0-e29e57980398@pengutronix.de>
	<20241030-v6-12-topic-socfpga-agilex5-clk-v1-1-e29e57980398@pengutronix.de>
	<299bd27b-b5bd-492a-9873-447329e60b67@kernel.org>
	<5168bb64-f5cf-4cf4-81c9-3bbf0662a334@kernel.org>
Date: Mon, 04 Nov 2024 10:29:00 +0100
Message-ID: <87v7x38i03.fsf@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 2024-10-30 at 15:36 +01, Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On 30/10/2024 15:34, Krzysztof Kozlowski wrote:
> > On 30/10/2024 13:02, Steffen Trumtrar wrote:
> >> From: Teh Wen Ping <wen.ping.teh@intel.com>
> >>
> >> Add Intel SoCFPGA Agilex5 clock definition.
> > 
> > Where is the binding? I see only clock IDs. Your commit msg should
> > explain such unusual cases.
> > 
> 
> Eh, I just found it in the kernel. Please, do not work on some ancient
> kernels. You are duplicating existing code, already accepted or reviewed.

Meh, yes, you are right. clock != clk...
So only the clock driver itself is missing and I will remove the binding patch. Even better.


Best regards,
Steffen

-- 
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |

