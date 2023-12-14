Return-Path: <devicetree+bounces-25077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4424B812536
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 03:24:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7637B1C2114A
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 02:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0007D7F9;
	Thu, 14 Dec 2023 02:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUHvgyto"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9022642
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 02:24:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CAFDC433C9;
	Thu, 14 Dec 2023 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702520695;
	bh=e7DYid3RFoBLRo/aPr+co05BWmmY18xBgdlVNh30Uuo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eUHvgytooaGQwQLP2qzQGqJMFkambcWY4CGSQN/pnvRB89/y5dBisgf+F5r7ceXiU
	 I8ckY1hhao+N+T7bjUv8iYqjma+NdWKE1aQI+hqOJbHZ6bFER+iKai+0I8GffFQwQq
	 WdnPYLG2NGXmvkwfotXOClkekJN+yfP0Ec0x0AptWvSmNQ5gNWjUhv6X9yRLnkZcms
	 Bh83WAiy2wjKQ+UjdCrzmpqLb53KEVcYa5+DHRVxSnLsZTU1nmmV8nvm8nEsP3pYfY
	 ISW6cjJkk4halBL5cDpI2bfbJMgtCzmX9eC9GUqzVbde8DGMfJjM+0CNb6lHq7tkvt
	 X8oMe5TJENOVw==
Date: Thu, 14 Dec 2023 10:24:50 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, linux@ew.tq-group.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: imx8m*-tqma8m*: Add chassis-type
Message-ID: <20231214022450.GA270430@dragon>
References: <20231207145401.2102898-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231207145401.2102898-1-alexander.stein@ew.tq-group.com>

On Thu, Dec 07, 2023 at 03:54:01PM +0100, Alexander Stein wrote:
> Device tree specification 0.4 defines an optional, but recommended
> 'chassis-type' property. Add it to TQMa8M* based board files.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!

