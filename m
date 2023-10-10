Return-Path: <devicetree+bounces-7077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C627BF0BE
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 04:19:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6672A28167B
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 02:19:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 713DC81E;
	Tue, 10 Oct 2023 02:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cn/Od//D"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472CA7F0
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 02:19:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A51C7C433C8;
	Tue, 10 Oct 2023 02:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696904360;
	bh=isG3Fa6ApHHdE7JhYIYsKZ6nDW2Wv1sB+aWPuiKySrw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Cn/Od//DQjDNmsM29PunZtiIerpn34+QUww61e5IbuD0bLb7+OHN0UZF38cXv4Wp7
	 AlgX/l5kztmuQ7s3Di3FOxdp2HfJ/ZBkSo4e/osdT/AFHxa12jVm3yoO/Ohx6QDzjk
	 yLb+enCQnxrR12XkMly1R+hEx9lC3vVaq5PO2wiTWeiUCbAvMhCWCp7FSUeKONFxQ9
	 Ai33pOY8Po7jTEL+961ycKWbqV3wb5DCMtuzZTwK1IweaETBqSV/z0Zn0AnU57ekFW
	 gVIu8DQZxguoPCRpSoAVhglUdaHz6OsVLo6bc0zOqysp2oUIbShmOaqgvR3Jk61XxD
	 1vhoXBUcqHErA==
Date: Tue, 10 Oct 2023 10:19:07 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Gregor Herburger <gregor.herburger@ew.tq-group.com>
Cc: Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux@ew.tq-group.com,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 0/5] TQMLS10xxA support
Message-ID: <20231010021907.GH819755@dragon>
References: <20231002-for-ml-tqmls10xxa-v2-test-v3-0-402819b9a29b@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231002-for-ml-tqmls10xxa-v2-test-v3-0-402819b9a29b@ew.tq-group.com>

On Mon, Oct 02, 2023 at 10:43:49AM +0200, Gregor Herburger wrote:
> Gregor Herburger (5):
>       arm64: dts: ls1043a: remove second dspi node
>       dt-bindings: arm: fsl: Add TQ-Systems LS1043A/LS1046A based boards
>       arm64: dts: freescale: add initial device tree for TQMLS1043A/TQMLS1046A
>       dt-bindings: arm: fsl: Add TQ-Systems LS1088 based boards
>       arm64: dts: freescale: add initial device tree for TQMLS1088A

Applied all, thanks!

