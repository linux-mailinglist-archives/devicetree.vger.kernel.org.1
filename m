Return-Path: <devicetree+bounces-5154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A477B571B
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:10:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2D7DA282FD0
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 277921DA26;
	Mon,  2 Oct 2023 16:10:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B3E1CF84
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 16:10:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7353DC433CA;
	Mon,  2 Oct 2023 16:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696263026;
	bh=CfIUOjCxqP4k4PEwlJ3KWN+LSN/aN14INr8PFuBU1gc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KmUE24gWThX+EImHY5hV0v2pHMvLxkeVCnJHZ00Ae79HwxE+sH2xf6rO2icIcHLhQ
	 kuA8UeyUFpfQ/Rrv+WrhFR6u7+HlluCNkxLc4ZGuJMo6ouClZnoRU0/L+Ut0StCG1e
	 5n4Ol+PmGUNzV6aqmJVwDPZALnTtEvbd+avoD6v6N4vnmHmz5N+IBuujSzUmrpCZDw
	 l8m09QHqaE7NDsWQ1m3Bs0PjPWniEVLWZCZC4jYP1wsgovVnDW1IDYO+nbEOFjt43z
	 OafuSZjskWKxClwam76QWAaOnQfrNih7e5z+BOBN71TRiC/9F2lZry67Vc+t11BfAW
	 RxMXo9xuRonwQ==
Received: (nullmailer pid 1867798 invoked by uid 1000);
	Mon, 02 Oct 2023 16:10:24 -0000
Date: Mon, 2 Oct 2023 11:10:24 -0500
From: Rob Herring <robh@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Conor Dooley <conor+dt@kernel.org>, linux-mediatek@lists.infradead.org, Lee Jones <lee@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>, Zhiyong Tao <zhiyong.tao@mediatek.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 02/12] regulator: dt-bindings: mt6358: Convert to DT
 schema
Message-ID: <169626302358.1867415.15357334455488086427.robh@kernel.org>
References: <20230928085537.3246669-1-wenst@chromium.org>
 <20230928085537.3246669-3-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230928085537.3246669-3-wenst@chromium.org>


On Thu, 28 Sep 2023 16:55:25 +0800, Chen-Yu Tsai wrote:
> Convert this from the old style text based binding to the new DT schema
> style. This will make adding the MT6366 portion easier.
> 
> The examples have been trimmed down considerably, and the remaining
> entries now match what is seen in actual device trees, minus some
> properties that aren't covered by the bindings yet, or don't make
> sense on their own.
> 
> The original submitter seems to have left MediaTek, so instead the
> submitter and maintainer for the MT6366 binding is listed as the
> maintainer here.
> 
> Cc: Zhiyong Tao <zhiyong.tao@mediatek.com>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
> Changes since v3:
> - ldo_vxo22 and ldo_vusb moved to properties
> 
> Changes since v2:
> - Added missing end-of-string match to regulator names
> - regulator-coupled-* properties in example dropped
> - #include and regulator-allowed-modes moved to new patch
> 
>  .../regulator/mediatek,mt6358-regulator.yaml  |  98 +++++
>  .../bindings/regulator/mt6358-regulator.txt   | 350 ------------------
>  2 files changed, 98 insertions(+), 350 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/regulator/mediatek,mt6358-regulator.yaml
>  delete mode 100644 Documentation/devicetree/bindings/regulator/mt6358-regulator.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>


