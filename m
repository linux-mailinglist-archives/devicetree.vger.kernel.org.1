Return-Path: <devicetree+bounces-247114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A621CCC4639
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 17:46:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6DBFF30B848F
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 16:41:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C666630FC0D;
	Tue, 16 Dec 2025 16:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdBtsUDn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECFC1313261;
	Tue, 16 Dec 2025 16:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765903275; cv=none; b=Tbw2UMhYMoMcv0oHC3EYa+3e/LpJcRlamzzwEkycrZtCaGz0pAb/hR6L+sBZTCRNNuzYGPGIvbIa7N3jr/mvckKmgPWktQpoUR4Z4ugO4H4bpX8Lc2ICmVl1k9NMsScyuOPXq30YGbQgHEUt/QIVBIeu4TNtKQVEVbs97tCMpiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765903275; c=relaxed/simple;
	bh=BNGlKNXrFcMszHtpZGdpCBGMA44Zd4nfy6zZNUS2vIw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RY7cLZw5wDGYnYNKUpFsE2rcHCl0bSsen8YN2798rU37mFcV4tS8aQ9BaOErVD+GO7hnGtbPfLlLGHfBb6isLjEbc6teKfwfuFectvjtNkc0ueNZJyXXuOJF+UrBA3eGtim8ZVUh9xb8UAdl91lI4o3/RRKkJORQPuavj8o1mG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdBtsUDn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E149C4CEF1;
	Tue, 16 Dec 2025 16:41:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765903274;
	bh=BNGlKNXrFcMszHtpZGdpCBGMA44Zd4nfy6zZNUS2vIw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LdBtsUDnEeP9v86imiJVmiOfvQ6YE6GciqyakMtIWMGnP7yZNeVzJ1O9o6dlqchkx
	 xdSghYihJgLERGWEGhm239s4eWOnICPsD/zHmxajGzEqIZY60QP8e7r8uwNwhx2Sg+
	 L9HsZnimownJ5Ecoz0VcX/u13wl2Uc9uqT1snASx7DPoTDl4gvUON5aynabgV5zgx0
	 ab9/mxCk8ll5CGpvI44mwxIBnpEt7yI9HELpUHFVEtXDPKT2bctvSuJ7tj5tfzcnBB
	 EqGSkws/+FE+0ZT/7rOHu4h524JldaXrQhmE1+1WRgmuCGsiC4A2MB2d9kf9oao06S
	 MAGqIwncA3Nrg==
Date: Tue, 16 Dec 2025 10:41:09 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Andre Przywara <andre.przywara@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Liviu Dudau <liviu.dudau@arm.com>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH] dt-bindings: arm: vexpress-config: Update clock and
 regulator node names
Message-ID: <176590326845.2606868.3243744984088093789.robh@kernel.org>
References: <20251215212914.3323741-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215212914.3323741-1-robh@kernel.org>


On Mon, 15 Dec 2025 15:29:14 -0600, Rob Herring (Arm) wrote:
> The clock and regulator node names were updated to use standard node names,
> but the binding wasn't updated.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/arm/vexpress-config.yaml | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Applied, thanks!


