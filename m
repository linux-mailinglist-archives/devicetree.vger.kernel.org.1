Return-Path: <devicetree+bounces-137903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 605D7A0B0C7
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 09:15:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4660A1887401
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 08:15:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 714BB2327AE;
	Mon, 13 Jan 2025 08:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KVN45Gn/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D352A232366
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 08:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736756094; cv=none; b=ukXXVM056U0+okfCFeX1BGgbwJgzNSiYsQHYUiXJGj8khEFMbPXYbeiFKzglF4lUL8T6CvP+7Xk3JuJjDM6vfnhv4lF73nHFKWKHM9ZMguIsPcSyDFTWloQ3vN20KBPpD1NGOOAZS3zTkmCS6ghWWIuO1gpLECEvVfPNOi2Ilnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736756094; c=relaxed/simple;
	bh=Hvgcs+cliAfpJ3VVSWJBygzxwPv3GVFdCfpgC7KIO4A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gRMlMEEUOuHHcar9tUA07oF3KfDtpUDndnFHsYqdYDzoiIi914Kp2qHUVuEBrc86mJBl+XC3J6PD359DjWwkSUruG78mPNBxdgYG0jPzNayO6xfdsUJwRpJPkcHiYw9I1n7b34VjUDEEk9jbhBTBHnVD9XZ6uE8J8fc5TRbSAPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KVN45Gn/; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-30034ad2ca3so28335511fa.1
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 00:14:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736756090; x=1737360890; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EiBQMlbbRKX1jfLOnAiy2eBHbg9zc0uMkgrPET/8Jyw=;
        b=KVN45Gn/TeQcr8nxOFWmfi5aYFaqpsUZngD324pbbkZf3kC87yhZWqMkS8fxtJWyhJ
         6LUQOO9PbgWAnU/OzQY0oT1Ac+S77Dvy5494MNGw2UpsJoLw9eKpoax0AY86GhSIPP77
         QdyVLX+NnpqFKhyGxpmFwRa4vsylKm8miJ78niEGgTl9c9FaxxHgw+PTPwDXj2kT06AQ
         BdVtZE7MQg2AhksRsMRH+zom8UDpHllH3thYlpNKnZBzOFJDnKVL8GBn4SibvFsG/q3M
         woFfuub6dTfJLowWkXB9WEcmdFDO7U0QfBfgEl4bCayFezUdxd1yeBaizvMp4I9HyZwS
         xV7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736756090; x=1737360890;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EiBQMlbbRKX1jfLOnAiy2eBHbg9zc0uMkgrPET/8Jyw=;
        b=mG+TpIDs6XSTdfdjHOl01Di8Iziukwp2aulz5VIG/uKRWTDSrbkLDSKFjW8lUjipcj
         pfG5HIDJolDmVdFf+dFw5efgjGhZGyeQ2S8d1vPMtbrnofUhJn7mUyF2ImHfB+3HB9TE
         hT0cTLpCcdLWxS96dCkgM+ZqVG9DmNH59PIEh02z7RBffKl/Xa9G5GxS4fwJ+4OmuLov
         w/EYgAcmR8sKUzoriQBTFUmqFWWe5vHK7zBOTXe6VaFCLl1xcZmElIbOBifJoJqcRKDj
         iSG0elriDpUGkc2dSC81yJRDsf4TXyxIvZg3OiKxHrkdVwoAGKiIvu6Xkimgkoul0p8O
         ZmfA==
X-Forwarded-Encrypted: i=1; AJvYcCVeJGXxkQDYouZj/kwPby7n0lCzfcehPy7PDl76DJd71oaAoaxVAKAy6D+RXqEjkYr1ZEsWfM88An4E@vger.kernel.org
X-Gm-Message-State: AOJu0Yxv0NmHA40E9FDUoeGRiprTT0SeqfpqRvJEfSDtSwq7PMkbYuvF
	lk9nRPEvy69ooNu6CKRgLZ5lhh/WqCCMyoqSNx1iSAcVJ4CALQjEHFZtxog8B0g=
X-Gm-Gg: ASbGnctjaT8JyRErIasTtQ8y/gKKr0XPZBw613qu1j09F8tsjHELsUJTLAFdmwNLy0b
	7Jm4nRtvRRI9noYPoa5aAkgMaZQNwjqgzUbJLToAIhdKc9fqdVr/FvDOudH4hDEATPYmtdovX74
	0YmzPUuz6FPSqCVv+Z9I+BGhoU90e8aYbr7yXFtAT/5v4OF0ejWwTr/V4VMoNdlUIy79PuKZOLi
	VjUTJys7/cpQVY+M7LNJNsnd3szRVW9+w5RQ0/tJHOiVDvb/XJrfH5AZgPjkY8GwwUhy7iE/au+
	N6S450KFlEBCpTcYh/GMVayMXdYtE4mpGIo0
X-Google-Smtp-Source: AGHT+IFiOGkWxTgwDiqqZRV/TncB2+0Lbwph18oB4337Oov0d7u7UgJwOOmW10YyJRV+FY90JH+dtg==
X-Received: by 2002:a05:6512:39cc:b0:540:3581:5047 with SMTP id 2adb3069b0e04-54284820134mr7051637e87.48.1736756089990;
        Mon, 13 Jan 2025 00:14:49 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be49dd5sm1253953e87.48.2025.01.13.00.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 00:14:48 -0800 (PST)
Date: Mon, 13 Jan 2025 10:14:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Odelu Kukatla <quic_okukatla@quicinc.com>, Mike Tipton <mdptipton@quicinc.com>, 
	Vivek Aknurwar <viveka@quicinc.com>, Sibi Sankar <quic_sibis@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V7 1/5] interconnect: core: Add dynamic id allocation
 support
Message-ID: <x4lsksrpwe5z6ti7gi2kufyhrpvffsmo2im3oqhqgfaft2ihfm@7xnd6bvy47rv>
References: <20250111161429.51-1-quic_rlaggysh@quicinc.com>
 <20250111161429.51-2-quic_rlaggysh@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250111161429.51-2-quic_rlaggysh@quicinc.com>

On Sat, Jan 11, 2025 at 04:14:25PM +0000, Raviteja Laggyshetty wrote:
> Current interconnect framework is based on static IDs for creating node
> and registering with framework. This becomes a limitation for topologies
> where there are multiple instances of same interconnect provider. Add
> icc_node_create_alloc_id() API to create icc node with dynamic id, this
> will help to overcome the dependency on static IDs.

This doesn't overcome the dependency on static ID. Drivers still have to
manually lookup the resulting ID and use it to link the nodes. Instead
ICC framework should be providing a completely dynamic solution:
- icc_node_create() should get a completely dynamic counterpart. Use
  e.g. 1000000 as a dynamic start ID.
- icc_link_create() shold get a counterpart which can create a link
  between two icc_node instances directly, without an additional lookup.

You can check if your implementation is correct if you can refactor
existing ICC drivers (e.g. icc-clk and/or icc-rpm to drop ID arrays
completely).

> 
> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> ---
>  drivers/interconnect/core.c           | 32 +++++++++++++++++++++++++++
>  include/linux/interconnect-provider.h |  6 +++++
>  2 files changed, 38 insertions(+)
> 

-- 
With best wishes
Dmitry

