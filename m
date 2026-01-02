Return-Path: <devicetree+bounces-251143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E313ECEF5D9
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 22:47:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B28203011EC2
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 21:47:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3890484039;
	Fri,  2 Jan 2026 21:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NI8p/Tlm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1090714A8E;
	Fri,  2 Jan 2026 21:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767390432; cv=none; b=tDuuObVjkQHts3gbjfs92E42Ax7BUioaFmF33wzjSVXdVs5aN5Qy+SB1XKkBAFqerOUC1idlphIFHOzuLsSWZQExmGXRuZzupJio6rrudmkkQGktRr9UoxmCsWkqXRsqjexLvq5yGMRC3IEyiKr9UYfk5QMxgobM9QsxVVZWm1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767390432; c=relaxed/simple;
	bh=GMZG8PLH16vIlvLPUgb3vns8YcO90S5QJdAxIhN5s58=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ph8IhtsNjYe8ZAWZwA6t/aE+xgF4Zk0cVW9xHZFFGmh0IHCr9lilZSAI35Tv/D8WQb3S2hHVJVLaqFBZ/zadNzMtP1XJr7OVQ5//5eRveiOPwDEUOro8RYsUSMbLDq69+gt/P2p+riGMOnmvR68ddZryK3Ob6Z+VvPONpm42cag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NI8p/Tlm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73076C116B1;
	Fri,  2 Jan 2026 21:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767390431;
	bh=GMZG8PLH16vIlvLPUgb3vns8YcO90S5QJdAxIhN5s58=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NI8p/Tlm1QPYtaoRb+UtM4QqU30WGoiozGGbMODjmhChAMntrZgdFEhHGUq/gP5/K
	 Dm86SvR92EuS7A5WlKlptf1FlyZkqOCF3GP2Z618MuZ+Zhulwg1S/Eat+ub6YwSDHW
	 k0sAX/bcG4e10MXHSUIkkKvxc407jHLzkSpTW1rbQ7VpWTVI8z5vn11k5sLuSUBVZh
	 sWf3QqidKkho36OBqoLhlBhHkSb06h4smHoYk/C3TCE435oJa1/0uwdIRJdsueefJy
	 AEzFq1KL5dfM35seOI/LONS5eughR4LQdj8IKkSyHfboBmZfLpEHZN7fJK0WKoEBjj
	 SE6KwgwaLEwjQ==
Date: Fri, 2 Jan 2026 15:47:10 -0600
From: Rob Herring <robh@kernel.org>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: maz@kernel.org, tglx@linutronix.de, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: interrupt-controller: arm: Drop redundant
 node name restrictions
Message-ID: <20260102214710.GA226653-robh@kernel.org>
References: <20251231113026.2480092-1-pankaj.patil@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251231113026.2480092-1-pankaj.patil@oss.qualcomm.com>

On Wed, Dec 31, 2025 at 05:00:26PM +0530, Pankaj Patil wrote:
> Drop the redundant 'false' patterns so that allowed names
> ('msi-controller', 'gic-its', and 'interrupt-controller') work as intended
> 
> GICv3 binding currently disallows child nodes named 'gic-its@' and
> 'interrupt-controller@' via patternProperties set to 'false'. However,
> these names are already permitted (though not preferred) by a subsequent
> pattern that applies the correct schema.
> 
> Since the 'false' patterns take precedence, valid nodes such as
> 'gic-its@<addr>' and 'interrupt-controller@<addr>' fail dtbs_check with
> "False schema does not allow" errors

The reason it is done this way is so that we both check the child nodes 
and warn on deprecated names. 

Fix your .dts files ITS node name to be "msi-controller".

If the node names are fixed everywhere now, then we could just change 
this to "^msi-controller@[0-9a-f]+$".

Rob

