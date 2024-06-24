Return-Path: <devicetree+bounces-79420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8CE915381
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 18:24:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CC9E285E18
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 16:24:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41E6419DFBC;
	Mon, 24 Jun 2024 16:22:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="WOd0V77R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8227C19DFBD
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 16:22:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719246149; cv=none; b=WpYeWy1YO/pUrCpk170KNzuCMGYvAOWaJ1ys3RvSRDPZv0RC4gUACqcJKqHTE+3UJTA6rGsYYe3qNNGH02A7Q61fbSLF/VYazKHyvvlGW8WyvsqYh3diqNd4yCjlX2Jrgi0DJoUsUmZQijeSMi7GDm1dLF+67uZqY06eIVIRJuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719246149; c=relaxed/simple;
	bh=1G4NyShq+e1j3oZW4Aedr46z9Uol0XpIJcD6idplbVA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hp+0Ln9bO/byQV2OdpEnubG5oAmuggntMOfp3AyYEocDn65jyrxh6Qu7889XOx3NvTrSSYe43Egl0HkUT0Scd31E3ftDRKN50m563PFb6JidLer8DfD5n7omKOwyCW+9DWzNp4+9VtngkDWmtL1JXbHmmipempzZiqJTsy5S5wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=WOd0V77R; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-424997177bbso15105e9.1
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 09:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719246145; x=1719850945; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4u6SiEhFuSy6jcmUYrf41+JClfPB+b5LepiIbjPkSA0=;
        b=WOd0V77RSdJa9Bf+v+1p2QTHANr67mUJXrlMsjVCE6skgBRnialNf5GqZCyj2JFdL/
         x9PXSu4wLxYNk9xF9zcuwtV0xJ5agWMQA6VGM+bnW0QyUqoMkQDknkhuxBxLqxJBaRqL
         yU9Sa3JgrccuCeqjiHLVJl9l6fn2+e7Uxgn1V8C2+eKu9EKONBiZ5Jla18pggEbHy1R7
         LOW/jQn00x3QH2tJPiGjRn23in9ohZ+3ZXr2920otaRq/mnl+gCIjbd5b8oVXS++0sRY
         AvOA4aClOoKIjXRDamyEAPjf6uK8vholU4nSkXqJk5gSD5rcImWlw2g2l14Mrt0HIYJ5
         YRCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719246145; x=1719850945;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4u6SiEhFuSy6jcmUYrf41+JClfPB+b5LepiIbjPkSA0=;
        b=aiHB8ZGcAf+rDodP//On7cv5hiG3eeVvtK9/Yn3lcyDPhXqrjEdNk0/sv7xRfzbRaB
         dzklORc13IhzCz3MZmR51bl9t+825VCOdZH+pVxvcrTIv9TigkSEuE00A7DWKdfBz2m+
         8eMDiW5mjH5tlN1PSXmG3LOvdJ4PSA2RnwNgOA1M0z40Xjb107Y3m54mnVolg2z1qzp3
         ShM1y7facCdhkShfSJ9PaetoPuRabGf3hiC6v5FMShxsMFsAk8y6MkSu2tPPR5QNPWIU
         ZnRerBynmr3rVB0N56yWR5+P2i/xT0D91DlkOGV6jRCkBeKqNwSRXF4SUU9Mi8IV/6fq
         PS6w==
X-Forwarded-Encrypted: i=1; AJvYcCXr1Xpi3yeZwe0WOEzYTdKsZGTJn9SWip27XUXpJ8emV2BAwviqvfuQ6eHgz1FijloteCsGhHxhHYTFkg5Q15nYkqy8921cjkbrRw==
X-Gm-Message-State: AOJu0YwBZrokm0EhKY579XcB6dlA901OCoy/fkcI/JcN0oVIePg4o4+4
	Zw74gHV7rUdJHAGvo0fFjMJ58Lmk/YMBhdM+F+s+j2njW6kKIqA7AcaF3BYnuDH3LMQRy6Hu7WU
	VDQitDUO3H4NY9x5Vgt4eOOIRwZf5GIZr/tap
X-Google-Smtp-Source: AGHT+IHogQz4eUKMZsSsvl1Vf44Jf33vWLaEI/UK8wH094SAzpa/D/EwJD+G+KtjuutUQ7ZhDA/Mhudd0ZIzzaCL3Ks=
X-Received: by 2002:a05:600c:384f:b0:424:9638:8453 with SMTP id
 5b1f17b1804b1-42496388483mr1337045e9.0.1719246142805; Mon, 24 Jun 2024
 09:22:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240624141926.5250-1-lvzhaoxiong@huaqin.corp-partner.google.com> <20240624141926.5250-2-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240624141926.5250-2-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Mon, 24 Jun 2024 09:22:05 -0700
Message-ID: <CAD=FV=UXXRH3PR31Rmyx-OFomQe2Q9ZF4FwmrSdyNMma8XQP2g@mail.gmail.com>
Subject: Re: [PATCH v5 1/5] drm/panel: jd9365da: Modify the method of sending commands
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	benjamin.tissoires@redhat.co, hsinyi@google.com, jagan@edgeble.ai, 
	neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jun 24, 2024 at 7:20=E2=80=AFAM Zhaoxiong Lv
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
> Changes between V5 and V4:
> - 1. No changes.
>
> V4:https://lore.kernel.org/all/20240620080509.18504-2-lvzhaoxiong@huaqin.=
corp-partner.google.com/
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

As mentioned in v4, it would be good if someone with more MIPI history
confirmed that this looks like a reasonable thing to do. However, the
code looks fine so I'll give:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

