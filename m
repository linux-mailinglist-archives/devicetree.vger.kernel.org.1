Return-Path: <devicetree+bounces-80162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4C9917F00
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 12:55:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DA57BB285D7
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 10:55:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32D6817798C;
	Wed, 26 Jun 2024 10:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Z7A8be82"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4D61662E5
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 10:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719399346; cv=none; b=JOUq318v7sueCQ6dOqJiqMEJP/plnD4UvsFRmmLtaDkRHeaHSHPqb1ry8QubH1HIJXJ5eXLNYJm0JHcFYn5zfev2leQnAfK8XSxFOJQfVHRYyB4x2nRsPKyXN6W0I3GBf11pZGA+n6kLQNrkGYyHySqMHNYNXu8yo1yqQhhpc20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719399346; c=relaxed/simple;
	bh=CldZG81f2P1GudsYImj66g1IJo1zRAPfNNf2CvoUdRI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=N5fWg5/Dp2O+EFXBLOTru924MGDq8vEXXXKQ92gqB5iUHp3rK5z+aVNdaivG+86S2s5+YDibeowJvA7fdCiBlj8lgCJEuYct6nxTLd7aZ1WXePa7RnHHsL1HHVyq7EobHoqcNjE+WkFV43D+gVr7u8oe8M9rD5k1E3t+bfOw95U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Z7A8be82; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-57d1782679fso108394a12.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 03:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719399342; x=1720004142; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DvpHCyqwIEWrIEkuFm3ZwyDR/Vs8dxE4a8djGzFogD8=;
        b=Z7A8be82QUk2+P7I6Y4aGtrWVym3RY9ydjc3yMHqO+EvAjMsEdnBxrTNAyxOz0uxGA
         wljqjnth+nSpElnhwUYYGx+gAFp6UaqUC70l2YVtnAr59sOTR4cvK7xeCjHjZPNv4of4
         L5sqODnhcJIN4qj5XRT6N6qe3iGfaF9oyAQ71YiYoS3bXUx9YO/E5bP7qmUjoqK0R7eH
         VoLayrWSXiPeJQ8WNAroBBHKvbkg2IOV9EMXS7Wf5ZZl0T+BV2ea4p+o0vGGmQuTAROh
         7I/HvYinMsMRnDFILLZ1Giisq/aPw7zEKwWA4iZBhWI0p+rCoV1pqSP9nvPIoXpIDs7X
         x0sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719399342; x=1720004142;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DvpHCyqwIEWrIEkuFm3ZwyDR/Vs8dxE4a8djGzFogD8=;
        b=xIAwexeDy4J/i5wtI1X6e06vno40+uy/QavFHoKV9ZtKM7grwH+yBQmkWjiQtTj7n/
         T0u5u7kQ/bC9J9+U1opGNK2D4N1su1IruzmU4WMaMwyXGd8fBygTh1jnOYRFvcyz4Ku5
         k41r697edOpiV9+ZGSxUbImUAtIbJGoAR39p8soqBdTV8Pku772Nq3AMUlHkiR8umhkL
         q3ZEer/x3V4Hj3ZGmst9oQzoM/7ZuB6AQxtMIZVfNQFEmvXZtMQgb1fmvVTNYMlxyCML
         tEB4vNw0EWE4/5zELegpZ55RqyaVBlwb4+SnhH/OwKNWIv/5RLQw5WHK+pin0kUdGHLU
         XIkQ==
X-Forwarded-Encrypted: i=1; AJvYcCX53Ak/mxS6M7ooumXez/i+WVqzTBQltlb412gX7XikTFOb8o+kI6Mh+xDeS2xn3lMJeOkr7tPfvpJdlsNA56Eec5kd+2wcsuuP7w==
X-Gm-Message-State: AOJu0YwFXI24nm3XKtbAuX3R6XQ7tH6SK64OKLmwwE4x1Elda6EjLunM
	CLXO6RwLzgO/WG1wimhUBD7FafDxqBQq2EIkUQdbk7UAQBGMuZ9ONk7RVM1aqey4RV21K/tqKQm
	aRj9sNW+r+14I1xX5W17uAfV25Ov79g422Dq9RQ==
X-Google-Smtp-Source: AGHT+IFLL8v+ApRsdF1oQyJ4gYj95DTo+ZpYfz8vWOavfb/Rr+f7PYpka089Pmz5x/tFDV2Ns1y5LdQGTy6tzXBS1V0=
X-Received: by 2002:a50:8d4f:0:b0:57d:10bb:b42b with SMTP id
 4fb4d7f45d1cf-57d4bdcba20mr6272487a12.26.1719399342459; Wed, 26 Jun 2024
 03:55:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240624141926.5250-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240624141926.5250-2-lvzhaoxiong@huaqin.corp-partner.google.com>
 <de8ab492-272c-4bed-92eb-a0c3303543b2@quicinc.com> <CA+6=WdSDSvcMJsmUNW6NXqNXktYjp0xdqk8Y+FakiPBYcXfgGw@mail.gmail.com>
 <a5734572-c822-493a-a15a-63dcf37d60cc@quicinc.com>
In-Reply-To: <a5734572-c822-493a-a15a-63dcf37d60cc@quicinc.com>
From: zhaoxiong lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Date: Wed, 26 Jun 2024 18:55:31 +0800
Message-ID: <CA+6=WdSYZCOQvOLCVV9BVBs_=UKbw9Sn8t7a58hY=Y--7JqGvg@mail.gmail.com>
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

On Wed, Jun 26, 2024 at 1:49=E2=80=AFAM Jessica Zhang <quic_jesszhan@quicin=
c.com> wrote:
>
>
>
> On 6/25/2024 5:13 AM, zhaoxiong lv wrote:
> > On Tue, Jun 25, 2024 at 7:41=E2=80=AFAM Jessica Zhang <quic_jesszhan@qu=
icinc.com> wrote:
> >>
> >>
> >>
> >> On 6/24/2024 7:19 AM, Zhaoxiong Lv wrote:
> >>> Currently, the init_code of the jd9365da driver is placed
> >>> in the enable() function and sent, but this seems to take
> >>> a long time. It takes 17ms to send each instruction (an init
> >>> code consists of about 200 instructions), so it takes
> >>> about 3.5s to send the init_code. So we moved the sending
> >>> of the inti_code to the prepare() function, and each
> >>> instruction seemed to take only 25=CE=BCs.
> >>>
> >>> We checked the DSI host and found that the difference in
> >>> command sending time is caused by the different modes of
> >>> the DSI host in prepare() and enable() functions.
> >>> Our DSI Host only supports sending cmd in LP mode, The
> >>> prepare() function can directly send init_code (LP->cmd)
> >>> in LP mode, but the enable() function is in HS mode and
> >>> needs to switch to LP mode before sending init code
> >>> (HS->LP->cmd->HS). Therefore, it takes longer to send
> >>> the command.
> >>>
> >>> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.c=
om>
> >>
> >> Hi Zhaoxiong,
> >>
> >> Just curious, if the host expects that commands are sent in LP mode, w=
hy
> >> isn't the MIPI_DSI_MODE_LPM flag set before sending the DCS commands?
> >>
> >> Thanks,
> >>
> >> Jessica Zhang
> >
> > hi jessica
> >
> > We have tried to set dsi->mode_flags to MIPI_DSI_MODE_LPM in the
> > probe() function,
> > but this seems to still happen. MTK colleagues believe that the host
> > dsi configuration is
> > still in LP mode during the prepare() function, and when in the
> > enable() function, the host
> > dsi is already in HS mode. However, since the command must be sent in
> > LP mode, it will
> > switch back and forth between HS->LP->HS.
> >
> > Add Mediatek colleagues=EF=BC=88shuijing.li@mediatek.corp-partner.googl=
e.com=EF=BC=89
>
> Got it. Even drivers that call their init commands in prepare() set the
> LPM flag [1][2] when applicable so I was just wondering why this driver
> doesn't seem to set LPM at all even though it is going into LP mode.
>
> [1]
> https://elixir.bootlin.com/linux/v6.10-rc5/source/drivers/gpu/drm/panel/p=
anel-visionox-vtdr6130.c#L46
>
> [2]
> https://elixir.bootlin.com/linux/v6.10-rc5/source/drivers/gpu/drm/panel/p=
anel-visionox-r66451.c#L46

hi  jessica

The initial default setting of our host DSI is the LP mode.





>
> >
> >
> >>
> >>> ---
> >>> Changes between V5 and V4:
> >>> - 1. No changes.
> >>>
> >>> V4:https://lore.kernel.org/all/20240620080509.18504-2-lvzhaoxiong@hua=
qin.corp-partner.google.com/
> >>>
> >>> Changes between V4 and V3:
> >>> - 1. Only move mipi_dsi_dcs_write_buffer from enable() function to pr=
epare() function,
> >>> -    and no longer use mipi_dsi_dcs_write_seq_multi.
> >>>
> >>> V3:https://lore.kernel.org/all/20240614145510.22965-2-lvzhaoxiong@hua=
qin.corp-partner.google.com/
> >>>
> >>> ---
> >>>    .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 24 +++++++++------=
----
> >>>    1 file changed, 11 insertions(+), 13 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drive=
rs/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> >>> index 4879835fe101..a9c483a7b3fa 100644
> >>> --- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> >>> +++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> >>> @@ -52,21 +52,9 @@ static int jadard_enable(struct drm_panel *panel)
> >>>    {
> >>>        struct device *dev =3D panel->dev;
> >>>        struct jadard *jadard =3D panel_to_jadard(panel);
> >>> -     const struct jadard_panel_desc *desc =3D jadard->desc;
> >>>        struct mipi_dsi_device *dsi =3D jadard->dsi;
> >>> -     unsigned int i;
> >>>        int err;
> >>>
> >>> -     msleep(10);
> >>> -
> >>> -     for (i =3D 0; i < desc->num_init_cmds; i++) {
> >>> -             const struct jadard_init_cmd *cmd =3D &desc->init_cmds[=
i];
> >>> -
> >>> -             err =3D mipi_dsi_dcs_write_buffer(dsi, cmd->data, JD936=
5DA_INIT_CMD_LEN);
> >>> -             if (err < 0)
> >>> -                     return err;
> >>> -     }
> >>> -
> >>>        msleep(120);
> >>>
> >>>        err =3D mipi_dsi_dcs_exit_sleep_mode(dsi);
> >>> @@ -100,6 +88,8 @@ static int jadard_disable(struct drm_panel *panel)
> >>>    static int jadard_prepare(struct drm_panel *panel)
> >>>    {
> >>>        struct jadard *jadard =3D panel_to_jadard(panel);
> >>> +     const struct jadard_panel_desc *desc =3D jadard->desc;
> >>> +     unsigned int i;
> >>>        int ret;
> >>>
> >>>        ret =3D regulator_enable(jadard->vccio);
> >>> @@ -117,7 +107,15 @@ static int jadard_prepare(struct drm_panel *pane=
l)
> >>>        msleep(10);
> >>>
> >>>        gpiod_set_value(jadard->reset, 1);
> >>> -     msleep(120);
> >>> +     msleep(130);
> >>> +
> >>> +     for (i =3D 0; i < desc->num_init_cmds; i++) {
> >>> +             const struct jadard_init_cmd *cmd =3D &desc->init_cmds[=
i];
> >>> +
> >>> +             ret =3D mipi_dsi_dcs_write_buffer(dsi, cmd->data, JD936=
5DA_INIT_CMD_LEN);
> >>> +             if (ret < 0)
> >>> +                     return ret;
> >>> +     }
> >>>
> >>>        return 0;
> >>>    }
> >>> --
> >>> 2.17.1
> >>>

