Return-Path: <devicetree+bounces-5861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E14D7B832F
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 17:08:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 3094C1F22712
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:08:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B39518E13;
	Wed,  4 Oct 2023 15:07:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA38154A6
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 15:07:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E45EBC433C8;
	Wed,  4 Oct 2023 15:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696432077;
	bh=Y5zy75t86c7p9cSZYuR4myWn71kdv7zk6WSRuY/yi70=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ce1gg4PsElaaWDOjFq5MbANyHN9jnSvSgiKmKaHFY07okOGDOdCjtNz/9DIzcajIH
	 tYz7u0j4NoFIncrNUumckrrLKO+Pjn9TqLigAv/u+KpqqYrc19FWWVCtq22GToN+Pb
	 Y4cG8n6yuGik7UO0S2TKpW6kRS0Mn538qhzGuI4PPfizyz1NNNIz2YVxrHblKrELbo
	 wJl/bGuodTO/oR7uTMrMS8hcSi6TKPoiu6WQ6MF0gVpZrAqLTZyBifLsCxxHhErOoz
	 E4YtchTIzlm8kGDRBm+ga2HckD8C77GN8zHCOQMcrIv44N41MM9Z9CmbwxOyCnT8G9
	 WRxu5mvH2O7Wg==
Received: (nullmailer pid 3140478 invoked by uid 1000);
	Wed, 04 Oct 2023 15:07:55 -0000
Date: Wed, 4 Oct 2023 10:07:55 -0500
From: Rob Herring <robh@kernel.org>
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, Thierry Reding <thierry.reding@gmail.com>, Conor Dooley <conor+dt@kernel.org>, linux-pwm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: pwm: Add T-HEAD PWM controller
Message-ID: <169643207539.3140422.9692233405638400871.robh@kernel.org>
References: <20231004092731.1362-1-jszhang@kernel.org>
 <20231004092731.1362-2-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231004092731.1362-2-jszhang@kernel.org>


On Wed, 04 Oct 2023 17:27:30 +0800, Jisheng Zhang wrote:
> T-HEAD SoCs such as the TH1520 contain a PWM controller used
> to control the LCD backlight, fan and so on.
> 
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> ---
>  .../bindings/pwm/thead,th1520-pwm.yaml        | 44 +++++++++++++++++++
>  1 file changed, 44 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pwm/thead,th1520-pwm.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


