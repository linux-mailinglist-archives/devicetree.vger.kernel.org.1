Return-Path: <devicetree+bounces-137535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E0EA0963F
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 16:46:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 69B1A7A3EEB
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 15:46:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49AB5211A04;
	Fri, 10 Jan 2025 15:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLjryIoI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D7E20B80D;
	Fri, 10 Jan 2025 15:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736523973; cv=none; b=M+Q7G/TkyiYiASTD1G89Ku2SQsB8e2FHA7DW3qr1poi4G1NbVxssaVDChvJ+uizgzrYvO12y4z4QEyjzwmJVbuOjBLjh3o/79XByhkjlCuEtdmYIK8lS0YYmCD/WXglE1Mn6Tp8eHiMdZJBvmO/MyEoln55qHCBb6WkQjSLyozQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736523973; c=relaxed/simple;
	bh=/8GMOElXMtMIbUyIggey7sDVja7GADbZTVd1RMjScU0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rN/68dMuRjAwwmMHeCWIPpEK0KGHB2kaDNT4oezykTRB6E7s/ds5BjRP0IHGH0LsTZlT/HoHZwXO6PtdN56b+Trl9tihgre65wpAvhDalsi98oz8+RWuM2kXN+C5HFzhxObIRcfw7ccenB7g6XeE7ZKfZzaogaFA1fYdzWSwJHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLjryIoI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 827ECC4CED6;
	Fri, 10 Jan 2025 15:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736523972;
	bh=/8GMOElXMtMIbUyIggey7sDVja7GADbZTVd1RMjScU0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gLjryIoICBCAn4RWSOXPvWcJrcEziG7VuEmgqNLSTnzguoARMzsN5z4j3pH2Liah+
	 L3eea5ZhoLjrE7Jt/KeGQuUdbwP+xGF7Q+zIoAndLGfJfM3UhqL+BRil4GtuBVHjdz
	 NZieh7PDa9+c266ZiU0cJDhwdIzozt3GlmmG7rQVMNURbwTYUjnhZuBh+qi1djIVjK
	 M+HvBkvfj2RGjy9pVdtynM8Y+T8yclKi/xDjSTBsqxQ2Hhu2nMWfVuK1ETISpXcP55
	 6ETfoUAwwkDMqAxxRFesCEizq7CC5jLB0bLqGoI9gJ9lardbnq+Nk5ozzbbDfGLKl3
	 5ZKg08qvwh/QQ==
Date: Fri, 10 Jan 2025 09:46:11 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Joel Stanley <joel@jms.id.au>, Conor Dooley <conor+dt@kernel.org>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	linux-arm-kernel@lists.infradead.org,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	linux-aspeed@lists.ozlabs.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: interrupt-controller: Correct indentation
 and style in DTS example
Message-ID: <173652396977.2926418.10522811816537772235.robh@kernel.org>
References: <20250107131108.246898-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250107131108.246898-1-krzysztof.kozlowski@linaro.org>


On Tue, 07 Jan 2025 14:11:08 +0100, Krzysztof Kozlowski wrote:
> DTS example in the bindings should be indented with 2- or 4-spaces and
> aligned with opening '- |', so correct any differences like 3-spaces or
> mixtures 2- and 4-spaces in one binding.
> 
> No functional changes here, but saves some comments during reviews of
> new patches built on existing code.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../aspeed,ast2400-vic.yaml                   | 10 +++----
>  .../brcm,bcm7120-l2-intc.yaml                 | 30 +++++++++----------
>  2 files changed, 20 insertions(+), 20 deletions(-)
> 

Applied, thanks!


