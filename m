Return-Path: <devicetree+bounces-10231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D33D47D0438
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 23:51:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 73779B20C2B
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 21:51:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A04F53FB0C;
	Thu, 19 Oct 2023 21:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="XKecxZw+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EF93E00E
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 21:51:06 +0000 (UTC)
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 419F6115
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:51:04 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9ba1eb73c27so28076266b.3
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1697752262; x=1698357062; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0XF9t5trmYV2tU8uP1V1uGs3giS+nQ6cAeAndNsOA6c=;
        b=XKecxZw+9atQoxLFNJghavdtLoqts/seGMjs7GX8Rp7rkZsrcfjdOyhEAZlUpwqxLU
         deghHUr0FsyExxgrh0eCsMZiyWxu3mWrCG64udsMkLRFNp0SZARLPLbt0KOX7Z2jzpcm
         1YxOK595hbZ7HGAJOqlG0aaExxx1oQLGlgnBo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697752262; x=1698357062;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0XF9t5trmYV2tU8uP1V1uGs3giS+nQ6cAeAndNsOA6c=;
        b=Kc8T/uMt2W/w8+SWzTOzk8NQj1TQ8b9FV4k/0HotT9SHieBP9jGqrRj6OfN2pnkzWU
         fb8lfQ2kNpsYh54oJCHE61vVESmZfJIgaum9jVQC4toS0tYIColAH/4FoERHmvzxXvRG
         RJTF18jlupkvIutJKl4YksUhO8Dkb7Rv/Jby0nz/GqZq8z2/k3bEzGcdLuHME5/ZtNiX
         RQd0gf0pWibZqSNraR8UZI5nQn9xIlI7M7DsCjBBiXNXCP7zsWpNAua1DjaEQ0Szz1G6
         sP8veKT0mXq2X/g+1539Lwc2xy3/EDmbE1R4GxytLowhDTTWNo6BtOJ960u1z1d1Ywn6
         Ybyg==
X-Gm-Message-State: AOJu0YzH27wp5b0jSoa0JKn5Ghw1mxfan+/RM3wrqhuoMiPnAMESKUom
	ECeYu2lt96FzqvnSbaFD/v4J2WeffD/IzngxltjAzgP8
X-Google-Smtp-Source: AGHT+IGz05D4iQE1h/7rACYkh85/mSwL0Lh+uJ/uJrZ4rokTA+Mot6tgjLZDDO57tQtp6Gc9cK1hyg==
X-Received: by 2002:a17:907:3f10:b0:9c0:1d65:68d9 with SMTP id hq16-20020a1709073f1000b009c01d6568d9mr3058406ejc.7.1697752262323;
        Thu, 19 Oct 2023 14:51:02 -0700 (PDT)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com. [209.85.208.45])
        by smtp.gmail.com with ESMTPSA id c25-20020a170906695900b009ae3d711fd9sm240260ejs.69.2023.10.19.14.51.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 14:51:01 -0700 (PDT)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-53eeb28e8e5so1633a12.1
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 14:51:01 -0700 (PDT)
X-Received: by 2002:a50:8d59:0:b0:53e:7ad7:6d47 with SMTP id
 t25-20020a508d59000000b0053e7ad76d47mr25591edt.5.1697752261284; Thu, 19 Oct
 2023 14:51:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231013091844.804310-1-yangcong5@huaqin.corp-partner.google.com> <20231013091844.804310-4-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20231013091844.804310-4-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 19 Oct 2023 14:50:49 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U8fDO7q3k8DmXHPnX0XrryzY1-zcuU6N1ZmDo=O3anLw@mail.gmail.com>
Message-ID: <CAD=FV=U8fDO7q3k8DmXHPnX0XrryzY1-zcuU6N1ZmDo=O3anLw@mail.gmail.com>
Subject: Re: [v4 3/3] arm64: defconfig: Enable ILITEK_ILI9882T panel
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, linus.walleij@linaro.org, swboyd@chromium.org, 
	airlied@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

On Fri, Oct 13, 2023 at 2:19=E2=80=AFAM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> DRM_PANEL_ILITEK_ILI9882T is being split out from
> DRM_PANEL_BOE_TV101WUM_NL6. Since the arm64 defconfig had the BOE
> panel driver enabled, let's also enable the Ilitek driver.
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)

Pushed to drm-misc-next:

c2635c0ec8b4 arm64: defconfig: Enable ILITEK_ILI9882T panel

