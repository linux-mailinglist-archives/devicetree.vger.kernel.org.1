Return-Path: <devicetree+bounces-169975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 053ABA99326
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 17:54:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F5211BA44DF
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 15:37:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCFD629008A;
	Wed, 23 Apr 2025 15:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAsUjbv4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FE2928D84D
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 15:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745421936; cv=none; b=itab873rgA0Ohd8agOVZVQUvcg682afkXQs2o1TwBtJ4ZwTZlfMl892CgmcBB+mfxkChWvrVR1FYujIykkpEudsRN7yuCLV7s0Td1O86XObvczsio53AJFaSfg47NgSXFXX1WT+s1sksUu1uJJ5gKCL3I3CPIfTA23TLc00iIto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745421936; c=relaxed/simple;
	bh=G9/2avOv+6YP3rqQlxPZIf0rfrgI6wXZ+XhqCkNxxp0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=vGIH8twWg8xkUak8T8Y6bSh7rxPJN95wXpHPz7PZdTuEbh7x0APC+2gmpbrHXL+QIr+tuSeSylTI4OBcyB3IgP+A0wzusTWuTtu0UNGKWVTY9D22a2Lm9iY7P6CKHlkhM2Y8c2QvCtYsLyLvIq9jA2/MHG42bi8HwiP/jRNFG/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAsUjbv4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBAE8C4CEE2;
	Wed, 23 Apr 2025 15:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745421936;
	bh=G9/2avOv+6YP3rqQlxPZIf0rfrgI6wXZ+XhqCkNxxp0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SAsUjbv45Iu2JeeGdv5hD72TtTwW42t4fM296dyG+CtPvoZVAnTaYED0b8goY32lj
	 aWZiNqXe9iVgGTEOL9KN3xWV33GBVsaVUFZMKppxcX40AnZkMDv22l3SqkpWLhv2tr
	 Qv+MpHyCsz8FDxp6khYR2+Hy7FsCDIhrUmK0rsaKih6+tWoxcd8dqq8M6JlJjiN+HR
	 wheTAHqMYsswXimW6HSTYtwvtqZ+ut+aqZ0xpoEPhvE39JKABTEcbWnUVZmR6Wc8wb
	 fQATDyCq69GiDnGF/+ObuJbWZCgPyo9mPQjdwXTV4zi1KDFXWblVQl8J6PkVYx2BKQ
	 hnNhvrQ9WIAjg==
Date: Wed, 23 Apr 2025 10:25:34 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Scott Branden <sbranden@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	bcm-kernel-feedback-list@broadcom.com,
	linux-arm-kernel@lists.infradead.org, kernel-list@raspberrypi.com,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: arm: bcm2835: Add Raspberry Pi 2 (2nd
 rev)
Message-ID: <174542193386.552497.9194165667630567957.robh@kernel.org>
References: <20250418143307.59235-1-wahrenst@gmx.net>
 <20250418143307.59235-2-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250418143307.59235-2-wahrenst@gmx.net>


On Fri, 18 Apr 2025 16:33:05 +0200, Stefan Wahren wrote:
> Add the Raspberry Pi 2 (2nd rev) based on BCM2837 to DT schema.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---
>  Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


