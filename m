Return-Path: <devicetree+bounces-218494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E3475B80C0B
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 17:52:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA8832A4202
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:49:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C13B8314D25;
	Wed, 17 Sep 2025 15:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iI+1mRIy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D287314D22
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 15:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758124001; cv=none; b=FpI5RrzPyPM2LotuJacHa+DUQb9vmsue99KPHy0s/NtFfJMU8Pbx6uOv1Ol7IBz3sQkeEaiMUzJ0b2m/kUFLZGwF4yAN2P1Ki4ZeTQd8ye+iM1Dp+mmxEXmiDfcXnEr/pLTaTzZlGPW0YLiYG8j2z4JPhTJ6zaYemqkF61h6Az0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758124001; c=relaxed/simple;
	bh=6Bw1RkNnxmymT0g8hsrq4Crs2zbCjCS1d/QHroKXP8I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OkUVXv9zURmSXAX8rvy5DnvRoGfwXcQ5APdVh/yQg1allKzXNRcw8nBjAEmOzu2cOeaqwNOxLc3sfURptPlici+1FR0byQw4pl7i+WZKvPqZafT2K1ZN2crWARGio7YmMNEGv+pXiAAz4d/gzmGTjHOVXzwPBxXfaqZymc/7Zn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iI+1mRIy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 918D9C4CEE7;
	Wed, 17 Sep 2025 15:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758124001;
	bh=6Bw1RkNnxmymT0g8hsrq4Crs2zbCjCS1d/QHroKXP8I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iI+1mRIyqnrTTFpv+u/X9tFIFJ2hFmM+9OyzYI3GKmwVyVrENN94J4X94HTLiCRsi
	 StHHkVxQas1nZUHlhNvjslrhz1WFv+frO24AgOl4aB+pOip/VpulOKipXdleGYjo2s
	 e3on62Qe7hiiYpEFWy9KYnrEGndbU4zGNvA58dsNrOOPjTraPOJtwRPDtzi1mM79oI
	 5OK1P0NMuuHjqLsJzjQpdbZD05KccsL6xYx6q9QZCUbgecxDx1QqR2lwyTyo9SdR2J
	 uWNUelpbsYQ84xbAyGH2fLR5VRUX+7o+nvDQHRRHpF53nIltiOS1dsWz0AsYVKUaH+
	 TaYLBtKqMBheg==
Date: Wed, 17 Sep 2025 10:46:39 -0500
From: Rob Herring <robh@kernel.org>
To: Eddie James <eajames@linux.ibm.com>
Cc: linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
	andrew@codeconstruct.com.au, conor+dt@kernel.org,
	krzk+dt@kernel.org
Subject: Re: [PATCH v5 2/6] dt-bindings: arm: aspeed: add IBM Bonnell board
Message-ID: <20250917154639.GA2117942-robh@kernel.org>
References: <20250917144210.160051-1-eajames@linux.ibm.com>
 <20250917144210.160051-3-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250917144210.160051-3-eajames@linux.ibm.com>

On Wed, Sep 17, 2025 at 09:42:06AM -0500, Eddie James wrote:
> Document the existing AST2600 BMC board for IBM P10 server.
> 
> Signed-off-by: Eddie James <eajames@linux.ibm.com>
> ---
>  Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

