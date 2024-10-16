Return-Path: <devicetree+bounces-112102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AF19A1060
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 19:12:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8590B1F2270A
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 17:12:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB9CF20FA93;
	Wed, 16 Oct 2024 17:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdyHBwib"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75E318660A
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 17:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729098724; cv=none; b=Z54c10TdBFmHTjpMnjdJ7zhCM90Nu+uK/wSHZeGBfgmjqphFu5uq7oAkwxkubJCHrqxAXdDMZ3x/itov3vkXN/UjgRH+KCwdvwYA+hISI7GEH6OjNxIrqwJvs5sXInxILIsyZW3lWpxWxOa8Dhd/n0vd53TEk7wpLZqoufEDkCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729098724; c=relaxed/simple;
	bh=afgVQhDBH3Rk0YcL/98Tq1Z4XNN+tx56KkztFFmWMZ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M9vsPFgqdbckGOGY8btCjefUUnIi1/IOg+bHXIzcj2hqlPjFcYTEYc/NeK1v0FX8sQEacmV8I/X0KA/LzSicQe+jRHnAXc3j2JEIlWg+MeseXx3C04Y+TOUWlgcEHceYMlXvWMBEXmuvQpbifOKm6nCRWrXoG4wn4LwCrWCeHUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdyHBwib; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34C32C4CEC5;
	Wed, 16 Oct 2024 17:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729098724;
	bh=afgVQhDBH3Rk0YcL/98Tq1Z4XNN+tx56KkztFFmWMZ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qdyHBwib7NEyuilEfW9C4WQcpSF4PPWKwSdZS629QebUGnhLhFQyBPyofB2Zy7pl3
	 QEIo75aQCL5WS5ZwZiJrOXUcqIfP/JcR3p2va4vcIgkzHPbOOspXOeTmGSEG2pnb9q
	 dySMDqTsakqss8r8bXbE6Z3zxNJOvEKcWn5e8N9r8haHQqhsqT6WoHsnmVBZnCyVEj
	 8rSeuu2q+alLBM/zOkYZAX6xtK3qogYdIQP5iEEVW8D0zWTfEYweuDaPB5XdKRuH9a
	 CVfvtRUaxSGnHwhdPX5HgDU1VySimKtQiPiAsATEZwZadguj+TUciirhBF2WaCOAG+
	 VQ9RBEDfSpl0Q==
Date: Wed, 16 Oct 2024 12:12:03 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Cc: devicetree@vger.kernel.org, Saravana Kannan <saravanak@google.com>
Subject: Re: [PATCH] of: module: remove strlen() call in of_modalias()
Message-ID: <172909799906.1907345.10114705155151894989.robh@kernel.org>
References: <471418be-5d2f-4d14-bd9e-9e8f0526241f@omp.ru>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <471418be-5d2f-4d14-bd9e-9e8f0526241f@omp.ru>


On Tue, 15 Oct 2024 23:15:04 +0300, Sergey Shtylyov wrote:
> In of_modalias(), there's no dire need to call strlen() (and then add 1
> to its result to account for the 'C' char preceding the compat string).
> Replace that strlen() with snprintf() (currently below it) -- this way,
> we always try to print the compat string but then only advance the str
> and len parameters iff the comapt string fit into the remaining buffer
> space...
> 
> Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
> 
> ---
> The patch is against the dt/next branch of Rob Herring's linux.git repo...
> 
>  drivers/of/module.c |    4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 

Fixed the typo and applied, thanks!

Rob

