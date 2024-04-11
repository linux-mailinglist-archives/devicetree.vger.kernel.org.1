Return-Path: <devicetree+bounces-58187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 45AC58A0B1D
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 10:25:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F422328172F
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 08:25:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F61113FD79;
	Thu, 11 Apr 2024 08:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sPNOyi0t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD29726ACC
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 08:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712823944; cv=none; b=TGpEJve8w6EOo8sauK1gJOKRk0hZbjfwYc/Ezi2mjrJQfkSBQFZS5+1VmmB1gbnyOcITwTkyj44ta7+3MDjUI57R9unEeTZW+3exy7LvZmn+tlRk5ZAbHYJgagAWfrkHWQEgE6bJp+R9jTEN20keEk3D7rg5UvZpTREc4WtARHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712823944; c=relaxed/simple;
	bh=nFRw7oi3NFSHVNf0hlNX8zBCL5+/1iE7ciSsVaEYvnk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SvIlfgvgtFdIi92QljURoWTSbD2F3lQ1+IwTMiCWPi2q4kIJh2HyD6SvrIT249Hn6lx+7KoERvh8AasUivWs0GHA6T2m9FIpyZme9K4PzbwzCDmmcB9cLadgGvhLtcIusPqpzWG44nAZ6DZTMmMEWzzQKTQ/ycAGXx29A0UHhgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sPNOyi0t; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6181237230dso43998127b3.2
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 01:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712823942; x=1713428742; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=edjaUEw2uJ66Vq5BGBZMcM3KK3F8anEzW+NtxKo9Ndw=;
        b=sPNOyi0tf2/UCYbD2yfgX2ivSUxlNV0Qs4LeinvNYSNoY79E7NfQ7JBMszCC/GoWte
         sFZA9chSzXWIJVOAy/Nqk8Ipcgoq7qjesAobToSSRFHRmuiV5ty6MnM0kOLu/INLnEW6
         ctON0teuzE5TFZ7rjGcxMC1IAeMBxu73uwtOXup++Ku/IsFyZPyJTNbzLswBHyxv7Kil
         LlB8gyHb9bERwaL/gBkEfnK9M34fwMhDinQsKGMjAz5wLuua2E6mtSTwFy3np+L79W1x
         YdElWVSRoYB8tj1VtQQcclP01DV45nj+Rhimko8m1YPk3ob1H4GeWxHUoRC3sRFNSXtC
         SIOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712823942; x=1713428742;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=edjaUEw2uJ66Vq5BGBZMcM3KK3F8anEzW+NtxKo9Ndw=;
        b=f/c3dserd8oVd+Eic/cG8He9/3kcNaZq2IFsFAaHPtGg4L5qAPobNXnVcJDKNnpwr1
         7O/6JrKjbgTBCGEemCKxGS+5594vjmEMvKAAIUfDgoI/Fi9lyEXpILdoDrhdkoQS0bh5
         9GmMr/D+DtOTCDjhzl4JrWb3ciU/pmkAdZ2SOQwNRPVPEzemR8fJ0/89OgoAXXtMgf2P
         JUAGbf3D9dPu6z1Ulhig0HnwW4TdryBCIE60yEY/c7MpXs//AuWIrcmGqeYIBpk61Lkk
         ZGybHRQVHdZG8CXhnccj1BPvGXWN8kpy2k71dQAuj66atVu82KCtgXRyGTpVj8rhnNO1
         3W3w==
X-Forwarded-Encrypted: i=1; AJvYcCUhq9yee6iVFjcXgBrMQ24Wzqly6G0oZbTssqrVRYkmwKL2J5boxykih6nHUp5uLdAyUSoBBFQ5NLt4ypVAJeNnpkCs0sKwzEVZ4Q==
X-Gm-Message-State: AOJu0Yyof54Xfmfy2XCEGQUjUpm70pZlHsr9QUCYGQDXLPNt7tEDe0hk
	vCohF6rCIQTBEqBa0wZbS6BqFeUSeom3Okz3wBH1d7qNV6Wm4BoKDTPMY4g27i92Fd5osN8RBMZ
	F2jcPs3Z31N8i/+IO7vobygiPmmrUq8cMr9NMXQ==
X-Google-Smtp-Source: AGHT+IF9pqUlpfdyG5m7u4jEcLSuGnBanWm4vx+2kVsHtqsz6JhvGVog6ml/rhuJaKKjQuzsTC3Fw+qiU/qGdpHU8rc=
X-Received: by 2002:a05:6902:2b0c:b0:dbf:23cd:c05c with SMTP id
 fi12-20020a0569022b0c00b00dbf23cdc05cmr7015891ybb.13.1712823941903; Thu, 11
 Apr 2024 01:25:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240410071439.2152588-1-yangcong5@huaqin.corp-partner.google.com>
 <20240410071439.2152588-3-yangcong5@huaqin.corp-partner.google.com> <CAD=FV=V2J=Tth2zhpo-kPo4uvESt70mFneO2V6TV-haac0VZuQ@mail.gmail.com>
In-Reply-To: <CAD=FV=V2J=Tth2zhpo-kPo4uvESt70mFneO2V6TV-haac0VZuQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 11 Apr 2024 10:25:30 +0200
Message-ID: <CACRpkdYtM=5jdQddCqRFgBRXvcJEjk1ULJNKKFz7jhhkGxV59Q@mail.gmail.com>
Subject: Re: [PATCH v1 2/4] drm/panel: boe-tv101wum-nl6: Support for BOE
 nv110wum-l60 MIPI-DSI panel
To: Doug Anderson <dianders@chromium.org>
Cc: Cong Yang <yangcong5@huaqin.corp-partner.google.com>, sam@ravnborg.org, 
	neil.armstrong@linaro.org, daniel@ffwll.ch, airlied@gmail.com, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 11, 2024 at 9:40=E2=80=AFAM Doug Anderson <dianders@chromium.or=
g> wrote:
> On Wed, Apr 10, 2024 at 12:15=E2=80=AFAM Cong Yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
> >
> > The BOE nv110wum-l60 is a 11.0" WUXGA TFT LCD panel, which fits in nice=
ly
> > with the existing panel-boe-tv101wum-nl6 driver. Hence, we add a new
> > compatible with panel specific config.
>
> I guess we have the same question we've had with this driver in the
> past: do we add more tables here, or do we break this out into a
> separate driver like we ended up doing with "ili9882t". I guess the
> question is: what is the display controller used with this panel and
> is it the same (or nearly the same) display controller as other panels
> in this driver or is it a completely different display controller.
> Maybe you could provide this information in the commit message to help
> reviewers understand.

I think at a minimum we need to split out any identifiable display controll=
ers
to their own drivers.

Then what developers see is that the code sequence is very similar
between two completely different display controllers so they have this
urge to shoehorn several displays into the same driver for this
reason.

The latter is not good code reuse, what we need to do here is to split
out a sequencing library, like if we had
drivers/gpu/drm/panel/cmd-seqence-lib.c|.h with a bool Kconfig and
some helpful symbols to do the same seqences in different drivers,
so the same order can be obtained in different display controller
drivers that would be great.

I'm thinking something along the line of

panel_seq_exit_sleep_mode(unsigned int delay_after_exit_sleep,
    u8 *cmd_seq_after_exit_sleep,
    unsigned int delay_after_cmd_seq,
    unsigned int delay_after_set_display_on);

That will call mipi_dsi_dcs_exit_sleep_mode(), delay, send
command sequence, delay, call mipi_dsi_dcs_set_display_on()
and delay where any delay can be 0.

This achieves the same goal without messing up the whole place,
but requires some tinkering with how to pass a sequence the right
way etc.

Are Google & partners interested in the job? ;)

Yours,
Linus Walleij

