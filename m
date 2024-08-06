Return-Path: <devicetree+bounces-91481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A579496D5
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 19:32:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA17228ADAC
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 17:32:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4552F50276;
	Tue,  6 Aug 2024 17:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cIWeBQkI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 922AA282F7
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 17:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722965507; cv=none; b=JeKaqA+okDjSwPzJad8kNUla6R07tmPRW0EO7ziUHKIj+W6WOYi0l1yjE6BxVUvjQR0LYjqAmdLqTU6Tn0QrXN4EGghGxUZ5uh0PE4hcxb4yJKggtpvjrhStclv5Bn5zv5bLjLojN4UVgPwHC4issDwWgqDIJPGkVicBYioSfdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722965507; c=relaxed/simple;
	bh=mjIRE1jqctRoR0mDMB7cDgb1o2LBrN5/nNxIKih96Tw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lFQSzTtZUzlss23Muvi3SiKSNVWEJdlDEA9rs2M1E8xc1wT2aAMeL6OpYlboHl5Ni/vz0iUaBjkySymL80E6WW8God9q2oOg587Fcm+R5I2lIHcvQwQSvF158F+rmJqbjsHd7l6Qwjs0t1kvq436GOisahMZCxqqmF/tFxRsoNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cIWeBQkI; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-260f1664fdfso538096fac.1
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2024 10:31:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1722965504; x=1723570304; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gqyeHMahsCOkK3u9LkoMA6WHj+nv0M3p/02yM0qdpV8=;
        b=cIWeBQkIb51t9zUwrEijHaOq/C/+DKWWk9gfw8i8zlbFwrJ1DOaU0jrLN0I3BXTb1N
         74LwoIXNKj8JDKcQbm3jsDmKoguJsZXxeZeTkTR9y51PcUGCVSwObvhiijs7jetUXLJn
         19LMl8qqkU26RVw0uHQ/Ys7jh/XsIfy3aN9UE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722965504; x=1723570304;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gqyeHMahsCOkK3u9LkoMA6WHj+nv0M3p/02yM0qdpV8=;
        b=aus+TS/HDs5uXGMGBAHtyGHUlyhx0Z/+O/rVLz0OpnTiWNb3GedDInI+wITz46OL6h
         SHM9+3KpaUaiKA17hgLmOIOcWgxSr/JBh13JENLVPpXFaz/WIzVw9GDLlOGmghnWZzSb
         Ih7uzPki6AvGiJeb/HqLoBstgMJUkoKHcDPV9qsZ/kYdcSD3oD2bcLGHBQKLIIEIV7t3
         VadRkzpU1YV0Vk9W/EFUPdeye8DTxWANPRpxY52NwVEYWmpxqHJaFSWV2piZhWDMAMWI
         lSYujMvlzC92EJwuPvSpCmURLhSMbiC26p2kmWMtE9RDgqJXhCndkCpXbREAZ8FRdGlT
         qQYw==
X-Forwarded-Encrypted: i=1; AJvYcCWdMhubuRGJrh997NZehsJPAy94Vex6In31RO5Ho3y9MZL0wwiIQcKUYvIh99mNupERhb4bF6QcdyCypV9nfjw7ylmMZRSh/KfBbw==
X-Gm-Message-State: AOJu0YxdK48SCst1XkjbgeT/DORfTWQPcLiVASZ82BJ8nrGy48IGYYGR
	1ZLVf/NJy59PBW1yq4nzQ8UUUTaqu+igtu6GRUD6Bcr6LOR7zaLb5K6swn9zRO2koaBy4J+LJKc
	BKdNX
X-Google-Smtp-Source: AGHT+IEc+xkf2k/uu82Lqc7N0BDXbCB4olsk0LiVmQid6mufsqYHJAb4y4xNbsD2QqwD0sBrGDiDTA==
X-Received: by 2002:a05:6870:1641:b0:261:1c09:e0cf with SMTP id 586e51a60fabf-26891a7f576mr15059374fac.3.1722965503745;
        Tue, 06 Aug 2024 10:31:43 -0700 (PDT)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com. [209.85.160.169])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4518a76c6absm39789331cf.84.2024.08.06.10.31.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Aug 2024 10:31:42 -0700 (PDT)
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-44fee2bfd28so378571cf.1
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2024 10:31:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW2+yhCFEffuDzZ5jrSewRkB9tNHQ48YidhBWg12fbcT/SStfmvDs6Rt8aSFbEnWztRMkW67BJY8YPQR6PG7Szws4kYmmGxROaDbA==
X-Received: by 2002:a05:622a:1822:b0:447:fad8:ccc1 with SMTP id
 d75a77b69052e-451c5a614e8mr1041cf.22.1722965502125; Tue, 06 Aug 2024 10:31:42
 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240806034015.11884-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240806034015.11884-2-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240806034015.11884-2-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 6 Aug 2024 10:31:25 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WrMxyxkuCYEbd=aYFaTJKNqGqXr6Re+V=B_h9jnjHPvg@mail.gmail.com>
Message-ID: <CAD=FV=WrMxyxkuCYEbd=aYFaTJKNqGqXr6Re+V=B_h9jnjHPvg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] drm/panel: jd9365da: Move the location of "exit
 sleep mode" and "set display on" commands
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	hsinyi@google.com, airlied@gmail.com, daniel@ffwll.ch, jagan@edgeble.ai, 
	dmitry.baryshkov@linaro.org, jani.nikula@linux.intel.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Aug 5, 2024 at 8:40=E2=80=AFPM Zhaoxiong Lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> Move the "exit sleep mode" and "set display on" command from
> enable() to init() function.
>
> As mentioned in the patch:
> https://lore.kernel.org/all/20240624141926.5250-2-lvzhaoxiong@huaqin.corp=
-partner.google.com/
>
> Our DSI host has different modes in prepare() and enable()

nit: it's not obvious to the reader of this patch which DSI host is
"our"s. Maybe spell out which SoC you're using? I assume this is a
Mediatek SoC?


> functions. prepare() is in LP mode and enable() is in HS mode.
> Since the "exit sleep mode" and "set display on" command must
> also be sent in LP mode, so we also move "exit sleep mode" and
> "set display on" command to the init() function.
>
> We have no other actions in the enable() function after moves
> "exit sleep mode" and "set display on", and we checked the call
> of the enable() function during the "startup" process. It seems
> that only one judgment was made in drm_panel_enabel(). If the
> panel does not define enable(), the judgment will skip the
> enable() and continue execution. This does not seem to have
> any other effects,and we found that some drivers also seem

s/effects,and/effect, and/


> to have no enable() function added, for example:
> panel-asus-z00t-tm5p5-n35596 / panel-boe-himax8279d ...
> In addition, we briefly tested the kingdisplay_kd101ne3 panel and
> melfas_lmfbx101117480 panel, and it seems that there is no garbage
> on the panel, so we delete enable() function.
>
> After moving the "exit sleep mode" and "set display on" command
> to the init() function, we no longer need additional delay
> judgment, so we deletevariables "exit_sleep_to_display_on_delay_ms"

nit: s/deletevariables/delete variables/


> and "display_on_delay_ms".
>
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> ---
> Changes between V2 and V1:
> -  1. The code has not changed, Modify the commit information.
> v1: https://lore.kernel.org/all/20240725083245.12253-2-lvzhaoxiong@huaqin=
.corp-partner.google.com/
> ---
>  .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 59 ++++++++++---------
>  1 file changed, 32 insertions(+), 27 deletions(-)

nit: ${SUBJECT} is a bit long. In general it's worth abbreviating a
bit more so that the subject doesn't go to crazy.

drm/panel: jd9365da: Move "exit sleep mode" and "set display on" cmds


Aside from the above nits, this looks OK to me. I wouldn't object to
fixing some of my own nits when applying or you could send a v3 if
there is no other feedback. In any case:

Reviewed-by: Douglas Anderson <dianders@chromium.org>


I'd prefer someone with more MIPI panel experience give a review,
though, so I'll expect that Jessica or Neil or someone else gives a
review.

-Doug

