Return-Path: <devicetree+bounces-79684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE66E91671D
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 14:13:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83566281676
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 12:13:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CA51152504;
	Tue, 25 Jun 2024 12:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Wk20gm3J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C3E3F9CC
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 12:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719317634; cv=none; b=Bg0IzqH7nOSNNQhOizR4dI7vwZuMhf/3Km7HSKmeK96TBJR5xCh4DdCWUTM9cM8FjXp/cT6yNbQ0YVJJilfyZFQDLq6Suo2vqwgdxMvkLwob6esKcHFpVKGaDOc1rkKUR3tGcTvp3ddqYXjKyT5900luCcNSoBk5dLdYhaTEEZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719317634; c=relaxed/simple;
	bh=gtMcwj5eWYxk0tQmVIXu7Lpn/G2jxh6zq45Tw4QaYoU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WNKP1GVFVtszn1TACct6Ifb28pcUL8jR+bxAZnj9vAvKM94AvubqhhcxFVv8Gi5egY8m7ZT2WRdc+0uP9kDthowKULiBTAw2vavkAyoDJ4yo/jwyQgvz7DNtQvZJvgrwsD6usB6a24cTod0dPsXALACZLE1vtoV6hT5/VfK3Jsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Wk20gm3J; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a7194ce90afso355350866b.2
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 05:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719317631; x=1719922431; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4aqlN25UlqZjEdbsm+c0y2Igx5fr3O3fLmRuZB5TvsM=;
        b=Wk20gm3JmW2L40rhq4/VzWkdVV+0LhRLrFKzt9E26BxwsqMXtuEysj3gqj9adniLdM
         Mtsa5HG6zWSmsMEb3hgGxcnY3uszEzjVnnrdStvY7HXwLIIH+x0aU3fmZolK6nTeD3Cm
         y9ZKeiCdKX2IpxBInFNUV4342c/+PPSEVXRWZTMXMVOs8E2Y/26NT/2o0vsEpRoljPE8
         jwrtYUyEZOUblkXNkq55P+9z5vofD5VhsIBD4egIP8slDVPHdfMX7Lqr3UW6ZrEwfP6n
         CJdyFRn/llYXatfJs/j4Ew8GKRE6M7cPAOsPw4c4hmzXPUnCL0q2bFug4YCay1/lqZkZ
         mM0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719317631; x=1719922431;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4aqlN25UlqZjEdbsm+c0y2Igx5fr3O3fLmRuZB5TvsM=;
        b=hReIPVY1kGPk3DStmHwCZiwll0Fb1PVQTfZPxfH2RQTaWOvHkZ6in4wQhVsoqhadAj
         xda6aDZxu375qA6KCGvrlC1uRaBRJLqdPSmuF3TNyx4etG76zlcH95UERZnRSZt8l3Cg
         aamHLRzXv3zlkhbF4qALdCycltwk3H3tcvEgH/nUCsm2p5WA3960C4Wz4TicJm9ZVfUw
         PXivaZVIYkVChGnPiH2BzY/Xq+BTmTQBRcm0emUECUmxNlg65a8tnx8T+UBhWUz5KUJq
         KbJnQaZoS9S2T+N41b1ao1f767P2qo7oyxAaN7P1sghlCBqdUcQDApTtz3uROQm8kQT0
         eDOw==
X-Forwarded-Encrypted: i=1; AJvYcCW4bvtI6XkREvuTpXx/PWVzPtxClADqu+zP9XYdNj0ZJTVZWStaqBeofvMrrkxDUsJa06/8NXV/8GjVAKJQHA0wMu4OIhJZny+vww==
X-Gm-Message-State: AOJu0YzlEGoBnUKrSw7eExN7FzSzuGNo0Z0qTj2lEQSqUk6rAVukVEZz
	SA8DBvCbEpGerT2YJxkhV8tXIjMKucQJ29qIJlqkU/JB14BxlMUAqrrAlLve3oeruFpGx3rv41D
	zX2v4w3mXZygW9PXqsxFYgQKfDkjcH2a3eVvrng==
X-Google-Smtp-Source: AGHT+IHnx3byeR6SWSyo0RC+TkodiX814p8nMvNg+URFKCyjYQAqtSA26OzrFjigEwWHlCmMsfRBmsFbEJ+5T61424E=
X-Received: by 2002:a17:906:230d:b0:a6f:50ae:e0a with SMTP id
 a640c23a62f3a-a715f978a7amr456836266b.37.1719317630566; Tue, 25 Jun 2024
 05:13:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240624141926.5250-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240624141926.5250-2-lvzhaoxiong@huaqin.corp-partner.google.com> <de8ab492-272c-4bed-92eb-a0c3303543b2@quicinc.com>
In-Reply-To: <de8ab492-272c-4bed-92eb-a0c3303543b2@quicinc.com>
From: zhaoxiong lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Date: Tue, 25 Jun 2024 20:13:39 +0800
Message-ID: <CA+6=WdSDSvcMJsmUNW6NXqNXktYjp0xdqk8Y+FakiPBYcXfgGw@mail.gmail.com>
Subject: Re: [PATCH v5 1/5] drm/panel: jd9365da: Modify the method of sending commands
To: Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	benjamin.tissoires@redhat.co, dianders@google.com, hsinyi@google.com, 
	jagan@edgeble.ai, neil.armstrong@linaro.org, dmitry.baryshkov@linaro.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Shuijing Li <shuijing.li@mediatek.corp-partner.google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 25, 2024 at 7:41=E2=80=AFAM Jessica Zhang <quic_jesszhan@quicin=
c.com> wrote:
>
>
>
> On 6/24/2024 7:19 AM, Zhaoxiong Lv wrote:
> > Currently, the init_code of the jd9365da driver is placed
> > in the enable() function and sent, but this seems to take
> > a long time. It takes 17ms to send each instruction (an init
> > code consists of about 200 instructions), so it takes
> > about 3.5s to send the init_code. So we moved the sending
> > of the inti_code to the prepare() function, and each
> > instruction seemed to take only 25=CE=BCs.
> >
> > We checked the DSI host and found that the difference in
> > command sending time is caused by the different modes of
> > the DSI host in prepare() and enable() functions.
> > Our DSI Host only supports sending cmd in LP mode, The
> > prepare() function can directly send init_code (LP->cmd)
> > in LP mode, but the enable() function is in HS mode and
> > needs to switch to LP mode before sending init code
> > (HS->LP->cmd->HS). Therefore, it takes longer to send
> > the command.
> >
> > Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com=
>
>
> Hi Zhaoxiong,
>
> Just curious, if the host expects that commands are sent in LP mode, why
> isn't the MIPI_DSI_MODE_LPM flag set before sending the DCS commands?
>
> Thanks,
>
> Jessica Zhang

hi jessica

We have tried to set dsi->mode_flags to MIPI_DSI_MODE_LPM in the
probe() function,
but this seems to still happen. MTK colleagues believe that the host
dsi configuration is
still in LP mode during the prepare() function, and when in the
enable() function, the host
dsi is already in HS mode. However, since the command must be sent in
LP mode, it will
switch back and forth between HS->LP->HS.

Add Mediatek colleagues=EF=BC=88shuijing.li@mediatek.corp-partner.google.co=
m=EF=BC=89


>
> > ---
> > Changes between V5 and V4:
> > - 1. No changes.
> >
> > V4:https://lore.kernel.org/all/20240620080509.18504-2-lvzhaoxiong@huaqi=
n.corp-partner.google.com/
> >
> > Changes between V4 and V3:
> > - 1. Only move mipi_dsi_dcs_write_buffer from enable() function to prep=
are() function,
> > -    and no longer use mipi_dsi_dcs_write_seq_multi.
> >
> > V3:https://lore.kernel.org/all/20240614145510.22965-2-lvzhaoxiong@huaqi=
n.corp-partner.google.com/
> >
> > ---
> >   .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 24 +++++++++---------=
-
> >   1 file changed, 11 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers=
/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > index 4879835fe101..a9c483a7b3fa 100644
> > --- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > +++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > @@ -52,21 +52,9 @@ static int jadard_enable(struct drm_panel *panel)
> >   {
> >       struct device *dev =3D panel->dev;
> >       struct jadard *jadard =3D panel_to_jadard(panel);
> > -     const struct jadard_panel_desc *desc =3D jadard->desc;
> >       struct mipi_dsi_device *dsi =3D jadard->dsi;
> > -     unsigned int i;
> >       int err;
> >
> > -     msleep(10);
> > -
> > -     for (i =3D 0; i < desc->num_init_cmds; i++) {
> > -             const struct jadard_init_cmd *cmd =3D &desc->init_cmds[i]=
;
> > -
> > -             err =3D mipi_dsi_dcs_write_buffer(dsi, cmd->data, JD9365D=
A_INIT_CMD_LEN);
> > -             if (err < 0)
> > -                     return err;
> > -     }
> > -
> >       msleep(120);
> >
> >       err =3D mipi_dsi_dcs_exit_sleep_mode(dsi);
> > @@ -100,6 +88,8 @@ static int jadard_disable(struct drm_panel *panel)
> >   static int jadard_prepare(struct drm_panel *panel)
> >   {
> >       struct jadard *jadard =3D panel_to_jadard(panel);
> > +     const struct jadard_panel_desc *desc =3D jadard->desc;
> > +     unsigned int i;
> >       int ret;
> >
> >       ret =3D regulator_enable(jadard->vccio);
> > @@ -117,7 +107,15 @@ static int jadard_prepare(struct drm_panel *panel)
> >       msleep(10);
> >
> >       gpiod_set_value(jadard->reset, 1);
> > -     msleep(120);
> > +     msleep(130);
> > +
> > +     for (i =3D 0; i < desc->num_init_cmds; i++) {
> > +             const struct jadard_init_cmd *cmd =3D &desc->init_cmds[i]=
;
> > +
> > +             ret =3D mipi_dsi_dcs_write_buffer(dsi, cmd->data, JD9365D=
A_INIT_CMD_LEN);
> > +             if (ret < 0)
> > +                     return ret;
> > +     }
> >
> >       return 0;
> >   }
> > --
> > 2.17.1
> >

