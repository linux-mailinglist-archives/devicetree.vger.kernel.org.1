Return-Path: <devicetree+bounces-1980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 011727A9588
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 17:29:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 129C01C20A89
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 15:29:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C11E199B1;
	Thu, 21 Sep 2023 15:29:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D3E20E7
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 15:29:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 384D9C4E753;
	Thu, 21 Sep 2023 15:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695310162;
	bh=YRubwqeTifeA4hxGDHOuj3A8llGfWe15Yg+vIKGo/KQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ghtZJW51nFyAJbX8IGGmWPHaVMTGDhpshg6uJhfm7ecaKMeYV7ZmNy3VqvcLpSBb0
	 GlAoeOI+Xx17lJtCZt+tfA1ZzftsqVr8begb0yUvT19DqS2WOg04Uy4i+zYBjhbQjG
	 oVni6z/QpNlEIwEcSWtbdc/ninRqMKbgaePXgOqjMITBM8uekywf/IDe2QVxY98LmZ
	 pKkF4CTrIntIUYEvNgdeHO+1yhwGM/Mi4spQIHyQYhipOCmNmnOgeEKrQxaKHd1oVg
	 BPDMkeqVNMaNgvjbjZBPxHYC1f8tUMy0ZPesZrNH1ifVfWJceeVcgathtCddib6kxv
	 8OMM2htV20Pog==
Received: (nullmailer pid 378728 invoked by uid 1000);
	Thu, 21 Sep 2023 15:29:21 -0000
Date: Thu, 21 Sep 2023 10:29:21 -0500
From: Rob Herring <robh@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: input: gpio-keys: Allow optional
 dedicated wakeirq
Message-ID: <20230921152921.GA160147-robh@kernel.org>
References: <20230920115044.53098-1-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230920115044.53098-1-tony@atomide.com>

On Wed, Sep 20, 2023 at 02:50:43PM +0300, Tony Lindgren wrote:
> Allow configuring an optional dedicated wakeirq for gpio-keys that
> some SoCs have.
> 
> Let's use the common interrupt naming "irq" and "wakeup" that we already
> have in use for some drivers and subsystems like i2c framework.
> 
> Note that the gpio-keys interrupt property is optional. If only a gpio
> property is specified, the driver tries to translate the gpio into an
> interrupt.
> 
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
> 
> Changes since v1:
> 
> - Run make dt_binding_check on the binding
> 
> - Add better checks for interrupt-names as suggested by Rob, it is
>   now required if two interrupts are configured
> 
> - Add more decription entries
> 
> - Add a new example for key-wakeup
> 
> ---
>  .../devicetree/bindings/input/gpio-keys.yaml  | 41 ++++++++++++++++++-
>  1 file changed, 40 insertions(+), 1 deletion(-)

With the indentation fixed,

Reviewed-by: Rob Herring <robh@kernel.org>

