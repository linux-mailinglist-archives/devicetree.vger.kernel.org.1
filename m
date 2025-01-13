Return-Path: <devicetree+bounces-137911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1B8A0B12C
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 09:33:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B14FF3A574B
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 08:33:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3537A233134;
	Mon, 13 Jan 2025 08:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oH4qNTC2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BAC1232366;
	Mon, 13 Jan 2025 08:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736757217; cv=none; b=mWwi4sr57fefx3X6k8+n83NFducXoSgANlBv82kXfxNLC0+Mvg3Ae/fSsyuTAV1ddrW2UOLMDoyoChEg9tU19ugn/AKdGsE9gvJ0777e4nLt3gRbUfaLzerW22OHMZOM1bo24Z/GQQYDtB1XMm1Y+3vKveCs+sN1uXLdFB/Bq4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736757217; c=relaxed/simple;
	bh=G3U++KIr+G48m3HRdZchvamanmjNeMM6ZfT0ivLMkuM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q69ZFNP9axO+UVHLpSUGQ6CozXq9cdnzEZFCSTqkVpQj+1oY22UVcQgonsFQDwJ9elOf9T3pX5Hmft+Bk3y+NLnA8rfDCLb6mfLIqRyyj2eGv/WxA02gxqPA+zc2dj/Ksog9FwXPLEg9wxBqUyI0w1Nr4xAav4hNVgDy9Nfi2eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oH4qNTC2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA0C9C4CED6;
	Mon, 13 Jan 2025 08:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736757216;
	bh=G3U++KIr+G48m3HRdZchvamanmjNeMM6ZfT0ivLMkuM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oH4qNTC2vWeE29Y8C01hXgP2lBOxNoR/vlUEQRe2weCzWWapF9ymLPsGQ6kx1kIWt
	 U3u9lVcJue1wSzFmS4pJCpueK8dkuiz2uAHZQKioZJX4NZ6hjcg1rOs/KVYdRFRhty
	 sAFVjbBSWtnbcIxbGrnrvyh15TNU0uxbY40ftcsEHnwfBJJ5HR2M0syjedUsZDHPbd
	 PElv9T8JRAKYOBxuzNrrUgBFDcOwFRe+mDi1F8oWm5PQH0mjysV8Y4cJZuKzb8FBbH
	 4nvsXtxRCL9hFzbXwMH3lDitqC5C0m55OvazidVZZ1IhbBET3QPFJO5Jd5tcUw/fAI
	 0IYnnXHJTSjdg==
Date: Mon, 13 Jan 2025 09:33:32 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Zijun Hu <zijun_hu@icloud.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Maxime Ripard <mripard@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Grant Likely <grant.likely@secretlab.ca>, Marc Zyngier <maz@kernel.org>, 
	Andreas Herrmann <andreas.herrmann@calxeda.com>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Mike Rapoport <rppt@kernel.org>, 
	Oreoluwa Babatunde <quic_obabatun@quicinc.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Zijun Hu <quic_zijuhu@quicinc.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Kees Cook <kees@kernel.org>
Subject: Re: [PATCH v4 14/14] of: Improve __of_add_property_sysfs()
 readability
Message-ID: <lpd4bay4mv4qh2ax6ywdwe3hb47bd7ppcxn3uv32fsrzo3e6lj@yyocdgrpwnkq>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-14-db8a72415b8c@quicinc.com>
 <20250110204154.GA3529721-robh@kernel.org>
 <c79dd576-0a85-48e2-a7f8-e4b4e005a18b@icloud.com>
 <qvyhzgeye7qwppcafisvjkg4wwkrenwxq7nebnsjxdenj7wvxm@qwxzet3iyzyx>
 <680a0b08-b085-41aa-a0e3-f36c153c91f6@icloud.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <680a0b08-b085-41aa-a0e3-f36c153c91f6@icloud.com>

On Sat, Jan 11, 2025 at 08:44:34PM +0800, Zijun Hu wrote:
> On 2025/1/11 17:17, Krzysztof Kozlowski wrote:
> > On Sat, Jan 11, 2025 at 07:48:48AM +0800, Zijun Hu wrote:
> >> On 2025/1/11 04:41, Rob Herring wrote:
> >>> On Thu, Jan 09, 2025 at 09:27:05PM +0800, Zijun Hu wrote:
> >>>> From: Zijun Hu <quic_zijuhu@quicinc.com>
> >>>>
> >>>> __of_add_property_sysfs() hard codes string "security-" length as 9, but
> >>>> that is not obvious for readers.
> >>>>
> >>>> Improve its readability by using strlen().
> >>>
> >>> Does the compiler optimize the strlen call away? Maybe, maybe not. If 
> >>> not, that's N calls to strlen() where N is the number of properties in 
> >>> your DT. That's in the 1000s easily.
> >>>
> >>> Do you really want to go test enough compiler versions we support to 
> >>> feel confident this is optimized away. I don't.
> >>>
> >>
> >> i understand your concern about performance.
> >> perhaps, such impact about performance may be ignored for linux OS.
> >>
> >> what about below solution ?
> >>
> >> const char security_prefix[] = "security-";
> >> use 'sizeof(security_prefix) - 1' for the length of string.
> > 
> > Code is still not equivalent - just de-assemble it and you will see
> > some overhead.
> > 
> 
> Thank you Krzysztof Kozlowski for code review
> 
> the overhead may be that use of stack is increased a bit.
> it may not almost impact performance since 'sizeof(security_prefix) - 1'
> may be still a compile time constant.

No, I was talking about initialization. Look how it is done.

> 
> > Maybe just introduce builtin_strlen() to string.h and use such? It would
> > be the pretty obvious code.
> > 
> 
> it is a good idea to introduce API for this common issue, it seems the
> main strncmp() usages in current kernel tree is to check if a string
> begin with the other string a shown below:
> 
> // "s2_string" is wrote twice, and also impact performance
> strncmp(s1, "s2_string", strlen("s2_string"))
> 
> // it is not obvious for readers that "s2_string" length is 9
> strncmp(s1, "s2_string", 9)
> 
> //"s2_string" is wrote twice, same as strcmp(), may be wrong
> strncmp(s1, "s2_string", sizeof("s2_string"))
> 
> //"s2_string" is wrote twice
> strncmp(s1, "s2_string", sizeof("s2_string") - 1)
> 
> what about a new API such as ?
> 
> // check if @s1 begins with @s2
> bool str_begin_with(const char *cs, const char *ct)

Nothing related to my proposal, so no clue why you ask me. Anyway, as it
is one more unsafe str-like function, I don't see how it makes things
much better.

Best regards,
Krzysztof


