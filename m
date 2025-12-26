Return-Path: <devicetree+bounces-249769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C08EFCDEDA7
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 18:43:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7FC4A3003511
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 17:43:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE3232367A2;
	Fri, 26 Dec 2025 17:43:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pc0PkBLH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97251DFE26
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 17:43:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766770995; cv=none; b=O44lI7v/Aa6Q+unBZMsUrC/Za7dWO+Er37OZOXZzwKxuh+tYsLi1CWU/PSdfcPndUlMhiKaeQeRpEmjCLs0b9AZ77+hChRWvgiilkJU7M32/bLjzU3mKImOwQ5kM8mKu/72Cld5tIaJ9G8PgphzFsGytCp/RaGBNvNbzfSpyj5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766770995; c=relaxed/simple;
	bh=DkbApBHXFizXs+l3CfaJtpwhufcP1rHmWcrInzAj42k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CBUKQ3wWHgGp9DK4vWZqhToFlEn2K36pKd/kU1bA5DLfAhO5SMxKpWC1FmnQi8upP8JnlKeXLdfBUmITeTQooO96AbwMJM+6HHGSBm1L2sOd5QY2HA7VovI+b1ku3rUnO1qmhcWE33pqWA7uKPitSxcS/aJPLCPtq4U0JhuSSn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pc0PkBLH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 627ADC19421
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 17:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766770995;
	bh=DkbApBHXFizXs+l3CfaJtpwhufcP1rHmWcrInzAj42k=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Pc0PkBLH6rpyuoA/3eBSp3r5NdlV3QDE3VhCJslEV4654bdY37xk1FrN4SC+3hFTN
	 f4E0Y0DklUWkHOfsOMpjjYGcsMoGjnJgWNfcH9oUnXKUszlF/XBZSdOcMX8/+RH11l
	 2GonYWsu76nxOmiPNzcy94uJYJnFxuzurMaPKeag9/KuAEHr0Xm6ndSFfNebYMNQ7Q
	 O2JucRB2Y6ZVyvadeuuT/FbYP4Hr+54OF13PwK7BAB3TJVmkCKVhKFQiUs+lm0TsfG
	 4EHtJEh6OUAC4sVKCJnOli1J0QXEgPvxogdU6eX9IkmVZH2qRv4kXaDM8zE4/vFQgk
	 6lTLvrV4vu+2Q==
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-6420c0cf4abso6034123d50.1
        for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 09:43:15 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVgBoEy4mqVbcPoXWm3bnlOyk03fWjZSzu6wYe42fX3SS+aoyfoc1hljm0MBjkGlDQyHPmNgUhW/vNb@vger.kernel.org
X-Gm-Message-State: AOJu0YwbrU5cgbYRpv4C0wI406K0MKTDmyKO/UZuHVSUoZLpkSTxCjTm
	qw8o698CgZxaNk66fDBYNCXSentMrfVMDH0hjYVyiT665tfrV6rH9JtglE4ia73ReHjQ5jlR6Rc
	HrWO6ERxAT0YaqwKIYsWPpie1vaBOMNQ=
X-Google-Smtp-Source: AGHT+IEThu+SGeShmmu/tYX/llkmUdugrRx2dWhmCKMCWh5GaYfd3cvd12fU6652YXAX2Yh0+H0T9fwaFELFs993l0M=
X-Received: by 2002:a05:690e:13c8:b0:645:53d0:2d20 with SMTP id
 956f58d0204a3-6466a8bfd42mr18381088d50.62.1766770994712; Fri, 26 Dec 2025
 09:43:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251222-drm-panels-sony-v2-0-82a87465d163@somainline.org>
 <20251222-drm-panels-sony-v2-5-82a87465d163@somainline.org>
 <CAD++jL=X1hX6kmodcOC3+x-w6t+Vg6XTaCMab-Dn=vHAeD82Gw@mail.gmail.com> <aU6XXi2HmgjZY8CY@SoMainline.org>
In-Reply-To: <aU6XXi2HmgjZY8CY@SoMainline.org>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 26 Dec 2025 18:43:03 +0100
X-Gmail-Original-Message-ID: <CAD++jLn0cFtDhg9WFU2LS6g+cLa7ZMzzcHAJ_W9REVHodFYpAw@mail.gmail.com>
X-Gm-Features: AQt7F2oBipmE-JjCDy8dZSMq1b64ml7eenWiIcoP2slHVPS-wd747R2LD1C4CGc
Message-ID: <CAD++jLn0cFtDhg9WFU2LS6g+cLa7ZMzzcHAJ_W9REVHodFYpAw@mail.gmail.com>
Subject: Re: [PATCH v2 05/11] drm/panel: Add panel driver for Samsung SOFEF01 DDIC
To: Marijn Suijten <marijn.suijten@somainline.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Sam Ravnborg <sam@ravnborg.org>, 
	David Airlie <airlied@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, 
	Casey Connolly <casey.connolly@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Simona Vetter <simona.vetter@ffwll.ch>, 
	~postmarketos/upstreaming@lists.sr.ht, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>, 
	Martin Botka <martin.botka@somainline.org>, Jami Kettunen <jami.kettunen@somainline.org>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Konrad Dybcio <konradybcio@kernel.org>, 
	Dmitry Baryshkov <lumag@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 26, 2025 at 3:16=E2=80=AFPM Marijn Suijten
<marijn.suijten@somainline.org> wrote:
> On 2025-12-26 14:21:37, Linus Walleij wrote:

> > The sofef00 driver tell us exactly what this sequence is:
> >
> > #define sofef00_test_key_on_lvl2(ctx) \
> >         mipi_dsi_dcs_write_seq_multi(ctx, 0xf0, 0x5a, 0x5a)
> > #define sofef00_test_key_off_lvl2(ctx) \
> >         mipi_dsi_dcs_write_seq_multi(ctx, 0xf0, 0xa5, 0xa5)
> >
> > I would just rename these two to sofef01_test_key_on/off_lvl2()
> > and use the same helpers in this driver to follow the sofef00 pattern.
>
> Right, yes.  I think I already brought this up in V1, that some existing
> Samsung drivers call this (the 0xf0 part) the MCS PASSWORD, others call i=
t the
> LEVEL_2_KEY or USER_KEY or ACCESSPROT.

Actually all of the samsung s6e panels are suspected to be s0fef0/1
display controller variants, which you see if you look inside
panel-samsung-s6e*, for example panel-samsung-s6e3fc2x01.c has this:

#define s6e3fc2x01_test_key_on_lvl1(ctx) \
        mipi_dsi_dcs_write_seq_multi(ctx, 0x9f, 0xa5, 0xa5)
#define s6e3fc2x01_test_key_off_lvl1(ctx) \
        mipi_dsi_dcs_write_seq_multi(ctx, 0x9f, 0x5a, 0x5a)
#define s6e3fc2x01_test_key_on_lvl2(ctx) \
        mipi_dsi_dcs_write_seq_multi(ctx, 0xf0, 0x5a, 0x5a)
#define s6e3fc2x01_test_key_off_lvl2(ctx) \
        mipi_dsi_dcs_write_seq_multi(ctx, 0xf0, 0xa5, 0xa5)
#define s6e3fc2x01_test_key_on_lvl3(ctx) \
        mipi_dsi_dcs_write_seq_multi(ctx, 0xfc, 0x5a, 0x5a)
#define s6e3fc2x01_test_key_off_lvl3(ctx) \
        mipi_dsi_dcs_write_seq_multi(ctx, 0xfc, 0xa5, 0xa5)

So there is also the explanation of the 0xfc command.

> Then there are possibly a lot more constants we can glean from other driv=
ers,
> though again without confirmation that it's identical on this DDIC.

I think the s0fef0/1 drivers and all the panel-samsung-s6e* drivers
should probably be unified a bit maybe we can just create a
local s0fef.h file with the above for all these drivers to use?

(If someone has actual datasheets for s0fef0/1 that would be great.)

Yours,
Linus Walleij

