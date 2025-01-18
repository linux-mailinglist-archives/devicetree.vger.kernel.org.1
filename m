Return-Path: <devicetree+bounces-139460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2F3A15D5E
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 15:38:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 74F701887757
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 14:38:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B4FF18FDB1;
	Sat, 18 Jan 2025 14:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxFcLrR5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5135C184;
	Sat, 18 Jan 2025 14:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737211126; cv=none; b=WeVVrgps96LaxroDizu9EpNOdgMtYBaBvws23IgPuynE3Mxs//hwYNPE4Ji4+3LQ++Z4a8yT7h9oPDpKiCfIVWWr0CzHV9a1ayoeWGmV2nSxGmLPbFGSOLI1sIXpiToRGIuFt+v1LrP6WrmyqmzNE2jmv50dEselVbZL24KdTzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737211126; c=relaxed/simple;
	bh=p8uuuT0wymRMBVrEbqKTi7D8E2Qgrm+TXCVTrrW58FQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j+KtZ+dkbYxx4DFaB7IWYcFRRlY/fGTGvxjicVM1gI+foNMVCBAInltE+kXY1Ljhf2bfeqRCuP0jvqtvT4PObTSTySTPXBT/ePFHEQZTdoqutdb8Pv1lz5oNRTCoGykU33KGsjBV+hBAIS5qBoEd6MBAPYzif21T8xZ9Y6tbKsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxFcLrR5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07F4AC4CED1;
	Sat, 18 Jan 2025 14:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737211124;
	bh=p8uuuT0wymRMBVrEbqKTi7D8E2Qgrm+TXCVTrrW58FQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sxFcLrR5hAesiWX32VEYCWUFmZfFa7LKPtCa/ukviXb7o8//lw7x6jXdtr8z6ZKt8
	 +BY3KZfXFkczLCKoMEXdDKn1f+wFBXBQZeQjeiRudeTy/q9sGCRE6mHkbFPdu9R+pr
	 NmJxaw61CvVVRgNlBZo1w8SARhWfa7wZYkiOWcVJ/p4CWip4tQyAUeGwUCN+X5C6xK
	 WpLFWXQKqemc8qUixDu0zLByoLyF0sBGoseyPCkJzSpM8cGdXVSIcnCBHQVdsKEPbt
	 LUU94ozMdgrKDQILBuoAVeH5U8Wbl4hoFOMBoy1OIxbWKdp5cuX55nl+JMp1DtpODZ
	 pa/mwhpHjxyUA==
Date: Sat, 18 Jan 2025 15:38:41 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, thierry.reding@gmail.com, sam@ravnborg.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/4] dt-bindings: display: panel: Add compatible for
 STARRY 2082109QFH040022-50E
Message-ID: <20250118-grinning-mutant-husky-644c6d@krzk-bin>
References: <20250117091438.1486732-1-yelangyan@huaqin.corp-partner.google.com>
 <20250117091438.1486732-3-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250117091438.1486732-3-yelangyan@huaqin.corp-partner.google.com>

On Fri, Jan 17, 2025 at 05:14:36PM +0800, Langyan Ye wrote:
> The STARRY 2082109QFH040022-50E is a 10.95" WUXGA TFT LCD panel,
> which fits in nicely with the existing panel-boe-tv101wum-nl6
> driver. Hence, we add a new compatible with panel specific config.
> 
> Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> ---

No. Read the emails ENTIRELY and eithe respond or implement the
feedback.

<form letter>
Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC (and consider --no-git-fallback argument, so you will
not CC people just because they made one commit years ago). It might
happen, that command when run on an older kernel, gives you outdated
entries. Therefore please be sure you base your patches on recent Linux
kernel.

Tools like b4 or scripts/get_maintainer.pl provide you proper list of
people, so fix your workflow. Tools might also fail if you work on some
ancient tree (don't, instead use mainline) or work on fork of kernel
(don't, instead use mainline). Just use b4 and everything should be
fine, although remember about 'b4 prep --auto-to-cc' if you added new
patches to the patchset.
</form letter>

Best regards,
Krzysztof


