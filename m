Return-Path: <devicetree+bounces-2925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1857ACE84
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 04:54:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 5C1A62813DC
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 02:54:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27E5853A2;
	Mon, 25 Sep 2023 02:54:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C107F
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:54:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0A86C433C7;
	Mon, 25 Sep 2023 02:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695610490;
	bh=vfQAK8d2Fvny4XQ2zPnCFIWLvNA1eMlVFjvN/UsiLRw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jJR+xIL6rqxKlZIX9FbanIBdhz7NqqMbWzPp+By3lQHqHtOzTP8lmC6zjHLJnhEti
	 z+BVI+Xyx1PSJvYShEdCC3ImMKgOAgFzvcUk99CHcUdax6bjn6ILeepCCteZueJT9j
	 dEXt4OdSK5SuRI1HpLrlZZd4XDrQuDlaHaaaI8uo3fCzJLZ5c4okXBwgqE+SC+GLT1
	 d3Slc78b3yTBWuDHgGnmQzjnHvMJelUbJDM7Tg4NKQfUzTFvKo6HEceve4zP7pe7Sp
	 SO4ZmLyhf7uc2aqpktsYnzd9/Zd5+n0QPhH1zwgRlO8NrpWAVzxyG5d/wWCgxYanvr
	 Xt8vdoe5QEUuQ==
Date: Mon, 25 Sep 2023 10:54:41 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/2] ARM: dts: imx6ull-phytec-tauri: Remove board model
 and compatible
Message-ID: <20230925025441.GG7231@dragon>
References: <20230914194027.2515896-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230914194027.2515896-1-festevam@gmail.com>

On Thu, Sep 14, 2023 at 04:40:26PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The imx6ull-phytec-tauri.dtsi file is included in two places:
> 
> imx6ull-phytec-tauri-emmc.dts
> imx6ull-phytec-tauri-nand.dts
> 
> These two files overwrite the board model and compatible locally, so
> there is no need for describing them in imx6ull-phytec-tauri.dtsi.
> 
> Remove the board model and compatible.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied both, thanks!

