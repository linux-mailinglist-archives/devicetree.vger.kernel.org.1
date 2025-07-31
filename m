Return-Path: <devicetree+bounces-201150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B729B17924
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 00:32:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBB853B9E26
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 22:32:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F8FB27D786;
	Thu, 31 Jul 2025 22:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="A37IWNhd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD0D11E2858
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 22:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754001119; cv=none; b=BoqvnMEXUIhuYIIwkVFOf6/LYYeer9JEV1eYKOhKoJcI1vNEXxgkojlVoUUay9m/C8+xk3TkbUJ0yyEXk9mrJhLflgH+JmUyWE8WCJPQ94UObQQorFAOkCFx/nnA78FCu6DJXsYEZpEBnQwYoJs2FHPAHmgx+W2EfSuTP8+CIpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754001119; c=relaxed/simple;
	bh=Iyl+iRcxcCK3DiNxtralldE1bYNP2gRzf/t0Mc9dEhI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VdeyB4zSqziimw+4rdit47pW6HbXgUBjXDDKc9tzcnnJTkpauBuuabtoNT0+ih9PfkhwdW2skhpUDSAKK+XE1i+yhXY6tYcyo8e1Sy9+MkV7fcl7xafQbX5FvoOBf9q1lxkrgiX9HN+5GGr7I+Q+lGEoR2Nc9VmdE1Z5AVBwjzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=A37IWNhd; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-41b4bf6ead9so718591b6e.3
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 15:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1754001116; x=1754605916; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JuzCKl0JWVA/Tt1eJjsJNxFRtsPec8WgVBQlmDXx0UY=;
        b=A37IWNhdwWCm6DrQT3moRS0kSi/3mO1m7oX/MzOICPIPoVciCci1Iygr0M2tVELFNH
         bpugB+/GfH3Fln/qNN8PVlIJ/S76bDJ8SRbMvrLaKoTXzMYXbV/w0NHaPYmZxAFbfrVQ
         PZAiK91G57Fmoaf1K+vQGJgeKefMuScysYDls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754001116; x=1754605916;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JuzCKl0JWVA/Tt1eJjsJNxFRtsPec8WgVBQlmDXx0UY=;
        b=HbE9/yBl7660/MJMJ0hQ+85JxE/1Q3nKebocJ/NM6MjGWdQ0RVVvBJ0gBZa+gvNO9f
         wnRm5K6md4V0pUYSW3iEqGBerzg3fPijpQnQ2/jEjBHEZNSrzj4Pp3w1ljlQXrbO6KoY
         TgfDTqXdqQ4e8FOI1Ft8tJOj2X1eAXN4H2zK09mYfknei4UKlsH8JWmh6F0hCEAOYxUJ
         ogpmb09usWTfxWPgFV2OwSIIFAu7UoUqWEVNoJUmh+GptCBCgYlto907ci25gf6EYlWO
         kO4NG19zI01EhpWboFHQqf3yYxlL7yIBqIRsWcZiOJf4ywjbJjw2y/hc/SJx/UgrRoEl
         E0JA==
X-Forwarded-Encrypted: i=1; AJvYcCVcKkCqViSHi46epMZ2pFGy1zyZh5uUM88EheutyYgJNA0JyAdagpIRdgj4Xl0RMxKwNuGYPUGulfU6@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7t0eR1FCEapl+IF0IjUd526E7UeRIGkPkvLuD95HFJcSttM49
	mis5SxjmOEYrQp7VrkfkilRwvOqqlR1R5OG+l7+RPGo29nkhRfd1InjWRm8Uixn3mlneD0gIMQL
	1Hy4=
X-Gm-Gg: ASbGnctYGk1VUsET7pqD3zoRCq0bapYikHvI6IeJNdFWcwrDY6GxiWLTBij2XWiqPv1
	anrtjjh/SEVh9yJ1ErqU58xPB0EuvcVSXOLiGwZzbJf/ztxtv/FIcWTUfZzlxWeSl3D4ZBg0K/U
	cGlwjLhTtEzz3MlKB/PRRzqgnQs0y8OXZ52rgznTm2utZJdHFQoidErx/An69aUiBLJlQlPTHD2
	ww1QI/FfmrnrQC2G4qJxhr4wJVG55xsqNhNpKI2tqLem70K68aUCVFRvuxWq1G3x9bjpLYkJDvT
	qMwYeOy2zDOyivFxwYkZQMJ9//ACx9/xgAdh/qugB3jdk1eCSvr8MAg/Ioz6v9nRBti/LG4QJv7
	Pr1htFcKMOv47NU7Rs0ClalRyXaLxxlIp0q6F92AB5m3WqIt1O3Gkmmt7LiGDmQ==
X-Google-Smtp-Source: AGHT+IEjgTTyOSX7QpDEwDpBFlfsrgtOZ6ELDADn7pVKP++51tSDxi74pzYa7+Thw08oFffOpVIKcA==
X-Received: by 2002:a05:6808:4f65:b0:3f9:36ec:dab3 with SMTP id 5614622812f47-433e5cb0078mr181303b6e.14.1754001115900;
        Thu, 31 Jul 2025 15:31:55 -0700 (PDT)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com. [209.85.210.50])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4335443344fsm483728b6e.0.2025.07.31.15.31.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Jul 2025 15:31:54 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-73e64e87d49so740788a34.2
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 15:31:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWFIlHPlOOZLmcHNBJM+S7kMhp+olxuRzzbg9Hn4KkKkG6EFRoGdBt17XJ3x5pmAlERiZdTIO/zCS/3@vger.kernel.org
X-Received: by 2002:a17:90b:1b06:b0:312:26d9:d5b2 with SMTP id
 98e67ed59e1d1-320fb58f639mr739004a91.0.1754000750319; Thu, 31 Jul 2025
 15:25:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250731215635.206702-1-alex.vinarskis@gmail.com> <20250731215635.206702-4-alex.vinarskis@gmail.com>
In-Reply-To: <20250731215635.206702-4-alex.vinarskis@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 31 Jul 2025 15:25:37 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XkZk61ad-Sjywp7xUCzL=gfrOetAjdAgdBZS2euOx-Gw@mail.gmail.com>
X-Gm-Features: Ac12FXwjfUgMu3_9Fbku_FeVuAQoqm5uw9Nv7Nj3Y-NXJ8CPv5IPxq-hUPITQbg
Message-ID: <CAD=FV=XkZk61ad-Sjywp7xUCzL=gfrOetAjdAgdBZS2euOx-Gw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] drm/panel-edp: Add BOE NV140WUM-N64
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 31, 2025 at 2:56=E2=80=AFPM Aleksandrs Vinarskis
<alex.vinarskis@gmail.com> wrote:
>
> Timings taken from NV140WUM-N41. It is found in some arm64 laptops,
> eg. Asus Zenbook A14 UX3407QA.
>
> The raw edid of the panel is:
> 00 ff ff ff ff ff ff 00 09 e5 f6 0c 00 00 00 00
> 10 22 01 04 a5 1e 13 78 07 8e 95 a6 52 4c 9d 26
> 0f 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
> 01 01 01 01 01 01 5d 30 80 a0 70 b0 28 40 30 20
> 36 00 2e bc 10 00 00 1a 00 00 00 fd 00 28 3c 4a
> 4a 0f 01 0a 20 20 20 20 20 20 00 00 00 fe 00 3d
> 4c 33 30 20 20 20 20 20 20 20 20 ff 00 00 00 fc
> 00 4e 56 31 34 30 57 55 4d 2d 4e 36 34 0a 01 f8
>
> 70 20 79 02 00 21 00 1d c8 0b 5d 07 80 07 b0 04
> 88 66 ea 51 cc 74 9d 66 52 0f 02 35 54 40 5e 40
> 5e 00 44 12 78 22 00 14 7f 5c 02 85 7f 07 9f 00
> 2f 00 1f 00 af 04 27 00 02 00 05 00 2b 00 0c 27
> 00 28 3b 00 00 27 00 28 2f 00 00 2e 00 06 00 44
> 40 5e 40 5e 81 00 1e 72 1a 00 00 03 71 28 3c 00
> 00 60 ff 60 ff 3c 00 00 00 00 e3 05 04 00 e6 06
> 01 01 60 60 ff 00 00 00 00 00 00 00 00 00 de 90
>
> Signed-off-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> ---
>  drivers/gpu/drm/panel/panel-edp.c | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

Pushed this to drm-misc-next:

[3/3] drm/panel-edp: Add BOE NV140WUM-N64
      commit: 82928cc1c2b2be16ea6ee9e23799ca182e1cd37c

