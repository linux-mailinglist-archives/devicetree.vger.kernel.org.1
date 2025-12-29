Return-Path: <devicetree+bounces-250314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D1ADECE85B3
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 00:42:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D12D3013572
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 23:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B33602E62DC;
	Mon, 29 Dec 2025 23:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oaAU3kYo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A79B23FC5A;
	Mon, 29 Dec 2025 23:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767051777; cv=none; b=Ov0+Y8FLYjP36rMexDlXv3DmnCBTSdY50Vg4cBF+jgTFWnpFfPxJQXnMd8AJsNh/O4NVoXpzonp1vwXsmGdMcUkzlLDvTGbV4DWkF5V7tg1R2rRXG6FUNtGeA5vWTzQpZmfz7OOp2s2uC3oF/fE+c1dKi0t3HIJEA1PwYci03d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767051777; c=relaxed/simple;
	bh=TVTtzPN7iGU0L+GxB2qxYDseMAg9L/Mo6+0/69YF7QY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eWQ73EEhBdLvvAo182YNhDyWtafe3jJYi6K88BQeZ3oW73tBKREm57OHo/2Un1Ar50K5HKW0PKv/WmDsKdnVVzoWZEcKfpXjp/7pf0Nlf6snG0SCNCuqNCnb/GYaU/py+m0SEn43gTFcR8h6OciVYAG/ylYLxq/aDcJ8cPOggk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oaAU3kYo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1396C4CEF7;
	Mon, 29 Dec 2025 23:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767051777;
	bh=TVTtzPN7iGU0L+GxB2qxYDseMAg9L/Mo6+0/69YF7QY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oaAU3kYonyLKqBlk2yQcvrsXmXBRDXwlss3iMtl/g/bdjc2V4TprMqHIdbAf4cCnf
	 rfDpukakTcAxhSYh8aejRjjr+tkCWIk66WYwTzXlvQDELDvKoUlzP6iFQawWIR+0fS
	 X6urplCS5qqQegmBAwbVRSEHRiynt++7B8HFtVUd89DUMv/gpml8Ar+BI/lfoF4yi4
	 KHLXOkPwGfDFSg16lG4pppm7t6lf0Qa8oc+Ff5FABaQOWW+UGSbLxA5Mwg4wG3T07J
	 ZEv7Hj5PMoyqZ9LJ1a+hGu6XNBSvaqQDeyipWGQt4ozT8VZ5nq41TDKGkvI7q1nNg6
	 /9S1jkrAMEq1A==
Date: Mon, 29 Dec 2025 17:42:56 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	MandyJH Liu <mandyjh.liu@mediatek.com>,
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: mediatek: Drop inactive MandyJH Liu
Message-ID: <176705177359.2804367.15136995230648619621.robh@kernel.org>
References: <20251219074035.13001-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251219074035.13001-2-krzysztof.kozlowski@oss.qualcomm.com>


On Fri, 19 Dec 2025 08:40:36 +0100, Krzysztof Kozlowski wrote:
> There are no emails from MandyJH Liu, no reviews [1] of these bindings, so
> clearly no maintenance is happening here.  Switch to Mediatek SoC
> maintainers.
> 
> Cc: MandyJH Liu <mandyjh.liu@mediatek.com>
> Link: https://lore.kernel.org/all/?q=f%3Amandyjh.liu%40mediatek.com [1]
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/mfd/mediatek,mt8195-scpsys.yaml        | 3 ++-
>  .../devicetree/bindings/power/mediatek,power-controller.yaml   | 2 +-
>  2 files changed, 3 insertions(+), 2 deletions(-)
> 

Applied, thanks!


