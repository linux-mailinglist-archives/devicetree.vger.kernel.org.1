Return-Path: <devicetree+bounces-26047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B5D81560B
	for <lists+devicetree@lfdr.de>; Sat, 16 Dec 2023 02:43:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC3581C245C5
	for <lists+devicetree@lfdr.de>; Sat, 16 Dec 2023 01:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20C26110B;
	Sat, 16 Dec 2023 01:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrAeOxdb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0643B1FBA
	for <devicetree@vger.kernel.org>; Sat, 16 Dec 2023 01:43:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9081C433C7;
	Sat, 16 Dec 2023 01:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702691012;
	bh=lB0c5lhTgmtGx4DgV6p4gjr7EuAQE+5vAnEgEJ7JY+o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VrAeOxdbQgDtbdZE/rj+K5e3l259YhM4R6E1VAfC9jkJ/aQcRrfGXNTbrzk35dA6p
	 1wMEUaCYyfGwfzumDAZZsCRxsPsfu+lErpdsPPHEW0eGsWf/ojxmJ24wGN/4ya6Ob7
	 OBkCleOMt7q37ajeBMmGoF6DbNOBJ2Bm8lEfRfNwOQX0mv7dqOxk9pzGrQs5JpOG0h
	 Pc34MZzSncl/nE+OfoxnGgdeD1LNQbAofUpTNTF53bl3JnpgV8h//JZeilGDEJDk/5
	 kx1knmnMeAKQ9M7+dxgsNrsNdkUVqvTgFgxuMmtqw23LeU8G3v3JLTVMZ3Ls/tGJQ7
	 GbwmvRPdtdyRg==
Date: Sat, 16 Dec 2023 09:43:27 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: imx8qxp: Add VPU subsystem file
Message-ID: <20231216014327.GK270430@dragon>
References: <20231214132000.1927638-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231214132000.1927638-1-alexander.stein@ew.tq-group.com>

On Thu, Dec 14, 2023 at 02:20:00PM +0100, Alexander Stein wrote:
> imx8qxp re-uses imx8qm VPU subsystem file, but it has different base
> addresses. Also imx8qxp has only two VPU cores, delete vpu_vore2 and
> mu2_m0 accordingly.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!

