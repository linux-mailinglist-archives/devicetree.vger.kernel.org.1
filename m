Return-Path: <devicetree+bounces-5161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E5E7B57CB
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:16:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 6B976B20B47
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A61D71DA34;
	Mon,  2 Oct 2023 16:16:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9313B1A711
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 16:16:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3341BC433C8;
	Mon,  2 Oct 2023 16:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696263405;
	bh=lDvldFCWk2idedyrSgHG4u7/zWcFe+Xb56KnYgWD1Ok=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F4BtuvX3F1ntIptvwM7mKdBk2zeRrUy6L9xiALEOoOG9SOAlFExYYUbjC6Oe0EQQJ
	 6i+YmwYxbMaDqlSrMAWo1H6ml5o0DQQaUv8+Qpr1uvqgIOanyWcFiiLzokC7i3lGn1
	 qOtUHPkJs2JEeyBXBa2pcNFt+j2Mj++YrOS1E3D06aXrBeq28yIDGtsfjR127+P2A0
	 MZa2E0QoQfnQwIWxZcJ6p9w3xZJkJooZS5nNwuFCdUg/T1nesNjbCJdrEhEHBp8Clb
	 cNfwHgVaU+vl2VuZ5KjGk+Mk8iJeivmq4WdYCf9vEAoCIi/sPia7KNAdSeiJN7zNjW
	 pnpV6rrknMppQ==
Received: (nullmailer pid 1885250 invoked by uid 1000);
	Mon, 02 Oct 2023 16:16:43 -0000
Date: Mon, 2 Oct 2023 11:16:43 -0500
From: Rob Herring <robh@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Conor Dooley <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>, Zhiyong Tao <zhiyong.tao@mediatek.com>, Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, Lee Jones <lee@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [PATCH v4 04/12] regulator: dt-bindings: mt6358: Add regulator
 supplies
Message-ID: <169626340260.1885194.4720375759009776410.robh@kernel.org>
References: <20230928085537.3246669-1-wenst@chromium.org>
 <20230928085537.3246669-5-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230928085537.3246669-5-wenst@chromium.org>


On Thu, 28 Sep 2023 16:55:27 +0800, Chen-Yu Tsai wrote:
> The MT6358 PMIC has various regulator power supply pins that should be
> supplied from external power sources or routed from one of its outputs.
> 
> Add these regulator supplies to the binding. The names are the actual
> names from the datasheet, with hyphens replacing underscores.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
>  .../regulator/mediatek,mt6358-regulator.yaml  | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


