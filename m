Return-Path: <devicetree+bounces-130013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F619ED878
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 22:23:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1620018874AC
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 21:22:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D8961F0E43;
	Wed, 11 Dec 2024 21:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NrQKah9/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EDD21F0E3E
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 21:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733952120; cv=none; b=m6tEEm7MT/AszAoFF7QDTKWcqF8j7ouh1iRa20BEpuGa2zmtJZG13oHyvtIAMtAK3C7NcM5/+NNwrGC6xjPgYOs9jSx5LXFis6YuTHUDDkmv1evJY83kaO70YnOOTBjckhGzNiSQGWtpKeS/JfSZHqP7v4YrNT2KxddKP4VmoOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733952120; c=relaxed/simple;
	bh=n0KCyGqSL5oapRSBhlfukCbAuOyAuMPivoVisArJl+M=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tUZudF86ekBbsCK7kLRdV6hjCoxnpX1HQJ8Tf/x76HDGtkG9nrgWTV/Hq2SDPvFEEZLBaON7rYvuvoVLrLyl8eOVqXfKepzI/+eHY4BI5LTSn/RMS33072Ll9ZS9Vk8IvZ3NfxUmTNRLVhrd0hP1TDxUxVQfLqACx6SDJFjEV1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=NrQKah9/; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6ef60e500d7so49774737b3.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 13:21:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733952117; x=1734556917; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n0KCyGqSL5oapRSBhlfukCbAuOyAuMPivoVisArJl+M=;
        b=NrQKah9/GtAbLk+n5naUtjdmTSXP5ciHHBxWB3bwlMO5fbiDJNXe0y7IQAIr1kYopx
         FcXU2UH41S+qnx13K+ygG5ITJ5YsX332Yh8kqf90EtdduGvgm8/gtQtLxojfsK5w059w
         +yZ3SL98Ac34K4Whtv8TWDrluiH6qeiRFww/g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733952117; x=1734556917;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n0KCyGqSL5oapRSBhlfukCbAuOyAuMPivoVisArJl+M=;
        b=iI6K0om81GmsOX1by2mfL63tTIm0TAyhtliJRAd1xAj4wd/wCbfmuZ3hXgjOxPMR0I
         kFHqxFBrALGo2CQUr6a0AdMTSt2iI92o0ikRdaVzRrYnrEWnGJFF5W3F0MRq9znafOgk
         62BydtpApgJRzxm3pKTil5V98f7HG/lrvFDeJhzk3A3lwB/n94FsaWGwCVUwEqOlzM5i
         HhFb4JLhFiYurR8Gg0K/7SEYRotL4cF+9x1XW9agDgMTw7NnYMDMwRxn8UVomTL/jNX2
         OJayT1YT3VFU3z6poq2SBxPF/lYgzNjsMZtGhtykWxo3mAWypNJnzuay+76SYWpwzxiY
         A4pA==
X-Forwarded-Encrypted: i=1; AJvYcCWIAAJ1b0UZZdtXp/mcE+6Vb4agKNiFIuBMsOEmJg8ZLD04FgDX2KwW10Y7QT8H+DPJbe+mSkHMCN30@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3hFn6uaeXpyIectU1rt6x3zMLFetN+eAOcrXMIQt3RdH4SFFQ
	FbvVGG+AQltEWy5lqLvG3p6UbKdThu/SLhVPaJErA9j7om8yBKYqEZ0/Bio/TFLKFFTYkBaNFFx
	Y8zxUkdmNU/EEKnggtuC35ZpZ/QJ+YaypqOoj
X-Gm-Gg: ASbGncvLkxKGhWnUEkWQbF/taOIhjMwN/RntVAga5Zdq/bdJJWytKRksP7v6jlTWpoz
	yLdP1GcCQXgMf7Vq2Gby6QiMtELnYz4WocXIUjd3oIOB8Wx8WFOy4yIWufv+6pRA=
X-Google-Smtp-Source: AGHT+IEOpRCkZGb0mjL6N5K1OyWZ7lwzUq/9xZP89m+PnB//8BwUpGSf7eNg+mNPOjGTasCVPWXdK3o+/j/FVah3RXc=
X-Received: by 2002:a05:690c:ecc:b0:6ea:7afd:d901 with SMTP id
 00721157ae682-6f19e4fe961mr11687997b3.18.1733952117669; Wed, 11 Dec 2024
 13:21:57 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 11 Dec 2024 13:21:57 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <CAA8EJppVgw1Qb4kGY1Y-A3-KrinKfX2zGUuwMCY_-gG96fgocA@mail.gmail.com>
References: <yk3xidaisbd56yndaucax7otijjauqmm7lqm6q4q633kdawlqo@qaq27lwxmvwd>
 <hqmx7jtkvrwvb27n56hw7rpefhp37lhr3a5fawz7gsl76uuj5s@h7m6wpdhibkk>
 <CAE-0n50y1O2C47zOGJPmMjKXK_m6a=jhpEAP4nW+RymZbo2xyg@mail.gmail.com>
 <5kisfv22tgqwzjpxqrbx56ywr7l4r7pny3pl2r7crv4rijqbwk@azricdasttg7>
 <CAE-0n50Bxi2GfnxOmMwe-F+k5jMSiyAVPDb6K8pYm-i6hpJTOA@mail.gmail.com>
 <cartdeijkv6z23dgm7uif4lti3lahfqmuyxcmruzqbefhsp6yk@m6ocjhncs2ko>
 <CAE-0n51-QLLje0f7T4p3xK6Q-FRk4K0NUrVVm4cxkKoevuzktw@mail.gmail.com>
 <kidsjzklpxvvamct3glvoawavoi5mjuyh3on5kbtfp6gavwxxn@eack224zuqa3>
 <CAE-0n52F+cvVyXm8g8idN2eMfx4bpaEpWQRchr8=AO87N7E3fg@mail.gmail.com> <CAA8EJppVgw1Qb4kGY1Y-A3-KrinKfX2zGUuwMCY_-gG96fgocA@mail.gmail.com>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.12.dev1+gaa8c22fdeedb
Date: Wed, 11 Dec 2024 13:21:56 -0800
Message-ID: <CAE-0n50D40VWOsgnNqKzJR=GG44SKcps5mZb-HM=aix7XYn2hg@mail.gmail.com>
Subject: Re: [PATCH v4 15/18] dt-bindings: usb: Add ports to
 google,cros-ec-typec for DP altmode
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org, 
	patches@lists.linux.dev, devicetree@vger.kernel.org, 
	Douglas Anderson <dianders@chromium.org>, Pin-yen Lin <treapking@chromium.org>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Benson Leung <bleung@chromium.org>, 
	Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, 
	dri-devel@lists.freedesktop.org, Guenter Roeck <groeck@chromium.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Lee Jones <lee@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Prashant Malani <pmalani@chromium.org>, 
	Robert Foss <rfoss@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Ivan Orlov <ivan.orlov0322@gmail.com>, 
	linux-acpi@vger.kernel.org, linux-usb@vger.kernel.org, 
	Mika Westerberg <mika.westerberg@linux.intel.com>, 
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Quoting Dmitry Baryshkov (2024-12-11 13:16:56)
> On Wed, 11 Dec 2024 at 23:11, Stephen Boyd <swboyd@chromium.org> wrote:
> >
> > It is pure DP. Maybe we can have a google,cros-ec-usbc-hdmi compatible
> > string here because this is a weird design.
>
> Just google,cros-ec-hdmi for the corresponding connector?
>

Sure.

