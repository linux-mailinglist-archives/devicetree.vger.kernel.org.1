Return-Path: <devicetree+bounces-45648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE3B8629D4
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 10:02:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 29ED9B2103F
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 09:02:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 867B3EADC;
	Sun, 25 Feb 2024 09:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ouT0wdiB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10E1DDC4
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 09:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708851719; cv=none; b=dBk+GnGQynipiu8k1SRwVup7PbkRVwvtrcqfppqzTa7ljULTWy5peGJBDvMshxpJ+89O0ULthHzfhK1VC9rF7fRlR3OVxdRitGyRY19IlHce2HyyxXSwWejOkN5jroW2a6DRYu/HRP8eGAVcU0sQiZOLYdVUIMNvpPC0qQg5cnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708851719; c=relaxed/simple;
	bh=Hg/zKsMQUVCsnRORSIXD91YZrbvgCaBljaq+f0ptAy4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kEd4cQmtghCh9DTZEBu9rBto8WQCHv/Vh6zhwBIGKt3hCCfJYz2JuDsmuXBOhv4GSa/RXmisbPM+Qp+59wkOdixfoUthZq72xr62RNnNbspjbRQKHnffHbA/Kw/7cn60VMfZJag9TFwJA3cSmXWAD7T4p/ZNpyfHfRGlw6Efnpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=ouT0wdiB; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-dcc80d6006aso2139543276.0
        for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 01:01:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1708851717; x=1709456517; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YHOo9UT8MHhr2LgNReIspvnQoZcPsNNtGDWx9q9Wwyw=;
        b=ouT0wdiBUTVoIInf2jqSZumFwKXSaNjo5Fxdt1Wg0CDqQ0CQPXLCBtrdnwMACZfGkW
         WTbBWyw41J7NqlOQNp4isv6AdRk7B7CvyxTovHSXPvkXncrG4Td0j50P7u9MpoyGc6Z6
         LWpLYvAOcEsLtv0UuQ/qLm+PpmDmtZKXymiUM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708851717; x=1709456517;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YHOo9UT8MHhr2LgNReIspvnQoZcPsNNtGDWx9q9Wwyw=;
        b=E0ZX3NN9ZFXax+9O7qKUa9fBJ9NeUdpFSUFJbjDS0ZaLzuSBZenBUBSPs3p2qyFomj
         JbVtXGtHyC2G9QNyXNlVevn5S6K3JnTOA7qbMa0e4zg08imJe70SUQM/8UbO8yZWPgJI
         U95hIZ5k8AZG3ojTG28a/6E3/0MbcOHYjWzrqBJ9dXFV+R/zFCbgk6IcOXcXY8SYciBp
         Cz5/i4RP8Ga+Tp9p4dDuIo3UfHxGogNvNa6XT/lngGOcGAeaddZ2L0UJyufsOlbcZK1y
         9UvYtHACrTmObK83mvELtBsh8G6B3FpI8IiE7U6EWcj53PrXioUYibI+J+bds7euSQyT
         +9cA==
X-Forwarded-Encrypted: i=1; AJvYcCWkh3gQJ2rlP+Ny3c6lUPS3oBwzVcpQqYHz0oeLWWRjlqz8I+pgVY4f08MMNWSztL9jwQLcx8wqe4L5+JcWJBN/oPruy+dfUwn2uQ==
X-Gm-Message-State: AOJu0Yx++qBjGoZzxvd/Fl+CQGQyXl03A3UsAbCrsc9NoKXwv4rIv6EL
	KbS3EBJIkCrgYo+nZkaNz8Lna5XTMSWlnHLZmKiwP2cVYr3RLFmTeRo1f1pG1fWM9BzzaVnzuk2
	sjMVa8686Qh8TO7n9hWswcF1r0aG289+ryQpq5w==
X-Google-Smtp-Source: AGHT+IF0+Bvf9OP9uHXcDAr26iDTEvPUt0IA61zwMjEFzJbfATCZMm5QQ6kC4Nnf7g8ZxzPXEFEftfYY0riDIv/CdlM=
X-Received: by 2002:a25:d851:0:b0:dcd:3f82:e803 with SMTP id
 p78-20020a25d851000000b00dcd3f82e803mr2521692ybg.39.1708851716970; Sun, 25
 Feb 2024 01:01:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240131092852.643844-1-dario.binacchi@amarulasolutions.com>
 <20240131-gap-making-59055befaf04@spud> <494b51fa-0f0e-4c1b-add3-73b5fe0b3c29@foss.st.com>
In-Reply-To: <494b51fa-0f0e-4c1b-add3-73b5fe0b3c29@foss.st.com>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Sun, 25 Feb 2024 10:01:46 +0100
Message-ID: <CABGWkvr8RQrUf0Uc+e83qDgqmzUT7OBcS4EDr2DFQnavfRTRDQ@mail.gmail.com>
Subject: Re: [drm-drm-misc:drm-misc-next v2] dt-bindings: nt35510: document
 'port' property
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>, heiko@sntech.de, 
	Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>
Cc: Conor Dooley <conor@kernel.org>, linux-kernel@vger.kernel.org, 
	Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Sam Ravnborg <sam@ravnborg.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Feb 14, 2024 at 10:47=E2=80=AFAM Alexandre TORGUE
<alexandre.torgue@foss.st.com> wrote:
>
> Hi Heiko
>
> On 1/31/24 16:53, Conor Dooley wrote:
> > On Wed, Jan 31, 2024 at 10:28:44AM +0100, Dario Binacchi wrote:
> >> Allow 'port' property (coming from panel-common.yaml) to be used in DT=
S:
> >>
> >>    st/stm32f769-disco-mb1166-reva09.dtb: panel@0: 'port' does not matc=
h any of the regexes: 'pinctrl-[0-9]+'
> >>
> >> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> >> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> >
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> >
> >
> >>
> >> ---
> >>
> >> Changes in v2:
> >> - Rework the patch to drop errors found by command
> >>    'make DT_CHECKER_FLAGS=3D-m dt_binding_check'.
> >>
> >>   .../devicetree/bindings/display/panel/novatek,nt35510.yaml       | 1=
 +
> >>   1 file changed, 1 insertion(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/display/panel/novatek,n=
t35510.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt355=
10.yaml
> >> index a4afaff483b7..91921f4b0e5f 100644
> >> --- a/Documentation/devicetree/bindings/display/panel/novatek,nt35510.=
yaml
> >> +++ b/Documentation/devicetree/bindings/display/panel/novatek,nt35510.=
yaml
> >> @@ -31,6 +31,7 @@ properties:
> >>     vddi-supply:
> >>       description: regulator that supplies the vddi voltage
> >>     backlight: true
> >> +  port: true
> >>
> >>   required:
> >>     - compatible
> >> --
> >> 2.43.0
> >>
>
> Do you plan to take this patch in drm-misc next branch ? As I have a
> dependency with it to merge a DT patch I can take in my tree
> (stm32-next) if you prefer. Let me know.
>
> Cheers
> Alex

It's been some weeks, so a gentle ping seems in order :)

Thanks and regards,
Dario

--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com

