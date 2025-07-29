Return-Path: <devicetree+bounces-200519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D3BB15077
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 17:50:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8306C7AFFBD
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 15:48:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC3102951AC;
	Tue, 29 Jul 2025 15:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="BMt8iVkO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C67D295531
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 15:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753804216; cv=none; b=JJX2cEcsuZx19RMcK0WLXtHxuzQ4FhAD8xFqTOeKR9vajtyvNfCoG9c6Pg0ga/LKJK6vOhrfliRjFyqYkq5ZVHIlwRfHMGnLwZvFzA4APHPParAnamcSlAUVyk/csC8NKxS0c8AzJHq8VdJRa7phXre89tMTNTTHIrck8ICi29M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753804216; c=relaxed/simple;
	bh=3MQGEggsiUVrrgFI2G8aeSVLgPSN6VW/Rm2vcPBZys8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MUjdauiKhKqFkn4gLCYMKtq3oIifXIeZGX/b6ZawvZvyoOIaRWMiwB1YEBDOITu9pXLYdGMpNhom8exzLD8TxOKiYOYCWx1dMabKNX4dOwWoV7KLs6akb313L7LnUwpCrGCD7DjrGRaHnIh8U5r+Do6AB+WUv/N5OD7DzE5msFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=BMt8iVkO; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-31ed9a17f1fso2149655a91.1
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 08:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753804213; x=1754409013; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pRr//l+WljJZJqCKmuGr3DoCPPP+3a2R/rHAUaoNxRA=;
        b=BMt8iVkOK9F1QNAdqXuuJVQPO6EViz7zYIZtlULR3SkPgZf5RmSFtwB+lGZtPrRXkD
         3arfxiDHIiYHPGAzGxK08FW5YLLhFTAKtkkryoz5jtWPG5gfJPE/rfmRiKhmrcEAXyLc
         V6/1Bbeapi32bKHODiRVo4gOtspZfEOKYB1aQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753804213; x=1754409013;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pRr//l+WljJZJqCKmuGr3DoCPPP+3a2R/rHAUaoNxRA=;
        b=g8B7SOjcQ3+MJfPPHmmqQv4RjMEIkLaxj2RXlFs9Br8K3fsP6KkTmyxr81Td3HizsX
         /2YreWaUsVQ26oA0DIlb7Te9lnJxaAzaqC9biPetc7LDWP5+OIYfX0FbzTvJBNQVg4xF
         KBQMI4Aoez410KdgdYoH/BSnbsup6cUSX3WNSjKeAsBNnuO/ZP3b+VmqMuGwI83F65oM
         CasI1L7FyMmOQ9bKfFG1E5Q20YYhFWG4285o5Mxv+ikBQuEfovAvBekzJGKTsy9Ow3u6
         W+Jqr/w5inw8ElKsGsextuNVGOuYCTYbS+qU0GlAUdng99U8jtRbzfk7ZV9KY/2dWSob
         +iFg==
X-Forwarded-Encrypted: i=1; AJvYcCXFEFRxIgtYpf+EhtQKTi/bRXXGPEQHNdlKrnJNJEALTRNHpz2GsG3upacRoZWxGGmZKScxGoXRUcy2@vger.kernel.org
X-Gm-Message-State: AOJu0Yz11SSdYqAg3GVeIXW4kr2H989uCXanWUb6gay9F7ujdJ9wJuC7
	ASQXcsoIYVbhzbYSAK08Xe8DUtqzdmlnsEgF/m+wCshgoi6GO5sJ2XeXXhLaf6yXVn1Td6Jl7Qi
	5YOU=
X-Gm-Gg: ASbGnct6ymHxuaIJ7Hikrmq9mffQefOODdkFN8F9AqUA1khllTgQySfafLhPA/CpQLl
	yc5KMdtN4KIGZjNU8bfr8NHq708e/Ihu9agbu7uK+diE9CptTypbJTQeWyXjaahZKO3H7xL30OA
	9AErVh0jXFshPs/frrsp50pjKshjMN5VG0VhLRETNbD69+lESC7TQbHXVpxCG4TuG7oEjFGftT7
	1MaxT7Wg93K8T3ftDBD+lAtcZ2l2eRw1HH6Mu0+Bq/3CUS+Dg/RjACBfEARM0oDpwbU92SYzKrd
	5ug7JgYXdIcE0VBs4Q3SdtYRRx2zwE9M57AFDqg3s3N3muCNkdfetHYbIkHS6Ahu+Q+9jS2ajeZ
	EByTLjijbF2W/irDsfUp6rR9lncOksXvQ16s44gte1nHvhQWRS0BwT9PMg+vgRP8OkiZvkQHN
X-Google-Smtp-Source: AGHT+IFCP3h2oYR7l0nhBzlAWMuqLJe/YuYNJkQm1VyZfvh+1aacJLnmGK2sOsLNRW9+7wjD8Pa5Eg==
X-Received: by 2002:a17:90b:390b:b0:313:b78:dc14 with SMTP id 98e67ed59e1d1-31f5dc89520mr104662a91.0.1753804212509;
        Tue, 29 Jul 2025 08:50:12 -0700 (PDT)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com. [209.85.216.41])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31f2ef2462fsm1520614a91.0.2025.07.29.08.50.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jul 2025 08:50:11 -0700 (PDT)
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-31ed9a17f1fso2149504a91.1
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 08:50:10 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWY6vcb5uwBDm5gutv2PUsyODwR04IDLKggt+LKxIaKjIg5hyhmt4wt2oCOfIqo4BYgViH2RGzcRbpB@vger.kernel.org
X-Received: by 2002:a17:90b:35c7:b0:311:eb85:96f0 with SMTP id
 98e67ed59e1d1-31e77a1b44bmr22317060a91.29.1753804209750; Tue, 29 Jul 2025
 08:50:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250727165846.38186-1-alex.vinarskis@gmail.com> <20250727165846.38186-4-alex.vinarskis@gmail.com>
In-Reply-To: <20250727165846.38186-4-alex.vinarskis@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 29 Jul 2025 08:49:58 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xd_xL=PYvVNqQWFZGmqN+Q=SvvaBTfbv9k+fDb8QwUtQ@mail.gmail.com>
X-Gm-Features: Ac12FXx7-_hf5KJUuN4rJ_U3AGgXay6N1FUZnlxj0Vi-OfESDXBTZN7_sEezRhc
Message-ID: <CAD=FV=Xd_xL=PYvVNqQWFZGmqN+Q=SvvaBTfbv9k+fDb8QwUtQ@mail.gmail.com>
Subject: Re: [PATCH v1 3/3] drm/panel-edp: Add BOE NV140WUM-N64
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

On Sun, Jul 27, 2025 at 9:58=E2=80=AFAM Aleksandrs Vinarskis
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
>
> diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/pa=
nel-edp.c
> index 9a56e208cbdd..b334926e96ed 100644
> --- a/drivers/gpu/drm/panel/panel-edp.c
> +++ b/drivers/gpu/drm/panel/panel-edp.c
> @@ -1947,6 +1947,7 @@ static const struct edp_panel_entry edp_panels[] =
=3D {
>         EDP_PANEL_ENTRY('B', 'O', 'E', 0x0c20, &delay_200_500_e80, "NT140=
FHM-N47"),
>         EDP_PANEL_ENTRY('B', 'O', 'E', 0x0c93, &delay_200_500_e200, "Unkn=
own"),
>         EDP_PANEL_ENTRY('B', 'O', 'E', 0x0cb6, &delay_200_500_e200, "NT11=
6WHM-N44"),
> +       EDP_PANEL_ENTRY('B', 'O', 'E', 0x0cf6, &delay_200_500_e50_p2e80, =
"NV140WUM-N64"),

Since this is a "guess" timing without any datasheet, I'd be more
comfortable picking the most conservative of the "cousin" timings. Can
you re-send with "delay_200_500_e200" instead?

-Doug

