Return-Path: <devicetree+bounces-110418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A474B99A629
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 16:20:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39E95281A3E
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 14:20:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 789F120B1F3;
	Fri, 11 Oct 2024 14:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jfxXddjj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFD76184
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 14:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728656430; cv=none; b=GeQzM5SqhYtlxJ1ZeyGNTcnh6KCf3QVEikGEZ9mxornX2/1SQSeFZGDS4UOr6VYX7kJdW5Gl/dMK2K1g1KLFokQ3wgvgHl1KTE/ELaKETeys5ilJ6nOC8K4AQIi92J2s+cPVZ3WdKQlFzOICyUZGij/brhtm9vixMRLgM6TRLOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728656430; c=relaxed/simple;
	bh=7EbH+3VAZ1saDb1IT42ACcxguJGIG2cli9j7ZXzO7kw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=e0Q5IWn10ESJxQc1t5OHdxuWA9cznU/VmubM5k6sRyiOHLIMZsIneBEk6/HUASSFcXPEwG6Zg1dltAqbiyH1Dm8pu1doEq82XEHxRsCT+rt7SoIjmA/1PuHURaiZt43Yu3BSDTdmeblWpHgZKy1/S/Ao8BrfX4knym9yRkNQvoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jfxXddjj; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2f7657f9f62so20640341fa.3
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 07:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728656426; x=1729261226; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mvzCEOHylQFKpOsQ3b4jdnej7dL8ckuDevHyY8WxVL4=;
        b=jfxXddjjJVdpcl9/t00ko6Ot3AnoxHqiX2O2it5DfPgd9auHps3Ek2wOl8HgFCh7+M
         TX3srYQ2GeiazQZaUjgtPrhAka/qT37e2qRsZ0VmQ5yTJ3cZ6WDAQlhyy9phIOfH4qY4
         cl1fzu6RhYZpqQOSMiWNUc8h0bsyNVU3eOFJM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728656426; x=1729261226;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mvzCEOHylQFKpOsQ3b4jdnej7dL8ckuDevHyY8WxVL4=;
        b=OshPIaDwaKUHF76cWDaGi5Yio+AiNLJHUO57ILfRT7+Tq3Rtyksw7rksUa8N5+FDAm
         vN/6L4im0TXmuAiEmIVgoCRuoFMkKg3/cvMWBxQ7MQ695WdMgNPxKT8e5zjAAK2+gsi6
         Zna9kn2pueztmAwXUPCiBk5zu4bm2sY0l5mi9XYGN8++CGkOWolZJb6WfI860/dd1Uxu
         2906mscYXFxAJIjhro18GYEtga+5Ez9Oikj6NqryWtTfAVCyd5uNWMkC+PEnGOhTuxww
         e4GNmreSRxUBT0rut4bg9Zzg4s3NfW9a3uClWsxX+9lcI3KLfaf5Dt5oII6duHIlgOlW
         f1NQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwNLYIaGoK8AyfZ4xDyvjiqWcKEQyv7/LMFDTq3P0g6SyNzsOnlMkzze8Hu5adP6673XSMRXkNFuyZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzIuFG6dh1Lv0HDcaGQi9gL8VBtMVFj8hePblki57hgVld337+G
	i152NGbT/NX9YbBGnwFClIh7Ss4WpvjBYxNbUpYkCxFJDy6PHDtbrA2TACgiCiayPmmxiPYEFYW
	FHdqK
X-Google-Smtp-Source: AGHT+IHr/P3B/VnHFTPDnjtswmj1vJPixUG+vHnLHjdeR4pqUeoNxTjsOh2rMEsgl7Q9u2MPqdudFg==
X-Received: by 2002:a2e:bc07:0:b0:2f6:484d:cd61 with SMTP id 38308e7fff4ca-2fb329b2f39mr16097201fa.43.1728656425586;
        Fri, 11 Oct 2024 07:20:25 -0700 (PDT)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com. [209.85.167.43])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb245b1777sm4937811fa.64.2024.10.11.07.20.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2024 07:20:24 -0700 (PDT)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5398d171fa2so2754703e87.0
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 07:20:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV4G+4FXRShXSWznAy1IQ/HSF8OqVo1lbAcAe7K+xH9xMUDjXOvrY2qf9YfLfHp/ZahNnA6D5Hj6vpW@vger.kernel.org
X-Received: by 2002:a05:6512:2302:b0:52e:9b9e:a6cb with SMTP id
 2adb3069b0e04-539da3c649dmr1856067e87.15.1728656423759; Fri, 11 Oct 2024
 07:20:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241011020819.1254157-1-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20241011020819.1254157-1-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 11 Oct 2024 07:20:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XfHtdc9RpEwAtVHNYwBGJGhHUAoHaJhP+ZPWuUHAASFQ@mail.gmail.com>
Message-ID: <CAD=FV=XfHtdc9RpEwAtVHNYwBGJGhHUAoHaJhP+ZPWuUHAASFQ@mail.gmail.com>
Subject: Re: [PATCH] drm/panel: himax-hx83102: Adjust power and gamma to
 optimize brightness
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, linus.walleij@linaro.org, 
	airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Oct 10, 2024 at 7:08=E2=80=AFPM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> The current panel brightness is only 360 nit. Adjust the power and gamma =
to
> optimize the panel brightness. The brightness after adjustment is 390 nit=
.
>
> Fixes: 3179338750d8 ("drm/panel: Support for IVO t109nw41 MIPI-DSI panel"=
)
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> ---
>  drivers/gpu/drm/panel/panel-himax-hx83102.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

No objection on my part. This is just modification of some constants,
is well described, and is to a panel that you added so I don't think
it needs a long bake time on the list. I'll plan to apply this on
Monday unless there are comments or someone beats me to applying.

Reviewed-by: Douglas Anderson <dianders@chromium.org>


Thanks!

-Doug

