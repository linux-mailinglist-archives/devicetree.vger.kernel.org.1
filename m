Return-Path: <devicetree+bounces-65488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E6E8BE99D
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 18:48:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 591FBB2C91B
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 16:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4264916F29B;
	Tue,  7 May 2024 16:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="OJKudso3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9152416F0E9
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 16:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715099539; cv=none; b=l7swkenQvXdu3vH10p0xziI2nTkyiKUNtmkPgY/wf+dHttBxIqoZT9L8WR8uHBZaOedAomxD4+axeTR8SlRuHdld1/Nl2dud1rqPOfhclt8HGY6Goqpy4jlKZsT25bhTgtudEgk1N8/e4EPB57epgMX/9y7m/RWKEiUls9okBnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715099539; c=relaxed/simple;
	bh=Ejd2J/LkdHnUAGoIdR+9zZ4NBny/4pYwcFVlGGF3+Y4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Zgsp+8/hCmVgMyZ9Z53iqDkvA3c/CzI5vAJMoRMSOE4Lh8o703VHpN0NTF5+Bw27hLwok+ll05GBeH4mWGQgEYXQfAT6PLSsK3iSE/qBhY4wCdVhJ8om/t2PY6aPDsa5nKFa/kGDSAs7H3sCyNUxbwyKrj7c8ZgwPOiscOhOj28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=OJKudso3; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-43d2b4d4d3eso11696761cf.2
        for <devicetree@vger.kernel.org>; Tue, 07 May 2024 09:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715099535; x=1715704335; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DFavUp82x9+EKSXtviTqGgqyKSS9fBB+WIBnwLG/9Gg=;
        b=OJKudso3yakWgk92WhfMjRP9pzJ+vtKd2A1jcHXk4wZXiFsJBVGDh7xrDVvponzZ9R
         1Cvvvme/MlYVl58HVUY9S+kYRSCiIWLTFC9QOvv0wG3TlevY6fNOjm81vZlMWSY3LGOI
         aXg9/sRylljPp5htpDmeoYiiX+FpOL0WzdJo8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715099535; x=1715704335;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DFavUp82x9+EKSXtviTqGgqyKSS9fBB+WIBnwLG/9Gg=;
        b=cSGPPMte5DuHO8ZdpqeyKmjM1ggkLl5ZECukbKJTdn6VXHwnX/zBcsFWHW4GAKg1Fk
         W9kP1/NZ21oppoOWNvO8EZngIRQ2dX7cY6X42Dtg1k3yzFideBP5OdhDHyvZBAKpReAs
         CGX+okvITbwKmLGP2akWsil0LMsBKI9u159giAqxOFxVs+laA4pCs6s7bjdDnOH2kvwt
         0Y/gYZ9J6rL/h7YQuV7KC1CcF2Un4bSZxbyi4hA2/BECZzKTri6d0qSS+uAr5JbYv1K3
         GKGPeUtzEkKIXHDRFB2d7JZKz0VRTn0xqy322mofo2rxIuyzr4JHxJgDVmiiN83UxcMy
         AUtQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9s/aqkrKh13Ws2dVbamt0UsnAFMbiOQuCWKA+sLaHrD6R9Ywbu5MENQwcgkPDq4JUslWR2KbilrvVr+DEvyKVFmIix/k0dxVDKA==
X-Gm-Message-State: AOJu0Yyp1WR7zSHocOXiu6CrbUGXldN6XdFsDL0lIi6kMTweYyhSQ6po
	fuO1wzo7lJuW/MbLXeOVAqj19MyhZ5o8R/nBeN3UxmxC/U1WMDjVQhJNwWh9ZC7vU/IX4rasVEc
	=
X-Google-Smtp-Source: AGHT+IFXXzCwXNx0OlhRNJtUUX3na4zEf5GgEOsD2/UctwBFu/WAev86uknl5xsCb1hXIRCdR0Y6fg==
X-Received: by 2002:a05:622a:410:b0:43a:74d8:8971 with SMTP id d75a77b69052e-43dbf50e870mr1777501cf.23.1715099535527;
        Tue, 07 May 2024 09:32:15 -0700 (PDT)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com. [209.85.160.170])
        by smtp.gmail.com with ESMTPSA id hj6-20020a05622a620600b00436440fd8bfsm6579873qtb.3.2024.05.07.09.32.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 May 2024 09:32:14 -0700 (PDT)
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-439b1c72676so610031cf.1
        for <devicetree@vger.kernel.org>; Tue, 07 May 2024 09:32:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVPjnT262GIRYsJhuOkT/VeyOBGdNIzpVBf6d7oOmI/yq1Dt4czUqJDVCVGqFPSDtytaQOVTqI2gG/wd063MhzfvyeSOfXGONSOtQ==
X-Received: by 2002:a05:622a:598a:b0:43a:c1cd:2f4c with SMTP id
 d75a77b69052e-43d9835c8a0mr2999981cf.5.1715099534265; Tue, 07 May 2024
 09:32:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240507135234.1356855-1-yangcong5@huaqin.corp-partner.google.com>
 <20240507135234.1356855-2-yangcong5@huaqin.corp-partner.google.com> <171509488827.493449.2668049686067198439.robh@kernel.org>
In-Reply-To: <171509488827.493449.2668049686067198439.robh@kernel.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 7 May 2024 09:32:02 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VNNB=jtyM1BMTUTzyTjOUqDxobWTYz9RAnCmYha-DG0w@mail.gmail.com>
Message-ID: <CAD=FV=VNNB=jtyM1BMTUTzyTjOUqDxobWTYz9RAnCmYha-DG0w@mail.gmail.com>
Subject: Re: [PATCH v4 1/7] dt-bindings: display: panel: Add himax hx83102
 panel bindings
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linus.walleij@linaro.org, 
	xuxinxiong@huaqin.corp-partner.google.com, airlied@gmail.com, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	devicetree@vger.kernel.org, conor+dt@kernel.org, daniel@ffwll.ch, 
	neil.armstrong@linaro.org, "Rob Herring (Arm)" <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, May 7, 2024 at 8:14=E2=80=AFAM Rob Herring (Arm) <robh@kernel.org> =
wrote:
>
>
> On Tue, 07 May 2024 21:52:28 +0800, Cong Yang wrote:
> > In V1, discussed with Doug and Linus [1], we need break out as separate
> > driver for the himax83102-j02 controller. Beacuse "starry,himax83102-j0=
2"
> > and in this series "BOE nv110wum-l60" "IVO t109nw41" panels use same
> > controller, they have some common CMDS. So add new documentation for
> > this panels.
> >
> > For himax83102-j02 controller, no need 3v3 supply, so remove it.
> >
> > [1]: https://lore.kernel.org/all/CACRpkdbzYZAS0=3DzBQJUC4CB2wj4s1h6n6aS=
AZQvdMV95r3zRUw@mail.gmail.com
> >
> > Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> > ---
> > Chage since V4:
> >
> > - Update commit message and add fallback compatible.
> >
> > V3: https://lore.kernel.org/all/20240424023010.2099949-2-yangcong5@huaq=
in.corp-partner.google.com
> >
> > Chage since V3:
> >
> > - Update commit message.
> >
> > V2: https://lore.kernel.org/all/20240422090310.3311429-2-yangcong5@huaq=
in.corp-partner.google.com
> >
> > ---
> >  .../display/panel/boe,tv101wum-nl6.yaml       |  2 -
> >  .../bindings/display/panel/himax,hx83102.yaml | 73 +++++++++++++++++++
> >  2 files changed, 73 insertions(+), 2 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/display/panel/him=
ax,hx83102.yaml
> >
>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/d=
isplay/panel/himax,hx83102.example.dtb: panel@0: compatible:0: 'starry,hima=
x83102-j02, himax,hx83102' does not match '^[a-zA-Z0-9][a-zA-Z0-9,+\\-._/]+=
$'
>         from schema $id: http://devicetree.org/schemas/dt-core.yaml#
> Documentation/devicetree/bindings/display/panel/himax,hx83102.example.dtb=
: /example-0/dsi/panel@0: failed to match any schema with compatible: ['sta=
rry,himax83102-j02, himax,hx83102']
>
> doc reference errors (make refcheckdocs):
>
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/202405=
07135234.1356855-2-yangcong5@huaqin.corp-partner.google.com
>
> The base for the series is generally the latest rc1. A different dependen=
cy
> should be noted in *this* patch.
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your sch=
ema.

I think several of your bindings patches have triggered Rob's bot.
Please make sure you're set up to test this yourself and make sure you
run it locally before sending out the next version of your patches. In
general you should get in the habit of running 'make dt_binding_check'
locally before you post any bindings changes.

Thanks!

-Doug

