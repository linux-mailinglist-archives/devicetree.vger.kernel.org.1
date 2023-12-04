Return-Path: <devicetree+bounces-21240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 590B4802E95
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 10:29:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 041A51F210BE
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 09:29:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07BDF18644;
	Mon,  4 Dec 2023 09:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdoyKckA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC65F1A5A3
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 09:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86B65C433C8;
	Mon,  4 Dec 2023 09:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701682149;
	bh=DRrtkbyTCk/Szcs4W+WPrKgFw32MQUyWR0BepZqZsWY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=BdoyKckAMdmgjJfAclrg7sdkZAlWGxpnKh3Ned1JjAuYE6BTUryT3Jo24+YEFFeeC
	 kea4bv+VHJKcIWLBOiugfosfpB1PIsqy2ocDZvjns0TUP5YlKJbx2yCcaG/1WAlcCh
	 v/VekiHlrm0KMHK59SL33uuR5m+TpNPAv7FBc2nWaWETp7AxSkrkOFHYp6OJBE/dHM
	 /l8b7PCaaavd2lWER99C4KRKDNrof5EbR9dlqiiNuQKCvo6vORmmUAqGwiC0A7h3LN
	 QE+ln42Kjkhr631aP5myZZA43zhKQfHzHUXLvwktm6rvHqc23E9SYEcJJEhLd3AjC3
	 C5tlaX7Rbg7Dg==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Mon, 04 Dec 2023 10:29:01 +0100
From: Michael Walle <mwalle@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong
 <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Laurent
 Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
 <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Simha BN <simhavcs@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, Carl Philipp
 Klemm <philipp@uvos.xyz>, Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
 Merlijn Wajer <merlijn@wizzup.org>, Pavel Machek <pavel@ucw.cz>, Sebastian
 Reichel <sre@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v2 05/10] drm/bridge: tc358775: make standby GPIO optional
In-Reply-To: <20231202075514.44474-6-tony@atomide.com>
References: <20231202075514.44474-1-tony@atomide.com>
 <20231202075514.44474-6-tony@atomide.com>
Message-ID: <c833e94366ced6e2f36765ddcc65dd5c@kernel.org>
X-Sender: mwalle@kernel.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

> The stby pin is optional. It is only needed for power-up and down
> sequencing. It is not needed, if the power rails cannot by dynamically
> enabled.
> 
> Because the GPIO is not optional, remove the error message.

I just noticed a typo: "is *now* optional.

-michael

