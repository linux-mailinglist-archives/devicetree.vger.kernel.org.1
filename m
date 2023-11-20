Return-Path: <devicetree+bounces-17252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5167F1BE9
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 19:05:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 55B6E1F2091B
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 18:05:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26EBF249FE;
	Mon, 20 Nov 2023 18:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Upabyqmb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91A31AC
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 10:05:05 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9de7a43bd1aso632854566b.3
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 10:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1700503502; x=1701108302; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zfQgWIiUL3Fow7Ad2MX3WF/O+vZdxL2eavqBiY3Rc9k=;
        b=UpabyqmbB+ek2UGQg8lweA3q9EHnaRDqWa2EAjoloH8hoyUpsPI23OQT+LKIWJ+5qY
         2Q1xz9twyYwE00H5FF+Hfwt//izPH6uSeK0et1VVh+WuGLWhz2SNO5No++wOa82+6ExA
         Yni8FPpQSUFcHLADzSEeVv+rSc2SLVGH/TbAo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700503502; x=1701108302;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zfQgWIiUL3Fow7Ad2MX3WF/O+vZdxL2eavqBiY3Rc9k=;
        b=I9Zk/RLZcQcwwEQtK82v9bJRzWYO4JvYYpxwWLjJNXHjoikPoHdi3ZOMIyrBr47Mr9
         yBuyz9yWASOZSqn4K5xO3x660Y2dOOg3Apj1sDpuExv4Me10XSQ3fmjq1T7Muy2v1ScT
         ftPGC9BTutIDWVmlruaIFzvz+ZFnLz8I3EFvZzIuIiIIOEQBxN48vmDMjjR4fnHnYLLc
         sUIJ2wjQFRRvBTYi6Jza1T46XXu/tDClzi/PaCgEvx4+Rfus4GsV6KkDBSlaZ6VXrcrI
         /4Gqxde8kp5Xk84KDQNGUTLOt5gnBidZCpOr94pgSFVhcs5YUF+l8hzzv25MMf07X7BL
         ZjbA==
X-Gm-Message-State: AOJu0YxmLnecHubDUmMsmqDR77CG1zBOW2xtzySUDY+8n7VdzerjFRfH
	EqDHFbwRiDetlR0xUQm7cMKt75E1dlJiRlVN+1lH4A==
X-Google-Smtp-Source: AGHT+IEW4DEzF3zfMTGTfkDyWIqBpLdsBqpUGQ2t9kHTFITPql7QQHIHzYySnMNpN8xrmX4eOZKSwg==
X-Received: by 2002:a17:906:4107:b0:a00:152a:1efa with SMTP id j7-20020a170906410700b00a00152a1efamr1585006ejk.3.1700503501719;
        Mon, 20 Nov 2023 10:05:01 -0800 (PST)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com. [209.85.128.42])
        by smtp.gmail.com with ESMTPSA id p27-20020a1709060ddb00b009fc50ebb062sm2122265eji.4.2023.11.20.10.05.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Nov 2023 10:05:01 -0800 (PST)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-408c6ec1fd1so2615e9.1
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 10:05:00 -0800 (PST)
X-Received: by 2002:a05:600c:3c8b:b0:3f7:3e85:36a with SMTP id
 bg11-20020a05600c3c8b00b003f73e85036amr395736wmb.7.1700503500479; Mon, 20 Nov
 2023 10:05:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231117032500.2923624-1-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=WAPAhMfK5jgkMS=m3grxaUtrDoZnQs3rmbLpLX84+j1w@mail.gmail.com> <CAHwB_NLHqyP6mpQJHw86Hk-g3d8Q9xjRBde_YTTQiuLBwAhEKQ@mail.gmail.com>
In-Reply-To: <CAHwB_NLHqyP6mpQJHw86Hk-g3d8Q9xjRBde_YTTQiuLBwAhEKQ@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 20 Nov 2023 10:04:43 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Vf0t_-t0CgLdGM2KMYtDcmf5sq4ej-G94ecKBxMO8K2w@mail.gmail.com>
Message-ID: <CAD=FV=Vf0t_-t0CgLdGM2KMYtDcmf5sq4ej-G94ecKBxMO8K2w@mail.gmail.com>
Subject: Re: [PATCH V2] drm/panel: boe-tv101wum-nl6: Fine tune Himax83102-j02
 panel HFP and HBP
To: cong yang <yangcong5@huaqin.corp-partner.google.com>
Cc: Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@google.com>, David Airlie <airlied@gmail.com>, 
	zhouruihai@huaqin.com, dri-devel <dri-devel@lists.freedesktop.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Nov 19, 2023 at 5:33=E2=80=AFPM cong yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> Hi,
>
> On Sat, Nov 18, 2023 at 1:11=E2=80=AFAM Doug Anderson <dianders@chromium.=
org> wrote:
> >
> > Hi,
> >
> > On Thu, Nov 16, 2023 at 7:25=E2=80=AFPM Cong Yang
> > <yangcong5@huaqin.corp-partner.google.com> wrote:
> > >
> > > The refresh reported by modetest is 60.46Hz, and the actual measureme=
nt
> > > is 60.01Hz, which is outside the expected tolerance.
> >
> > Presumably you've swapped the numbers above? The value reported by
> > modetest is 60.01Hz and the actual measurement is 60.46Hz?
>
> No, the value reported by modetest is 60.46Hz.

Indeed. I somehow assumed that the old value of "clock / (htotal *
vtotal)" would have been the one that was closer to 60 Hz, but doing
the math I agree with you. Specifically:

>>> 161600000 / ((1200 + 40 + 20 + 40) * (1920 + 116 + 8 + 12))
60.46093983837174

>>> 162850000 / ((1200 + 50 + 20 + 50) * (1920 + 116 + 8 + 12))
60.005453366348306

Thanks for correcting me!

-Doug

