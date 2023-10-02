Return-Path: <devicetree+bounces-5248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E7A7B5B25
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 21:20:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7C6F12829B3
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:20:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 729921F92D;
	Mon,  2 Oct 2023 19:20:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620FE1F92A
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 19:20:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDA7AC433C8;
	Mon,  2 Oct 2023 19:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696274419;
	bh=VQ45G7PYlL0FP/UIakxyWuwF9DPXgSI52rIbqA5VkiA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P/3zTldmAvtvA6Dupg185llQZT3c+BZdhuLzSBPvA25QSnATf5zk+lekQjHRBPDIA
	 pnzVH3mh1kd+fcYfcWAr+5s9JLiTe6h3JTUjHgyUdInFfLaMiPKZ0USzW6pNj+Q1Wo
	 Cy2xLkTKOYN3ZHWWTXMX1afdQz+BpFv1/ZGfNUIc9YqRYeoBFNsJrGMBKnkzkh9r24
	 uMZpHIYXPy4QZM+VaZvTNcj5NK7f1FzBee49Ai5qs49NO4C4Q2p5CiB2u9aUz5YvYF
	 KKHGSFmiJ0YJcSdtxZKKexR8BdhI+TheZHS67r+ekHkbo053RgixC+IlUSpCi1Ih2I
	 tg8zJGpdhC4cQ==
Received: (nullmailer pid 2379910 invoked by uid 1000);
	Mon, 02 Oct 2023 19:20:18 -0000
Date: Mon, 2 Oct 2023 14:20:18 -0500
From: Rob Herring <robh@kernel.org>
To: Bragatheswaran Manickavel <bragathemanick0908@gmail.com>
Cc: broonie@kernel.org, alsa-devel@alsa-project.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, conor+dt@kernel.org, lgirdwood@gmail.com, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Subject: Re: [PATCH v2] ASoC: dt-bindings: rt5616: Convert to dtschema
Message-ID: <169627441749.2379855.17500143382668612525.robh@kernel.org>
References: <20230930165050.7793-1-bragathemanick0908@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230930165050.7793-1-bragathemanick0908@gmail.com>


On Sat, 30 Sep 2023 22:20:50 +0530, Bragatheswaran Manickavel wrote:
> Convert the rt5616 audio CODEC bindings to DT schema
> 
> Signed-off-by: Bragatheswaran Manickavel <bragathemanick0908@gmail.com>
> ---
> V1 -> V2: Changes codec to audio-codec and added spacing above
> 
>  .../bindings/sound/realtek,rt5616.yaml        | 49 +++++++++++++++++++
>  .../devicetree/bindings/sound/rt5616.txt      | 32 ------------
>  2 files changed, 49 insertions(+), 32 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/realtek,rt5616.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/rt5616.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>


