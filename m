Return-Path: <devicetree+bounces-141713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E47A6A2220B
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 17:48:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12FE03A290E
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 16:48:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C39F11DF27E;
	Wed, 29 Jan 2025 16:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inRJPxWI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C68D1DE892;
	Wed, 29 Jan 2025 16:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738169303; cv=none; b=OOZIo9emFEuaIcS0RJaQ3ykbfzP3XvtLDrUdsosKayBGJYUVRNtmjNf8kbVKNV8k/GjzbqieDHW/ldaxhpcm956ebgyBrcUoIRwTHu2m9kiJOdFAHsJAyuM9CDikYM/oIlHJU2V86EWYjYoYD+QT38yZpJEq80Gt2eqfzaqYZhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738169303; c=relaxed/simple;
	bh=cPMFrVnixusw96a9Fmo4JtHymED1dltOdhQWwoD/u/g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DYmI9uuGSbmzJMUoFO9DZFOjIDFBm6XNdtvMScGn3+PiU7X1gN8hD2gxyqV3tut4Lv4SQro3jWsNRLIMUeWVnj00Eo6gbUFEtfFV5z6K4hR5d+AXx76fpRVtIOj2rAjBB7nQqDvOJxkm5k2LZQLInSXKOgfFC00xtdl3/3Pb6GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inRJPxWI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDFF8C4CED1;
	Wed, 29 Jan 2025 16:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738169303;
	bh=cPMFrVnixusw96a9Fmo4JtHymED1dltOdhQWwoD/u/g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=inRJPxWIOygy7umlyR4ye39g733FIqVFLcvIGW2lUG+dVNp/BE14XX8E4JIiA1Vgg
	 E2aEfu7o5dTjXuiYfdtk9khNsdLJuL7TuL+7R5tP+eHNviYtdkpVicxPbP7VubIwqi
	 7MP6DPULsd+EeMkwSDJzDVy3IEHh9IgDj4OfGzaAqFotraMrlVOrB9N6GIOSJaExeg
	 CboYAVzXGEcPLgUqicr2UdW6s504QHaaDI6fzO+5qNqFDfLei33ZxXypVwuPkaIj+B
	 ZLJ+Im4KK0aRMCMvocetnLunuYaY2Kup/za4G1r9l0x2IRMMpRWDk5GAESTACstozP
	 HIgkA+Vu3tTFw==
Date: Wed, 29 Jan 2025 10:48:22 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Thomas =?iso-8859-1?Q?Wei=DFschuh?= <thomas.weissschuh@linutronix.de>
Cc: Basharath Hussain Khaja <basharath@couthit.com>,
	Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] of: address: Add kunit test for
 __of_address_resource_bounds()
Message-ID: <173816930010.2216376.7589401365931628062.robh@kernel.org>
References: <20250129-of-address-overflow-v3-1-95d1760ed791@linutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250129-of-address-overflow-v3-1-95d1760ed791@linutronix.de>


On Wed, 29 Jan 2025 14:35:27 +0100, Thomas Weiﬂschuh wrote:
> The overflow checking has to deal with different datatypes and
> edgecases. Add a new kunit testcase to make sure it works correctly.
> 
> Signed-off-by: Thomas Weiﬂschuh <thomas.weissschuh@linutronix.de>
> ---
> Changes in v3:
> - Avoid constant truncation warnings by using u64 for test case
>   expectations
> - Run through 0day before submission
> - Link to v2: https://lore.kernel.org/r/20250127-of-address-overflow-v2-1-61b5046044e9@linutronix.de
> 
> Changes in v2:
> - Rebase on robh/for-master
> - Drop already applied patch
> - Add missing MODULE_IMPORT_NS()
> - Fix sparse warnings: "cast truncates bits from constant value"
> - Link to v1: https://lore.kernel.org/r/20250120-of-address-overflow-v1-0-dd68dbf47bce@linutronix.de
> ---
> Technically it's possible to run this unittest with !CONFIG_OF_ADDRESS,
> so there is an explicit check inside the test.
> It would also be possible to add a dedicated source file, but that
> seemed like a lot of churn to me.
> ---
>  drivers/of/address.c    |   5 +-
>  drivers/of/of_private.h |   4 ++
>  drivers/of/of_test.c    | 119 +++++++++++++++++++++++++++++++++++++++++++++++-
>  3 files changed, 126 insertions(+), 2 deletions(-)
> 

Applied, thanks!


