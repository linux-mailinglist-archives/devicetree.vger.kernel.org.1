Return-Path: <devicetree+bounces-249923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E164CE4A01
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 08:54:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D9F893001C21
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 07:54:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCFF228C84A;
	Sun, 28 Dec 2025 07:54:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="STvIDD8g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BAE277CA5
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 07:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766908485; cv=none; b=qgmZEH3QX5SX3iYrDHM4hA3t080Fy+PVHWjVZe3ZlFL/KoKnhU3j2MLVH7K/5hTcj3YEMD/PqXU6I9j4TrSpw6KP3x/AZYtGVhAx8ZggM2JGO4nuSBhRSBlzBcKhRU6zpjnJPkvDfdUNUVxzPtzmIiO5Y6qGLCRKf/eiRetNNsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766908485; c=relaxed/simple;
	bh=zjMfTtZOC4ZWKS1UB22a0HuwnDRkW7VbGLZDo8hkA0c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=As6xw9VQVastMDMtQVOEyrI2esOfl9LVLxJBZgjnwoDxVFS1Sv2cPjUlH+DRq6Tc1FKFiijwd7tc23hHj0uhjKcobG4M2LKWxPlYmokNUFet34pFGHsqyQMPSppT/EGQMhLBHTLgwfx8g8WPlQwVdAjBUluHA1K7U5asO8o0N78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=STvIDD8g; arc=none smtp.client-ip=209.85.217.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5dfa9c01c54so5172493137.0
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 23:54:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766908483; x=1767513283; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QCyx6Mqpzdar9VYEKGCLb4kdS1Mp74Ev7TEjgfeFuw0=;
        b=STvIDD8gPXCZfmK/HMvEmBXa2VkZNPD5kNPZ52W1aeJvIKxBUSiTyz/LtgQ3BkN8GB
         xhO/kgd39vzAM2w5Ty+M+XYq7ZcIRO4WImZTAiLZPWh3P43sKUXWc5+I/rsV2tclhUbG
         pTOlXzNGrz74e1lWKd5pgx0a0RkVgINFJ8uNdzRz/nLtNqPZXPcyAcF2mnoEcsBFX9WM
         wtWCiIHsLQuUi6EaTPS6aunF9DWvswouhyQtIcLb1svV5o38hfNzBwS0PfTzDGveOV3k
         83gcFQMJrG+g60nwRLNdlMJeiml1JlyQbALgNQM1FfoeSaMT40udd0WHLtxHFTb/+JjW
         0fRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766908483; x=1767513283;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QCyx6Mqpzdar9VYEKGCLb4kdS1Mp74Ev7TEjgfeFuw0=;
        b=iBmj2M//NOc7fvPDLQmp14wmWGF40NbmM+uU5VpCY41AsGVp851CzF3Qwuu9ituxiW
         K2tRFIUxPFKEkq38z0jmL23okZxpsRdkS5Kv8cFVzTqwQrsTlceOPlwhUcONdQszc14Z
         L5d2C2yoc846HJqyM+nXoTb4azi/tVrnYt8Va3JdcsEJCVYSnbJkuxncL1Itk/zcEUil
         xAiHEb/EEblBRreWGI/OwZDhVhBtDjw7jzDRIXXUSSJQzDtG8RD95X2QO5uJD3rx9KF5
         lSQpuAHK1c4JXhhcSpKVxw+EV0AAmm0KlxpNJ+LZcMqmV5a6rPHlaXD5wSnAHUn1y+Il
         o5yA==
X-Forwarded-Encrypted: i=1; AJvYcCU3WNqLSi/tmqcUiCksb9TjICb9hGoKFY13dCEXsA2SSSMEOJ+JNIlfEvHw9d51BMYy0UynB6nt4GCM@vger.kernel.org
X-Gm-Message-State: AOJu0YybYqWh3hxUPaHkr/mWjA+JzZbiG/dR/9j37WOLdh0yAqLG8g4D
	iHMjoXANQ8L5I386wBSlahnfoQD4iSA8ZYscXlvYoY0Jzrqiq1XPonRauDUI37v2ena8ntf12bN
	BRUn3vLpHnVCLtFAgLRnMlFtVWoTieiM=
X-Gm-Gg: AY/fxX4cijUqvMEpRQtk0jpd0IPGmHf9DqwkTKFhNjkPs6oG6Pw7n6dpP7ggI8sYOGC
	gLKyf1T8Z3Uqq3+/KZ2x7fCgJ8g6gOqOnTRrgToiPI8R537PPwV0IdKLJoXvEKMaOpPQ9I7Gbzy
	KjjiS0pksGS82VRR1WzXx12PnMJgu1RJK0uWtAfgJdOi+KaiUzE+0s+OSZU4RqZcCB/otHGQzd7
	m/uGBvjsLzbi0vPIubPrzK1/u4oBJjdUHK6PpZBTal43K0UIhzIoymveoJll2q7+rp8ppuMdsje
	dRpwysMgX4+CHa7OHEQz/BPlh8zGud5B2KKeO/ctJmsi+Uc9DfhyHSeFD8Tz
X-Google-Smtp-Source: AGHT+IGVFw4oN6vVpsJvVT3zYapZ4PgCC6CBlt/bXWp1hbVF3nJvyRYFG+o8Vhg82iSdQ8egqcYOxboHJROhnTHc1mg=
X-Received: by 2002:a05:6102:9d9:b0:5df:b7f3:5875 with SMTP id
 ada2fe7eead31-5eb1a6259a2mr8916658137.3.1766908482707; Sat, 27 Dec 2025
 23:54:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251224161205.1132149-1-zhengxingda@iscas.ac.cn>
 <20251224161205.1132149-3-zhengxingda@iscas.ac.cn> <D5A173F1-D439-49FB-A4A0-B632550BF35B@gmail.com>
 <20251227-gigantic-handsome-falcon-3c31bf@quoll> <CAAT7Ki9m+MD2_EntEt=-2ZPFxbMNt6LV_kZu-aAvGZ70e_SUhw@mail.gmail.com>
 <27c89053-ea11-4165-9a85-9dcfa093c56a@kernel.org>
In-Reply-To: <27c89053-ea11-4165-9a85-9dcfa093c56a@kernel.org>
From: Han Gao <rabenda.cn@gmail.com>
Date: Sun, 28 Dec 2025 15:54:31 +0800
X-Gm-Features: AQt7F2rJ5Jy8N41aXl0xe_8wJa_GDgLM1pD4NXthJd81_UcUbDbPnhm9CA4Evis
Message-ID: <CAAT7Ki_BxdC8cS7Qs8qVhJJXPPf8ma9MROFLA22J1WOOSgj=dg@mail.gmail.com>
Subject: Re: [PATCH v4 2/9] dt-bindings: display: add verisilicon,dc
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Icenowy Zheng <zhengxingda@iscas.ac.cn>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Drew Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Michal Wilczynski <m.wilczynski@samsung.com>, Yao Zi <ziyao@disroot.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	Icenowy Zheng <uwu@icenowy.me>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 28, 2025 at 3:49=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 27/12/2025 13:08, Han Gao wrote:
> > On Sat, Dec 27, 2025 at 7:09=E2=80=AFPM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> >>
> >> On Thu, Dec 25, 2025 at 05:45:00PM +0800, Han Gao (Revy) wrote:
> >>>> +            dpu_out_dp1: endpoint@1 {
> >>>> +              reg =3D <1>;
> >>>> +              remote-endpoint =3D <&hdmi_in>;
> >>>> +            };
> >>>> +          };
> >>>> +        };
> >>>> +      };
> >>>> +    };
> >>>> --
> >>>> 2.52.0
> >>>>
> >>>
> >>> Tested-by: Han Gao <gaohan@iscas.ac.cn>
> >>
> >> NAK, not true. Otherwise explain me how can you test the bindings.
> >>
> >>
> > I cherry-picked the patches I gave to Tested-by on my test branch,
> > compiled and ran them on Lichee Pi 4a.
>
> You cannot "run a binding".

I understand now. My understanding of dt-binding testing was incorrect.
I will not repeat this mistake in Tested-By.

>
>
>
> Best regards,
> Krzysztof

