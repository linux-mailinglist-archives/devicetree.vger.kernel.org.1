Return-Path: <devicetree+bounces-87877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCBC93B4B5
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 18:15:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9D62284631
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 16:15:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEBFE15EFB2;
	Wed, 24 Jul 2024 16:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CHkx+Ywc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AA11C693
	for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 16:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721837725; cv=none; b=HCryNbHsB9acao643ljLDI9Bdem4ASS6wlCfJjCkzv/UAh0Ktkp7D4Uz/sIy7KtmHfG+/QCSWeX2O6RlyM0OZ/vrCC0KgEEUEQZrupVGnOWewHK9kp7Li3AlkthQcQAFSiyFi992CxNyytK7WIYBaFEggHJTKC/7CPWAJRSR/ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721837725; c=relaxed/simple;
	bh=VPwKY5kApoZuCZcBhUZbgRHDZmiTR0tK/OIj5arOVAg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mvy5Kf9BHDKRE2T/LUahGQtSnWd7wyzdNXPMyUUmUe8ra6QWIXuvJyvAGngYCRBNmTDDVZ0f8iJTLo1yDX0P5XgbZ82tsn2oG/U9lleHisKPmCuykkuJ+CoIb/5UPH7xALl40yalVS6yqctt9j00H/kYqK2ZiEjSErUTrQUpZs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=CHkx+Ywc; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7a1d0884630so28366185a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 09:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1721837722; x=1722442522; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q7e5mdNizpr6t3j3m8AUb0y13KqlMGi3CCgQaLhUCww=;
        b=CHkx+YwcqznOLrbHVudfMrYzdM/ptF0hrmg2NHKR+0r6weFcvc/kYAGQ9ASaLKUbUx
         9tH0bkv8Ra//ebG70PLvkykYrgoMApF7oeg+2F23kRRr9h1LAZNzATFEhhj/zygyo2Ff
         BybNg7AbDby69/eBr2oTBNd6u1SlUcjBrRd3g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721837722; x=1722442522;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q7e5mdNizpr6t3j3m8AUb0y13KqlMGi3CCgQaLhUCww=;
        b=mcSK0beMZrumBmyOR84h2gK4jC4CHHbyAMWnH7kNfSQ7V0bj1NaVv5Z1GPoYjOgJxR
         B1+GmsRjCiGOR8Nb1AtgdyoQiVHCTYR9i+Qvgp9w5bRy/cSn0qlwkEVUFUMDwRwXD2qT
         H3Xzwdv2H20reTVgHXNwpZlSzm6VFIcKpUHmUUYy61Vm9J9dTFLlbou9ZFq+627wzFFw
         sLsoGwhCo8a3Mw5Lk2TKpOUcYGboe73pcQGosC66qSU6aforNtI3BiQ550ens3DqHziS
         3Ocb3xZjODh+kpgdZw8fi2MyXiLEJhEnIDovQEdIseAyYF+YMUBzjFcht5AsSuZpAnXs
         U1oA==
X-Forwarded-Encrypted: i=1; AJvYcCUguPVHCrEXTUA4fquLK0mJSE0K2QB2+UL8/f+uwhuPvVyvlwclaEjp3StYge/6Lx1za8ugwwxITeHlniLFf3AyHiTi2EAkjDxFMA==
X-Gm-Message-State: AOJu0YymqJBlduDfhvkLI5pvhXJfClPXRYmuY6N8/Y7pQ8j8EmpqTK5a
	QWAsl4s3hK3sYMrv3tWc4R//+yfnXyWgvMsvIGjKxQ9BTvwOCx4lTZGmBNddtxq2rNLHe7vqG+k
	=
X-Google-Smtp-Source: AGHT+IGENR9g8dpfvyXWEwe7rbOzR4G9l16deeo1k8pptY5nmXB1dYdyEQ0kPlgPJLpKckyHd1FwWQ==
X-Received: by 2002:a05:6214:19cf:b0:6b0:7b34:21c0 with SMTP id 6a1803df08f44-6bb3ca68271mr998066d6.34.1721837721810;
        Wed, 24 Jul 2024 09:15:21 -0700 (PDT)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com. [209.85.160.181])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b99417c3b8sm5379676d6.129.2024.07.24.09.15.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jul 2024 09:15:21 -0700 (PDT)
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-447df43324fso359941cf.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 09:15:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUmKo5NqD1BUmIjzusS4QxvpvIfCVsdUWriTM8jjTrZp6sicRxT1VxFArjzp+HC/UulBL2psa3R3FQh94+0FzHHfLVapR+5L9UNIA==
X-Received: by 2002:ac8:7d8f:0:b0:447:e3e3:77c1 with SMTP id
 d75a77b69052e-44fd4c9a903mr4534671cf.29.1721837720254; Wed, 24 Jul 2024
 09:15:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240709-topic-sdm450-upstream-tbx605f-panel-v1-0-af473397835d@linaro.org>
 <20240709-topic-sdm450-upstream-tbx605f-panel-v1-2-af473397835d@linaro.org>
 <CAD=FV=VL1Wxd0veW7N+0Hy=LdKMzNbBang9_EZ9Zo_d-wZOBfw@mail.gmail.com> <dfb29dca-7110-4c11-b86e-9063f71a8ada@linaro.org>
In-Reply-To: <dfb29dca-7110-4c11-b86e-9063f71a8ada@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 24 Jul 2024 09:15:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X=0R_FScPPmU0CXbUv0n+PeSdF0MitRKf5r83V2wEYyg@mail.gmail.com>
Message-ID: <CAD=FV=X=0R_FScPPmU0CXbUv0n+PeSdF0MitRKf5r83V2wEYyg@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/panel: add BOE tv101wum-ll2 panel driver
To: neil.armstrong@linaro.org
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 24, 2024 at 12:51=E2=80=AFAM Neil Armstrong
<neil.armstrong@linaro.org> wrote:
>
> >> @@ -0,0 +1,240 @@
> >> +// SPDX-License-Identifier: GPL-2.0-only
> >> +// Generated with linux-mdss-dsi-panel-driver-generator from vendor d=
evice tree:
> >> +//   Copyright (c) 2013, The Linux Foundation. All rights reserved.
> >> +//   Copyright (c) 2024, Neil Armstrong <neil.armstrong@linaro.org>
> >> +
> >> +#include <linux/delay.h>
> >> +#include <linux/gpio/consumer.h>
> >> +#include <linux/regulator/consumer.h>
> >> +#include <linux/module.h>
> >> +#include <linux/of.h>
> >
> > nit: sort header files?
>
> Will do while I'm it, but I don't personally care of the include order..

FWIW: the main reason I push for sorting in cases like this is to
avoid merge conflicts as the driver changes. If everyone adds new
#includes at the end then every change will cause a merge conflict. If
things are kept sorted it's still possible to get a merge conflict but
the number goes down. Probably not super relevant in such a simple
driver but just the policy I push for in general.

The criteria for sorting doesn't matter to me (some people put
"nested" includes in separate sections and some just do a normal sort)
as long as it's obvious / consistent for a given file.

-Doug

