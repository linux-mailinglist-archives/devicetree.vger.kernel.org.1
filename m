Return-Path: <devicetree+bounces-19213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDA67FA0C8
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 14:20:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C28CEB21043
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 417132DF7E;
	Mon, 27 Nov 2023 13:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="sPx/Io50"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FD58187
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 05:20:38 -0800 (PST)
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id D788F604AC;
	Mon, 27 Nov 2023 13:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1701091238;
	bh=wBCDD36mme1w3tN587tWMeU+pD4sq1JyqxekiQlv7fc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sPx/Io50tixr9EAAOq4e8/zmkZRl5GF5VrJbC9U4WlosICdyWPvXoDRjScdGXzOai
	 Z80hySfQlRh9NPpHa3kjVaaPo3RqJcbq5yJi3cJmU2kCRP9nYdgszuN5CBviioYZeJ
	 D2b1zR6Tq9hakmFM4FE9RFsTlI7ErqJYTZ7w3fPFDnJLszGHe0JzkvyQ5QzUqgu8vM
	 0b+uP1nkjikW+6knVovEfMbZO0ilckYuzuu+jom5dQPWOlMsjIhlsXMXrhGLifppCJ
	 9zkaJuMsu5hDnOUo0dheKz7SoQwIuuXqSIIuW8r3G0NLfeRMnmRfvQ6L4cL2nVVp8u
	 A4R+G0lR8ceyA==
Date: Mon, 27 Nov 2023 15:19:47 +0200
From: Tony Lindgren <tony@atomide.com>
To: Michael Walle <mwalle@kernel.org>
Cc: Laurent.pinchart@ideasonboard.com, airlied@gmail.com,
	andrzej.hajda@intel.com, daniel@ffwll.ch,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	ivo.g.dimitrov.75@gmail.com, jernej.skrabec@gmail.com,
	jonas@kwiboo.se, maarten.lankhorst@linux.intel.com,
	merlijn@wizzup.org, mripard@kernel.org, neil.armstrong@linaro.org,
	pavel@ucw.cz, philipp@uvos.xyz, rfoss@kernel.org, sam@ravnborg.org,
	simhavcs@gmail.com, sre@kernel.org, tzimmermann@suse.de
Subject: Re: [PATCH 2/6] drm/bridge: tc358775: Fix getting dsi host data lanes
Message-ID: <20231127131947.GE5166@atomide.com>
References: <20231126163247.10131-2-tony@atomide.com>
 <20231127130941.2154871-1-mwalle@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231127130941.2154871-1-mwalle@kernel.org>

* Michael Walle <mwalle@kernel.org> [231127 13:10]:
> I actually have the same fix, but with one additional detail, which I'm
> unsure about though: This looks at the data-lanes property of the *remote*
> endpoint whereas other bridge drivers (see tc358767, ti-sn65dsi83, lt8912b,
> anx7625) look at the local endpoint and I'm not sure what is correct.

Yes I've been wondering about that too. Let's just move it over to the
bridge node? We could produce a warning if the dsi host node has the
data-lanes property.. No current in kernel users AFAIK.

FYI, for omapdrm, we already have a legacy dt property "lanes" for the
wiring that tells number of lanes used and the order of the lanes.

Regards,

Tony

