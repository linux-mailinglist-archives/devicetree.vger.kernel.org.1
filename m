Return-Path: <devicetree+bounces-134471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C08CA9FD9BF
	for <lists+devicetree@lfdr.de>; Sat, 28 Dec 2024 11:07:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D21B27A22A6
	for <lists+devicetree@lfdr.de>; Sat, 28 Dec 2024 10:07:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7921C13B280;
	Sat, 28 Dec 2024 10:07:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FePsOUxE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD31136E09;
	Sat, 28 Dec 2024 10:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735380468; cv=none; b=mp24VXofBt9WojpdWPXNx7GWJC+h+6gR7f/kaHqitp6ScaotkcN5MaSJV9B9nSTe/9hAr0QW1Lf0PpoIMrYTbzygSU7I600He2LMNA9UWu8YkwanciDz/O/jBT7+HpII9pw8eC77QzwOFU1k1+Qdi3uIkzD0RELR6MidXM+blxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735380468; c=relaxed/simple;
	bh=/4bgWVBd69cDnBnv2kPWPDo7b8Wmhz/t9s4lQNfpEkg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YtlFbG0RyTHx7BP3vssTqJ89mZ2eApa8/LCFfW+TdCbtFi+yFtP1heTzddGX/5ZTg6nBaRdBmbl/RIGbEPamV6kZezXaBw6QQADaERJ3gu+NYhSb/SkhKvCiiYysA9BQFwobQ1fSRxRzBKWnl5VZObSWjjRZ0DCOCYNZywoC/eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FePsOUxE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12B8EC4CECD;
	Sat, 28 Dec 2024 10:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735380467;
	bh=/4bgWVBd69cDnBnv2kPWPDo7b8Wmhz/t9s4lQNfpEkg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FePsOUxEHorR0kyGbcVZsELjlzRTe9KEsN+2LD5f3YkMAmJN8Om6O+6yy3/gmrWH+
	 4s9w4sfHfmp9Dgi51VThztmA1O/pT3ZniRnDjzG8IYOAToZcn3C99+xVJPgNDvzv5M
	 xDa9xD7xc1zjIBYORL1DE00FqCfSkmTlO4ZoTsX0uKRpExk9jxNwuRLgOIRfCrsvBk
	 c4G3FuJfTbH2V/7nbRpZ5YZ9jzFLT/tQjFYF+7F6c+qq+9bpuDXBon894BhAiYmIMs
	 9vBoOG1D9tOt4FH8c91t6C6dJr+bS6diWi9iguUvM6ZJT/j1rsfJ9dUuI/pgFgVphv
	 XucKQHukH/9Iw==
Date: Sat, 28 Dec 2024 11:07:44 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Singo Chang <singo.chang@mediatek.com>, 
	Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, 
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Project_Global_Chrome_Upstream_Group@mediatek.com, Fei Shao <fshao@chromium.org>, 
	Pin-yen Lin <treapking@chromium.org>
Subject: Re: [PATCH v3 1/4] dt-bindings: display: mediatek: ovl: Add
 compatible strings for MT8188 MDP3
Message-ID: <364cot4pxfneirzw5cc3oazy4dpvgmze67gsncpqi7kz7sqadr@qjd2buftiwtr>
References: <20241219181531.4282-1-jason-jh.lin@mediatek.com>
 <20241219181531.4282-2-jason-jh.lin@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241219181531.4282-2-jason-jh.lin@mediatek.com>

On Fri, Dec 20, 2024 at 02:15:28AM +0800, Jason-JH.Lin wrote:
> Add compatible strings for the MDP3 OVL hardware components in
> MediaTek's MT8188 SoC and it is compatible with the existing
> MT8195 MDP OVL components.
> 
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> Suggested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,ovl.yaml     | 3 +++
>  1 file changed, 3 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


