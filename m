Return-Path: <devicetree+bounces-78616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8988B912DE5
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 21:34:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E1A83B24525
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 19:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75A1017B4EB;
	Fri, 21 Jun 2024 19:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="nw6qApOB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D047F17B419
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 19:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718998429; cv=none; b=F5Jw2e8aff/4nDjNH2eCJwaddoEmGv8bIMNDBds9Lr1BpNL1QM0e1hFPOX1riILNBFVa4NE4+wCrhPbl0pDzjafxlgJNk5RXKS1UAIJoXYvFfXOWj4A7ojUJ49MsKRPZu+MAJ6VJKyzYeU3HWXi2rWCkXleQPl2Vl2ILU5/f1po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718998429; c=relaxed/simple;
	bh=DWJwt5txtEJ5l1ggdApbfkj/j9BnA2yzomof5Tf2sKU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BcTSg17E2vH1l6RNNDFp+cBiaqnS0WSNC7j8U2u9C/zCFGAUKUmu6mMqAViqf37boKiHPrljN8DmbG8xZWkvfd4cTN3/uI2/XBT+28tFIQOL0eOLcYb5kTtyKJhWAre+AEYVqIp4JVNeCmBhvpRwNMEVtMUS5ZqG1o4gmHT8iow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=nw6qApOB; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-443586c2091so589491cf.0
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 12:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1718998427; x=1719603227; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Le2MkNdTd7ht732px20a1wWOLqrtTMx4YCE6l0MH95w=;
        b=nw6qApOBjHGbEc5TFGkEcJXGG68vGGcaSsmvy1gfh083jMbuEwbrVnY5RVkVyH6EB4
         3Je4EQpvK5epFCyfdxpfZMHz9c/gJRTEuCWeTCYZ+CqpaqgHENzs3OABnYrM7ZhqhzGt
         VXzYjGnulSJJf4ItCeqV2/kJ1vnT+8Si5/s/NUS75INsf/WXJMyjV9IuIVme/rGfEibI
         1INqUxDRFu+DTrVioGsF/fLdE3J7si4Je4f8xZiRAJNQlsh/PKuEp5qJNkBOw07Gg6XJ
         HufVBwHLraFFSDATkJICKCS146qkcTQ72ioZQUxLfi8YRaomzEqIr13ilC/Gehh8jnBd
         O+uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718998427; x=1719603227;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Le2MkNdTd7ht732px20a1wWOLqrtTMx4YCE6l0MH95w=;
        b=h7bGB/EwAZ6hapiE4FhQ7ap1jZbUmzB/wbFLpeRVN+Qum/38ZSCNhbB1mAOQxyO7eV
         qD7OjVYkyZjWH1FCX68ro0ofMDb7nq9T05gUlehCTzd1dFpocLZNpwJfBTtMdCppF/fu
         u4sMCkZ2iNTXllXtqeX+eYoMhBKJxlLAZzRY6vyh7YByXdlZZ6ku2YkAbYOE4fue+jdD
         ehRMZADOajscfrxrUyHg/R+0khjk2iQV8RHOKo85dwPdORVl1+JMAmqaTI36m2mq1awR
         AcjbU7YC42oPoi8MXdeR1AV0iA9V+jR6ycjgCxqDmTZ0q6okJdUAIp9e6ef0bOSO/Rn8
         iyAQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpXnh5e6EdGX6wkgDndQU1LXn7eieVB7WKhIGGhCdbtUC6PrWgXxCoC42otrUYJmsmnGjTkp/LANaWORPV+cTOg55TD3EklnCEtQ==
X-Gm-Message-State: AOJu0YysZrCOTwM6Y+HJBnAD91T7fCQPfEWFQzfbcLMxp4CRY6zwDc7e
	7aMy198UNDO7wZHMrbrGMuRbtOgLatXIX48DsTzwBAwJJ1lxmM2Eavl9kbpLiZl/dnxe29s6BLD
	l+3X31VoY5KwhJyIHr2VcnPkrbaR/7zPvTZuL
X-Google-Smtp-Source: AGHT+IFrMD+rZzDa0ZVM2nBbSOJX2XJ6FBHeQxjvTimHBSdAG5CC6HH/3+o7haZPxilyiYFmJuIdUGRz/upXWdTumZA=
X-Received: by 2002:a05:622a:83:b0:441:54bb:50eb with SMTP id
 d75a77b69052e-444ce39fd5dmr117391cf.28.1718998426491; Fri, 21 Jun 2024
 12:33:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240620080509.18504-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240620080509.18504-2-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240620080509.18504-2-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Fri, 21 Jun 2024 12:33:31 -0700
Message-ID: <CAD=FV=Xf26n+ZtUXHAwhQin76+z_Zkg+KWf++pGWWrHtgU83jQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] drm/panel: jd9365da: Modify the method of sending commands
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	benjamin.tissoires@redhat.co, hsinyi@google.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Jagan Teki <jagan@edgeble.ai>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jun 20, 2024 at 1:05=E2=80=AFAM Zhaoxiong Lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> Currently, the init_code of the jd9365da driver is placed
> in the enable() function and sent, but this seems to take
> a long time. It takes 17ms to send each instruction (an init
> code consists of about 200 instructions), so it takes
> about 3.5s to send the init_code. So we moved the sending
> of the inti_code to the prepare() function, and each
> instruction seemed to take only 25=CE=BCs.
>
> We checked the DSI host and found that the difference in
> command sending time is caused by the different modes of
> the DSI host in prepare() and enable() functions.
> Our DSI Host only supports sending cmd in LP mode, The
> prepare() function can directly send init_code (LP->cmd)
> in LP mode, but the enable() function is in HS mode and
> needs to switch to LP mode before sending init code
> (HS->LP->cmd->HS). Therefore, it takes longer to send
> the command.
>
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> ---
>
> Changes between V4 and V3:
> - 1. Only move mipi_dsi_dcs_write_buffer from enable() function to prepar=
e() function,
> -    and no longer use mipi_dsi_dcs_write_seq_multi.
>
> V3:https://lore.kernel.org/all/20240614145510.22965-2-lvzhaoxiong@huaqin.=
corp-partner.google.com/
>
> ---
>  .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 24 +++++++++----------
>  1 file changed, 11 insertions(+), 13 deletions(-)

This seems reasonable to me, but I'd prefer someone with more MIPI
experience than me to actually give it a good review to make sure that
the argument about things being in prepare() vs enable() makes sense
to them.

Actually, that makes me look at your CC list, which seems to be
missing some important people. You should have run
`./scripts/get_maintainer.pl` and used that to help you make your CC
list, but you're missing some important people including the
maintainer of this driver and the panel maintainer. I've added a few
of those people to this patch. If you send future versions please
include folks that get_maintainer points out.


> @@ -117,7 +107,15 @@ static int jadard_prepare(struct drm_panel *panel)
>         msleep(10);
>
>         gpiod_set_value(jadard->reset, 1);
> -       msleep(120);
> +       msleep(130);
> +
> +       for (i =3D 0; i < desc->num_init_cmds; i++) {
> +               const struct jadard_init_cmd *cmd =3D &desc->init_cmds[i]=
;
> +
> +               ret =3D mipi_dsi_dcs_write_buffer(dsi, cmd->data, JD9365D=
A_INIT_CMD_LEN);

In general people don't like the table-based approach for DSI init.
For this patch it's probably OK, but before the later patch where you
add a new panel you'll probably need to transition to a separate init
per panel and then use mipi_dsi_dcs_write_seq_multi() in there. I'll
comment more on the later patch. In other words, one possible v5
should be a 5-patch series:

Patch #1: this patch
Patch #2: DT binding
Patch #3: switch jd9365da to use mipi_dsi_dcs_write_seq_multi() but no
functional changes.
Patch #4: add your new panel.
Patch #5: orientation.



-Doug

