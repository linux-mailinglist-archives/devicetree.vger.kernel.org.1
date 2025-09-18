Return-Path: <devicetree+bounces-208179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5DDB31C0D
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 16:39:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E78A35A7163
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 14:33:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 673F8307AF9;
	Fri, 22 Aug 2025 14:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsF+rM+0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4007A3074AF;
	Fri, 22 Aug 2025 14:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755872893; cv=none; b=Be6N4SYge1Dg9H8BYy9t2ExAp8DnAJH1j070FJEmN5Q2A221ee1qdW1jzedar6Uo8dKjXc5vHHJhT5qNiBsXoJB6LQpuMfzaMZ8QEPnOIOzXjsOWz65rlQHOWOBtW1Yij6bB+HhMy/98zF0R7S2rz/hHzoLZHcm9ufwk8/B2mjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755872893; c=relaxed/simple;
	bh=Bg4BwiCa0x7CKCha6z/wu1lKngLbUF7suUy/O+Pg1H8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T52e1FUkV1aY8qEYTDI698nYz1DwinuAo/cZqDHnW0Y0yHZrJREiGrtOv/0XS1O1qJit0P159zrrp4mo4327oyIgHE7ZzAsNNUKYIR5so+zVLYVAyl3QFgqEmecbF5amC0dz4j+t3g/TpD8R7ReB9skp+FS4rDNvSuctAYcNDEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsF+rM+0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1044C4CEED;
	Fri, 22 Aug 2025 14:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755872893;
	bh=Bg4BwiCa0x7CKCha6z/wu1lKngLbUF7suUy/O+Pg1H8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RsF+rM+0Z9IW6gvF3S2uQ/yNRK+1bQTCY/slWzkWkmBKOqs0JPFb93I6NB1adUSo+
	 nmCjcZDD3vMc1KpwrUbaNw1OdLnKbe61ZI8UmVXweOO0EtevkLI2nEsb8IkfHoKe7g
	 oplRNGs3awY86Bs7RV4qHM09ebh3x1b5yHVNYlGxJyhhxUBblQGcNgK9dXuhj2+qfV
	 Zj0rsfe3mhPgqat5aQ2f041HwgwnxcyHfXLdn7ReWL8+zXQs1Ku/80c5U3k15wYaRR
	 OvTiowG0QMAGUwjTp6BeueOY9HV9/uvMUtodX6ughXpIYbm1gwxQgrhHxilkmnjiU2
	 0XTeIu4vxcMMA==
Date: Fri, 22 Aug 2025 09:28:12 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] dt-bindings: usb: IXP4xx UDC bindings
Message-ID: <175587289177.3663586.2746945073352237568.robh@kernel.org>
References: <20250820-ixp4xx-udc-bindings-v1-1-640f29140164@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250820-ixp4xx-udc-bindings-v1-1-640f29140164@linaro.org>


On Wed, 20 Aug 2025 14:11:01 +0200, Linus Walleij wrote:
> This adds device tree bindings for the IXP4xx USB Device
> Controller (UDC).
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  .../devicetree/bindings/usb/intel,ixp4xx-udc.yaml  | 39 ++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


