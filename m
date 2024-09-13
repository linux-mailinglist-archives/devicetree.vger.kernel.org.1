Return-Path: <devicetree+bounces-102565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DC9977802
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 06:38:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3C313283FA4
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 04:38:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 581E01C5787;
	Fri, 13 Sep 2024 04:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="VkykzHjX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AF318953E;
	Fri, 13 Sep 2024 04:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726202283; cv=none; b=Yo7HQEAH3BiOGGaMoM+gwm+hQfLjeCIX+iD01RLWB3AgwAeq4JgN1bAt0AivvmN8eRbfReOS378+VqDAp8SQ1UmBg/KlcEfGml4NwfCwNDotoTrptuPKbJH1Klnnd/QtFgtsh/t81uabBTFhPRp7YIHNLuAIZmRGhEFzzY+zmP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726202283; c=relaxed/simple;
	bh=M+OLsRWM1NdhdmuZawaPYUsM6JtPgnzD/hR49iuB70o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RsHqaU7m3+ZeFfzSmNsGAkBerwBqrD0Hy7wAeZrJZX95BBRQFJPrURFKXFOWTLVR1YO5wSMSd0mJxX2YKRkKFD4CntdNJo4GHeuiyzNM7dE03klMbPB1mqfqEABHt1x9fTKaRkzcWA5Q5fUMbKy8xJH6YyxbXlXov5TDhxowFNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=VkykzHjX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FB1DC4CEC0;
	Fri, 13 Sep 2024 04:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1726202282;
	bh=M+OLsRWM1NdhdmuZawaPYUsM6JtPgnzD/hR49iuB70o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VkykzHjXpOt6cy7wsis7p5Yx1PAMYiG/BLePcICWAT3yV3lmR+WUPefugZPSZlgUM
	 0Jof/8U+dz08IUbT2bGnVlhxxPReNdIF4LkXkfzDp6lu8FaO6LINDIDnYEZ/rti5MA
	 AhHMabi2yUlPeKXKBICMtw52HY7qBgelFf/Bm8H0=
Date: Fri, 13 Sep 2024 06:37:59 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nayeemahmed Badebade <nayeemahmed.badebade@sony.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	rafael@kernel.org, yoshihiro.toyama@sony.com,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] driver: core: add probe control driver
Message-ID: <2024091334-unsterile-blitz-efde@gregkh>
References: <20240911142319.3435746-1-nayeemahmed.badebade@sony.com>
 <20240911142319.3435746-3-nayeemahmed.badebade@sony.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240911142319.3435746-3-nayeemahmed.badebade@sony.com>

On Wed, Sep 11, 2024 at 07:53:19PM +0530, Nayeemahmed Badebade wrote:
> --- /dev/null
> +++ b/Documentation/ABI/testing/debugfs-probe-control
> @@ -0,0 +1,14 @@
> +What:		/sys/kernel/debug/probe_control_status
> +Date:		September 2024
> +KernelVersion:	6.11.0

Minor nit, there's no way this can go into 6.11, you all know that :(


