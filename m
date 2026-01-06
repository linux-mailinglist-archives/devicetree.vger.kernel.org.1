Return-Path: <devicetree+bounces-252095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A30DCFA829
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 20:10:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 583CC308B7FC
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 19:08:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AAA32C027B;
	Tue,  6 Jan 2026 19:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tD9A1zTZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024B8272803;
	Tue,  6 Jan 2026 19:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767726517; cv=none; b=FNWDajZN7q84plPrVVV/mvIoLw3Vj91efbSYYdon30ReQSzpa3trb0pwU7beCUhuBYSKGDCReyYj2efDIC1J9Ia1mj/jhr/z5FjaepjNaZRyilTH65W81N3DyrIqMx3lAbOVEPSrztzK3YBsrEaRYwqqIrkt02+E1FRhB4AIqxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767726517; c=relaxed/simple;
	bh=XpzFpZEGvbRmZl0OFpcjaPzGVA5IdINTaNJ70za6110=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k6E+lUaz0Phg+zTHXtbVTgJVhh8R30XOfEGufQEbdn1nvTdLSVHN8CnFkfFtrPdom25c1HHAq19SKhG83b1i/oe2j6KjlYfTlyBvqFMfpndrghN9DEgquMH+Kphd9SwiE7UgEB1NAdJDb8dUeqsTsS7gMf5sh6/MvlroE7vpqRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tD9A1zTZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A74D0C116C6;
	Tue,  6 Jan 2026 19:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767726516;
	bh=XpzFpZEGvbRmZl0OFpcjaPzGVA5IdINTaNJ70za6110=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tD9A1zTZiBS24F5x6Y7yfnNyNSvQQ1aLqJAAxdDgRdJ0bomtjcDzPiD5RED5OLiXU
	 Gv9wLUwRslIkDZEAr31RY0lMYTlvxE1Lz6miFv91OqspVFQFCiA+rfnCDmjmMt9yOL
	 QI/MENNFjdJC5Kd2Q4znICeNDP4jnKQrUkoiga16qUqu/KwdHr6JSnoYn6LozKkv0+
	 m4+8/fvVkQiVOqgG1+FNSciS7Vl7EJ0tISAJMPhVwypGsFOw0Pa+zpTumE5IBi2Aqt
	 sy0wB7uTwJg0ZXiz+Qa+3EQU/BDcEF57FsLwPuhUV0ilY1XgX5aqnLd2ZuljtxKuNH
	 G5SoyAwX/KjnA==
Date: Tue, 6 Jan 2026 13:08:35 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: trivial-devices: Add some more undocumented
 devices
Message-ID: <176772651100.2566634.13816014729126849481.robh@kernel.org>
References: <20260105211255.3431856-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260105211255.3431856-1-robh@kernel.org>


On Mon, 05 Jan 2026 15:12:54 -0600, Rob Herring (Arm) wrote:
> Add a few trivial devices which are already in use in Nuvoton
> and ASpeed DTS files.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/trivial-devices.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Applied, thanks!


