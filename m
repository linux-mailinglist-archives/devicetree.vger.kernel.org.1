Return-Path: <devicetree+bounces-188822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 071D3AE5BBB
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 07:04:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D744D2C06B8
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 05:04:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 715801DB148;
	Tue, 24 Jun 2025 05:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tomeuvizoso-net.20230601.gappssmtp.com header.i=@tomeuvizoso-net.20230601.gappssmtp.com header.b="dWOb3mQR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B11F43594E
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 05:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750741451; cv=none; b=cyIOeQgj28mFkmnMy+YVmZq7pr7ayEf/xkElrJ7CI2Du13XdJgtqrKfi4TqkragAtYsxSAe/VtT7XmDuulwIIP9ZZ59qcKKcgmOKHzpSPvQQcADQ8rz9P04lVrV+UH/c0t8Y4zftNihhxukl8gYLhz+uiqbecalMdivWZ6yRdP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750741451; c=relaxed/simple;
	bh=jTiiCki4eU516Zn3vPoO1DXReBO81r+B3DSrw6+H10g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RF1cyBIxjvJi6dFDRmlfvh2K7Wp/PxzfUDFzgBQH14gK7pe2nf29U+ivkr1EVTczKDp2C/kySqeyNlTUAD+zNiXV4HUmsfpkd47eIIiPYLtQEVWWgRaB5NN0AXMypd/1dCUNu2f6m5UC3qgjG3NaDzaPVuZEWLfUOBIRn1vqaY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tomeuvizoso.net; spf=pass smtp.mailfrom=tomeuvizoso.net; dkim=pass (2048-bit key) header.d=tomeuvizoso-net.20230601.gappssmtp.com header.i=@tomeuvizoso-net.20230601.gappssmtp.com header.b=dWOb3mQR; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tomeuvizoso.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tomeuvizoso.net
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-e7d9d480e6cso3722511276.2
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 22:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1750741449; x=1751346249; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZqEyiR61C1W0/+KTWzUiTKCsg/9mevRSEFCD7wnXFig=;
        b=dWOb3mQRF+UPwFhKoL82ZgCpokjytvrGjzzYOCFRnGoFh7JwltY36KQQW7GqepvrWw
         VmklKGm3kvH8kGR5KMNgJY6gXNZyYOgVqrqRDeVMSeV29EFfCw5MLuvbZra6Zd1OMTx4
         0OHE+FEdOUhii2HHLvg15+50smsv+OsIXm/27HfbztpP48XJ+oGgrp3ib0KZ+AzOZU0h
         RCN6dmVb7jzPZ2445dllEIuYvxBET1epwa3V5f0ZWAi94+35z4kKJrEGvv7EFwEv6nQD
         TVwOPnmaHcN5jRuZesvu7rOmk0iHy9HKMUHc+H/WIzyG8kn98qiBFXlfGjJeEeTJ1d8R
         NWVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750741449; x=1751346249;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZqEyiR61C1W0/+KTWzUiTKCsg/9mevRSEFCD7wnXFig=;
        b=BpvMfvnsRKkPHYxykGvX7fO8jCpHUENhGkcEqKAG2NG6m5WhhlNXLQa4mguN6LfpeG
         dBOWfGAsSlcRUTQGby3vUE1mgFLc0hSSsK5T994h0UauTaoFMHeqlmpH5USrLgnOA7sW
         I6gKqxxGEQKZCGb3b5trVnslStwj5F9Rr/lSx0QWmGVHBdRXYxC4gKQHrkc936gTrCog
         2HaUgwaoSnNWxcFx9uyyYzv7HpykHVSxkQ+0vkASHLlI4lyHuayD2dta+k1O5UpVZcXR
         kJo3rcZbSTkJkxjmQ9CB4ccVmLA+4I0P6nL6vcGhVyol6FRsphpkza8K/emurxFHBSNw
         LLjQ==
X-Forwarded-Encrypted: i=1; AJvYcCVE1itWPL0GjN3dpyFHXUGkHUGvovKJ+t9TIvsmD2LIOZobJHE1QmqilQ1Gs3Y9EQnV1p/p7qcdLSLW@vger.kernel.org
X-Gm-Message-State: AOJu0YyBlnWaFE8amnyi9pM2MPn8zmVuASvmuQexLT5JTfQmh8DM3GpD
	3+U6P8UWbr5DpM36nn4RvaegJIEPJWygnI+MZoUaovgmN1K5ytESwCDS1ioh9FF52jIavkfgNpc
	5eJ5ebutyOA==
X-Gm-Gg: ASbGncu2JeqOiUD4GUYgeQSx02i/ucSX5R1hhbN/ocBWul6gY2Mv7VMGPY9QyVtmZew
	qGNtqGhaSO2pGBNiG1fSVzj6h7AnpMps5jYVzMK44q3xs4v2tFcVcfoN92bvyXY7tshOuigyXRr
	OOAIsZrtiTVfQW/dZc9CM5wR6PE/f2y0dy33tyUxEBITXaeKT1c3c04V18JteHSwQ0JzeUUgeGK
	scdWPAUtkXl3VpASnAYFchbyxI3c8rnzUVe3gY9SrrHsS1ZdlbHGMwl8BQGQgHXXGqtMuhYAE4i
	naCaRM0t6g6L0RgqBN/VRuglLyl1Wu+tcEZ81Is0kRDC94e58EJRpV5f2ACEx7eEQlkSjmhQOZ0
	Ena0kNPqFDyTEJgtjOwzywwawFgxnrw==
X-Google-Smtp-Source: AGHT+IF3F9RrxJafQc6fNCXixeVgmrwxN9hiUoyARa+iIR0XupA50lrF5OWzVDrOBXlyJO04e1Awpw==
X-Received: by 2002:a05:6902:6983:b0:e84:3203:1af1 with SMTP id 3f1490d57ef6-e843203255cmr13029358276.3.1750741448743;
        Mon, 23 Jun 2025 22:04:08 -0700 (PDT)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com. [209.85.219.177])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e842acb5572sm2846478276.53.2025.06.23.22.04.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 22:04:07 -0700 (PDT)
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-e7d9d480e6cso3722487276.2;
        Mon, 23 Jun 2025 22:04:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWlJ+oibwcuEmxlbex4aZZ5MQHRrvvubGu1CQYCqWWu1Bp+pfrf4F3VX0PAIohYnpylRWUDI0WNmQBB@vger.kernel.org, AJvYcCWvQe7csDY5ohki8e2IJLVAL4SzNxQGiSFCRZnFMeFi6YJPI26FFNouBXlUvixftlD2XoKIvw53MD8Ixsc=@vger.kernel.org, AJvYcCXCQslBS5dkTkLG8SU22RdBlpExAgPT/l13hL9gdznvZy6OUigU0p454S7hD0Q8tRqcDswOkfEzaSFa@vger.kernel.org, AJvYcCXqxZq0f6U7y2SdB4CuH3YfjRdHmBdI7/95FeG2E4SsaN2Xois0YeSc0J+mWfmz5SaABsIFr0CrIn+DQVA+@vger.kernel.org
X-Received: by 2002:a05:6902:2402:b0:e7d:a012:290a with SMTP id
 3f1490d57ef6-e842bd31ba5mr17718497276.44.1750741446999; Mon, 23 Jun 2025
 22:04:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net> <2241399.8hzESeGDPO@phil>
In-Reply-To: <2241399.8hzESeGDPO@phil>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Tue, 24 Jun 2025 07:03:55 +0200
X-Gmail-Original-Message-ID: <CAAObsKB2tLewhCt6LWtuCW1niCPAHvqjWYAQ8t6fv9YLVsQmJQ@mail.gmail.com>
X-Gm-Features: AX0GCFuWUi05UoZnTls2Tcn0dm5ovOsTmo6J_0Og6xGh9EfBiQOG6iE0FtJ2MtI
Message-ID: <CAAObsKB2tLewhCt6LWtuCW1niCPAHvqjWYAQ8t6fv9YLVsQmJQ@mail.gmail.com>
Subject: Re: [PATCH v7 00/10] New DRM accel driver for Rockchip's RKNN NPU
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Kever Yang <kever.yang@rock-chips.com>, 
	Robin Murphy <robin.murphy@arm.com>, Daniel Stone <daniel@fooishbar.org>, Da Xue <da@libre.computer>, 
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-doc@vger.kernel.org, linux-media@vger.kernel.org, 
	linaro-mm-sig@lists.linaro.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 20, 2025 at 11:28=E2=80=AFAM Heiko Stuebner <heiko@sntech.de> w=
rote:
>
> Am Freitag, 6. Juni 2025, 08:28:20 Mitteleurop=C3=A4ische Sommerzeit schr=
ieb Tomeu Vizoso:
> > This series adds a new driver for the NPU that Rockchip includes in its
> > newer SoCs, developed by them on the NVDLA base.
> >
> > In its current form, it supports the specific NPU in the RK3588 SoC.
> >
> > The userspace driver is part of Mesa and an initial draft can be found =
at:
> >
> > https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/29698
> >
> > Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
>
> > ---
> > Nicolas Frattaroli (2):
> >       arm64: dts: rockchip: add pd_npu label for RK3588 power domains
> >       arm64: dts: rockchip: enable NPU on ROCK 5B
> >
> > Tomeu Vizoso (8):
> >       accel/rocket: Add registers header
> >       accel/rocket: Add a new driver for Rockchip's NPU
> >       accel/rocket: Add IOCTL for BO creation
> >       accel/rocket: Add job submission IOCTL
> >       accel/rocket: Add IOCTLs for synchronizing memory accesses
> >       dt-bindings: npu: rockchip,rknn: Add bindings
> >       arm64: dts: rockchip: Add nodes for NPU and its MMU to rk3588-bas=
e
> >       arm64: dts: rockchip: Enable the NPU on quartzpro64
>
> from a handling point of view, I would expect patch 1 - 6
> (driver code + dt-binding patch) to go through some driver tree
> but have not clue which one that is.

I think Jeff Hugo would be pulling it into drm-misc? We still need a
R-b for the job submission patch, and also have the userspace driver
ready for merging.

> And afterwards, I would pick up the arm64 devicetree additions
> patches 7 - 10 .

Sounds great.

Thanks!

Tomeu

