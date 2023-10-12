Return-Path: <devicetree+bounces-8095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1F57C6ACE
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 12:18:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F0291C20C26
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:18:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AA5C22EF0;
	Thu, 12 Oct 2023 10:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4M5w/5o"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B90522336
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 10:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCFA6C433C8;
	Thu, 12 Oct 2023 10:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697105885;
	bh=IwTIP/3gd16uC8T85KpSgb5YpNx00U+8LlHwbdgTCUM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T4M5w/5okNjhZvykVq+TjM1iMhxJJrTxne7iZJ2+sC4tw52s4fm7O47FL3CGXquaA
	 1HgAWeoBZ2Kom9bHdADPz3EGyy7G8wKefrr9luWnx3ckL7C9PieVpzF9jXBnAvsr6i
	 jPITT6xtOaQvb4n7ZNB31z3LOBzT12bCKt4UxTBCuP4nqypjmwqJfDzF916wWAGasi
	 zcA0y8F+FofPv3+mP/NZt5XjACwXd2iI4qYZzgVgxkw0avIq12bLko/AiL13Am4sXl
	 j1WIQ8jZrUrfOXsHJ45ls+OuQkNSZyli0tt2mdRVPr2mqURcuVvU64uYLFSM9d9tvr
	 cTKcM5aS58BlA==
Date: Thu, 12 Oct 2023 18:17:54 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/4] arm64: dts: imx8mp: Describe VDD_ARM run and standby
 voltage for DH i.MX8M Plus DHCOM SoM
Message-ID: <20231012101754.GU819755@dragon>
References: <20230831182020.154863-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230831182020.154863-1-marex@denx.de>

On Thu, Aug 31, 2023 at 08:20:17PM +0200, Marek Vasut wrote:
> Describe VDD_ARM (BUCK2) run and standby voltage in DT.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied all, thanks!

