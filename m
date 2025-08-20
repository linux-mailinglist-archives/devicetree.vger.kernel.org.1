Return-Path: <devicetree+bounces-207114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DC288B2E8A8
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 01:31:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9AB14A22BDB
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 23:31:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E49472DEA71;
	Wed, 20 Aug 2025 23:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTGAR2B0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB75F1AE844;
	Wed, 20 Aug 2025 23:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755732676; cv=none; b=au4SZdA/48ySuw2V311+eqxVol2P5PljBT67ueEikkI1cyQ1t1A0sVhuTmdC3bQC4i7If14cU0c1+bfhKSnNhIQNd8PvP66eizpdyC/ZZ7iKiLNirujYNR/pfCoGpcUuBE06s+/WN3Xeqn/oRqNvYGh4C7QB4ja92tuLojHV0m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755732676; c=relaxed/simple;
	bh=MgbLi8u1LJ+D+gsr4XATFyi/fLkzNuL/+IC/S7VdwM0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dRWN+AUhr8vgoUH2RsxbLsgg6w7/lKLhdx1Oxer2Shdj9LLDVZw8yHcIhTZxBhISQSk5vct/l05KsqEtdPIripNGMLkQ+W+E7Esn4ArdRqRJv4lxujObnZeMC6GoehAbyiFwoirgSR4OWTsYlBpG/r4dPRiYjOIONySPxjZYtV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTGAR2B0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 317A7C4CEE7;
	Wed, 20 Aug 2025 23:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755732676;
	bh=MgbLi8u1LJ+D+gsr4XATFyi/fLkzNuL/+IC/S7VdwM0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iTGAR2B0tWoGD2F0k/zVOvR5+983nQUFSpgisrtipvySGR0hVjeyl+PR+n89+wLpm
	 YO28j//80UZcZtSg4I9IhSWjLlP5X6OQQKg5n2XFoHoovQ+ZdKT2JO/nqv7OVbM5q8
	 u5MpvVbJWo05mAEwbjVl+xu+ixykmSKJCgB4SeJZ0tUs/tnK5UpZar8e1t2WUl/WXA
	 eiMxpNEpF+xG+72gnwMj/zOyDkV6x9bn53YHnFCtr61FW2gSBN7dmGdh1ezETJQUlg
	 55dP58PU64WUv0ZxSXaIDUKZoB7gMWEsgf0W1bspmGGNKzgwGXceS0ljOYfyIAUevg
	 cRyuRHO2SkYXQ==
Date: Wed, 20 Aug 2025 18:31:15 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Lizhi Hou <lizhi.hou@amd.com>
Cc: lpieralisi@kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2] of: dynamic: Fix memleak when of_pci_add_properties()
 failed
Message-ID: <175572873285.1571546.13547404345424444866.robh@kernel.org>
References: <20250818152221.3685724-1-lizhi.hou@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250818152221.3685724-1-lizhi.hou@amd.com>


On Mon, 18 Aug 2025 08:22:21 -0700, Lizhi Hou wrote:
> When of_pci_add_properties() failed, of_changeset_destroy() is called to
> free the changeset. And of_changeset_destroy() puts device tree node in
> each entry but does not free property in the entry. This leads to memory
> leak in the failure case.
> 
> In of_changeset_add_prop_helper(), add the property to the device tree node
> deadprops list. Thus, the property will also be freed along with device
> tree node.
> 
> Fixes: b544fc2b8606 ("of: dynamic: Add interfaces for creating device node dynamically")
> Reported-by: Lorenzo Pieralisi <lpieralisi@kernel.org>
> Closes: https://lore.kernel.org/all/aJms+YT8TnpzpCY8@lpieralisi/
> Tested-by: Lorenzo Pieralisi <lpieralisi@kernel.org>
> Signed-off-by: Lizhi Hou <lizhi.hou@amd.com>
> ---
>  drivers/of/dynamic.c | 3 +++
>  1 file changed, 3 insertions(+)
> 

Applied, thanks!


