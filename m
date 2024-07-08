Return-Path: <devicetree+bounces-84034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAFA92ABAB
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 00:02:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 390F9280F47
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 22:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71BB4132132;
	Mon,  8 Jul 2024 22:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="IYv6ei4P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3612D058
	for <devicetree@vger.kernel.org>; Mon,  8 Jul 2024 22:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720476153; cv=none; b=sX3H3hju7wTHpFxVtI6MFJQ4nfzz8trEfE8fVZIP68EcN4/kU5vZbj2ALBEtOGSub3CQP7r/jpvsES7Y1WG75kLBMgGn0HarPcz1mX7P8Rga2KWJX4oZMXlQrd+Z4Rz6zN0oErtGA6Ru77Hhi9J8tAO3Y/hcIYBqrFSWYeiVk9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720476153; c=relaxed/simple;
	bh=8OVXbp42/iCfjHuXvJmECuOHqicvfCZWVVW3q5Irl3s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f7M6vyRKerzW1/oymAp8OI6JX4L7mYEI7MvOXeT6hLHxRC099KRbR69d0AThq6Gi2zihKgr4Qc4OHfjPbZVadTizpAdhiy9MQM/97rXtVOpeahdfhZKe/w6dLfnfnzHBVV+mvHXF9/AxrYtuqTcFII+BVkKoAe/LuJisK8cY/Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=IYv6ei4P; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-58b447c511eso5555032a12.2
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2024 15:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1720476147; x=1721080947; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8OVXbp42/iCfjHuXvJmECuOHqicvfCZWVVW3q5Irl3s=;
        b=IYv6ei4P1NMXTSWQ5yNgZLXpjxMT6QCC1ulIFEuWsNthODd9hiTaWjfOdZs9PyiQ02
         zAeBPIVS5OwjXcItPynsb/DuaZ5bcaHHP5Hpo28hL9uowVX1tMBDAPdEPO7PO3/4Oe87
         ctw8RCutBGi6HeFVt07sBltJBHso5W0jcFDj8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720476147; x=1721080947;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8OVXbp42/iCfjHuXvJmECuOHqicvfCZWVVW3q5Irl3s=;
        b=U3LWco3ds32MnHAoOmAEJjJNlNagqteDAM8R8eNVEVMSk6ApqBNnTsSGJIk9ywV2sF
         pmSiD1SubnaV0/ZXDPL4jvTiMqdGwmaV44bRLA0pqXgrBnLL3SLwztXyMUbZa16bUOUE
         4hPaq9CSySNCTMlGr/7HW+Ptn1pvBll/VMZORoSCeAdN4Xl1AQJ3g0cKsmz/2AZcmkqI
         ZAr8ahUjZ6cCNP/ud19Aw7kXeJdXZQhALt44tGJiK7CTBlJLW605y2o+qmlmbbf1Kv8G
         hovHmn6VOZVWSv4Kp/pfMW0Pe1kV8rGLTjXIy7uARbrbnInJU1RoEKtlVdpvMVqBSTvQ
         46Dg==
X-Forwarded-Encrypted: i=1; AJvYcCUPYNMn++fZiRLIjZV4s5nBMWmNghdbYyt3E94a7hPhXSf+8fzJGaThtWcj78B+NsAIDsKGt02iHIaG6ivoCS5Tdeqxp+DAmcry0w==
X-Gm-Message-State: AOJu0YwobL4xh/jT0UJ6NksnX3BNTUrZARbUiixfJLxd94DvkR1o9j+M
	uYfbKu5/IUWWY5ZauBLH1S6S0OtJ/15uTMNPQ2JKezECZuLrEWIKP8zTRV2SNVkqXLGten4nfnA
	k2A==
X-Google-Smtp-Source: AGHT+IG6ssYkf33sYg2/Qq3M4wBiOG1FSLyPBTu7njS/lNeZqZ7nXlkY7q+XM06LjvEumR9H7QLShA==
X-Received: by 2002:a17:906:3710:b0:a77:de2a:af00 with SMTP id a640c23a62f3a-a780b70532cmr52685066b.44.1720476146882;
        Mon, 08 Jul 2024 15:02:26 -0700 (PDT)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com. [209.85.128.47])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a780a86ed10sm25426466b.190.2024.07.08.15.02.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jul 2024 15:02:26 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-42666b89057so32495e9.0
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2024 15:02:25 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWFeIGGCWlvijV9CMuA2unbAO/gp09heaVJYJ2rloXPe76W24GOQzYBUrIXKwWJzn5klba/t2bcCNf+Zf1TFpnhh2W2IKl/bpYB8Q==
X-Received: by 2002:a1c:771a:0:b0:426:6837:4cf8 with SMTP id
 5b1f17b1804b1-42671c0a512mr657505e9.6.1720476145006; Mon, 08 Jul 2024
 15:02:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240704045017.2781991-1-yangcong5@huaqin.corp-partner.google.com>
 <20240704045017.2781991-4-yangcong5@huaqin.corp-partner.google.com> <CACRpkdaj2quvNdD_UDzyYPK9LyBndDHr0GNb_y8CBFAWakSU+A@mail.gmail.com>
In-Reply-To: <CACRpkdaj2quvNdD_UDzyYPK9LyBndDHr0GNb_y8CBFAWakSU+A@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 8 Jul 2024 15:02:11 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VssfZBxwh6i4e_mHhT8vZ_CnXCrUhoeTUeo5xN-FmASg@mail.gmail.com>
Message-ID: <CAD=FV=VssfZBxwh6i4e_mHhT8vZ_CnXCrUhoeTUeo5xN-FmASg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] drm/panel: jd9365da: Break some CMDS into helper functions
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Cong Yang <yangcong5@huaqin.corp-partner.google.com>, sam@ravnborg.org, 
	neil.armstrong@linaro.org, daniel@ffwll.ch, swboyd@chromium.org, 
	airlied@gmail.com, dmitry.baryshkov@linaro.org, 
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, conor+dt@kernel.org, 
	lvzhaoxiong@huaqin.corp-partner.google.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 4, 2024 at 1:03=E2=80=AFAM Linus Walleij <linus.walleij@linaro.=
org> wrote:
>
> On Thu, Jul 4, 2024 at 6:50=E2=80=AFAM Cong Yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
>
> > These panels have some common cmds (e0h~e3h,80h), let's break
> > them into helper functions.
> >
> > Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
>
> This is a good start! :)
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>
> If you get time one of these days, see if you can add some defines for
> the other vendor DCS commands as well, but no hurry with that,
> let's merge this series first.

I agree with Linus. It would be great to take this further, but this
is a good start and I'm OK with it merging.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

I'd tend to assume that Neil will merge this series with the various
Acks/Reviews. If I see it hasn't been merged after a while or Neil
says he's busy then I'm happy to land it.

-Doug

