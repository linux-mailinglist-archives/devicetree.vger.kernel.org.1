Return-Path: <devicetree+bounces-139322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C912A15181
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 15:18:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3CEFC3AA626
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 14:17:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0333086AE3;
	Fri, 17 Jan 2025 14:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gZicw8V7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648FF35968;
	Fri, 17 Jan 2025 14:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737123465; cv=none; b=D9F0Wl1eORw50v59ITI748JfUex40BXfXl6khuKN7wm8KrEEZiNDqAULNDhD0q4Xgzb6tmVNZv+YdGSE4e5Fd7oASHQgDtDwxI6FMKtQG7Kt5nrbnXaByy1j5Zx3XuLXAb3NWLmbDrs/P1ULIjX+duhzvwKFah5tgRCHf7QH4bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737123465; c=relaxed/simple;
	bh=aGwzPY4c5gn4nEKlnu01wESwyE/Yu3m4vbeoQZY75XA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M37l7aMRmbLuu/gvMXstSYZD+JMpCbBkAKMPJBMtPWfcxWIJsCZXZOFiiOsuN1+1kgqwBCbfr8A7PEtvWqM3oqbxcnL28frGKaYTj7nuUUESQTZMl/RCYHm7zbmHqXR4Hcj2LpGZyrgClk6sGcDQGuH5Hm+0rUUxom6vnvk6PdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gZicw8V7; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e53ef7462b6so3549217276.3;
        Fri, 17 Jan 2025 06:17:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737123463; x=1737728263; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aGwzPY4c5gn4nEKlnu01wESwyE/Yu3m4vbeoQZY75XA=;
        b=gZicw8V7+L9WgzydhYvCqCDWWUyIaWcF8xDHBPnm6N5oFPLrIQgVk1qM7q7Sejaerd
         V06Vg764xGCmGA12z2pfDPWqfJc2MHmXJz+hdFYGNPliWzB7WyNa2I9Wu76jj82NOCM2
         TaBJ7yuYBEYMRvG+ChbEW91nstX5W4CyLqHtCh0ZYRHCUp2lHrjYgc3o3UJD53039/nv
         LBBcZ1TT3uIS1TpCNr431RiYaBqg9AGXsxzWlFukAFeqRRruLfvEGa051kFCa63eqFuF
         /IMfkai3yBdRzFmprk6ohnwO5DFyED1Da4RDoAaUPP5O4LxLz3GbnXp1qR83/CedW2dS
         nTPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737123463; x=1737728263;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aGwzPY4c5gn4nEKlnu01wESwyE/Yu3m4vbeoQZY75XA=;
        b=Tdrw05DLtuM3AuyO4+kZXWQFGEcmM3ylI6enYrvE3yb7iHFYHix0fMiDAeeSf919Lv
         zQDpiJ+ST67XsLWxmGP13rZLcf/Ib/ODqCYnIz1N8KiCpR18X+SinXr4uN480diA+aXt
         a9D8MV4stOm56hE4t7V++onAUDsw1rbA5cFjYiR164O08btETAgtof38d07CBYZT8/Or
         JhYe1xzciwSqmp3zC/FdATMyrpAuW9c3xvtM134G4SOAjTSd7yJ1urKAUYxByn10716E
         GRlm795Bfxc+FBXNP3yHChQCFzjZn6NiA15HReSKEAxnznIpFvbHfN02h44EsMuYajKa
         XELQ==
X-Forwarded-Encrypted: i=1; AJvYcCUSGvFrl7vchqrQ1Yzb89aOjfdpc8InWvovKaPtigS9mYXiYIOKXrno4rRtbmnEBHU63F0bPjzHrHHjB1zi@vger.kernel.org, AJvYcCUWKdzs0wVgNpk9rRhfz5gcl7aNs4uKwQGy9Zk9pJ6ptg6QwDRyanOgU1Ynp6A9+K0mjqQxMPxUeiLS@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6+juCTq1fvqj0lDND7un+cvJgM0czPeVP8tgGfij3oWbm4+BX
	3XP0msmTQLKtWAfJRQsejydmxth/8TPYEuXjGZL+UJxNXNSuTcxQGM58ybgNp83kw0ZCVmxOp5j
	QPZ+3en9SAj3xoWb+oQZclCwn8Jk=
X-Gm-Gg: ASbGncvHktHzZ/PRaop9Xfh3uOC0nYhHWwlvzuDIbVpfJc9pr9VqTwI+ewS7W1xG+Uj
	dLNsOFngwwDwyRmHCszdRLMYz/B68SGFzevdDOA==
X-Google-Smtp-Source: AGHT+IEgzT2Y8X/d+HOguRWOezTmCdaDrvMrd0xyuzC2YC1+k0LNDI0M/Oo8/mnNOxO0+kIgTEzO5F/+UdmBoEnNI4E=
X-Received: by 2002:a05:6902:1b0d:b0:e49:e085:c0b4 with SMTP id
 3f1490d57ef6-e57b104668amr1782609276.8.1737123463394; Fri, 17 Jan 2025
 06:17:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250114-adpdrm-v4-0-e9b5260a39f1@gmail.com> <20250114-adpdrm-v4-2-e9b5260a39f1@gmail.com>
 <mu7qiybhj7tu5hauk7izfxqlookc3awpknhjk74zwpkbznei4m@kewap6vivzoa>
 <20250116-vivacious-congenial-nightingale-cb2f6d@houat> <2alm7gds4k2lnbk36gjdw6yhzhpls3ce5baycdiv7lsigxsbzn@rhwdgnphwwp6>
 <20250117-neon-unicorn-of-plenty-bbe639@houat>
In-Reply-To: <20250117-neon-unicorn-of-plenty-bbe639@houat>
From: Sasha Finkelstein <fnkl.kernel@gmail.com>
Date: Fri, 17 Jan 2025 15:17:32 +0100
X-Gm-Features: AbW1kvbN_g2HyuopLeZCoB8YJ1kzXFaQ1lvT6Fub5esd6CPjCjqmkvDJ9dDJO2Q
Message-ID: <CAMT+MTTrvXsYONQj0V5U+dPJtCBOAQ-Lfg7NONMB6onMvJ+3QA@mail.gmail.com>
Subject: Re: [PATCH v4 2/5] drm: adp: Add Apple Display Pipe driver
To: Maxime Ripard <mripard@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Hector Martin <marcan@marcan.st>, 
	Sven Peter <sven@svenpeter.dev>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Alyssa Ross <hi@alyssa.is>, Janne Grunau <j@jannau.net>
Content-Type: text/plain; charset="UTF-8"

On Fri, 17 Jan 2025 at 11:24, Maxime Ripard <mripard@kernel.org> wrote:
> >
> > I was thinking about using drmm_ here, as the DRM device is also created
> > and destroyed each time. But I might be mistaken here.
>
> Ah, right, it makes sense then, thanks!
> Maxime

Not sure i understand. The drm device is created in probe(), and is
destroyed by devm.
I do not see a path where it can be created/destroyed without a trip
via probe/remove,
and so tying the lifetime of the bridge in question to devm seems correct?

