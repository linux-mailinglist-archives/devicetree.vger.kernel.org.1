Return-Path: <devicetree+bounces-7078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4907BF0C9
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 04:22:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 15B351C209F7
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 02:22:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FD9381E;
	Tue, 10 Oct 2023 02:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8Te2yZD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D517F0
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 02:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09EB4C433C8;
	Tue, 10 Oct 2023 02:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696904529;
	bh=ut+LM5Yf8/DRNRKaXkXaCaT13oHwtFjxMTdx39BVx4Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g8Te2yZDb2jJyDqYjPUAf0y90DpqZP4C/VLyHHhDvu50/wzVFwd6sKg68iEWwLlPV
	 eE8mNgqcF2P3Vh4/+9XeEdJ0JteJGZMVAei3zZi9YKccWtCUsiK7wfj1gyET0wSy2g
	 3TgUTZdvUIhSW6MlGWyipC/rC6VHkna+XnTYN94+ln9PTmcvm93CXz+IjsEGq1TOqg
	 P/k5OxSk/AdemQvQ1NKAGtIquGaDMp9zuitJCy5be7TG12jdt+RgECab55UEwZAVUr
	 JL3SeK1084zRMdNlIfiPkOej0JEBsAcF0hb5mSXCnUnVcZQry6OHYIzdvASEPmCFhD
	 wA+NDmGlQ8s7w==
Date: Tue, 10 Oct 2023 10:21:58 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, aford@beaconembedded.com,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: imx8mm: Add sound-dai-cells to micfil
 node
Message-ID: <20231010022158.GI819755@dragon>
References: <20231004230159.33527-1-aford173@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231004230159.33527-1-aford173@gmail.com>

On Wed, Oct 04, 2023 at 06:01:58PM -0500, Adam Ford wrote:
> Per the DT bindings, the micfil node should have a sound-dai-cells
> entry.
> 
> Fixes: 3bd0788c43d9 ("arm64: dts: imx8mm: Add support for micfil")
> Signed-off-by: Adam Ford <aford173@gmail.com>

Applied both, thanks!

