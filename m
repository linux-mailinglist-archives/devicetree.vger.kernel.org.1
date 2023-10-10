Return-Path: <devicetree+bounces-7071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 431C47BF03F
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 03:28:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7391D1C20A6B
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 01:28:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACA66396;
	Tue, 10 Oct 2023 01:28:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIF8CTBU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FCEA38E
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 01:28:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C236C433C8;
	Tue, 10 Oct 2023 01:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696901283;
	bh=qLa+1p3hFEH4C5ncA+dpVsciI1PmFmGO7c6LI3RdMhU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RIF8CTBU8X8dT/MdlyzXG7kM2jD4t7+yrpDuU11h7m0HBY6kuvPFDDQ9GDywWiPCe
	 cW2pEz/wbBCa17Z+H97q3wDJqn7/MfI/yHJX6vZdoz1WCR0LrBZY2r7g081Awp71JG
	 tBLKO1TxdkHnQ5vp+gm6zmMDY+yqlSJ2E+03rEd997bz2EGnr8dT4OPW0zvPwIbQf+
	 X/m0wmWESQqle15i/hzMqs145sJ6hzD8zgNOG9Qm+uxQJg5WjVfbrwL5fZqSyzbUM/
	 O0zoiWhSjs2U2v5siGh013zIn8abFoIxEbzkhbVMIQw72kAIMClPG4GLXvtmt+5kwG
	 wVK5vSNimXTpA==
Date: Tue, 10 Oct 2023 09:27:53 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Tim Harvey <tharvey@gateworks.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH v2] arm64: dts: imx8mm-venice-gw73xx: add TPM device
Message-ID: <20231010012753.GQ733979@dragon>
References: <20230928201328.1945960-1-tharvey@gateworks.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230928201328.1945960-1-tharvey@gateworks.com>

On Thu, Sep 28, 2023 at 01:13:28PM -0700, Tim Harvey wrote:
> Add the TPM device found on the GW73xx revision F PCB.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>

Applied, thanks!

