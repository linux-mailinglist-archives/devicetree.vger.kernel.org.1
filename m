Return-Path: <devicetree+bounces-90014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E06BB943853
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 23:57:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9AD1F2815DA
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 21:56:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9FA316CD1E;
	Wed, 31 Jul 2024 21:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YKJW7soD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124B11607B0
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 21:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722463016; cv=none; b=fcw2Sq5s9ftCbyyGxw3Mpi6ffAvEuCoLXFfGzHWWei3494BWKXZ86NtKne7Np3D7o5HpPXP1i+1GcY8gjJpV2/aokYNKJBT9DHCB8hkKJqscz4dGbyGB5avJ4gysSwfcyFwhcHfXV27XdL9Finok2Uvo334K+RdJDgQIqHu6r/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722463016; c=relaxed/simple;
	bh=cXsPzIMnBYFbWpD0A990EW8Nt5iOKxaRg4d5AY+77yQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aO7lZgvcyjMDC7CEvpZuUsVp1FuKj5N8w/hBMh9/K/5wedo46ji2nWl5YO3Hx8/s1hW0m4fb+0sy4lRwxeb6A7HPxQ6Zh8i0SktSTfn//fWXhJ6mYiq0HKFvsAd/ne6dIJ7p00bBlLiiG9Qb0NYtkpl2ko8UGUUJlQJP/LiAmo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YKJW7soD; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-64b417e1511so50249437b3.3
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 14:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722463014; x=1723067814; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cXsPzIMnBYFbWpD0A990EW8Nt5iOKxaRg4d5AY+77yQ=;
        b=YKJW7soDJNsaYbCt/Xd5ysFcVt+H7DfswW445aKKyw3GoMImHzJHMIjAELcutDX+Dr
         sWqu5mRkBqutcssVmyW0EeJF6i1QvcdaZ8G1cjrZNC/E9cCHsv+4fDAsUzP95ipFo2+y
         /LJmBFrH4UrneCXWVjKcqsiH6m6vpcmiPRtYbkj7e6ofXOsr114ilF0wCiHfUNUrMB4n
         3L+kgINg3kwZPMBqaJAMUMUSiMhbMOYAJH75Ppo4c8yRU4SEHaCH73pG7YcfvMibLtSI
         X3fy/KaWY3UFrV4YbHnMpCHlZ+de09l0bSJOT297uLu4B+aBljaTFMsTWmIMrP3nwa3S
         H44w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722463014; x=1723067814;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cXsPzIMnBYFbWpD0A990EW8Nt5iOKxaRg4d5AY+77yQ=;
        b=FR0sbVHwRV5DVqg1nk0EdAaIzHDo0t3ueEj+R45uuWg6Ol2ZKPXdb7N+hwEbqi8ROK
         D9Hd388h8u5xKtrwYaTCrpL/TN8o+pfX/dBBZre1JfBDdxhxUQ4eU7dI4BumEnaAWur3
         hn4to91/Eb5haMwZBsThZfOvsWaWWslbBJ+OXN8/dLp3eOjOLbVQzeGiSe/PooRTcvbb
         GTMq7kEVijZw23XyPRiVSBK7s9VyN1tS0lJcn16//zWgqzns8pXDWsToXPJL4dSWqHAu
         QuZ8Opgm4NjEU8pgEX4OwZGvepY69GDTTGoD04ScBSUzMNSLEbIYW45TT2j2K5jFe58H
         CwDA==
X-Forwarded-Encrypted: i=1; AJvYcCWlZYfYa/XwPvyUPoB2SmwU06i/tqUM0FbMLpouoCemfb/Ut+Sim79ByAb/fEWpJ06a/6iVVuF4AEtdY99HoEomjXjxS5MkZQw4Zg==
X-Gm-Message-State: AOJu0Yzd48wXvQVo5i/fbEcTsHzUeLvXiAwszh5kQqTGB/x1Dw3Z/GI6
	KzhLq8OzdWsnH4r8eBW7TB8KYh2kNrW+z+iuNpfyyVPTjL1uhFQkJ5fzs6zsElEmIya4QRSfFt0
	1maZYOHubH0RbSIdHENoqYBtL0ToIZnALFcXjJw==
X-Google-Smtp-Source: AGHT+IEhllkbb8d88rX/PNnVUAXDMYaDCfgcN1jChWefJZEk1zg4xkCycJucKr7VsSwOKCXczbmQnMZH/Oduhi8rWRk=
X-Received: by 2002:a0d:f781:0:b0:62f:37c9:77bc with SMTP id
 00721157ae682-6874658d58dmr5252057b3.0.1722463014013; Wed, 31 Jul 2024
 14:56:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20240731211456eucas1p1b15c30b57274ef5837b57e594d061f43@eucas1p1.samsung.com>
 <CAPLW+4=WsGikZ6qOi8dWg4wFsVbhp29cv=DKP06jc4TQn=yUeQ@mail.gmail.com> <20240731211444.59315-1-m.majewski2@samsung.com>
In-Reply-To: <20240731211444.59315-1-m.majewski2@samsung.com>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Wed, 31 Jul 2024 16:56:42 -0500
Message-ID: <CAPLW+4k-K8xCcHzZ77=diLGJyw2SKQMGzYAywEKwhxAtJaDZ7A@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] dt-bindings: thermal: samsung,exynos: remove
 outdated information on trip point count
To: Mateusz Majewski <m.majewski2@samsung.com>
Cc: Rob Herring <robh@kernel.org>, linux-pm@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
	Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Anand Moon <linux.amoon@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 31, 2024 at 4:14=E2=80=AFPM Mateusz Majewski
<m.majewski2@samsung.com> wrote:
>
> > Do I understand it correctly that the patch actually removes an
> > outdated description of *driver* implementation, and not outdated
> > hardware description?
>
> Correct.
>
> > If so, then maybe it makes sense to rework the
> > patch title and commit message in a way Rob suggests. I.e. rather than
> > stating that the patch removes an outdated information, instead
> > mention it removes *software* (driver) description which was
> > incorrectly added earlier. Because bindings are only meant for
> > hardware description and should be completely independent of driver's
> > side of things. Also in that case it probably doesn't make much sense
> > referencing that commit for using set_trips ops. Just my two cents.
>
> Makes sense, what do you think about this?
>
> dt-bindings: thermal: samsung,exynos: remove driver-specific information
>
> The number of supported trip points was only limited by the driver
> implementation at the time, which mapped each trip point defined in the
> devicetree source file to a hardware trip point. An implementation that
> does not have this limitation is possible; indeed, that is how the
> driver works currently. Therefore, this information should be removed
> from the bindings description, which are meant to be independent from
> the details of the driver implementation.

Looks good to me. But you already have my R-b tag :) More important if
it's ok with Rob.

