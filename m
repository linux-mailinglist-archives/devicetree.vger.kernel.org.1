Return-Path: <devicetree+bounces-2896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 965AC7ACD7C
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 03:13:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 4E1DC2812F6
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 01:13:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA725A35;
	Mon, 25 Sep 2023 01:13:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99FCA2A
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:13:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E9EDC433C9;
	Mon, 25 Sep 2023 01:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695604390;
	bh=Wmz48UIlp2PC5T1iQz6rVBuxFVOUZ6YblW0qZ4yZewQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m74P3FZ9MNSUw+ugowyh7SlhphwEjH2qhoh4JsqgBOodaRKVV2TQ5PXk0DLtlR0bW
	 MkJ2rfz01I5kZsfJDj8SUHDXsdNUrBJ+XmKMVswChappzRYtEvQm2SAV+WBpsSFzTZ
	 70Fg6leER1yYOJGoLKeQNn8DPAeRVtgkgWs3pfthi1tSykXsdD00/SjpCGGHdY59xY
	 AHP5Q0NCjAjNZuLmTQ70trQj5DFFS/m7OOu9E0D2GnT8+68+8Bg5oIp6jqNWj3eoeW
	 x+dPDhWApsQBfS4+1XOpFcQpanmxqYbiIwdhSm8jZeW26N0EBD5kVLkseAJiLHvNDN
	 Q61cbL9zbvO9A==
Date: Mon, 25 Sep 2023 09:12:58 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de,
	aford@beaconembedded.com, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH V3 2/3] arm64: dts: imx8mp: Add micfil node
Message-ID: <20230925011258.GD7231@dragon>
References: <20230831044431.250338-1-aford173@gmail.com>
 <20230831044431.250338-2-aford173@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230831044431.250338-2-aford173@gmail.com>

On Wed, Aug 30, 2023 at 11:44:30PM -0500, Adam Ford wrote:
> The i.MX8MP has a micfil controller which is used for interfacing
> with a pulse density microphone. Add the node and mark it as
> disabled by default.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

Applied, thanks!

