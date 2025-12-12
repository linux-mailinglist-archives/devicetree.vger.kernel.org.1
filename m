Return-Path: <devicetree+bounces-246024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9F9CB7DCE
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 05:29:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 73FED30274F4
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 04:29:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFAB82C11F1;
	Fri, 12 Dec 2025 04:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSAlPP7k"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4CA7279DB3;
	Fri, 12 Dec 2025 04:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765513757; cv=none; b=ONvipGda0yFNz4SdikShjlZt1IB7k6dpZrxI4ZF6PXfGyswUAV85k90hfbcK2Y4UhKOJ+HCVManJ0h5iDGI1DM52r9toZlyWzjKxxoBjTAg7fBdTAnSkqDLERAfliaDQz1FgE4t98NKc11Sel0nBIDHqr4U8ExjotNuG03XPoIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765513757; c=relaxed/simple;
	bh=LaOkItnKNcq6MgUwAYjwgRn5Y3c91Y+l9HvH31lqiMw=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=lsO+qzrLMNaboZWPoa9gFOo1zW7K8F5Yus0dC/GR20OlknW3qVZAQSnvsbtV0hBvZCSqD+OWurBWR4wzBqdIZq6WCbotUBx18dyrVTwS/2osS5QcddlKQnwx+Py4yz+JIeCuIQ7EcazhMJSI+1KvoTo4aK7fR84RbH5iaHa2rLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSAlPP7k; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C535C4CEF1;
	Fri, 12 Dec 2025 04:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765513757;
	bh=LaOkItnKNcq6MgUwAYjwgRn5Y3c91Y+l9HvH31lqiMw=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=RSAlPP7k4sSTJ8onslfWRG2uW+5erx4X0ijJtf1jPcDjusjm+RcqBtc2Xh54WnJqg
	 BhbLjBVMVoKtqPyYY1tw8JMgAB9BsMJ/mShRB5BEkIYpFMz+7fRtxFJKCtGbIrBdJ0
	 ge3xlGxN/VLKlGgf5MfqJobMiSTi1ZJ4GzbvYk9+3EgWBXsUrUyme1RANBOX/0JZFg
	 ZWoW7hrL+tq8ShffSSD6odFWMsrBp8FntYl36mmGooRhrB8aI3Dbm7HLPvQ1+M3nYE
	 uXtxPWC5HIkcHMndfXGrbcLvNRNyEJCXBoJ6cDclw0tN9bwQgTJ8w4RjBDAODmtrfc
	 2I/aWKCLMo2dg==
Date: Thu, 11 Dec 2025 22:29:14 -0600
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Xiaoshun Xu <xiaoshun.xu@mediatek.com>, 
 Vince-wl Liu <vince-wl.liu@mediatek.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Project_Global_Chrome_Upstream_Group@mediatek.com, 
 linux-arm-kernel@lists.infradead.org, 
 Sirius Wang <sirius.wang@mediatek.com>, devicetree@vger.kernel.org, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 linux-mediatek@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
 linux-kernel@vger.kernel.org
To: Xiaoshun Xu <xiaoshun.xu@mediatek.corp-partner.google.com>
In-Reply-To: <20251212031450.489128-2-xiaoshun.xu@mediatek.corp-partner.google.com>
References: <20251212031450.489128-1-xiaoshun.xu@mediatek.corp-partner.google.com>
 <20251212031450.489128-2-xiaoshun.xu@mediatek.corp-partner.google.com>
Message-Id: <176551375433.2514847.16610029422866924600.robh@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: soc: devapc: Add for support MT8189


On Fri, 12 Dec 2025 11:13:42 +0800, Xiaoshun Xu wrote:
> 
> External email : Please do not click links or open attachments until you have verified the sender or the content.
> 
> 
> From: "xiaoshun.xu" <xiaoshun.xu@mediatek.com>
> 
> Add compatible and vio-idx-num attribute of MT8189
> 
> Signed-off-by: xiaoshun.xu <xiaoshun.xu@mediatek.com>
> ---
>  Documentation/devicetree/bindings/soc/mediatek/devapc.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/mediatek/devapc.yaml: vio-idx-num: missing type definition

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20251212031450.489128-2-xiaoshun.xu@mediatek.corp-partner.google.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


