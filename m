Return-Path: <devicetree+bounces-19040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A55167F9797
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 03:44:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F651280CE7
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 02:44:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60655139A;
	Mon, 27 Nov 2023 02:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5pkiw6d"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44767A3F
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 02:44:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9C87C433C9;
	Mon, 27 Nov 2023 02:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701053041;
	bh=7Q1Qx7ZpLNvlbsCCkhDsZ4gRF/0ixQKTOnZ5pDBPdvk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S5pkiw6dNZ0lQpd4OPrV1Tejnk/KjJfBmytpGP6FhD87ncpOYLjNDKHSNdIa3opEj
	 +W9iZ3l76AaeAwhFBU5h/3eioNa4AVTfWyuEmYbnLzj/9zppmxNbL2gXi7i+EYBxrb
	 gotOnUetKnPr88kHTK8LyniF7pjcdIAz97q6mxotPtBA1PfTFWV5SVi7aeEkMZc7in
	 J7acibPjJnKkGAw277Q//J2WYkjDUisDZxv2mEPGiOstTwx1hnVcGsjURF3LEMHlMz
	 l/YqKOEvJ0FY8NaODH7BqGhwYS39UqHx8eBA29yG/d9X3UQLBFIwE9OYlzE5dtYT6Z
	 cSkJ3+4CcElrw==
Date: Mon, 27 Nov 2023 10:43:56 +0800
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
Subject: Re: [PATCH] arm64: dts: imx8mp-venice-gw74xx: remove unecessary
 propreties in tpm node
Message-ID: <20231127024356.GO87953@dragon>
References: <20231018181028.2164419-1-tharvey@gateworks.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231018181028.2164419-1-tharvey@gateworks.com>

On Wed, Oct 18, 2023 at 11:10:28AM -0700, Tim Harvey wrote:
> Remove unnecessary #address-cells and #size-cells from tpm node.
> 
> Fixes: commit 531936b218d8 ("arm64: dts: imx8mp-venice-gw74xx: update to revB PCB")
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>

Applied, thanks!

