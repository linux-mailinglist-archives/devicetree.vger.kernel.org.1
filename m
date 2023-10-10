Return-Path: <devicetree+bounces-7307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 156827BFFA5
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:51:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46D5A1C20B3C
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 14:51:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 463C624201;
	Tue, 10 Oct 2023 14:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeGBwgxu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279E81428E
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 14:51:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB2B0C433C7;
	Tue, 10 Oct 2023 14:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696949482;
	bh=SmnMtoX0iHU4aj5Y/R+pD8vcwMWh9G5W6HyDrrmUaTQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TeGBwgxuRrY08gx0uXxKezhZHvPEPEw/4QLhYDwSKKTa0vpeOO6RTR0zMcg4eEOHP
	 d3VtSsIyWMTSrjpMkqO2K2SPwnyWeDTETtB3Z4XTCJj7ctLw3qvlkR4UO04E5kO8ZC
	 ikptBekNtPknPLqcNVgtNla3AQA4BT24Bq33oQK7Wm7s20Bz+lTN+rszpMxMpx5mhz
	 cINn3zfdjFkdglmiM4N80t7YJy3W81aD6xkcqHkdfzWmuv5MB4QRGOu8IbqIczS6H5
	 Y5/DqrALMDcbLRHRf9TIrRzA1ksYtAanuom2KZXb2W1j9agxg2wRogB0DlVupRFLBC
	 csJJ0bWJusT5w==
Received: (nullmailer pid 864750 invoked by uid 1000);
	Tue, 10 Oct 2023 14:51:20 -0000
Date: Tue, 10 Oct 2023 09:51:20 -0500
From: Rob Herring <robh@kernel.org>
To: Alvin =?utf-8?Q?=C5=A0ipraga?= <alvin@pqrs.dk>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, =?utf-8?B?77+9aXByYWdh?= <alsi@bang-olufsen.dk>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/3] clk: si5351: add option to adjust PLL without
 glitches
Message-ID: <20231010145120.GA847407-robh@kernel.org>
References: <20231008111324.582595-1-alvin@pqrs.dk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231008111324.582595-1-alvin@pqrs.dk>

On Sun, Oct 08, 2023 at 01:09:36PM +0200, Alvin Šipraga wrote:
> From: Alvin Šipraga <alsi@bang-olufsen.dk>
> 
> This series intends to address a problem I had when using the Si5351A as
> a runtime adjustable audio bit clock. The basic issue is that the driver
> in its current form unconditionally resets the PLL whenever adjusting
> its rate. But this reset causes an unwanted ~1.4 ms LOW signal glitch in
> the clock output.
> 
> As a remedy, a new property is added to control the reset behaviour of
> the PLLs more precisely. In the process I also converted the bindings to
> YAML.
> 
> Changes:
> 
> v2 -> v3:
> 
> - address further comments from Rob:
>   - drop unnecessary refs and minItems
>   - simplify if conditions for chip variants
>   - ignore his comment about dropping '|', as line would be >80 columns

I've commented on v2 again.

>   - move additionalProperties: false close to type: object
>   - define clocks/clock-names at top-level
> - drop patch to dove-cubox dts per Krzysztof's comment - will send
>   separately
> - collect Sebastian's Acked-by
> 
> v1 -> v2:
> 
> - address Rob's comments on the two dt-bindings patches
> - new patch to correct the clock node names in the only upstream device
>   tree using si5351
> 
> Alvin Šipraga (3):
>   dt-bindings: clock: si5351: convert to yaml
>   dt-bindings: clock: si5351: add PLL reset mode property
>   clk: si5351: allow PLLs to be adjusted without reset
> 
>  .../bindings/clock/silabs,si5351.txt          | 126 --------
>  .../bindings/clock/silabs,si5351.yaml         | 268 ++++++++++++++++++
>  drivers/clk/clk-si5351.c                      |  47 ++-
>  include/linux/platform_data/si5351.h          |   2 +
>  4 files changed, 314 insertions(+), 129 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/silabs,si5351.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/silabs,si5351.yaml
> 
> -- 
> 2.42.0
> 

