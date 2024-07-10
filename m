Return-Path: <devicetree+bounces-84776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C3C92D8DC
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 21:13:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7D83283391
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 19:13:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ADAB197A76;
	Wed, 10 Jul 2024 19:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cGf6pEUj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B37A197A72
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 19:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720638792; cv=none; b=MYrbc4VF5/3eaNzLkNHO06VKr+U+SPLE1fBhoruV8imVOyzP9gkTZYOUP9Iaqvv09cxJXqNRoQbVK5YVFXWHh57LIzXwhKr4nNa48WHV1CMIqyHLS2UinTvL3T0Wlyffmxt3h5+jGcc4w4jB08P1+wl9SywJ7F1Hpq807g/3X40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720638792; c=relaxed/simple;
	bh=WZPvRRYPuG1k1apLr7+uc+ETUG4y6xHUPigbLwS2g1o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bV+5Sp3GcZ8yzftPAUi10cCSMNOa+ZNLecdJfJf0xeJGFgp053OBQTQfmePC7J3nUBz86ma6bAoeiGRhgYC5kMrd6RtvFRaH2byftRWuoVSjc92dVS83OZDwMeVwWCqAZNL3lSq2m/1UsQewPQcMY0ukmWSbmyYOtsbm1IRgDcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cGf6pEUj; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3d9dfc7c5f6so79070b6e.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 12:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1720638788; x=1721243588; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jfu6YHYXAYDu8BCDtd4YBroCALNFVkJ9E+bO6AtHH3w=;
        b=cGf6pEUjrB2F0uIUBQ5NlW7TglaNdVCCUJi+vQttqXYRgjcHearjJKxyBu57wWvuhe
         6CP+WsFvO9lU4+J89s8fXPEg293SU7CiH+OwG2zJImRLvyR3YY4vdLDprbyaAuCN8F8w
         wh6FmA5cUnswg7wMA2Ran3z/KOgyb4WpXRNRc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720638788; x=1721243588;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jfu6YHYXAYDu8BCDtd4YBroCALNFVkJ9E+bO6AtHH3w=;
        b=qG32EtRA4VfpA0OymWcxhuDEpMkCW5wy+DS+qyhSWTFiMpLMTbIh5AztdcV9FQQx0p
         ygpsv89bFCFhzX9fpVY9oDJ4UC5y7kxzIP7kE62JZ9eo2GV70cL5UGqjHcL/mu9OwQZW
         5KNUOYIeN/L1WLwN12JDM5u6cUKvI6IUIJ/2HY4NvZMivoPi9U+t0C2I716BhA+nm275
         wvFZ1BistLqu3twQqRh2hZM0j9iDDUKsnwGj07TPqhpulyFLhc147zpS6i2PGW0eNCPK
         PzEDJreSQq+9DjUqfGOU7P8jMbbCoq6HgPdHbE2aAwuD3jcGkDRXnxs7aU6o+Pb77jrV
         fygQ==
X-Forwarded-Encrypted: i=1; AJvYcCVSNzWF9t3zg0G52MJCM/mtYP2R7bbMG7k1Cw+S8yimYuiqDa/cjr0QsiZ9uQnjq3AYnP5hKNatALt4VreyGa0DgbnsqJ0LQ6U+WA==
X-Gm-Message-State: AOJu0YxMO/RzgOySeBR3cYuqL/W9fNuyDGpZu+HAkhqJ+42KV9S1RPEL
	hPQsXwVBKmP/hVgO8ZTiFkSlAywhKhhScjPFFEaVcZQErvGBOdePBjD6LG9XfdgtXeGSZoHNxTX
	mBQ==
X-Google-Smtp-Source: AGHT+IE50q3/BRYANXmq14HiJb5851brxpN/Hmszhg/CTvdMNRBsR8vLd04hLBpgx+Q+6DQiQfAGzw==
X-Received: by 2002:a05:6808:2884:b0:3d9:dcbc:6b95 with SMTP id 5614622812f47-3d9dcbc7354mr2825180b6e.31.1720638788169;
        Wed, 10 Jul 2024 12:13:08 -0700 (PDT)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com. [209.85.160.173])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-79f18ff6585sm221571685a.15.2024.07.10.12.13.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jul 2024 12:13:04 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-447f8aa87bfso83781cf.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 12:13:03 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWgySKrk91soSUgKa/9LZkYtG4PhGjxp6HsJJ4CF+fRXjzCCx8xdYDN95lsOmWnwXJW9y6L+CAiAH02DzWlFcksD7HnJzA4S4NrVA==
X-Received: by 2002:ac8:51d1:0:b0:444:fd8a:f1a0 with SMTP id
 d75a77b69052e-44d1255ffaamr427131cf.25.1720638782549; Wed, 10 Jul 2024
 12:13:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240710084715.1119935-1-yangcong5@huaqin.corp-partner.google.com>
 <20240710084715.1119935-4-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20240710084715.1119935-4-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 10 Jul 2024 12:12:50 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vftx+AVUtpnYrSwW9725gwjH8BD_C6i+bd_m4nCx1vQg@mail.gmail.com>
Message-ID: <CAD=FV=Vftx+AVUtpnYrSwW9725gwjH8BD_C6i+bd_m4nCx1vQg@mail.gmail.com>
Subject: Re: [PATCH v1 3/4] drm/panel: nt36672e: Break some CMDS into helper functions
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, mwalle@kernel.org, 
	linus.walleij@linaro.org, airlied@gmail.com, dmitry.baryshkov@linaro.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 10, 2024 at 1:47=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> Break select page cmds and reload cmds into helper functions.
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> ---
>  .../gpu/drm/panel/panel-novatek-nt36672e.c    | 69 ++++++++++++-------
>  1 file changed, 44 insertions(+), 25 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

