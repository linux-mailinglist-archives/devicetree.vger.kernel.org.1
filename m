Return-Path: <devicetree+bounces-60840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 796A38AAA05
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 10:24:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E9401F2169F
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 08:24:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAFAB52F7D;
	Fri, 19 Apr 2024 08:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C+vGqqpN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBAF4EB58
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 08:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713515065; cv=none; b=AZQ9Ir8k+OKtWbwpCESZU2EjQPt2zw02T1baw7XvN/FwboMgAXdeyXoEa66G7De0vtDpik2ZxrbifV3ykjWSEjmCcdS/hCBbzDKCBdw1T+iCbV3S1+sri/gWOF8ADv9k8uoZpWHPnhX8lIX7VtwU+suzhkPBaLJXB6tHnIATscM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713515065; c=relaxed/simple;
	bh=HCzS/qvMhK/byAneszHl9MP3i5FRyHGeEIQ13eLW1T8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dU5G0Qd0n3OJsRZvWh582R+0U2cPHPyyuMycx+nmZ93AJDORpeeWCRbkTZ2uSTpDi712N8t185izHCC4qPwqnXChygdbU+d1UfcrgeaU32NBRnydD7Ns78hH13WxYVnzdDTxD9ApUulsoQkTUDQ/Uxf1YgUFwQku5OgP4Rp/mQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=C+vGqqpN; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-dcc71031680so1848875276.2
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 01:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713515063; x=1714119863; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HCzS/qvMhK/byAneszHl9MP3i5FRyHGeEIQ13eLW1T8=;
        b=C+vGqqpNo/h61+CImAYbHWL61wSM1ARpnTAGMcn8aWI6vGJVKxRmzGtpGsrT3LevRi
         5DMSj00q4lRjMecAzi4gQK7Fp7y/ZyivvsTjNk30zK91DdbOv3NGkHemwM/xFOBpXe4u
         Pev28yZjU35E4zOQKpk41WYHP10/9N5y/ITR/f5cJEYGCH/3kMwEQlfZ5Z8ga9EvpV28
         Q0SehSs3ozo74TB10ciHFi8MLpPuYI4wrDtYxVxSlQNJdRWaI/Xct12frncWhiRQE4nR
         HyW9XgYLJqVQ5LvGpCOX5eZPksAYZ4i5yYTCOrL6qwkBMtuY+V4T2JbAhdxNHnvUktdS
         wblw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713515063; x=1714119863;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HCzS/qvMhK/byAneszHl9MP3i5FRyHGeEIQ13eLW1T8=;
        b=OhsZVXEqFGl8kyN63uMpnFWg+G1bihcgB/6MTTNs30BYx3H2P3+fzINBxFjtfLUnWl
         bR6paHacAj7efHM+2SBqO8OFDF40iiBvG6Z5FD5VYSqApOcQYBbIiNuw96CTulVqcBWm
         +I/BPaTrbCFk8LXCyv1aOAW08vB+Jx/3qgUSv19svaTS7yhutYpZRFPSmyt9H/ftBNjo
         S0VhvC3dklfLBPHwQi5vEZo8ouk6seHIo31yBOgKyIz/Tpdows92XL/y4QrCRVSuUtug
         u3Hj9CEKz8IovuOi+Pp+6bN7Mt4UqYr/632wIfrKvjGKOdzNpUniOOgxLdJWreDf7VxD
         M4AA==
X-Forwarded-Encrypted: i=1; AJvYcCW3jr6ywCm3WIMl3lYERDr6wIx827kb/ECRL/tOYJaOlrXgJAQHvhzdL6jDIXgYm1xr+WOGRZ7BOEERZXU0eCuJrJNuw89oSlh1/Q==
X-Gm-Message-State: AOJu0YxIAs2gd/KxF4fuvRGkrRkXjPdmKOFjwHHpxY7Ud0NOnY9aZDIo
	9GuWh1W4pUkGUkD6F5GkT7Uu3bE3LvIsuKeSNbM0JODbdOFe8u22Qoqbcg6aieWo33ZPeSjou0e
	A+yqSHVdgZ4alIgAIZAsKIgkC6Tsyg+8j1RN3pg==
X-Google-Smtp-Source: AGHT+IH8xdOIGbu8q88iGajALNt+h5zvKeE4NEGt5cnzEzv4jCMV9NcRrIBvOGiggDc7Gp8qucf/wW4qeD/6x5ywM+Q=
X-Received: by 2002:a25:dc05:0:b0:dc6:dd80:430e with SMTP id
 y5-20020a25dc05000000b00dc6dd80430emr1205866ybe.27.1713515063262; Fri, 19 Apr
 2024 01:24:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240410071439.2152588-1-yangcong5@huaqin.corp-partner.google.com>
 <20240410071439.2152588-3-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=V2J=Tth2zhpo-kPo4uvESt70mFneO2V6TV-haac0VZuQ@mail.gmail.com>
 <CACRpkdYtM=5jdQddCqRFgBRXvcJEjk1ULJNKKFz7jhhkGxV59Q@mail.gmail.com>
 <CAHwB_NLfaQWhFSbZ2ASmYgXJaVOTrjac3F0hyCJdwTTo-zHJrQ@mail.gmail.com>
 <CACRpkdYoM40RZyjTxLwDNta2+uV31_zzoj7XrXqhyyqrDtd5zQ@mail.gmail.com> <CAHwB_N+39-kTcNX91JvNGM4HEJ_ZArKt2Vs61g-OR-Mz6akocw@mail.gmail.com>
In-Reply-To: <CAHwB_N+39-kTcNX91JvNGM4HEJ_ZArKt2Vs61g-OR-Mz6akocw@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 19 Apr 2024 10:24:11 +0200
Message-ID: <CACRpkdbzYZAS0=zBQJUC4CB2wj4s1h6n6aSAZQvdMV95r3zRUw@mail.gmail.com>
Subject: Re: [PATCH v1 2/4] drm/panel: boe-tv101wum-nl6: Support for BOE
 nv110wum-l60 MIPI-DSI panel
To: cong yang <yangcong5@huaqin.corp-partner.google.com>
Cc: Doug Anderson <dianders@chromium.org>, sam@ravnborg.org, neil.armstrong@linaro.org, 
	daniel@ffwll.ch, airlied@gmail.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 19, 2024 at 2:48=E2=80=AFAM cong yang
<yangcong5@huaqin.corp-partner.google.com> wrote:

> > Use one driver, use different compatible strings for the different
> > panels and use the corresponding sequence for each panel
> > selected by compatible string.
>
> I mean add starry_himax83102_j02, boe_nv110wum and ivo_t109nw41
> together to make a separate driver and break out boe-tv101wum-nl6 ,
> because they belong to the same controller.

Aha OK sorry for my misunderstanding!

We are all in agreement.

Yours,
Linus Walleij

