Return-Path: <devicetree+bounces-223467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 51AD1BB5769
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 23:25:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B7F63B340E
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 21:25:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C6031F4621;
	Thu,  2 Oct 2025 21:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="O+67RorE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89A4D1C01
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 21:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759440347; cv=none; b=RcLKFZT6E8ZkdDvdCmCvNUN9EIdbte7mXFHXMGigS0CMUovdrmfP5GhmO5GBeg790Qk0VDwZsylg4APsoXAMqLxR1dlxayZjvfUmdqgJxPyBPqvmNED3DgE99gJcaw17jDbtwg2VdKUYf6vdYNQitUBvwNvzdONUS6XPRoj2AQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759440347; c=relaxed/simple;
	bh=Y2gBk5CB3GMJbnKWbC0U4OjbYTzYttD0oSvzvSM0NBk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eOakjUGlZAQ1gOowGujEa33ZAmUN9WgpaLkJZyoYRjNXWMBZneo+U3aIbng3Yr3H33bCfTs7+lvgzvXjw+7S2whyqw/f0hczxfFq6D8/vsMZjeyKcrIzhKRLOuS5uKbe4oT0x4EAGr1cLypz9TSlZjlEG/GGkWO4FY42p/lVkFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=O+67RorE; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-76e4fc419a9so1589185b3a.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 14:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1759440341; x=1760045141; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/omh4dnkehdvWXPDDTiNzbxTABAKha3OuNX6oJKT2mA=;
        b=O+67RorETPhQUQKh63JhXwJXuAM7qhFrj3GNAIU4LqTntbWAlsaomDo36v6Tv5XINU
         8xExeIfYWWN90jF2YJQweIOEu2vnh69C+eu/8dfVF5Pce/JjMIFQyZ+aJg5OJNWMQOPM
         MDLBACDd0KzmNeTNyUMXXLeyh9CQEbOPTiNpw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759440341; x=1760045141;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/omh4dnkehdvWXPDDTiNzbxTABAKha3OuNX6oJKT2mA=;
        b=ehQwLB4cLjR20qB+onc1j9oqjYYsMU3mvhBF9tqhPQzRZJzu73N24PPMMlfREcz5DI
         Fpm0EWMqSm7pTfdcCzL3Pa0R10voM2iaPl3hcwlA6keMq1/v2YdZqFTkfX6WCqm7Omw1
         ahaZccTNQ6ninX9pX0OehxTCy2W7/9qGFFqBfFiYCUHalF+wyDcb/GfYl+It9rDsaEH+
         qjSMFzBDHq73mBd8meB2CGbAYiW4eofm3mtJikxdYbH4KeGKucqvWZtJX3BRAgvqtHJe
         QwSdtte9hj0f/0toPO6AvVTt1lzb3R0HrPKggMUGIx1qwidJ0MgRxwzQvB3H2Ix85WwT
         vo/A==
X-Forwarded-Encrypted: i=1; AJvYcCWSjz3EvPzwdXjCkeMLXk+c4EC+J2xAiZYGPJ+rhzlhkVICqUBAxAnPdzzbOWJtVD0yCukjlZ6Yu4Oi@vger.kernel.org
X-Gm-Message-State: AOJu0YzdZ1Q7UoyTZvCAs9eBMtzvXHXvxgPoDGVlVvXEesPT9LVxPdhT
	J2e6z2AvQMV3grL4oFbjrStgb7Vmxn77UAcsLPOIjzTA32T26qSwdSyMjMRE8fWE7WjJ9DnO60+
	QFj0=
X-Gm-Gg: ASbGncux0LC1Nh+fR2mT0xrsgvHi5ItYKPYWe03Zmi/2BUSROYEEcnAFFOsfmkvkwR7
	uj64ff+LVgx2qNQBIo1V9hMNfdJiWClkrh6dr+dHWcatPHYWPAdnRWHWekTu449ej+4PPuws1Zf
	D4X+ZkWiU9WPXTZ4FEmMbb6Ei1mVtbPVRY3qZP/d6Js02Z1Nxa3t+OmOgdQcq6zVW3r1GIWav9t
	Bg7T2KRoV71wQjIeYBaoHeHVl1PQGdz7zYAXPLR4dM99RoqCdY3zb7eE4nSIlQmijOX8ZeTfHXC
	+ZnUx2BkFGambNd7h5J8+bqHAMos7RObWiVRYNN/RTf9sUF4sYs84FJa7l75hmYNo2nZ9OGYMIA
	KxQyUJxZuAJ4CYBmRKuZcUPkIBbZs2u6+OfA5poPYoG1qa+gQJiD1j4b+zWZvhs3c4oOoC44NMK
	B7qOz+CFyguF6wfA==
X-Google-Smtp-Source: AGHT+IENXQwS5xLShdfsnWgUvMNA0/rpPrTkOQgFzwABmXBfkzRUJukDycjqtOaZP9+lmSg27P4lHQ==
X-Received: by 2002:a05:6a00:1399:b0:781:264b:dd96 with SMTP id d2e1a72fcca58-78c98dbf0b9mr927240b3a.19.1759440341098;
        Thu, 02 Oct 2025 14:25:41 -0700 (PDT)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com. [209.85.210.178])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fb0548sm2998136b3a.27.2025.10.02.14.25.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 14:25:39 -0700 (PDT)
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-78af9ebe337so1152528b3a.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 14:25:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUwGoFMTRziki7GTiUkjM5ROdnTasMYJoWpkHc9UqNQ2QTnY/2u5egNn5jfrTTPKd9g/tAK+L2YpvJj@vger.kernel.org
X-Received: by 2002:a17:90b:4a8f:b0:330:852e:2bcc with SMTP id
 98e67ed59e1d1-339c27b94e9mr883144a91.21.1759440338414; Thu, 02 Oct 2025
 14:25:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250929142455.24883-1-clamor95@gmail.com> <20250929142455.24883-9-clamor95@gmail.com>
 <CAD=FV=VO2sXssuhZyz+aKvN22xH5eButHOQgKK+qEkPT3Ug2XQ@mail.gmail.com>
In-Reply-To: <CAD=FV=VO2sXssuhZyz+aKvN22xH5eButHOQgKK+qEkPT3Ug2XQ@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 2 Oct 2025 14:25:26 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VOEDgUHG138d-_HyRX1EmeuZ=8v+2UL4cXQ0GN0e1FqQ@mail.gmail.com>
X-Gm-Features: AS18NWBl_-6A1NX6XipYEQi78zuUuxrbDfjw2_uXBU-dcpIdXNfIO_PqcqCT8kc
Message-ID: <CAD=FV=VOEDgUHG138d-_HyRX1EmeuZ=8v+2UL4cXQ0GN0e1FqQ@mail.gmail.com>
Subject: Re: [PATCH v1 8/8] gpu/drm: panel-edp: add AUO B116XAN02.0 panel entry
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

On Mon, Sep 29, 2025 at 8:15=E2=80=AFPM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Mon, Sep 29, 2025 at 7:25=E2=80=AFAM Svyatoslav Ryhel <clamor95@gmail.=
com> wrote:
> >
> > Add an eDP panel entry for AUO B116XAN02.0 used in Lenovo IdeaPad Yoga =
11
> > with Tegra 3 SoC.
> >
> > The raw edid of the panel is:
> >
> > 00 ff ff ff ff ff ff 00 06 af 5c 20 00 00 00 00
> > 00 16 01 04 90 1a 0e 78 02 99 85 95 55 56 92 28
> > 22 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
> > 01 01 01 01 01 01 12 1b 56 5a 50 00 19 30 30 20
> > 46 00 00 90 10 00 00 18 00 00 00 0f 00 00 00 00
> > 00 00 00 00 00 00 00 00 00 20 00 00 00 fe 00 41
> > 55 4f 0a 20 20 20 20 20 20 20 20 20 00 00 00 fe
> > 00 42 31 31 36 58 41 4e 30 32 2e 30 20 0a 00 f1
> >
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > ---
> >  drivers/gpu/drm/panel/panel-edp.c | 1 +
> >  1 file changed, 1 insertion(+)
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

Pushed just this patch to drm-misc-next to get it out of the way,
since there are no dependencies.

[8/8] gpu/drm: panel-edp: add AUO B116XAN02.0 panel entry
      commit: 5b50bb435629ab206cfa1cca3d71847d4523f88b

