Return-Path: <devicetree+bounces-15080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6891C7E84FA
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 22:10:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ED860B20C25
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 21:10:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 613A83B7B7;
	Fri, 10 Nov 2023 21:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Vyq+5cJv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD99B3B28F
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 21:10:06 +0000 (UTC)
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58915C4
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 13:10:05 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4078fe6a063so2515e9.1
        for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 13:10:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1699650604; x=1700255404; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XE+/jbgSi664HD8BrCmT+2A639BdbZR0PFQ8SEUbr8E=;
        b=Vyq+5cJvhSEyd08pQn3CN5+m6OQtH+vqHBRso0kqBux+67Wo6j8AyPOSwsq6bVkKhu
         q5Dm5gMor/wiqn5TFv7aAfQbnIEV3qFqElRe6GRgnL2CPeLWC/T/L5JcQUveqki21h5P
         WB0xvP1+EHe8kQcdgbSgABNpCZYItr1rLmm0Ea7YuU2XgnwgfLTDwSSmfabUBbujvKOt
         3uztYidvXik3SjSGoZmHFdDTTiqnMCrs+mqh+yp/LMvZt/pKnDpNGJL8lpcLk6Zm41Vz
         DAHB4z+Ul2Kvnlj8atwY9T2ahbLW2eLF61+LgcmV465RZ4XA2tBc+uFAjLTf2rmiH49H
         ApGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699650604; x=1700255404;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XE+/jbgSi664HD8BrCmT+2A639BdbZR0PFQ8SEUbr8E=;
        b=ZvMCGh+AKP8wRhuYyN1VF9d3TDX6ZNJQoGa2iy5MQ6XHA10ELlm1Jye/BnGIBZyvN/
         E1QxNHp2h+hiKL3Y3GUBAJkawtMyuJNfiPEcfC/+JPaQQd7eVFkUWy0RkO4vno6mt+lF
         AHsn68/kCcUrB7NZHZ12D+HyD8LGHJJKOZWUbihUGqEODNcMp/0gpo84DL9WP9zQJEwS
         Q+qffGJvrTqx6kYmTtON+6KH84hIPOsrRazFYa15r9MEmjgsRR0FlgVai9V1WmTHIU2L
         28IzNa5Kf3/wFXch7fMjU4S0jd54VUiUgQMGHy07kIpNxkSJbehjbAELWY3ljJ5tepxI
         248g==
X-Gm-Message-State: AOJu0Yw714yvXPlafofW0f2aTR06uW5TuNRKvj4BfIx5t5qkpBc21Bzt
	iWWQ/jXjCbeRmZYAk4ufvwoBYkGUDuwyAUS9yB31yA==
X-Google-Smtp-Source: AGHT+IEed6ru5XI2tGdQUHFtZARACGAfGFOcCru3M+E5sMSccnmdruAaJQRKVBsgXLem9FOe09lBfdh00h+15HeH9/0=
X-Received: by 2002:a05:600c:3b9b:b0:408:3725:b96a with SMTP id
 n27-20020a05600c3b9b00b004083725b96amr9766wms.0.1699650603630; Fri, 10 Nov
 2023 13:10:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231110094553.2361842-1-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20231110094553.2361842-1-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Fri, 10 Nov 2023 13:09:46 -0800
Message-ID: <CAD=FV=UvZ9U1SYjOOBB6o2CmquAevqJZ9Ukp_kx4zGXFbp_VBA@mail.gmail.com>
Subject: Re: [PATCH] drm/panel: boe-tv101wum-nl6: Fine tune Himax83102-j02
 panel HFP and HBP
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, airlied@gmail.com, zhouruihai@huaqin.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Nov 10, 2023 at 1:46=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> The refresh reported by modotest is 60.46Hz, and the actual measurement

s/modotets/modetest/

> is 60.01Hz, which is outside the expected tolerance. Adjust hporch and
> pixel clock to fix it. After repair, modetest and actual measurement were
> all 60.01Hz.

Can you explain this more? Why was the rate that modetest reported
different from the actual measured rate? This feels like it's a
problem with your MIPI controller not being able to accurately make
the rate. Is that it?

If so then this is a bit of a hack. Someone else using the same panel
might have a MIPI controller that can make slightly different clock
rates. I think you're currently the only user of the panel, so maybe
this isn't too terrible (would love to hear other people's advice).

Assuming this is actually the problem there are probably at least
several different ways to solve this. One that comes to mind is the
solution we ended up with for eDP where we allowed specifying some of
this stuff in the device tree, though that might cause a whole pile of
debates...

In any case, as I said above this patch is probably OK if you're the
only user of this panel, but it might be at least good to add
something to the commit message?

-Doug

