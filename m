Return-Path: <devicetree+bounces-2600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C3B7ABA8F
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 22:34:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 4D0101C208E3
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 20:34:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11E9641762;
	Fri, 22 Sep 2023 20:34:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0183F22F00
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 20:34:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72898C433C7;
	Fri, 22 Sep 2023 20:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695414844;
	bh=fh2nzdkaUADt+b/Vyqr/huEqEK6lXWqUFIL1/jW11c0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DH5lhYXNzlO+ew3BUXFcOyJVuqVlPYo3WqNuWFm/OHXzIDzy18hNBGYFi53/vn15p
	 EQEdNv/92IRzaq6rcTmmpMlX9lnfyDQQbvla9PXqrOcISvvOwYuNjH6E7VFj3uAqNM
	 s4ncS6i0SB3vS2RIAia7aFy9kfiLkpmlKpfmRFlVQjB2mG0/nvFHlcVGd1kkInVrS0
	 DmlRMqsXq17SIS3ZsR1CAtfO7wk5+9XbLmbwxkK7tCKnetrEqjzJ0Zqzp4tcUOsL2v
	 23DRjr7NCyLi1z8NlHNnD96ulbiEZgRB5hC1vsOA2EHwMdzkER3j1XUYdEc76pNAZC
	 IWehZMuivn4Uw==
Received: (nullmailer pid 3535433 invoked by uid 1000);
	Fri, 22 Sep 2023 20:34:02 -0000
Date: Fri, 22 Sep 2023 15:34:02 -0500
From: Rob Herring <robh@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley <conor@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH] dt-bindings: riscv: cpus: Add missing
 additionalProperties on interrupt-controller node
Message-ID: <169541483923.3535328.3111610827495188975.robh@kernel.org>
References: <20230915201946.4184468-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230915201946.4184468-1-robh@kernel.org>


On Fri, 15 Sep 2023 15:19:36 -0500, Rob Herring wrote:
> The "interrupt-controller" CPU child node is missing constraints on
> extra properties. Add "additionalProperties: false" to fix this.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!


