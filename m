Return-Path: <devicetree+bounces-61975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 015DD8AF4CB
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 19:02:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A5107B21697
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 17:02:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A58C13D635;
	Tue, 23 Apr 2024 17:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="B9HV1gg7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D85134725
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 17:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713891716; cv=none; b=GCiGekFHqmxxdrlwNKuHfFX/NnMxBY6HDLNsblw+wnh6qI6wovw3AE2SjqasFASd36d3ukV+3QE3V9PQD3vurXRtZTjuiyGojeosuoypzBkj6b1m3euI1Si3/cGcWpi4EpyHyPtDVg8g7zK1oyq4ZI31uqBYm5z56YEXUUWMbZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713891716; c=relaxed/simple;
	bh=/npKp6pnglhDyMQdA7wmpVX4vpQn8igvdQOoUdHXuFA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sawZfP5xe63jhCxmU1sOxi5KwDGD6HwpLlF08PQsDw2pYxV63WJPzYgpcvyKxYFnl9rdSUpPlHYgqgVl8Qz1yRB7s3ooUT/WMU2tYmqymAlHY8ZoR9Z6zwhkKZz320T/4yRKUdRX5qapGCTtqOtvQInXUUG7DIKnNzKPivJqSbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=B9HV1gg7; arc=none smtp.client-ip=209.85.219.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-69b40061bbeso30590406d6.1
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 10:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1713891712; x=1714496512; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/npKp6pnglhDyMQdA7wmpVX4vpQn8igvdQOoUdHXuFA=;
        b=B9HV1gg7ZBt12p7ZBwTSHBPmWIGhczUH3JLwR7u6+yidjbNUcOLN00X0k3aTO3Wmtm
         hP15h3bLSlEMbGgx0P0qKzOmua80RDDTfAr+Y/z2H6pWVt75btVsFyo+o8GSrKI6DApv
         8Ejq8NysslKnQin1JtuVMcLVwFc+2X09qdbKk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713891712; x=1714496512;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/npKp6pnglhDyMQdA7wmpVX4vpQn8igvdQOoUdHXuFA=;
        b=OP9elZFj2EqdLAnp0ZtIvDkdjdrdswu209RDv8UGwoPFgDq9OBOoUPw2NJORseFo7q
         99D+scwRZr8w7nLTSJRwZSlYDsCuGEJ5Au20E/nKicWUr67lquB50l/ZN7T5Y84XfU+k
         ibmNn6asBL0l/p1xGVLmyIB9yudiPOWPE/qwLSlPsJMJrxmZPbKktNQIKOUxDz0/k84o
         LMA82VatNsiBFP9uz2xnULuxX50EUaPtlH4VEPeNJsUzLHQ3r8aFAt+51m3lltCi74Xd
         PrqiCqcPWeWsNVyi0byLqrA+k+EbJH17JRrPLmY3oadUN9GPzDCgFR3XBHnEAJFOrwE2
         0wuw==
X-Forwarded-Encrypted: i=1; AJvYcCXKMTBrr6LAxL8Og15SDjLwzt75fY1X12nEjbtaUhS7fPWx98/X6CHleZYK+qddruwyb2mi21Xr8/+5maYzAAge1c6fTUorWUjUlQ==
X-Gm-Message-State: AOJu0YyGLH6kzYb2YKZpFcbvK7oka/f5HgNHdOvY8v3sVSJ2KHMcKQxa
	H3yRWKqGp9QvmJw8N+ONhLBNDG/XS/yva3pR8JxxIoVyXkH9gAJBzuPt4z1ElsVBffUQBbKxShU
	kF/x8
X-Google-Smtp-Source: AGHT+IENb7zk4C55SzSDRq0Vq8ugBH0ocxWZKOhSKUuBkNYkztcMhqznzhsQBjA7BO6iHEEnHs5mww==
X-Received: by 2002:a0c:b549:0:b0:69b:ba0f:23db with SMTP id w9-20020a0cb549000000b0069bba0f23dbmr13235302qvd.42.1713891712313;
        Tue, 23 Apr 2024 10:01:52 -0700 (PDT)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com. [209.85.160.173])
        by smtp.gmail.com with ESMTPSA id q3-20020a0c8cc3000000b0069947ad3b46sm1106613qvb.65.2024.04.23.10.01.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Apr 2024 10:01:52 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-436ed871225so7021cf.1
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 10:01:51 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXyTGj1Maw62Sk1y20fDJx5DEHKVPzCOa7C5v1eEK0kv6tF3G4sjV+rRWGz6WGt6a54OB/QyEw7ohVDYOOXv9YX4aJggAaJpsAtCA==
X-Received: by 2002:ac8:646:0:b0:437:b429:cb0d with SMTP id
 e6-20020ac80646000000b00437b429cb0dmr287375qth.29.1713891710780; Tue, 23 Apr
 2024 10:01:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240422060811.670693-1-xuxinxiong@huaqin.corp-partner.google.com>
 <CAD=FV=WRLLuOkCJeM6RdAb6xLN-cPH+hfWbOv9-LujB-WMGEFw@mail.gmail.com> <CAGoogDB-mj8_xu04w3V2ZxOBTWoXcPKrVR1NRt6BFcpjHX3-7Q@mail.gmail.com>
In-Reply-To: <CAGoogDB-mj8_xu04w3V2ZxOBTWoXcPKrVR1NRt6BFcpjHX3-7Q@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 23 Apr 2024 10:01:35 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WwsR9e-ZXJRY11FvdUZ66YPy9vqmY_=sGDw5Wqk1eV3w@mail.gmail.com>
Message-ID: <CAD=FV=WwsR9e-ZXJRY11FvdUZ66YPy9vqmY_=sGDw5Wqk1eV3w@mail.gmail.com>
Subject: Re: [PATCH] drm/panel-edp: Add panel CSOT MNB601LS1-1
To: Xuxin Xiong <xuxinxiong@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Apr 22, 2024 at 6:28=E2=80=AFPM Xuxin Xiong
<xuxinxiong@huaqin.corp-partner.google.com> wrote:
>
> Yes, I read the edid from the panels, one is CSO and the other is CSW.
> The details are as follows, please help check. Thank you!
>
>
> 1. MNC207QS1-1
> edid-decode (hex):
> 00 ff ff ff ff ff ff 00 0e 6f 00 12 e7 00 00 00
> 1e 21 01 04 a5 1b 12 78 03 8a d5 9c 5e 59 90 25
> 1b 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
> 01 01 01 01 01 01 ae 3f 80 18 71 b0 23 40 30 20
> 36 00 07 a4 10 00 00 1a 00 00 00 fd 00 28 3c 4b
> 4b 11 01 0a 20 20 20 20 20 20 00 00 00 fe 00 43
> 53 4f 54 20 54 39 0a 20 20 20 20 20 00 00 00 fe
> 00 4d 4e 43 32 30 37 51 53 31 2d 31 0a 20 00 32
> ----------------
> Block 0, Base EDID:
> EDID Structure Version & Revision: 1.4
> Vendor & Product Identification:
> Manufacturer: CSO
> Model: 4608
> Serial Number: 231
> Made in: week 30 of 2023
> Basic Display Parameters & Features:
> Digital display
> Bits per primary color channel: 8
> DisplayPort interface
> Maximum image size: 27 cm x 18 cm
> Gamma: 2.20
> Supported color formats: RGB 4:4:4
> First detailed timing includes the native pixel format and preferred refr=
esh rate
> Display is continuous frequency
> Color Characteristics:
> Red : 0.6113, 0.3671
> Green: 0.3496, 0.5644
> Blue : 0.1474, 0.1064
> White: 0.3134, 0.3291
> Established Timings I & II: none
> Standard Timings: none
> Detailed Timing Descriptors:
> DTD 1: 1920x1200 60.000 Hz 8:5 74.100 kHz 163.020 MHz (263 mm x 164 mm)
> Hfront 48 Hsync 32 Hback 200 Hpol P
> Vfront 3 Vsync 6 Vback 26 Vpol N
> Display Range Limits:
> Monitor ranges (Bare Limits): 40-60 Hz V, 75-75 kHz H, max dotclock 170 M=
Hz
> Alphanumeric Data String: 'CSOT T9'
> Alphanumeric Data String: 'MNC207QS1-1'
> Checksum: 0x32
>
> 2. MNB601LS1-1
> edid-decode (hex):
>
> 00 ff ff ff ff ff ff 00 0e 77 00 11 00 00 00 00
> 00 22 01 04 95 1a 0e 78 03 a1 35 9b 5e 58 91 25
> 1c 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
> 01 01 01 01 01 01 09 1e 56 dc 50 00 28 30 30 20
> 36 00 00 90 10 00 00 1a 00 00 00 fd 00 28 3c 30
> 30 08 01 0a 20 20 20 20 20 20 00 00 00 fe 00 43
> 53 4f 54 20 54 39 0a 20 20 20 20 20 00 00 00 fe
> 00 4d 4e 42 36 30 31 4c 53 31 2d 31 0a 20 00 37
> ----------------
> Block 0, Base EDID:
> EDID Structure Version & Revision: 1.4
> Vendor & Product Identification:
> Manufacturer: CSW
> Model: 4352
> Made in: 2024
> Basic Display Parameters & Features:
> Digital display
> Bits per primary color channel: 6
> DisplayPort interface
> Maximum image size: 26 cm x 14 cm
> Gamma: 2.20
> Supported color formats: RGB 4:4:4
> First detailed timing includes the native pixel format and preferred refr=
esh rate
> Display is continuous frequency
> Color Characteristics:
> Red : 0.6074, 0.3691
> Green: 0.3437, 0.5673
> Blue : 0.1445, 0.1123
> White: 0.3134, 0.3291
> Established Timings I & II: none
> Standard Timings: none
> Detailed Timing Descriptors:
> DTD 1: 1366x768 60.001 Hz 683:384 48.480 kHz 76.890 MHz (256 mm x 144 mm)
> Hfront 48 Hsync 32 Hback 140 Hpol P
> Vfront 3 Vsync 6 Vback 31 Vpol N
> Display Range Limits:
> Monitor ranges (Bare Limits): 40-60 Hz V, 48-48 kHz H, max dotclock 80 MH=
z
> Alphanumeric Data String: 'CSOT T9'
> Alphanumeric Data String: 'MNB601LS1-1'
> Checksum: 0x37

OK. This made me look a little deeper. I believe that the three-letter
code is managed by UEFI and I found:

https://uefi.org/PNP_ID_List

...as far as I can tell "CSW" is actually correct for CSOT but "CSO"
was _not_. Looks as if CSO was supposed to be for "California
Institute of Technology" (Caltech). :(

We're probably OK with the recent work that Hsin-Yi did in commit
bf201127c1b8 ("drm/panel-edp: Match edp_panels with panel identity")
to match against the panel name even if Caltech does ship a "CSO"
0x1200 in the future since it looks like the string you added matches
the panel.

That being said, is there any chance that it's not too late and you
can get CSOT to fix the EDID on "MNC207QS1-1"? Can you also make sure
that they're aware of this and don't make the same mistake in the
future?


In any case, given this investigation and the EDID I'm going to say
that the panel you've added here is fine.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

I've pushed your change to drm-misc-next:

a6325ad47bc8 drm/panel-edp: Add panel CSOT MNB601LS1-1

-Doug

