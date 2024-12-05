Return-Path: <devicetree+bounces-127364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 611E39E5400
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 12:32:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B7AC282FDF
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 11:32:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C22D01DA0E3;
	Thu,  5 Dec 2024 11:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bPdiy+Zh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E141D278A
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 11:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733398347; cv=none; b=Q3PAlLj8mU31Bs8sQ3v3DEwDXSEC3QBPjdDe5Cp+A2isSCa3jpYlSaocnh02Q6/1ch1VV8gA36AZ/tLUPkBxbzysrRg/2fNRb3LHZkISlgzfImmzC9zb44bBYs9EOudKwBdNjNytj7tffngJx8Yz1ZeLaF6Ppy4tlT9CYAP5eSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733398347; c=relaxed/simple;
	bh=pHj+AOu/b8zqHHui/l3LSsQltahbnfgSfiK/KVltjz0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IygMF14w5R5qkqiEmdRCGTnQxNnZn5/OoNqNQJgeqPhZGCpk0arHEkp50Z53NEYz3SO6wOhlz1dVWgfwsm46Sdqh1qsAKEQ23tyUa1QcRJttgUus8oCLsmyvQbPQmRV6zqqP/Ny5Yz1xN5HjwJtzo2g3PuGihmoiF2KNHmWMy1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bPdiy+Zh; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e399936829eso939070276.0
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 03:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733398345; x=1734003145; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=G5K+z1ONa1RR9Z9IC6HhDI8iNZ342Y9IqNJaDLuBurM=;
        b=bPdiy+ZhQPzO7nHntoYSM3SJoFS+tqUTGwNHek4bxkKdeKB/x6wJvjrA9pOhY5bWwF
         X+1KR+v+z3FngO8oPhWD+nk/luXHkfPj0Hykl6hfzaIz7GTEHF8aw7s+TyP4rntLs28h
         F9efJFW/2h0QsaP0rHO7DPDffmajQhbFD4rruWw10+mo1OPU5q97LwY6TbSen+yuVTyG
         yGzahM637hSzgJFw1yaF2bFyD5V53cV+h+jyB4QMkCf0TxsZWW0nqTgLW9DUXXJbEoWW
         HZVZP7081hNZ0Gb9CXezfljIotV4QUtQjZbP+mnF71otQt4540Hun5gBBc+Nwe7a+w+u
         Gksg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733398345; x=1734003145;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G5K+z1ONa1RR9Z9IC6HhDI8iNZ342Y9IqNJaDLuBurM=;
        b=dhTNd5fPF+HRvusx974taUU3W35ZT7Eyfmo3vktxn2glucRXhMnhQ4DdShfxbWxhSd
         fdAZ6BILO1Lqpl3VN3dYMF+PmM5nMQNDh206701rWT4g44f7Gp/3e6wY4p+G6EJrUUYb
         tnrV/zWJYqliJMjRxxQhs1A4VH8XKLtlC/GZVpGdRft2rWwkeBpkSAZ67IK5QggYS9g8
         v0S91yzxMW4dXyYF6TVP3PBCgVLuAmR7Ez0HABeOaGl1NGRAnWWWkgqUGQb0yn8nwuyb
         uU/NlFWYZscyJ1WbZcikrHWvkL7KsfY9PCD/55kIzdXCVmPjzL5qkgVkvgq3JCrU7sGD
         kEcw==
X-Forwarded-Encrypted: i=1; AJvYcCVB9BgaKqjXeb6/cHq/dr7aI9fqkfNoJFZudTDetvSAJafTboDtKTuP3MtDB3hFPi/fAumoLdANVXfK@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9p2Gg6CmW6ybBBKh25Ly/oLmYd6Q/R/V9+1xaHkS5ghEkRBzU
	IZBy5unHU6B6TowgOoCyMgMlVCYVUux+KLHpm/6Ecfq6chAY6ZsxlE8gdIz210D8igwWS/rbMiz
	BjJLhY3oUQ2oFew63uWgwOqJilKc36+jXymEwiA==
X-Gm-Gg: ASbGncvZcWyunrEtsHVO59rGC9f1kqShg6DydmJbQqGIFOYFw2oz27MTFaMjYDcZJsT
	5vJJv9Gh1rjecmbq7oofp5ufSqJro+WRIHGSPtPJnFnewqg==
X-Google-Smtp-Source: AGHT+IHjmMNzBozE1BA+ZpJB22O/URDVrP1u0WuP4Fn3l0waUtFl3sNfAQKJTRUadOC35vLb1W/MstA1KNP3iqlfMnA=
X-Received: by 2002:a05:6902:2688:b0:e39:b357:cb15 with SMTP id
 3f1490d57ef6-e39d3a279demr10425188276.16.1733398345153; Thu, 05 Dec 2024
 03:32:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241202-dp_mst_bindings-v1-0-9a9a43b0624a@quicinc.com>
 <20241202-dp_mst_bindings-v1-2-9a9a43b0624a@quicinc.com> <bfa857c2-cd74-4fe2-a88c-3b35a58710b0@kernel.org>
 <gpqrugcsyhz32bvip5mgjtcservhral2o5b6c5nz4ocwbjw5uo@eypv4x6jyrdr>
 <hqe2pipkcnxftoq5mvdk36xmkj3ybr3oto6eghimq75rqlncsm@v45smglhedy7>
 <pxi2nf4h34xtkickkkuwh4svvhbtsutuz5u3ukzgfgd5rzzcps@g4gct5zuc6kj> <2ef59c6d-bef2-4763-9463-06116a2e7d04@kernel.org>
In-Reply-To: <2ef59c6d-bef2-4763-9463-06116a2e7d04@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 5 Dec 2024 13:32:13 +0200
Message-ID: <CAA8EJpotUkPWU4VTmtaH=XkhwPZVXfdU8ZyHqROYpZRWDdYPSQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: display: msm: dp-controller: document
 clock parents better
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>, Rob Clark <robdclark@gmail.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Mahadevan <quic_mahap@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 5 Dec 2024 at 09:33, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 04/12/2024 11:09, Dmitry Baryshkov wrote:
> > On Wed, Dec 04, 2024 at 09:02:18AM +0100, Krzysztof Kozlowski wrote:
> >> On Tue, Dec 03, 2024 at 03:41:48PM +0200, Dmitry Baryshkov wrote:
> >>> On Tue, Dec 03, 2024 at 09:01:31AM +0100, Krzysztof Kozlowski wrote:
> >>>> On 03/12/2024 04:31, Abhinav Kumar wrote:
> >>>>> Document the assigned-clock-parents better for the DP controller node
> >>>>> to indicate its functionality better.
> >>>>
> >>>>
> >>>> You change the clocks entirely, not "document". I would say that's an
> >>>> ABI break if it really is a Linux requirement. You could avoid any
> >>>> problems by just dropping the property from binding.
> >>>
> >>> But if you take a look at the existing usage, the proposed change
> >>> matches the behaviour. So, I'd say, it's really a change that makes
> >>> documentation follow the actual hardware.
> >>
> >> First, this should be in the commit msg, instead of "document better to
> >> indicate functionality better".
> >>
> >> Second, what is the point of documenting it in the first place if you
> >> can change it and changing has no impact? So maybe just drop?
> >
> > So, do you suggest setting both of the property descriptions to true? Or
> > dropping them completely and using unevaluatedProperties instead of
> > additionalProperties?
> >
>
> Dropping them entirely, without any changes of additionalProperties.
> Unless this property was added due to limitation of dtschema?

I  don't remember at this point. I think it's worth trying to drop them.

-- 
With best wishes
Dmitry

