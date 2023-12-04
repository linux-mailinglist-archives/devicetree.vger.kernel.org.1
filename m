Return-Path: <devicetree+bounces-21241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB69802EA3
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 10:33:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0AFC71C203A4
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 09:33:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C6721A703;
	Mon,  4 Dec 2023 09:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZLG7yVJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEF618AE4
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 09:33:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C961DC433C8;
	Mon,  4 Dec 2023 09:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701682396;
	bh=OLgKUOugKFgYFsPGut4AFROJGSLz7qzRFgod5ywQIyk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=IZLG7yVJvvNMyUOnjwpQdyXaRfaWRcPNXdBNXzHvnK5t8bWnWmm3r1KsxLOlvdauG
	 uv1QJVjJ8jhYKS4jHPR0OzSMOYLwtb+6ZBVIVDhgPRhZXngLXTcY9IdTS8OYMeFl9Q
	 pchG5LokbvHlbIxWiAmGPKn3X6b+nybVfodB5uXVnGDlndZkHGo+xGgqfUBlMlBJM/
	 b4lVFfyh16qvzRIo8a4v3sRi1PCl7u6JDw8EP8cjwBuyULxvrT9NXpVEiTBAIRf6C7
	 OMvlwSNkKl9hcNVA5avQ0WUXI50gikwZNCRi9BMy0KQ2AmiPoJQho+46GY8vGRgtNS
	 uq/6h2eCHqd/g==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Mon, 04 Dec 2023 10:33:08 +0100
From: Michael Walle <mwalle@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Tony Lindgren <tony@atomide.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Simha BN <simhavcs@gmail.com>, Sam Ravnborg
 <sam@ravnborg.org>, Carl Philipp Klemm <philipp@uvos.xyz>, Ivaylo Dimitrov
 <ivo.g.dimitrov.75@gmail.com>, Merlijn Wajer <merlijn@wizzup.org>, Pavel
 Machek <pavel@ucw.cz>, Sebastian Reichel <sre@kernel.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 01/10] dt-bindings: display: bridge: tc358775: make
 stby gpio and vdd supplies optional
In-Reply-To: <a7fa155c-39d3-4678-bd38-ea08d5f48adc@linaro.org>
References: <20231202075514.44474-1-tony@atomide.com>
 <20231202075514.44474-2-tony@atomide.com>
 <a7fa155c-39d3-4678-bd38-ea08d5f48adc@linaro.org>
Message-ID: <686bfc416ff8adb5ee73064386a42f11@kernel.org>
X-Sender: mwalle@kernel.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

>> For a normal operation, the vdd supplies nor the stby GPIO is needed.
>> There are boards, where these voltages are statically enabled during
>> board power-up.
> 
> This means supply is still required.

You mean using fixed-regulator? I didn't consider that. But yes, you're
right.

-michael

