Return-Path: <devicetree+bounces-38789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3107484A1A4
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 18:58:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 560EB1C22D5C
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 17:58:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8F9044C80;
	Mon,  5 Feb 2024 17:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="SdizWcUy"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE45482C3
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 17:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707155922; cv=none; b=VLXxhE+1oIPdS8VEe5/o58jT0MMsB0qsyItJLajFRwmddQQiP5zsJ+BetsT1c85EFNay6M8Dh71nuWhPD4eVF8Ng9SoXICPBM70sMKYi97C0Fb28Yv/gxZBw9Wc3O3cTPeIdNGFp6D9emmziwoH7PGBG0qW3hHHmte1qwcHO+n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707155922; c=relaxed/simple;
	bh=JI34Z1tQRWIcNzFT0PfIry4qmoRAYebqMYRLIjQEZI8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Rhh3QogAGmmgtNUw26k6Kt5/5BVhnBYMW0HfSQWiorlUbQrA8fLYXyQY053jnPgYJVD/4M/XiVKP6HMuQvj7x2bdtLQNjpN4RYKiWsYk0fx3V10qHSHifcLMifnCwuxhguP9CI0Ot/ohTdm0/ea4323cbNYS8PoRHenTMUBT0bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=SdizWcUy; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1707155919;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+YEl0o9ZueCpXJpYRSdl4wnuz6goJxIXt9A+9h2SVrg=;
	b=SdizWcUyFqNDuTcKBN1NrV96JthRa1IYtwvHe075+FP0R+l78mL76IqSNmEHJqItdh18c2
	4IQWg4JL1pAyFqOaeBqo/sEq5RzwPHRCMgmdPSXbXn3UHt2MKvCnFsgEeAQ9D3KpnCMASS
	gCIY+K5+CfPkiigz/vr6Ueeg2WBlmzM=
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com
 [209.85.167.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-570-nmHlao1vOqKXsEOsRa1XMg-1; Mon, 05 Feb 2024 12:58:38 -0500
X-MC-Unique: nmHlao1vOqKXsEOsRa1XMg-1
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-3bd90c1688cso4747729b6e.0
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 09:58:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707155917; x=1707760717;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+YEl0o9ZueCpXJpYRSdl4wnuz6goJxIXt9A+9h2SVrg=;
        b=Iz8bCv0CkfvKwn9i1tdOiQU6QKLSknSoLKLaKpqtIFUN4L5nMMY7nmTwcg7eORu9PF
         hUWON3pOWL8jGJMIxMl8m689Z1xDOEFfy9kX6Gm5qJGVnuUkxVOLzob/W3Yp0WC22HlS
         FT3da0zQ5M8TO895J/9GtYAGD/Hfo2BklWlMJnY9uuF2eK66JdK+NHLWEFpH1sQvZNlN
         iU5fYAk6Ztv66wUp1CVvmyXs3RY42nbAopbKYYp/zC3j/wOUzD3WPGMwDB216wqVKWyL
         OT/FHEEjO6Sgk9PuOxRECR1aY7tlargdyXcIH9oqN4vFzpGNZoXIyCvW9KS9OJnuBBPb
         ue5A==
X-Gm-Message-State: AOJu0YwymRObbHzDd17VUGQTz0seWyT+xvciI3wvzR/IilubPrEgv9tC
	yvawhU/c5M4DFiiNJsdhh/yV9I8ZOrdXJ95oMcXbJFipdGj2RqA/mADXl4TOJvstti8ZJvebxGI
	s5q3SuuMOJEpfaMgtmvG2qjZLrb/3L69WHrRKTL5kizmGqmrGqUl2wuSp9eaBvpF7arLKorm8B8
	+afy0TmmKVrtbu4FoWSff4jwBr8GUh8FCSoA==
X-Received: by 2002:a05:6808:10c7:b0:3bd:692e:26b4 with SMTP id s7-20020a05680810c700b003bd692e26b4mr177513ois.26.1707155917565;
        Mon, 05 Feb 2024 09:58:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEMUCI5N740gGZ0rQScz2/ZI1BarnJzuT7xOBbPs6fdig5Jn+PGlpaHDZsjaQpTTN2szD5H6UPCUjabgOjgsuQ=
X-Received: by 2002:a05:6808:10c7:b0:3bd:692e:26b4 with SMTP id
 s7-20020a05680810c700b003bd692e26b4mr177502ois.26.1707155917321; Mon, 05 Feb
 2024 09:58:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240201142308.4954-1-j-choudhary@ti.com> <92d7de31-2c14-469d-8da8-11bb70ea2707@ti.com>
In-Reply-To: <92d7de31-2c14-469d-8da8-11bb70ea2707@ti.com>
From: Enric Balletbo i Serra <eballetb@redhat.com>
Date: Mon, 5 Feb 2024 18:58:26 +0100
Message-ID: <CALE0LRuTL8wOAG465-63JsUrXT6e=aBfGt48LNco+tKWTY5FHA@mail.gmail.com>
Subject: Re: [RESEND PATCH v2] arm64: dts: ti: k3-am69-sk: remove
 assigned-clock-parents for unused VP
To: Aradhya Bhatia <a-bhatia1@ti.com>
Cc: Jayesh Choudhary <j-choudhary@ti.com>, tomi.valkeinen@ideasonboard.com, nm@ti.com, 
	vigneshr@ti.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, kristo@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, rogerq@kernel.org, 
	sabiya.d@ti.com, u-kumar1@ti.com, eballetbo@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jayesh,

Many thanks for the patch.

On Fri, Feb 2, 2024 at 6:17=E2=80=AFAM Aradhya Bhatia <a-bhatia1@ti.com> wr=
ote:
>
>
>
> On 01-Feb-24 19:53, Jayesh Choudhary wrote:
> > VP2 and VP3 are unused video ports and VP3 share the same parent
> > clock as VP1 causing issue with pixel clock setting for HDMI (VP1).
> > The current DM firmware does not support changing parent clock if it
> > is shared by another component. It returns 0 for the determine_rate
> > query before causing set_rate to set the clock at default maximum of
> > 1.8GHz which is a lot more than the maximum frequency videoports can
> > support (600MHz) causing SYNC LOST issues.
> > So remove the parent clocks for unused VPs to avoid conflict.
> >
> > Fixes: 6f8605fd7d11 ("arm64: dts: ti: k3-am69-sk: Add DP and HDMI suppo=
rt")
> > Reported-by: Nishanth Menon <nm@ti.com>
> > Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>
> > Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
>
> Reviewed-by: Aradhya Bhatia <a-bhatia1@ti.com>
>

This patch fixes the issue I see on my AM69-SK board and after
applying it  the HDMI of the board works again so

Tested-by: Enric Balletbo i Serra <eballetbo@redhat.com>

> Regards
> Aradhya
>
> > ---
> >
> > v1: <https://lore.kernel.org/all/20231221113042.48492-1-j-choudhary@ti.=
com/>
> >
> > Changelog v1->v2:
> > - Updated commit message
> > - Picked up Tomi's R-by from v1
> > - Removed "Closes:" link since its invalid now
> >
> > (NOTE: Sending again as forgot to put mailing list in cc earlier)
> >
> >  arch/arm64/boot/dts/ti/k3-am69-sk.dts | 8 ++------
> >  1 file changed, 2 insertions(+), 6 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dt=
s/ti/k3-am69-sk.dts
> > index 8da591579868..370980eb59b0 100644
> > --- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
> > +++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
> > @@ -918,13 +918,9 @@ &dss {
> >       pinctrl-names =3D "default";
> >       pinctrl-0 =3D <&dss_vout0_pins_default>;
> >       assigned-clocks =3D <&k3_clks 218 2>,
> > -                       <&k3_clks 218 5>,
> > -                       <&k3_clks 218 14>,
> > -                       <&k3_clks 218 18>;
> > +                       <&k3_clks 218 5>;
> >       assigned-clock-parents =3D <&k3_clks 218 3>,
> > -                              <&k3_clks 218 7>,
> > -                              <&k3_clks 218 16>,
> > -                              <&k3_clks 218 22>;
> > +                              <&k3_clks 218 7>;
> >  };
> >
> >  &serdes_wiz4 {
>


