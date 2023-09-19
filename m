Return-Path: <devicetree+bounces-1500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEFE7A6B55
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 21:17:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D7E22814D1
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 19:17:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 301E228E15;
	Tue, 19 Sep 2023 19:17:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8EA8BE2
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 19:17:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C65F9C433C8;
	Tue, 19 Sep 2023 19:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695151041;
	bh=n02489mUNl/0R12Yc0s9p+3ObxDVOgscmi2laCeL04I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qFAfbLxsrm3mRsO7rdjY3PX8HGPn8MZfMNJcpPFViXZftCbFmXJIW6Sg7Nb+881J0
	 KqxX29GbU4O2SNRL6LhKmZPBVyiYUKVcbhvmOLJtNi6y7nEFgQb/+NHqkwrxYpIgtU
	 0XZDwcSxio/n/Vsb1WbXt0yuGstStdCTL1/qP0GkViEcJ0bvvYCrCY3zp8raQ+AYVw
	 yffdgaYt+zU4BUenYjepH7evoqH1fmgCvPkO3OwRmzXqggZeKZNkmUKjXzB6uAGPNk
	 L1m6/MmNWiBZtzsEz04TBx1j11FgviGimVagV4wRs+2fGvEkZ44btXUkaR37Iq18zH
	 hbs9/8zKsFD0Q==
Received: (nullmailer pid 50528 invoked by uid 1000);
	Tue, 19 Sep 2023 19:17:19 -0000
Date: Tue, 19 Sep 2023 14:17:19 -0500
From: Rob Herring <robh@kernel.org>
To: Tzuyi Chang <tychang@realtek.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, linux-gpio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v3 6/7] dt-bindings: pinctrl: realtek: add RTD1319D
 pinctrl binding
Message-ID: <169515103907.50473.10305858283838262730.robh@kernel.org>
References: <20230919101117.4097-1-tychang@realtek.com>
 <20230919101117.4097-7-tychang@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230919101117.4097-7-tychang@realtek.com>


On Tue, 19 Sep 2023 18:11:16 +0800, Tzuyi Chang wrote:
> Add device tree bindings for RTD1319D.
> 
> Signed-off-by: Tzuyi Chang <tychang@realtek.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> v2 to v3 change:
>     1. Use '-pins$' to be node name pattern.
>     2. Remove if/then condition under the patternProperties
>        "-pins$".
> v1 to v2 change:
>     1. Add a description for RTD1319D.
>     2. Rename realtek,pdrive, realtekmndrive and realtek,dcycle.
>     3. Add a description for PMOS and NMOS driving strength.
>     4. Remove the wildcard in the compatible strings.
>     5. Use '-pins$' to be node name pattern.
> ---
>  .../pinctrl/realtek,rtd1319d-pinctrl.yaml     | 187 ++++++++++++++++++
>  1 file changed, 187 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/realtek,rtd1319d-pinctrl.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


