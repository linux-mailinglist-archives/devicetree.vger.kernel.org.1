Return-Path: <devicetree+bounces-6574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9887BBD65
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 18:59:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 451A8281BDE
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 16:59:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A47052AB38;
	Fri,  6 Oct 2023 16:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D25LSNZb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872A128E03
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 16:59:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B528BC433C8;
	Fri,  6 Oct 2023 16:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696611570;
	bh=XTOhAODJ0nu3rRz5Q+XkYzDl0/6KlZeZubRu0IJN6lo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D25LSNZbgitfyeTwZoCl/0W37aILce9NLNSJX8HCUtvRJLnLQud2KRl95b7mUG3kX
	 azeguVm4yPiaoLUiXrvODIP3wAk/+xoYA1r/WumEaouVE+++UTY9Kejz2AJA3T9HPF
	 UnT/doQEpfH6Owa1UN6MVlCWJxlv8uwAwnExCRy6xVkUci4s/g4FLVu90CUEktOUsb
	 +cymHF7+Yw0W/15l3i3oqhhYKuUmat9tFYd5lHU0fFZoNJAF1iDs/gD7FRNuQDV29A
	 gFB2FPq+p3l40Tc7kAV0LeEJr7UNr7kWMGkRF+iQFPAzABDUfM8oj/KrfL2HQxMpgb
	 lYa18lyqwsfmQ==
Received: (nullmailer pid 4070229 invoked by uid 1000);
	Fri, 06 Oct 2023 16:59:28 -0000
Date: Fri, 6 Oct 2023 11:59:28 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jiri Slaby <jirislaby@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-serial@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Andreas Kemnade <andreas@kemnade.info>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Linus Walleij <linus.walleij@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH 2/2] dt-bindings: serial: allow naming of Bluetooth with
 GPS children
Message-ID: <169661156826.4070185.14168502845724693794.robh@kernel.org>
References: <20231005093247.128166-1-krzysztof.kozlowski@linaro.org>
 <20231005093247.128166-2-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231005093247.128166-2-krzysztof.kozlowski@linaro.org>


On Thu, 05 Oct 2023 11:32:47 +0200, Krzysztof Kozlowski wrote:
> Some devices attached over UART combine Bluetooth and GNSS/GPS receiver,
> so allow "bluetooth-gnss" naming of children nodes.
> 
> Link: https://lore.kernel.org/all/20231004070309.2408745-1-andreas@kemnade.info/
> Suggested-by: Andreas Kemnade <andreas@kemnade.info>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/serial/serial.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


