Return-Path: <devicetree+bounces-7072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB587BF041
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 03:28:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3F7151C20AA2
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 01:28:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ECCF659;
	Tue, 10 Oct 2023 01:28:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkzdJXF6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33702621
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 01:28:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 798A2C433C7;
	Tue, 10 Oct 2023 01:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696901306;
	bh=TLlwIHP3MWnMGtGEksM71x3c/26h+IpM/6jx10p9hgs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XkzdJXF6gQzwwkio4Dd/r2oRfkN4P19bfIBCmSzCHP1piR8FK867nA0n16qjA04l+
	 ac1IJPMg/mIJB/O+iDGGRyK27SqgeESLHpL3S/mnyYJZlbjhu9z/zfVhJPVlXv4Rtf
	 aLmtTeblI6VQi8ULVijqT1kesxi4/xHVfzQsrELqvuc4mXbzqrETgrexjjHSgjNAPH
	 WteVetZnHjF4R74322mMVCgfnafOIpjeBlSJcqAL3SpTUBoqCq7SYKQ/3vwuk5DoSA
	 RiOJlAs2DpFSQ2aSBKaiNf+R8sVVB9x5OP1JS/Ux9Ypo2mloD8dqF9KziH3saYcm0l
	 m62NWoYeWhXzg==
Date: Tue, 10 Oct 2023 09:28:15 +0800
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
Subject: Re: [PATCH v2] arm64: dts: imx8mp-venice-gw73xx: add TPM device
Message-ID: <20231010012815.GR733979@dragon>
References: <20230928201354.1946035-1-tharvey@gateworks.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230928201354.1946035-1-tharvey@gateworks.com>

On Thu, Sep 28, 2023 at 01:13:54PM -0700, Tim Harvey wrote:
> Add the TPM device found on the GW73xx revision F PCB.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>

Applied, thanks!

