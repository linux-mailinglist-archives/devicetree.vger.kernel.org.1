Return-Path: <devicetree+bounces-86859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6472937BD4
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 19:49:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99CBD282899
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 17:49:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82643146D51;
	Fri, 19 Jul 2024 17:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="e8uTrJkg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E093B145FFB
	for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 17:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721411363; cv=none; b=DN1Ql+t9K2DJ5SUeXvnOuX/32mLDBL7CP6HBeMJ7B5YlAlwzcYdVW317kFNluCavWX2B37bMivNMnHmO/WgWfjlshesBc+oQkbuNyzrloGrQ99995bjr8DE72XarMPZqjWS6+tEHCsgxsf1s/C3+10jam5nB96AmDSz9gjIjiy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721411363; c=relaxed/simple;
	bh=NMnrCKod1zrNGwQ1DRNctFN0wjuyxtr733FEv/gsD5g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LqGenvNP15aoavl0Lp0s+3ZwuMsz3B8qm7mhDxbw4kyxZZ7INhvtAmwid4rqKNA8DGvRyf1W3WOl8gsIRCoMGl1UZtFZPs9z7rHE2+0fbQeP7wIGWllhLX7cwFh4aajPY2bGBgyNjy7fXndxnWDIV5nlcvzUOrqCj4ukSZAmW+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=e8uTrJkg; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e03a17a50a9so2455205276.1
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 10:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1721411360; x=1722016160; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nfgwwc2r3y6LJY2+fBZz5scVHiOZDENMtfcc2xc+/L0=;
        b=e8uTrJkgttKNzgZTrhmADRgsf7uZNZJTx1srmHDsB6VUpTw9HPFya1wX1N1DHc6EwG
         mANBpRmdLMtbpltl1hRtKMJcZnBkOW3leqrWlenzzahWGTsLCdwG/aRZLLQ8Ycx+Y6zZ
         bq1PY8YIoPrZ9zaPhK1tX3oE2BzZNt4wh6A9Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721411360; x=1722016160;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nfgwwc2r3y6LJY2+fBZz5scVHiOZDENMtfcc2xc+/L0=;
        b=WMV/hxrWYDhFE1ZxOtFo50usqH0Xa0e8xkCgcphyVlv6ZoQGsVasRn+WlRC2JAyaOh
         6vgV4nE4Kb/xmMnD5ucWhoOFSvlzZO3+oFpE8O2WyhiuImyoogxTWDYwEZ9D1xFvGb6t
         tf95VUdo1IO7PaRlwWCP749C4lYmhS3m8+baDZDdcTgeEdo5pLU0s7btKts28UwhnIR3
         JeFKPhF7tPh4yPAI+kOA18snu4dovh7nOV8KPF1cemuPJS0tD87P9NXikj6Fgxa8uHjK
         MWifZOwbPwme1BzFhM3wtiKrJhQEL7BYmwdh6wE59lQ3PtkMbIlMjUuwL2kFgUAPUrcx
         ZcuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUo+KQ3om6sbUfMiRw1OIJlO2pky589tkm4NK54q0YwPQ4o3h2o18ndImQeQUc9YK+ddon7Pz09Vo2BOQNxN+BYuE95KXwHw8oYBw==
X-Gm-Message-State: AOJu0YzPLzXgZ7F261IBhJ7ORaje6dQKKfrBe9iRM8XiLmLrivOIPWQ/
	uFC+nE9eYKAIH8fHRZMAiO/7qNO5DjNhp6+4nj2gYH+V0RaIEI+JXGVFcab+iDJW0nFNPFOLpRE
	=
X-Google-Smtp-Source: AGHT+IHWLVbJypRGeqG6GnxhYM4nkIUEwV4K2uozoE7RcHiuz5xexKjvaAfRWaMLA/nHb/nOXc4iUg==
X-Received: by 2002:a05:6902:2847:b0:e06:6e0c:5f3 with SMTP id 3f1490d57ef6-e087029e902mr419769276.32.1721411360444;
        Fri, 19 Jul 2024 10:49:20 -0700 (PDT)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com. [209.85.160.172])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b7ac7d9757sm10478696d6.31.2024.07.19.10.49.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jul 2024 10:49:19 -0700 (PDT)
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-447df43324fso326051cf.1
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 10:49:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWjSKM9B+Nnh+4q5MWJkFmYwALtwZPkR2tLCzTeF+I8ApmxWKes6K/x1kP38fg6BsLvOBXYn++26pQu1B5yQEGkub/hG0poDU4DBA==
X-Received: by 2002:a05:622a:5509:b0:447:e8a5:fb27 with SMTP id
 d75a77b69052e-44f9c86fd18mr2794581cf.25.1721411359169; Fri, 19 Jul 2024
 10:49:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240716121112.14435-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240716121112.14435-2-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240716121112.14435-2-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 19 Jul 2024 10:49:03 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W1_m0dDXM8+Gbfcv92H8_h1wgh8u13iE03nYOT-tOtYA@mail.gmail.com>
Message-ID: <CAD=FV=W1_m0dDXM8+Gbfcv92H8_h1wgh8u13iE03nYOT-tOtYA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] drm/panel: boe-th101mb31ig002 : Fix the way to get
 porch parameters
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, airlied@gmail.com, 
	mripard@kernel.org, hsinyi@google.com, awarnecke002@hotmail.com, 
	quic_jesszhan@quicinc.com, dmitry.baryshkov@linaro.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jul 16, 2024 at 5:11=E2=80=AFAM Zhaoxiong Lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> The current driver can only obtain the porch parameters
> of boe-th101mb31ig002. Modify it to obtain the porch
> parameters of the panel currently being used.
>
> Fixes: 24179ff9a2e4524 ("drm/panel: boe-th101mb31ig002 : Make it compatib=
le with other panel.")
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> ---
> Changes between V2 and V1:
> -  1. No changes, Modify the commit information format.
> v1: https://lore.kernel.org/all/20240715031845.6687-2-lvzhaoxiong@huaqin.=
corp-partner.google.com/
> ---
>  drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

I assume we'd want to see a re-post of this series with patch #2
comments addressed before landing? What do others think?

