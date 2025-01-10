Return-Path: <devicetree+bounces-137527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E423A09611
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 16:42:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 793DC168DB8
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 15:42:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D2632116E8;
	Fri, 10 Jan 2025 15:42:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRl7Vfi5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558F120FAB7;
	Fri, 10 Jan 2025 15:42:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736523720; cv=none; b=APMj57IBdOBHL45uGn8JoXHWdoR92CN1fFwP1JSsD8f0vwpTwY0LC87gnUCHtq7JiDSIInQmda7KkH47Ngplv9/HwAxai/qTutxQ1qsGsvxt7bNqQhIo32hwqERUVIBZv32aPN6QBt0cIs3LOeUCKdAbUshRpK0dl68UQ7wD688=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736523720; c=relaxed/simple;
	bh=1WJun6SDCnjO4F/qdOg150Sc0efJ7jC5PW/RAsW0f9M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=En7+HbIL2MZMqlooNbBtj3NELS4VMQY6zXW68yjVPQ03yYJeHo93RvaaTrTvJgJ5MpWVqlb8hKUDepMrl5GFQLIex+5csQEjhex2KZrad9+xyTE+QrfTYj/NTlC75QV56hkWYjOnpoH5jmWX7OkgsyVQS7dahK284yDcH1h0tVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRl7Vfi5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCD21C4CED6;
	Fri, 10 Jan 2025 15:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736523719;
	bh=1WJun6SDCnjO4F/qdOg150Sc0efJ7jC5PW/RAsW0f9M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lRl7Vfi5fUaa1cIcpAfBxoGpHFLkJaUjgY+QU5HZ6BNm/0eXyQ5g5qmkxI3OBksGJ
	 tH1ZtsvkFdCCMwPMh/IPEFgQLhkvzKjGchSbPLVsoThEpIsUi+uWRbYrwg6hsgFclZ
	 yE0BZgLRoAclYX/e2hH3O9VRanuWJOVJhHA7OJtC/IKZm64PEQG6SK9GTaqpOYPyAt
	 lnx4bUI021uOyn+2Rq2DFyVGIvCeYvvku5YdhBiJvVKGW5RpJYEpaWXz6L3drC6+x8
	 dQu5lieliug2sXkxdwfSZiXVp7W1/913LIAZwmnld4kJo1+TYdpKNPWztgNLUsqDxk
	 aJTPwoWjdeTSA==
Date: Fri, 10 Jan 2025 09:41:58 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andre Przywara <andre.przywara@arm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: phy: Correct indentation and style in DTS
 example
Message-ID: <173652371839.2920536.158309773961606738.robh@kernel.org>
References: <20250107125840.225982-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250107125840.225982-1-krzysztof.kozlowski@linaro.org>


On Tue, 07 Jan 2025 13:58:39 +0100, Krzysztof Kozlowski wrote:
> DTS example in the bindings should be indented with 2- or 4-spaces and
> aligned with opening '- |', so correct any differences like 3-spaces or
> mixtures 2- and 4-spaces in one binding.
> 
> No functional changes here, but saves some comments during reviews of
> new patches built on existing code.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/phy/calxeda-combophy.yaml        | 10 +-
>  .../bindings/phy/ti,phy-j721e-wiz.yaml        | 98 +++++++++----------
>  2 files changed, 54 insertions(+), 54 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


