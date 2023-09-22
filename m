Return-Path: <devicetree+bounces-2624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D937ABC00
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 00:52:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id E1441B209C7
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 22:52:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAC5D48850;
	Fri, 22 Sep 2023 22:52:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97CD323E
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 22:52:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54EB9C433C7;
	Fri, 22 Sep 2023 22:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695423159;
	bh=WpOE5/YOMJhoOrRKC3VTuOefYY+YCBJ0gqxE+bPM+M8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vMU06/uZQoE7+sMmxCUfnkaIc4TbQPw+xy1evSjIiX21OrPo1IYOmUn2r3SUCYQkm
	 QjSiluwmbtqxuEfGHRSs2VWH7LOeJoXRuW3WiiPkHVs50qu0idnALp7V1XsWalZZmT
	 u/GSeT5H721/K/z2aOgETtz4BD2REKdWl6332N3DEZIN0eSuCmEt8PhP40E8UvmTi7
	 P8T6ATfWIHTf9AeK5No1lLcfsrdF8CiOejhLo/eusnPEv7xbfODCOXJT0O91SO8jPi
	 tO98bE0pF7sRnvPt2MMlGcAi94RWbOGCZj//WSW8a7xg4cvQI/6/tZwt3n/X7MWxVN
	 pGGQ73Zi6lufA==
Received: (nullmailer pid 4077777 invoked by uid 1000);
	Fri, 22 Sep 2023 22:52:37 -0000
Date: Fri, 22 Sep 2023 17:52:37 -0500
From: Rob Herring <robh@kernel.org>
To: Luca Weiss <luca@z3ntu.xyz>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, devicetree@vger.kernel.org, phone-devel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, linux-gpio@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: pinctrl: qcom,msm8226: Add blsp_i2c6
 function
Message-ID: <169542315692.4077737.2123562166324056718.robh@kernel.org>
References: <20230922-msm8226-i2c6-v2-0-3fb55c47a084@z3ntu.xyz>
 <20230922-msm8226-i2c6-v2-1-3fb55c47a084@z3ntu.xyz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230922-msm8226-i2c6-v2-1-3fb55c47a084@z3ntu.xyz>


On Fri, 22 Sep 2023 18:55:12 +0200, Luca Weiss wrote:
> Add the blsp_i2c6 function that can be found on some pins.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>  Documentation/devicetree/bindings/pinctrl/qcom,msm8226-pinctrl.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


