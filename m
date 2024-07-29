Return-Path: <devicetree+bounces-88675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C56E93EBCC
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 05:11:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 46AAE1F214BB
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 03:11:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA1BB7E563;
	Mon, 29 Jul 2024 03:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="gMOkCoY/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB782B9D2
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 03:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722222657; cv=none; b=ZTn/NCOlKDEqXb5D27606xYC+2gY0e1rVSaODf5U4ANjXHI6gAMOZuRZY8wOE7EEY9EvxwiOQRaWBQs4e0Gy9Ys4bq5i/TluHX+D7SB5+Ph4N9IHbFDRisW28ytRsHxw5vj2n/UcEe41Z91pwRZHdJZrSnqE08TiNSROs8sdbhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722222657; c=relaxed/simple;
	bh=mzE7J2DdOJAtBG6Uxbs5qtgJIcY2yA2eY3X8uUGoNpI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YhVmBrBNEilD+PfHygHcNXAPnLz6LpqdvrbwoQbUnjHUnBUMPfy3+pZMO0hNW4k8ocMczspMyDyre/+V0/eE7D0GrhhvAzmKd/YtZCglU4gTGjTwbZVU8MV3SUFZjXdzegV9ce6uxIQO2F1n+UwUfjzTxAmohr78HE0V8EBu9OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=gMOkCoY/; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5ab2baf13d9so4706657a12.2
        for <devicetree@vger.kernel.org>; Sun, 28 Jul 2024 20:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1722222654; x=1722827454; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AovMI4heGjn5SDk0Nj13+4S/I8bK52/EtqojLFqFeY0=;
        b=gMOkCoY/9Q/y6cj9OIhhSLTvmqT5lgTc9e2ObNLa4sZTQs/kTEjm+M8yqP3oUOjbAv
         kYuSN4aPGRQV+s4hC6qF06rRtagX5zeMkEcymgG0qJAwE369suENBcAwRTHGxH1WHawg
         2woLD168Yrsd/1NiV/fwflJKa9oWC04onXL8bJaHxJHZ/Rxv/oHCkrJn1jbSWS/86V+t
         MB/UUhi8Zp7Ht/d+SH7RA6vjWEUv/8mrHLMmufZxBVgH0EDvB43Dik6vYiAGTElsydfN
         xFWgit2fk/xlUMlxbgQPvOA7HsuLqc3r4opsvohrfNYDazqLOuzUX2djfs2JSvI9oGIg
         iQ3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722222654; x=1722827454;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AovMI4heGjn5SDk0Nj13+4S/I8bK52/EtqojLFqFeY0=;
        b=K5WaFk0yPyoqUNUW4cyYbuah4K7V7iZMoNFjWw5nwr0U2qOgrvs4iGM8geL5ru2S3w
         cvf22fWFTkPNnVMPy/t/Vv48HsqPH3SwhuIP2QaCen1+G14aETPFrLjfY3MYjSesm5SJ
         HIHkX9n6zDuEfM/HV+xaV+3oS3Y7RCSnvSwQh6ybEYrBqAg9Y4ffZdu5hagspuDYyRqx
         +iARezTpDNXBlgKm0QYBBTbpFHA2kgh9mcuHs7KPWTO+aC9EoOl5DD9SX6uEKxswnMRE
         7IsX9BPfQwNSkFwnPpN/XD3mWy+iexSVAb5tEHIQUcQqNLarDOSfwU3WmKZHHYcd7f/r
         R1bw==
X-Forwarded-Encrypted: i=1; AJvYcCWgacRXsaW4bxzUFcBGIeYz9KIgFhyeEfdALtR/nUeyGB3qah9mMunSe48VKkBF4cUPQGXPj1ar50wEObMRhJJh6e/HQZdTHUHUmQ==
X-Gm-Message-State: AOJu0YxDIRVVb1vjjlZZRJ0KAUhMMjfAwk9ASmpiP1ETT75hmPmGmqWi
	O5tljlSf/e8p6e9MryMjDRUEkw0xry0qHoE3TtP3xOxErvrH2Fwqo+oqV1dpY3Ao+otOH4zYKVR
	UmYaNrI54H6pN427P7f3NfAE3ppDN8RJMmQxGNw==
X-Google-Smtp-Source: AGHT+IGRTqCqtuC3oYSZw0bgm/HOWiWzOGyrBjLJHhFnBoEcaLQFh/lUCiWS84RXrUoG0RjGP5dU4flhYq2KIZLQSxw=
X-Received: by 2002:a50:d681:0:b0:5a1:73fc:6bdd with SMTP id
 4fb4d7f45d1cf-5b0207ca612mr4170775a12.15.1722222654237; Sun, 28 Jul 2024
 20:10:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240725083245.12253-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240725083245.12253-2-lvzhaoxiong@huaqin.corp-partner.google.com> <gq5fcttutomphgfrwrtloqzczia3uc5qpont3lrowocan2xjc5@ubfabhsh3mfl>
In-Reply-To: <gq5fcttutomphgfrwrtloqzczia3uc5qpont3lrowocan2xjc5@ubfabhsh3mfl>
From: zhaoxiong lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Date: Mon, 29 Jul 2024 11:10:43 +0800
Message-ID: <CA+6=WdQuFYbADjG0i_zWMGYmw95H1U_McqCw4CLW0+Gate50YA@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] drm/panel: jd9365da: Move the sending location of
 the 11/29 command
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	dianders@chromium.org, hsinyi@google.com, airlied@gmail.com, daniel@ffwll.ch, 
	jagan@edgeble.ai, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jul 28, 2024 at 12:59=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Thu, Jul 25, 2024 at 04:32:44PM GMT, Zhaoxiong Lv wrote:
> > Move the 11/29 command from enable() to init() function
> >
> > As mentioned in the patch:
> > https://lore.kernel.org/all/20240624141926.5250-2-lvzhaoxiong@huaqin.co=
rp-partner.google.com/
> >
> > Our DSI host has different modes in prepare() and enable()
> > functions. prepare() is in LP mode and enable() is in HS mode.
> > Since the 11/29 command must also be sent in LP mode,
> > so we also move 11/29 command to the init() function.
> >
> > After moving the 11/29 command to the init() function,
> > we no longer need additional delay judgment, so we delete
> > variables "exit_sleep_to_display_on_delay_ms" and
> > "display_on_delay_ms".
>
> Won't this result in a garbage being displayed on the panel during
> startup?

Hi Dmitry

We just moved "Exit sleep mode" and "set display on" from the enable()
function to the init() function and did not make any other changes.
It seems that many drivers also put the "init code" and "Exit sleep
mode" in one function.
In addition, we briefly tested the kingdisplay_kd101ne3 panel and
melfas_lmfbx101117480 panel, and it seems that there is no garbage on
the panel.

BR
>
> >
> > Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com=
>
> > ---
> >  .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 59 ++++++++++---------
> >  1 file changed, 32 insertions(+), 27 deletions(-)
>

