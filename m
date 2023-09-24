Return-Path: <devicetree+bounces-2779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BA37AC80D
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 14:33:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D3FDE2815F7
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 12:33:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 631D7111E;
	Sun, 24 Sep 2023 12:33:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535BA17E6
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:33:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4426C433C7;
	Sun, 24 Sep 2023 12:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695558820;
	bh=jwJ58Ka9vtmiNMt2BBdV4J4aU6G8XMS4XbJMQ/mrCvc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YZ1GHUhqTp+Q2Tc9yK7cMJE+3KTOxodqK+7VgydGCWj7ZpO//820tcwU8EcXM1APJ
	 ihtk+Nv7JXtVYYWlgRFoXyCN3sVVVqK3GbdgH1G5xw3PJqyORC7g7BxNRi/+WY+tOs
	 VhbLthWAI3R92WTvJlIQe9prEACZJPvS8/UjmGaD7kFkidScH2DJcsyDDpLrQQvIdS
	 7QvRIVSZFg8zr6vKf3GAKk0DjeVl7QixHEzP/CMgzfGktBSfTEKFsa63WHoS2eXpij
	 kD3BRXblzcpp8E9ogpd3WbYJ6xGDacBGCii99t7XnAfPmiGvd8lihi5F0zwsIIsAyz
	 1mAXWDd0IdM8g==
Date: Sun, 24 Sep 2023 20:33:28 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/3] arm64: dts: freescale: tqma9352-mba93xxla: add
 'chassis-type' property
Message-ID: <20230924123328.GA7231@dragon>
References: <20230811085401.3856778-1-alexander.stein@ew.tq-group.com>
 <20230811085401.3856778-3-alexander.stein@ew.tq-group.com>
 <20230920152023.GG11740@T480>
 <CAOMZO5DJXvh+aODuPo_d2jahqbD-7dsAUje5BurzEuVE5UnEtg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOMZO5DJXvh+aODuPo_d2jahqbD-7dsAUje5BurzEuVE5UnEtg@mail.gmail.com>

On Sat, Sep 23, 2023 at 10:52:37PM -0300, Fabio Estevam wrote:
> Hi Shawn,
> 
> On Wed, Sep 20, 2023 at 12:20 PM Shawn Guo <shawnguo@kernel.org> wrote:
> 
> > Do we have binding doc somewhere for this property?
> 
> It is documented at:
> https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/root-node.yaml#L20-L29

Thanks for the pointer, Fabio!

Shawn

