Return-Path: <devicetree+bounces-241874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD5EC83D3C
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 08:57:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B95343B02E4
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 07:55:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0D162FBE1F;
	Tue, 25 Nov 2025 07:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="g7jn8VKO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 817802FB998;
	Tue, 25 Nov 2025 07:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764057331; cv=none; b=kbwLtUD9QcqA8yyUaOqbwywhfno/u/lVMiwsWjaLpO/A+Agxd3v+Yxnf4bpyl8TQxWyHAfulGu2ZOvoAatsQYX1+GueDvTiuje3oMtaV7z6NFNQrqKupIweISGMb0yWsSZ1aw2k/U/ue9zgB8CMl0NU1ttrv/PDWPQiqI1/uJIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764057331; c=relaxed/simple;
	bh=Vy4TCRee8wzLOUhIXvHI0gEdw3K3rTx/ei2NoWNXZ+c=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ULVemkXj80x5htN3q/ke61C+ZvmqcNXLUtNwb+vc3vdXd97wiApIVJuwjMga0k1OMmqPtmT9vhWqbgB5F4jL4YJPthxuUVndE8DT90xdC6tq72X5AhNf46uXiQccavjCR7j8WVBvPtdoOki5U6ohoK+3uCrvbGmYxggp0y2jHPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=g7jn8VKO; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 901CF1A1D3C;
	Tue, 25 Nov 2025 07:55:24 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 613D960705;
	Tue, 25 Nov 2025 07:55:24 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3A5DF10371383;
	Tue, 25 Nov 2025 08:55:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1764057323; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=DkQimB8WCfZHwJR6M2eL/gng3KSNZMieCo1JlCGsAio=;
	b=g7jn8VKOSKX1uEcSvzemg+SVKCpbBqiZInOu7t657+6eNDSBpEC/SIt3r5Rk2Z6djg+ImH
	Ou1IiyPzTK0aM+vdTN9aqVLSzYCi1HcWa9W4YnLRut1l3Gnz+wpynJd/fUyyodHAMTQ+J5
	uq1V5+EcQ8bRl0ZVSv5SnKS3qJxtNH4kg8XWRYD4jWVCbfbNJglCjvnkk61GoZPSkl+9XJ
	WqZ41khDLMzfW4N8jXFkbmR92uuP3cdLxCoL/2B7MUiHjopQNhySWnqBbllA2AckP1VCNp
	UdJxN6tfU3FvjvEizAyN9H9pYM85nTr+bX0gbKSAgl7fZIKxWLG89pJEd1hRpA==
Date: Tue, 25 Nov 2025 08:55:21 +0100
From: Herve Codina <herve.codina@bootlin.com>
To: Kevin Hilman <khilman@baylibre.com>
Cc: Rob Herring <robh@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, arm-scmi@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC] of: Add of_parse_map_iter() helper for nexus node
 map iteration
Message-ID: <20251125085521.451ea208@bootlin.com>
In-Reply-To: <7hjyzedgoc.fsf@baylibre.com>
References: <20251119-topic-lpm-of-map-iterator-v6-18-v1-1-1f0075d771a3@baylibre.com>
	<CAL_Jsq+2sFzQb8j5bBWbwgyYn5apLTfWOTZW3+9n74uVyph16A@mail.gmail.com>
	<7hjyzedgoc.fsf@baylibre.com>
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

Hi Kevin,

On Mon, 24 Nov 2025 17:50:11 -0800
Kevin Hilman <khilman@baylibre.com> wrote:

> >
> > There's also this in flight for interrupt-map:
> >
> > https://lore.kernel.org/all/20251027123601.77216-2-herve.codina@bootlin.com/
> >
> > There's probably enough quirks with interrupt-map that we can't use
> > the same code. Though it may boil down to handling #address-cells and
> > how the parent is looked up.  
> 
> Hmm, I wasn't aware of this, thanks for point it out.  It looks very
> similar to what i need, except for it's hard-coding the properties as
> "#interrupt-*".
> 
> Seems like this should be generalized to handle the generic nexus-node
> map. But it also seems to rely on an existing function
> of_irq_parse_imap_parent() which is also specific to interrupt maps.
> 
> That being said, I'm not sure if interrupt-maps are really special, or
> if they are just a specific case of the nexus node map.  This drivers/of
> code is breaking my brain, so it's more likely that I simply don't
> understand enough of it to know how to do this correctly.
> 

The main difference between interrupt-map [1] and the other nexus node maps
is that in interrupt-map a child unit address is involved and translated to
the parent unit address of the matched interrupt-map item.

This child unit address is simply not present in other nexus node maps [2].

[1] https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#interrupt-map
[2] https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#nexus-node-properties

Best regards,
Hervé

