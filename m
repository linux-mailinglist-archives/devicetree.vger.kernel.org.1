Return-Path: <devicetree+bounces-93001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8126D94F1F8
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 17:46:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A62B11C20D23
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 15:46:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8849183CB2;
	Mon, 12 Aug 2024 15:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="P613QZYt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A874206B
	for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 15:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723477564; cv=none; b=gk4XpbO5Zzmz2lZFR7eg+arU7Tko1NcCKlHENSE6YaAFSTN/cP+NeYhGYHjSHyhgw9nO4tHRApgdA17wnXSZ7A9Fd7xVfppMQ+ACvnKr9CN3qy17HQarCkF/GAgT/m6l/cBCAuKOqcNcQz6LDSLhTwOLGf5lMf4PmyXGmRoo5ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723477564; c=relaxed/simple;
	bh=PWTnM/TlBV50vGuoHmIWpJag7IVGU1x6R8fvFCPQCsE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GqvMMKfyse5529f6osp/l4yozH4Yx6dQkxPIuDvmKMMNWE6JyAvSgxaXyF/H+5h166qYg/l9qm+CH38ZfnJhOf5Z+GKQf6K1FM85tBmVW8gW5DGorgt8SVozdDr+ZM3xbA5SSpU4SEMowF7riMBpnV5UdRmoqLeedIiNxyBIgMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=P613QZYt; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-654cf0a069eso40957667b3.1
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 08:46:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1723477559; x=1724082359; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PWTnM/TlBV50vGuoHmIWpJag7IVGU1x6R8fvFCPQCsE=;
        b=P613QZYteXXVtPRlWxWUQEQwOhxBPLWzvUGigEWxZBzApVRtF6zE8kvbZ/R2ZjJyJr
         YYnzurHq1O+4xrZsLiOmIbkX59jmqFQeAYnIVi4jc9SCxQyWAThxCFFHbcfLB8i0kQwI
         cBZO7Wmc0He3LGVXJm9nF7e/TYoz12e2XCkUo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723477559; x=1724082359;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PWTnM/TlBV50vGuoHmIWpJag7IVGU1x6R8fvFCPQCsE=;
        b=Z5j3BStocwy3a4qgomfowp4EbmrWCUhAMQEW94RaiA3eg0KUrfYlCH1RD7AZzXUbwD
         NUZx3Cy82fZstqShuuPKJuv3ZAQf9LefAB1FHVAjoBHsdjjg6ONvE4btx2wlHoFQo9Ux
         mlDtIqwt3WOShxTCDtt1+GQNLdiMd1SYyS3GZusFEwUtP2auHGbONiBg7kT3JrsG2o9i
         IT+FBM/Ylz9qYckdgtBVOjeCOIWuH2CisjOb7w8YcGnfckGCCIyF7CBueW4IdwoENUX/
         o6HR/70FgQkcKZYfzJ4ZQZHFQMwea5qmb80YnUAyr132fdYOzEMfoe3GrkeZ0PaHBLao
         pGug==
X-Forwarded-Encrypted: i=1; AJvYcCXcVuxw4FjHkp0pYcLkSCzjckBdIoApop7NrWexiXajE61taWlU1aVOlsqu5nXoVdiFWyeHjsLCD0rPHP4Mq7ESUEMurFIQLx6org==
X-Gm-Message-State: AOJu0YzYfSgbcqQB7HVdMNEPEkmjhHWeKXhU8D04xqzBOx9PA3hlfwMl
	PLh9ThIEBYpjZzhLt10bGD0ofYro+q/TYFtR6/Bog5oQ1n7fF2QWWRhxysjWVwDp6hC+o8t6ChK
	SpQ==
X-Google-Smtp-Source: AGHT+IGKz/Osx6xeNi3LqLmrwdxTmTbzyR2fd3L3HdfAphOVbv4WXOb3as7dnTU+lmgWHCBZzKTMHg==
X-Received: by 2002:a05:690c:1b:b0:697:7cc0:ce1 with SMTP id 00721157ae682-6a9718f2b70mr10497477b3.7.1723477559374;
        Mon, 12 Aug 2024 08:45:59 -0700 (PDT)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com. [209.85.219.173])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6a0a4616b93sm9093927b3.128.2024.08.12.08.45.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Aug 2024 08:45:58 -0700 (PDT)
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-e0bf677e0feso4729896276.1
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 08:45:57 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVZ+GkrG4dPodU6N9wsJRA0sGUn5cGcBFoaT5R3FxE5V8AxCvtthWs7bKAs4pLiexwyT4UTYIftiyOGJPB+f8Sbt0pJQ1RnG6i72w==
X-Received: by 2002:a05:6902:1542:b0:e0b:e550:4e5c with SMTP id
 3f1490d57ef6-e113ced41a7mr1044286276.26.1723477557390; Mon, 12 Aug 2024
 08:45:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240807100429.13260-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240807100429.13260-2-lvzhaoxiong@huaqin.corp-partner.google.com> <1518bded-72d8-4ed0-a63f-3dd21473b23b@quicinc.com>
In-Reply-To: <1518bded-72d8-4ed0-a63f-3dd21473b23b@quicinc.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 12 Aug 2024 08:45:39 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UfE99Q1aQfPk61WzqK+kbMd-htWstjWUqgCvK1fqfWPw@mail.gmail.com>
Message-ID: <CAD=FV=UfE99Q1aQfPk61WzqK+kbMd-htWstjWUqgCvK1fqfWPw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] drm/panel: jd9365da: Move "exit sleep mode" and
 "set display on" cmds
To: Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>, neil.armstrong@linaro.org, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	hsinyi@google.com, airlied@gmail.com, daniel@ffwll.ch, jagan@edgeble.ai, 
	dmitry.baryshkov@linaro.org, jani.nikula@linux.intel.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Jessica,

On Thu, Aug 8, 2024 at 3:56=E2=80=AFPM Jessica Zhang <quic_jesszhan@quicinc=
.com> wrote:
>
>
>
> On 8/7/2024 3:04 AM, Zhaoxiong Lv wrote:
> > Move the "exit sleep mode" and "set display on" command from
> > enable() to init() function.
> >
> > As mentioned in the patch:
> > https://lore.kernel.org/all/20240624141926.5250-2-lvzhaoxiong@huaqin.co=
rp-partner.google.com/
> >
> > The Mediatek Soc DSI host has different modes in prepare() and
> > enable() functions, prepare() is in LP mode and enable() is in
> > HS mode. Since the "exit sleep mode" and "set display on"
> > command must also be sent in LP mode, so we also move "exit
> > sleep mode" and "set display on" command to the init() function.
> >
> > We have no other actions in the enable() function after moves
> > "exit sleep mode" and "set display on", and we checked the call
> > of the enable() function during the "startup" process. It seems
> > that only one judgment was made in drm_panel_enabel(). If the
> > panel does not define enable(), the judgment will skip the
> > enable() and continue execution. This does not seem to have
> > any other effect, and we found that some drivers also seem
> > to have no enable() function added, for example:
> > panel-asus-z00t-tm5p5-n35596 / panel-boe-himax8279d...
> > In addition, we briefly tested the kingdisplay_kd101ne3 panel and
> > melfas_lmfbx101117480 panel, and it seems that there is no garbage
> > on the panel, so we delete enable() function.
> >
> > After moving the "exit sleep mode" and "set display on" command
> > to the init() function, we no longer need additional delay
> > judgment, so we delete variables "exit_sleep_to_display_on_delay_ms"
> > and "display_on_delay_ms".
> >
> > Reviewed-by: Douglas Anderson <dianders@chromium.org>
> > Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com=
>
>
> Acked-by: Jessica Zhang <quic_jesszhan@quicinc.com>

Does this Ack mean you're confident enough about this patch that we
should go ahead and merge it, or do you think we should wait on
anything else (like Neil getting a chance to look at it)? As I
mentioned in my reply to the cover letter [1] the patches look OK to
me but I still don't consider myself to have a wonderful understanding
of the intricacies of MIPI DSI. If you think this is OK from a MIPI
DSI point of view then we can land it...

[1] https://lore.kernel.org/r/CAD=3DFV=3DWCw6pAump-PUFCW0cgbRY+5_2tPNLe=3Dh=
N3-dnXD=3DB6MA@mail.gmail.com

Thanks!

-Doug

