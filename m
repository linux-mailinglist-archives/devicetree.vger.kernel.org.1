Return-Path: <devicetree+bounces-6573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 197047BBD60
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 18:58:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C908E281E83
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 16:58:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68DB52AB20;
	Fri,  6 Oct 2023 16:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIge65iu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C099273C5
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 16:58:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 488DFC433C7;
	Fri,  6 Oct 2023 16:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696611521;
	bh=NFj4vVc1fCIclAhI8pfhw7GEj2uuK7WTrV8YlLj1+g4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rIge65iud54gSg3U/szqIbnED9Y6mLJgsTie67JsedpY2Zo/62YlyIDGGQ4p9qNdt
	 0cPNLtjSP+tgu1FbLUG2n1BtphDA610LRdel+/LcxrsLGAZfsg+R8uSdhTZiy8f2vm
	 p9d537E7CR1abE765/vsyspVA24OkhLAe04MHiW22TWwIjDBg/faSocTOHzoo24oO8
	 zVR0liAs8eQs/F9AbpnUeDgINt7w1nAQyXViwVRM8StyU7+zgCRYG9cadaCBW9QJ9f
	 sL2AawGL3i4BNrjCey/gFhnLu8yJ4vPt9MgWT1ocDfFCL00Pq2T4OrWzCbS8AVnjm6
	 f8Ae6rfSThs3g==
Received: (nullmailer pid 4069262 invoked by uid 1000);
	Fri, 06 Oct 2023 16:58:39 -0000
Date: Fri, 6 Oct 2023 11:58:39 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, Andreas Kemnade <andreas@kemnade.info>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-serial@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jiri Slaby <jirislaby@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: serial: fix regex pattern for matching
 serial node children
Message-ID: <169661151881.4069209.6322844044130586278.robh@kernel.org>
References: <20231005093247.128166-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231005093247.128166-1-krzysztof.kozlowski@linaro.org>


On Thu, 05 Oct 2023 11:32:46 +0200, Krzysztof Kozlowski wrote:
> The regular expression pattern for matching serial node children should
> accept only nodes starting and ending with the set of words: bluetooth,
> gnss, gps or mcu.  Add missing brackets to enforce such matching.
> 
> Fixes: 0c559bc8abfb ("dt-bindings: serial: restrict possible child node names")
> Reported-by: Andreas Kemnade <andreas@kemnade.info>
> Closes: https://lore.kernel.org/all/20231004170021.36b32465@aktux/
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/serial/serial.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


