Return-Path: <devicetree+bounces-148773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2C2A3D56F
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 10:53:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CAB463A7E9E
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 09:50:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D19A1F0E37;
	Thu, 20 Feb 2025 09:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4yQ/+N2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 786DA1EE006
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 09:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740044963; cv=none; b=gMjtQAdASoB/JqbterKihZxFI6UpARmURIElRkieVyttqQTyR0KN6knwGvH3TPMMQWnj6v8FeuappDSK9VxZXs6TiYZDV/iUhXcpHwrlKvC0qNC5UkUHUZxHST943bCYOSuDCaq9OXfKzlfUb00bvXxa1gbSLx3wPCk7NB2wHFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740044963; c=relaxed/simple;
	bh=ArcLgFk2io66TkX35tqAR2Buc0pUYz2AJzitE5PaYuo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XsLD0zk7O4ZKKqLR/RvhmFG4g1c2H2F/WsDtYJIOpc56D8g40cC/deAV8rPThjS2PlPsQL3MUTjrRPssEjkX+4qrKSYj2sHH7YgTPLHT+QMI8i3QYAwaV3/p3hEETdOYs/r09HWjLQn4XofYNd/gbh8tIlylCxAoveFv80NdliY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4yQ/+N2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08609C4CEEA
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 09:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740044963;
	bh=ArcLgFk2io66TkX35tqAR2Buc0pUYz2AJzitE5PaYuo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=h4yQ/+N2jxxsI0C8gBGC92X0RZ0eAas6xX/uKm1RM0aktZl2+55m+tpnh/SOr2E6Y
	 9TU0pDQCOuVRJNn94W2euN1zRXqHqEh/VybQtBQaX0ggh1RCPbHOEFyV09j86Sl2rn
	 /wUTA5oFRFngTC1nQ5rIk+00BJxAMlbxagWthqSBZRkuTteviIQhph9uJF/PuACeQ4
	 9EfMkK+cJ5tvRxkGMXKe/B+teDXjCdE7xiXsFW48yC4LWUv3Rv1HnouFpcAkYkGb7q
	 zs8tNGNbp/9YaFLgFlTCisinHB8BVmNle2TXZ5uIp8lrNbliK1fNnREJqK+jNKFw1q
	 HWmKMCVqWLVHQ==
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-e5dc299deb4so699819276.1
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 01:49:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW2IUGgPGGjyNmZwpKvFGRTd+nT1rCQUZm6qJ/MHS09wzLuSjIA/P/RA8lLszs8astAhGU9F6D0l1qp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6CYQ8uiYGB5P8VqwNetGZ6cknrHgvqcnrlxDlTp7hxFPJ7R0u
	/Z9w39esohCLNuuPrXXxpPdEmsQQq2OIY2jB1nT84tu7bvnMmPPJIPcxSjE2jSKWAj52mwMlN0N
	HdwwURasOFo2r3LyXG2hyRs52BbRSnK5T9xD+vA==
X-Google-Smtp-Source: AGHT+IG2VfvF2GnkRpoys0YJzodvdqc/5xzJY6uPb9btHNHUh2VENPQuq2gVXoso8g5unIWhVfhtqhWMRKw8m8MprAc=
X-Received: by 2002:a05:6902:1706:b0:e5b:4482:a4f7 with SMTP id
 3f1490d57ef6-e5e0a09240fmr5734034276.12.1740044962299; Thu, 20 Feb 2025
 01:49:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250220094456.32818-1-clamor95@gmail.com> <20250220094456.32818-4-clamor95@gmail.com>
In-Reply-To: <20250220094456.32818-4-clamor95@gmail.com>
From: Robert Foss <rfoss@kernel.org>
Date: Thu, 20 Feb 2025 10:49:11 +0100
X-Gmail-Original-Message-ID: <CAN6tsi5cfXCOiYDFCGVdt5+Ug_YVfWrY92RA6GWt66-3j73vCw@mail.gmail.com>
X-Gm-Features: AWEUYZl5H9Gg9NYfvDiAyEwJCEBbXZYFr80mYoMdK-I6EKVYjTLvZcUu8t-JWBE
Message-ID: <CAN6tsi5cfXCOiYDFCGVdt5+Ug_YVfWrY92RA6GWt66-3j73vCw@mail.gmail.com>
Subject: Re: [PATCH v1 3/3] drm/bridge: simple-bridge: Add support for MStar TSUMU88ADT3-LF-1
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxim Schwalm <maxim.schwalm@gmail.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 20, 2025 at 10:45=E2=80=AFAM Svyatoslav Ryhel <clamor95@gmail.c=
om> wrote:
>
> From: Maxim Schwalm <maxim.schwalm@gmail.com>
>
> A simple HDMI bridge used in ASUS Transformer AiO P1801-T.
>
> Signed-off-by: Maxim Schwalm <maxim.schwalm@gmail.com>
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm/bri=
dge/simple-bridge.c
> index ab0b0e36e97a..c0f1f7baaa37 100644
> --- a/drivers/gpu/drm/bridge/simple-bridge.c
> +++ b/drivers/gpu/drm/bridge/simple-bridge.c
> @@ -277,6 +277,11 @@ static const struct of_device_id simple_bridge_match=
[] =3D {
>                         .timings =3D &ti_ths8134_bridge_timings,
>                         .connector_type =3D DRM_MODE_CONNECTOR_VGA,
>                 },
> +       }, {
> +               .compatible =3D "mstar,tsumu88adt3-lf-1",
> +               .data =3D &(const struct simple_bridge_info) {
> +                       .connector_type =3D DRM_MODE_CONNECTOR_HDMIA,
> +               },
>         },
>         {},
>  };
> --
> 2.43.0
>

Reviewed-by: Robert Foss <rfoss@kernel.org>

