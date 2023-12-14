Return-Path: <devicetree+bounces-25285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A19812D31
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 11:39:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 209FE281AA9
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 10:39:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31C863C092;
	Thu, 14 Dec 2023 10:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="C86E/pKc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40682121
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 02:39:40 -0800 (PST)
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-6d9dc789f23so5653813a34.3
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 02:39:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1702550379; x=1703155179; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WQpEKW0vlfzqI5cDIUoQ0zKRhm/QITCtnmzIzOsRhcU=;
        b=C86E/pKcbzucau9dIR65aigCl679MftuECWgaUycOAQYecKtprATGuDH93O59gA1Ye
         N5dfT6FzojMwlCWjqDdHt1ttY2DNCCPD6aqfVph4sosn/8c9mOtCYjsHCWWSYg8vRPUr
         hoHMSEE+cymNyRRJnQUgzPcf7HQO/9NtfU+xc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702550379; x=1703155179;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WQpEKW0vlfzqI5cDIUoQ0zKRhm/QITCtnmzIzOsRhcU=;
        b=iRb+uTJE8S4vLi0izv+ZuYg60TqB5DyK3sMFSlfQLzxjmo3fGDGm5okVgemoYnlv5W
         iAoBbvluAZzAxoJZ5My6KdsIuKNTdb2KI3y+BYeop8KYED4dSRV83J6CeumL2sbLK4cL
         vAZ+gxyyMbpn68Bj2U0/aOK0rjnKxvNZ69YpDeCHiQFzGPDzSyEwJaw61dMQ+ss4TFd9
         KUUl70VvObseBPQ8ddlMzIzpvsR0CTfhu1rJjrC5pDmzXK4khOimemOMKLw+Vra2wbPF
         e6UL2ikQbTIfnXsZD1Gjj2pN4SNkPVNl4/AvaRGFUe0oS5N+Nthhb0gKPLjlJYVrcQ1R
         yIXw==
X-Gm-Message-State: AOJu0YxiFJD1tKzzB4RikLpr5b17cu8dbswTmvfP7fmUG4y5chsYW2VT
	nzPMBcLcZBMvmNET/kd1uMuoemO8SvMzRPBlqbY=
X-Google-Smtp-Source: AGHT+IES4KQcy3lT4qqy0Ygw0GXuOy7DLjMv8THHTks8p6+/5Cps8rCJeLDUi0/su+QK7sRp1fJrIQ==
X-Received: by 2002:a05:6808:140b:b0:3b9:f37d:d7c6 with SMTP id w11-20020a056808140b00b003b9f37dd7c6mr11152226oiv.97.1702550379491;
        Thu, 14 Dec 2023 02:39:39 -0800 (PST)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com. [209.85.222.53])
        by smtp.gmail.com with ESMTPSA id eg19-20020a0561302b1300b007cb68e982c6sm55040uab.30.2023.12.14.02.39.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 02:39:39 -0800 (PST)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-7c495bec2f7so1266359241.2
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 02:39:38 -0800 (PST)
X-Received: by 2002:a67:c010:0:b0:465:fc90:2cce with SMTP id
 v16-20020a67c010000000b00465fc902ccemr2107147vsi.29.1702550378388; Thu, 14
 Dec 2023 02:39:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231213150435.4134390-1-wenst@chromium.org> <20231213150435.4134390-7-wenst@chromium.org>
In-Reply-To: <20231213150435.4134390-7-wenst@chromium.org>
From: Fei Shao <fshao@chromium.org>
Date: Thu, 14 Dec 2023 18:39:01 +0800
X-Gmail-Original-Message-ID: <CAC=S1niMvoD-EzGWqo-5fEBJLWAVk3FnxW3jq5rSj9fQ_H37gA@mail.gmail.com>
Message-ID: <CAC=S1niMvoD-EzGWqo-5fEBJLWAVk3FnxW3jq5rSj9fQ_H37gA@mail.gmail.com>
Subject: Re: [PATCH v4 6/9] arm64: dts: mediatek: Add MT8186 Krabby platform
 based Tentacruel / Tentacool
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 13, 2023 at 11:05=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> =
wrote:
>
> Tentacruel and Tentacool are MT8186 based Chromebooks based on the
> Krabby design.
>
> Tentacruel, also known as the ASUS Chromebook CM14 Flip CM1402F, is a
> convertible device with touchscreen and stylus.
>
> Tentacool, also known as the ASUS Chromebook CM14 CM1402C, is a laptop
> device. It does not have a touchscreen or stylus.
>
> The two devices both have two variants. The difference is a second
> source touchpad controller that shares the same address as the original,
One nit since you need to resend this anyway...
s/touchpad/trackpad/g

Regards,
Fei

> but is incompatible.
>
> The extra SKU IDs for the Tentacruel devices map to different sensor
> components attached to the Embedded Controller. These are not visible
> to the main processor.
>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

