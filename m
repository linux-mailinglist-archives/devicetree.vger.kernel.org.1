Return-Path: <devicetree+bounces-239447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C190C64EDB
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 16:44:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 070EC28C42
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 15:44:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A3632765DF;
	Mon, 17 Nov 2025 15:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z9hLVsPF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F192326ED35
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 15:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763394259; cv=none; b=roeVOktZOsgVacYXzKXmAHXSuE0LVZ02Knd4hrBEmeRz28PYVN/EuwUiA17jVml68xe2mIwNjnanSQA9FthkNH58JJ7Q1I1Z03uZd4hfqlTrsMB9Y7fAS0ttVeNNNN6yUygmkmJk22D0H/fr/ZsPzVLN29JrZh2mCEnNuw3ExhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763394259; c=relaxed/simple;
	bh=GakGLx3BRYbnpcXKQqj2rxUbKKiFxYQ8pO9cOSBXY70=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iuw5rr1AjO3KzTh71J9AaQyV3MZw9qhbxVAgKMLG2kzadGdzNj10evoKo4U87IbVE5U9uQv9/XDUiG712m68Kdkm41weg2gQbToUFqfzJfaQCPn+5Cx2iOCcx5T5FFQpIpz+6RyjMrxzAv8gUU05zQgr8Xo330qHRaauhuA+3GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z9hLVsPF; arc=none smtp.client-ip=209.85.166.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-4336f492d75so22935625ab.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 07:44:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763394257; x=1763999057; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GakGLx3BRYbnpcXKQqj2rxUbKKiFxYQ8pO9cOSBXY70=;
        b=Z9hLVsPFWXh8ou8e8+hREoGBt/GvVkrF1z5NKwnLwcXJw2pRJXtJQWjGZNt+l+CeBS
         g+xfKbJfVGM3kwG/SSNfvdLY5+rSU+gX2rvXd4F9rJ0NdNGTqcQLfQ0KHKd3qQ1rgp+m
         1HFKUet6ct0HHqSBbUOBwyFF3Qac4TlP36gmFFnq0tykytu2BhRBThmbDQzozHJprhiD
         OBEYnZpSyzQml4/cckmspF9IOlGEWGvpu0zwLBMJEYLVFpWXoNexVqygNbrg/IFg8aHo
         Xti7nXm6TqQpWnAf/VXIFilctyJulbYUzYlsXjgX8NLyiL4fe0s1chZF7yRWOfTqb6Wt
         dGDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763394257; x=1763999057;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GakGLx3BRYbnpcXKQqj2rxUbKKiFxYQ8pO9cOSBXY70=;
        b=vXLUJw3WU0hljHvYej/uLkqrKHpkPZxPSd4DXeon7+flQgirMzynHuKavPXaYtliAC
         ZiOjHuNqFG29qgMiKrPyLeGQ0D2BdNndOaKq9FaLYCntVljPUUSK+ew8iH2ceCke58zr
         MGoIAnNCoK79SjI2yz7uq2wXoXrCZWORbEWOy9tKYI1XjkBykM9oxxpBxTAmlzoOA3Ko
         qsS+nkjdt5N7cdlFkC7O3IfPEw2dKRkuLKzBLhmxRrbiou6A10/YECcbvJc44Eq/ElLx
         yRnMDT4fReWd7LaH1Q5AnDkomsPJxPgXt9CuJ7/hY4nDHqlwKew1QmH/7jxrvGrZyFBH
         2G3g==
X-Forwarded-Encrypted: i=1; AJvYcCVLIE3qgtAlO9veakPrtwMmMWHwrzemgg21u88nlaMf9FXf7yXA0P64FgnUn7bc9iM/v7LWklXVnA5P@vger.kernel.org
X-Gm-Message-State: AOJu0Yx92H0XwCR/W1zWQNWT+NLnj1ZArPclyb+5HTsYfZxopSUcJkBM
	/w3T0tF4I0jczSyyqlPvHPO/B85DsYDyAhggrIgkvqqVCNAm6pC94k0zDM92RStc9n8DwJrDPv/
	z+mFQMsHSM68GytQW/keguGul6DVyl+M=
X-Gm-Gg: ASbGnct7na/p4ipdDbzF099Jxvij1y/SC9Z5S/Hda5Pb5VZs8wYaWxDy+9X2wDYGxgs
	I9n/10Jrzu3DC5tl4hz26DHtocVxTfgnzPWyWqe6FnjOUckZV/GK6lNCz5r+HRx+pgLjuCBTKqv
	JDPq2pGCM2Nu8bk9QxV6P6GCNGJjD0nz/dXEKLDpXk4WXt+weUZUkWRH+PjTYBkapoWTvqoACSf
	vtKjLpGlOGwmIurAqDc7lz2+sfZznGV0/DtZA6c2cZpNcINwq3gtAgTnZkN22QzABtXSps=
X-Google-Smtp-Source: AGHT+IFbdBdmra1r1MTAuYm3h2YFina8VK1yyiL7rlrlzpAiB2tUYzJNKmJeOBR2QgET/eNSGZvdZJ+H1CdvND+9bDs=
X-Received: by 2002:a05:6e02:1808:b0:434:74a6:48f1 with SMTP id
 e9e14a558f8ab-4348c94f0b1mr136903685ab.27.1763394257015; Mon, 17 Nov 2025
 07:44:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251114-kaana-gpu-support-v3-0-92300c7ec8ff@oss.qualcomm.com>
 <20251114-kaana-gpu-support-v3-3-92300c7ec8ff@oss.qualcomm.com> <ff634b09-c28c-47d0-a57f-6203755cedb6@oss.qualcomm.com>
In-Reply-To: <ff634b09-c28c-47d0-a57f-6203755cedb6@oss.qualcomm.com>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 17 Nov 2025 07:44:05 -0800
X-Gm-Features: AWmQ_bmyUIznEYyCXfUeRMdsertmn-wYkkRaXSqTVS6sR8e15JC5caO5D32ua0k
Message-ID: <CAF6AEGv9OVHBDF+XVNRr+ZtWijs+MDNUgw9zg0HbebuCQbHcZg@mail.gmail.com>
Subject: Re: [PATCH v3 03/20] drm/msm/a6xx: Skip dumping SCRATCH registers
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Akhil P Oommen <akhilpo@oss.qualcomm.com>, Rob Clark <robin.clark@oss.qualcomm.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Sean Paul <sean@poorly.run>, Dmitry Baryshkov <lumag@kernel.org>, 
	Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Jonathan Marek <jonathan@marek.ca>, 
	Jordan Crouse <jordan@cosmicpenguin.net>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Connor Abbott <cwabbott0@gmail.com>, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	iommu@lists.linux.dev, devicetree@vger.kernel.org, 
	Rob Clark <rob.clark@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 17, 2025 at 6:00=E2=80=AFAM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 11/14/25 12:29 AM, Akhil P Oommen wrote:
> > Crashdec doesn't require SCRATCH registers anymore for a6xx and newer
> > architectures. So skip dumping them during recovery.
> >
> > Suggested-by: Rob Clark <rob.clark@oss.qualcomm.com>
> > Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> > ---
>
> Looks like this changed in:
>
> https://gitlab.freedesktop.org/mesa/mesa/-/commit/95104707f189b2e1b06c855=
b563c1203b33da354

Crashdec finding estimated hang location based on CP registers dates
back prior to importing that code into mesa ~5yrs ago, fwiw.. and was
improved over the years to better handle IB prefetch since then.
Fwiw.

It does mean for gen8 we are going to need a CPU based fallback to
crashdumper to make smmu fault devcoredumps useful (since now
crashdumper is needed to capture CP regs), but we need that anyways.

BR,
-R

> and needs_seqno is never true now?
>
> Konrad

