Return-Path: <devicetree+bounces-110422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE2199A651
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 16:29:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 12D921F220E5
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 14:29:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7E872194A9;
	Fri, 11 Oct 2024 14:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZchcRQM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33E22194A5
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 14:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728656947; cv=none; b=dP6rq00B5zb8IwPFeOrggZcexAwk9T3ESHvPVxXRYqQCTlY29rQ7Gg7Zqf7ZlZP1QRBaDOaM6mZr9iCOfRZJpKLYHV356e88C7UfjW63IVf/c9Vc9sO1NvMJBgEfkTZOwugxbMsM18YZROJTAaVfY5Bq4QxnFogg8Q0f4h54ruA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728656947; c=relaxed/simple;
	bh=l4x6hPzWWDrGeOIgLAc41RokWrWM8keUkNd4/GpgWhM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fFZvSoaym2eSebDFYLRsw+uwskGxDUhPBxb6QOeMrrlqb9TRQ+BWZXlUwzy75cFwzB+32OjLpUHFIyiiL8vpnLMlB9I3+DppWKZbmxqLHrHLyHHGLXKU9h+8H6KTgDnae7gEtDi57TIIkSYqfebQrznNlQL0yI1wQcwF8l8lY9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZchcRQM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 287A4C4CEC3;
	Fri, 11 Oct 2024 14:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728656947;
	bh=l4x6hPzWWDrGeOIgLAc41RokWrWM8keUkNd4/GpgWhM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OZchcRQMQrQmHCzFbk3UB+Rdhqcp2elRHQjQk/TQzkTB0upq2nveYpvc5fX7ij/FH
	 P2w5ZTRng9rFTyBk+lTEFfiAHBtGA2EYlm1e03TgjbE7D8NYO0VdHq8HHyMvH5Cb8Y
	 z7ZbI8NX6jO3ERlRoQU2MeqoX5Scd84r4kDjb/cwp+g+y75XsbFDwUP0le0Y8IrD0B
	 EASqur6fOX3vKXnCWY8J38fKuK7049dlcDfEag0oCwe6ebwlMUXiVp00gQPF3JBYVf
	 kAP8XbB2pKtQXih8ou7PlIUWnIxKdBIJ5v97ASOBNUuI66pyWljIOrL9fedlm2YywJ
	 GW5kYytfQqEWw==
Date: Fri, 11 Oct 2024 09:29:05 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	William Zhang <william.zhang@broadcom.com>,
	Anand Gore <anand.gore@broadcom.com>,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Kursad Oney <kursad.oney@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 7/8] dt-bindings: arm: bcmbca: Add Genexis XG6846B
Message-ID: <172865694521.2295429.13581100224917147906.robh@kernel.org>
References: <20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org>
 <20241011-genexis-xg6846b-base-v1-7-f04d6f6f93ce@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241011-genexis-xg6846b-base-v1-7-f04d6f6f93ce@linaro.org>


On Fri, 11 Oct 2024 00:07:05 +0200, Linus Walleij wrote:
> This adds the device tree bindings for the Genexis XG6846B
> router/gateway/broadband modem.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


