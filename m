Return-Path: <devicetree+bounces-110421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6947A99A650
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 16:28:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1367F282691
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 14:28:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FE5F2194A7;
	Fri, 11 Oct 2024 14:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9KRN41J"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C86021949A
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 14:28:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728656928; cv=none; b=cOb3MQdhHf9+pUQGTRxcWP4T4Gjlqv27/2fhbx7guGDSZTPqCoBOaP9dUv7iU5DJs8Rb74AtXLlGqxnQ+n7+tJu6txfT2YMmh028BN5HI7/1MIGzRbIN3bRwws33UahWZXm6ddGuRz3p6Qky/+FdYRBOo3FQjB8OXE96prwfLec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728656928; c=relaxed/simple;
	bh=IdY3KifXj9nsPZzyfWWopFFfHy68ULeskxi5/c6w1MY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q4OKvo66D/1QnXR3yQpIt/VUVURikMn6Mz8qcDFE76HULecZO/B2idSRpRV1nxkk2hpzrJYLXLFmBZpWh+h7y9KPJfjuub1SKOdWveIbfPP03TsckqNIrLz5mMaDIGoxNBh1Di7KLoOjRTlo5RxIiluGn7Vf22rxptvUbpbQ9yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9KRN41J; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A28C3C4CEC3;
	Fri, 11 Oct 2024 14:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728656927;
	bh=IdY3KifXj9nsPZzyfWWopFFfHy68ULeskxi5/c6w1MY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B9KRN41JbzeiDvm3AH5azKkCXVvUTSLQRFsR0HYcpNqXSTpFAZsJCqjqJ1CtZhaRb
	 u0JkOD4oa8YvV5+CmRjyGihSsxxoXnJylSe5nvZmX+czquc0+guOvwpu1mIumz57PM
	 d//j6QLvMj4L3T/5XZV8o9W2VcnYTz/tVGBy/S/6kFBA6p1WHsdZofiIGf1+LyTljf
	 u/jPIySz0nr2W0DO1OzG1lifiJNxoFUu854rLNhZgQ2DiMCUsfBxmlXdFKluEjFoHJ
	 WGvO+FYQokLh8whbhJOFCOl2vvTPLMGtrnz/uGbdNFfbJz87n2LfEML+ZjWvOdtVnH
	 TVObzHIoPti4A==
Date: Fri, 11 Oct 2024 09:28:46 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	William Zhang <william.zhang@broadcom.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Kursad Oney <kursad.oney@broadcom.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Anand Gore <anand.gore@broadcom.com>,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH 6/8] dt-bindings: vendor-prefixes: Add Genexis
Message-ID: <172865692548.2294980.11927881333724931622.robh@kernel.org>
References: <20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org>
 <20241011-genexis-xg6846b-base-v1-6-f04d6f6f93ce@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241011-genexis-xg6846b-base-v1-6-f04d6f6f93ce@linaro.org>


On Fri, 11 Oct 2024 00:07:04 +0200, Linus Walleij wrote:
> Genexis is Swedish/Dutch company producing broadband access
> equipment.
> 
> Link: https://genexis.eu/
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


