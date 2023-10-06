Return-Path: <devicetree+bounces-6584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5397BBE30
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 19:58:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B056281DB4
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 17:58:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4EE2347B3;
	Fri,  6 Oct 2023 17:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKwIEItb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86FC933982
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 17:58:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18C8CC433CA;
	Fri,  6 Oct 2023 17:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696615104;
	bh=wLekRGvd4kg2nVJYGE/aJQU67LExRJ4hntpmaO1oovE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lKwIEItboRF6SItins8qFFnAAHtJklFR5vwfGJBRx2rKUTzl3BHrx3rxMkMkFKK/E
	 7X+65dsua7+xJO87b54GFPnfvjZlefBDuQffwPzyT6Br5SYwSULl0PY54xBibllY0E
	 JPNTBFIrIONspktehpjrrN2meMx3NbqTbzdxvt4BGDabjObcNFJJ3pgHA1nrqls7TC
	 9q4r67H7o7uPhprQK0JLzfT5JI7nBlMKHpO56gp3WfYjzs+Z++tJwGMSTfOBQcMrmL
	 jezZ167hGG0HcU2cR8taZneLuJKuCSBBfmpVP1imDxE1zjy8n6GZD1agAeFl/6uMqK
	 EXOeKaDp08RLA==
Received: (nullmailer pid 72249 invoked by uid 1000);
	Fri, 06 Oct 2023 17:58:22 -0000
Date: Fri, 6 Oct 2023 12:58:22 -0500
From: Rob Herring <robh@kernel.org>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Kevin Hilman <khilman@baylibre.com>, Neil Armstrong <neil.armstrong@linaro.org>, linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Da Xue <da.xue@libretech.co>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: amlogic: add libretech
 cottonwood support
Message-ID: <169661510170.72194.9933533745144399283.robh@kernel.org>
References: <20231006103500.2015183-1-jbrunet@baylibre.com>
 <20231006103500.2015183-2-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006103500.2015183-2-jbrunet@baylibre.com>


On Fri, 06 Oct 2023 12:34:59 +0200, Jerome Brunet wrote:
> Add compatibles for the Libretech cottonwood board family
> 
> Co-developed-by: Da Xue <da.xue@libretech.co>
> Signed-off-by: Da Xue <da.xue@libretech.co>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


