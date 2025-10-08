Return-Path: <devicetree+bounces-224653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8C9BC6A5F
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 23:11:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 81A1D189FE15
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 21:12:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35EA82BEFE7;
	Wed,  8 Oct 2025 21:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="MZhm5yGK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508EF2BEFF1
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 21:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759957914; cv=none; b=B6IA5HtQThwEgd7bj4BgeDUjJ4/Xbm5UA79YFYR7tfKDjl3dBdC4O4gDj/XjnpliW9QaPmAsdtASp2YQKZ7IZKC2u7Ctc0Ock8oCoOgTn05/X2qPBkdJpphkKQQCYgD5tGVKW5lLELyEQMV2KL9gM+8dAFVrPHaUiVQbJY1q4RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759957914; c=relaxed/simple;
	bh=hZ8KM21uCwat8g+u/QrX7yrwt7duhcZgFx8yHhxTBh4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=caRElMUCcfpWF5TPRzNXinl8SyUJEecdj9vpcANzOBy41tkseWcM99fKfPImLogIKgqdSn7xuzQgeHHIYEJDiUOvWyUKZCN5shEuXvLu26muMHWDnIp6YA6LA4bJri+HjHrO1jts3Zpik1za94wwRmdq0+tFCvldE8I1U1uaOCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=MZhm5yGK; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b4aed12cea3so38274366b.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 14:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1759957907; x=1760562707; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+cAv3aIfZwqmRDaIqSQ8Kf1PKLE+RCGlZcqma3KwimQ=;
        b=MZhm5yGKTkslUsCTNgavAMrtvZu6dVv+vc3q8zEFA8U0ejykZQeyJv6XLw104sDa67
         uqPRaft0jItadwnFQZvFdMbnBIVVp16dU8/jwbgrZcpozUIyanqJQ1qZ/waWQN0Yyfzi
         K0p3ho8t0Dfr3+eaRuhqGAzUlBvmT3PkPpC28=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759957907; x=1760562707;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+cAv3aIfZwqmRDaIqSQ8Kf1PKLE+RCGlZcqma3KwimQ=;
        b=bP6BQm/e55b69DHVL8KV2hKPKs/3TUfJI9xKBQsDrnwoQlcT62ZYsKKaip2U1lXef0
         C01/rBc7bqPyODPxRvTm8j/i1URL13cUWArfzTBmJswnqqwVJioa8ylrG+2PkiLnRYqn
         bSYfNmFVMi1tZQPy1SIbrYvIcb3/SbIGTRoaE22idbzG4gN6TKLRa+vsoIsHvmu3eNgw
         Xl5bmRcvXt54ptyqQR0/SkICq8DI2+7G3W6sg2SA3idGpxU5INy8pShHazcAdU+H4rii
         Tco057pheXQqCxXaQ2/2Cf2EJUGXjLr6gykAzIlkNdHfykho+1YtKdwmt9Apzx/8oDt0
         j0Qg==
X-Forwarded-Encrypted: i=1; AJvYcCV+Y9RLdvUcUiFeooT9aS5joD3h6k+v6u/iRyoZFnMQ4J2UF1stfUUQloDmTC+ZG7uSR/CG3rYaQHbU@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9gb45CgD0319rk0rVyfVaki8qLOy+MF2q1eSX9a1m2j/nmZUT
	1dUvAEMHsA/dQvRxOUD0GhT5hyD/a3CF+rp9jFiloL/Jvw0WZwZrv/heSRnv06geAcpMNQqHty9
	euP84YA==
X-Gm-Gg: ASbGncsmnJWoQk50YbLurYFr7MyjidaciWZ4oEUyeHxkVg7Di5HTqBSoXgAXsGYeerq
	2Pd0ryCeNeSVbJKOYx5PJ9EBfG6q27RWRcbciqgIfSnKfieqmJEMAhK7SKXs3SSrIdP1olaV2QS
	HSLIFy/a9pnba/zlJbkcnZLyYcwU6GYGJQXuRoUEzxmBw/7SAnHL7QNrdUeBCrsfHf9Rva4WH94
	XFphiZaH/8pUYpYrRK+btwz1VnclXcBEtO4mwk4unTihUp7o78TIDyPoR2AABCxhXZOEN4KQl50
	bRuRA7CIWtHwtmNdjd1xjvHHhOIigBBI3yxygZHY7eqosX/zwgZCuqmjxDKndlp2CbNwLYVE05r
	9udEHRKr73fqU+NJnyjfPFyzOGos/hCFiMDm9VeJK0WcgV+Nf+pWoa2U7x6DuFL8/oIc8DAdcRq
	98qbp39CsWg8GoWv96UZeX
X-Google-Smtp-Source: AGHT+IGcdhIBm+1PVbHDVhIVgTiG7MrqkdMExavEQjQ1CjPlBKZNIEtlJfuBjvCqtZrgedeRxOx4oA==
X-Received: by 2002:a17:907:d1c:b0:b30:ea06:af29 with SMTP id a640c23a62f3a-b50aa8a3c05mr596172566b.16.1759957907360;
        Wed, 08 Oct 2025 14:11:47 -0700 (PDT)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com. [209.85.218.46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4ffb161d92sm455989366b.21.2025.10.08.14.11.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 14:11:45 -0700 (PDT)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b4aed12cea3so38266166b.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 14:11:45 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXfCSJay8OOkHFB0jdZ+hkyeXYfMuOPr5fMXFSLDj/1C56hWjJbFBM1kiZDCTjOULSWSmboEUjWT54G@vger.kernel.org
X-Received: by 2002:a17:907:3d91:b0:b42:f7df:a2ec with SMTP id
 a640c23a62f3a-b50aa391ec3mr529354866b.9.1759957905420; Wed, 08 Oct 2025
 14:11:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251008082800.67718-1-clamor95@gmail.com> <20251008082800.67718-3-clamor95@gmail.com>
In-Reply-To: <20251008082800.67718-3-clamor95@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 8 Oct 2025 14:11:29 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W=b2ivRzJsJiWMCQLOzEbLQRcFdJvVOGkCPB1n9WFygQ@mail.gmail.com>
X-Gm-Features: AS18NWA_nIjegIylG_UcLKKJDvhd5Cn1SpayqPs3VwGjbaJ5oTj9e8qwAVTiy9c
Message-ID: <CAD=FV=W=b2ivRzJsJiWMCQLOzEbLQRcFdJvVOGkCPB1n9WFygQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] gpu/drm: panel: add support for LG LD070WX3-SL01
 MIPI DSI panel
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Oct 8, 2025 at 1:28=E2=80=AFAM Svyatoslav Ryhel <clamor95@gmail.com=
> wrote:
>
> The LD070WX3 is a Color Active Matrix Liquid Crystal Display with an
> integral Light Emitting Diode (LED) backlight system. The matrix employs
> a-Si Thin Film Transistor as the active element. It is a transmissive typ=
e
> display operating in the normally Black mode. This TFT-LCD has 7.0 inches
> diagonally measured active display area with WXGA resolution (800 by 1280
> pixel array).
>
> LG LD070WX3-SL01 MIPI DSI panel was treated as simple DSI panel when it i=
s
> actually not and requires proper setup for correct work. Simple panel wor=
k
> relied on preliminary configuration done by bootloader.
>
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  drivers/gpu/drm/panel/Kconfig             |  13 ++
>  drivers/gpu/drm/panel/Makefile            |   1 +
>  drivers/gpu/drm/panel/panel-lg-ld070wx3.c | 184 ++++++++++++++++++++++
>  drivers/gpu/drm/panel/panel-simple.c      |  31 ----
>  4 files changed, 198 insertions(+), 31 deletions(-)
>  create mode 100644 drivers/gpu/drm/panel/panel-lg-ld070wx3.c

Reviewed-by: Douglas Anderson <dianders@chromium.org>

