Return-Path: <devicetree+bounces-19144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E4B7F9D48
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 11:16:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 359F5B20CE7
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 10:16:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4D3B182C4;
	Mon, 27 Nov 2023 10:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=8bytes.org header.i=@8bytes.org header.b="vcyfY41G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.8bytes.org (mail.8bytes.org [85.214.250.239])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9EE59EA;
	Mon, 27 Nov 2023 02:16:00 -0800 (PST)
Received: from 8bytes.org (p4ffe1e67.dip0.t-ipconnect.de [79.254.30.103])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.8bytes.org (Postfix) with ESMTPSA id B99B91A6DDA;
	Mon, 27 Nov 2023 11:15:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=8bytes.org;
	s=default; t=1701080160;
	bh=eAhgPje9vHibRmObvDpBzw2Pjvc6FHaCkUAWpn5/+o8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vcyfY41GS/4Z36EIYT5/OLQA3/PW2Pr3LoAaoonYmdaf6O/GcFJys50/WPm5m9cPe
	 8mcSG1A5IqMVYpgG/mqbH2nAWUEVUZfYG3PhPeAK5NElUlX5KJUZnF7WiK3aKAi2+T
	 XbTfaY8EhFlIg+WNgHJWgbMtLl3yHoszK+Rw2H6N1bzkdHNIYb8LY2lGe2DHkwPwPI
	 qaxKC9iy0in/VG5RpHZ/59CfM0vsmBmvx99KVGlYfaYdbnthdsdJGIrn49V6p5nF5v
	 wyV0zDAavbxB0xWxNJhciPYomQwU5VCGIawM3aawKmxusN6BQCUwdz9e1OzawAY7cT
	 38UIGr/oFmMnw==
Date: Mon, 27 Nov 2023 11:15:58 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Sven Peter <sven@svenpeter.dev>
Cc: Hector Martin <marcan@marcan.st>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	linux-arm-kernel@lists.infradead.org, asahi@lists.linux.dev,
	iommu@lists.linux.dev, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 0/3] Apple M1 USB4/Thunderbolt DART support
Message-ID: <ZWRsXm7fFCODruj0@8bytes.org>
References: <20231126151701.16534-1-sven@svenpeter.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231126151701.16534-1-sven@svenpeter.dev>

On Sun, Nov 26, 2023 at 04:16:58PM +0100, Sven Peter wrote:
> Sven Peter (3):
>   dt-bindings: iommu: dart: Add t8103-usb4-dart compatible
>   iommu: dart: Write to all DART_T8020_STREAM_SELECT
>   iommu: dart: Add support for t8103 USB4 DART
> 
>  .../devicetree/bindings/iommu/apple,dart.yaml |  1 +
>  drivers/iommu/apple-dart.c                    | 35 +++++++++++++++++--
>  2 files changed, 34 insertions(+), 2 deletions(-)

Applied, thanks.

