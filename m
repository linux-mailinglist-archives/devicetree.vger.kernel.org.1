Return-Path: <devicetree+bounces-131855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1689A9F4C1E
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 14:27:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CE0047A268F
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 13:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F33471F4730;
	Tue, 17 Dec 2024 13:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aum/Q2Ga"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B6E01F4716
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 13:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734441622; cv=none; b=gNM31ybZqkkuotUrxLUT0rYv47dET38ZgIyd8PGAdVpesX4AlpOqdPPKM3T/2LuiPaNkeiT48bzeHZeYfkZTDz5ajZLn2uYu52deffUK/9ttJHk3V1AVxBTZJCRuK34dKBILhhr8CdRhbBvC5lq4Q+HXScduw7MHX0LxerN5lWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734441622; c=relaxed/simple;
	bh=FstVX3CFTj+42MS9laftTg04okRbVpQOvmKeh9DZMHs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mtl3HsLthbd1OND52p53DXZ+R6SRtR+wnIHU2xoL+6nHnTl91tPWQBJhgFSEeTgg7DKv7vSOtSKI/P5geeEBkO5BIm9cca4fvTYCT7wxx+LzluES2+vLOSEvulaTt80BdnN45mIcjYegV1C/65a/QBelTtxwawICaoWFMnWisd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aum/Q2Ga; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-54026562221so5414599e87.1
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 05:20:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734441617; x=1735046417; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FstVX3CFTj+42MS9laftTg04okRbVpQOvmKeh9DZMHs=;
        b=aum/Q2GabCEp8caD6+BZj7wsXbd9ogxvuqdfX5XRTYVEogWrgltPUWBlkPbgJZO7E+
         kv+hO2zZ5DVdwC+wy6NqY8SAWgmzVxx82p/0kNQh7IKmSmb4GthrXalunC/dBQUy7Kpj
         xtaN8gXEvHhsNlVbu28B5sSxsbCSViQTf1kif0xDBIVOFMzs+fQ5viFDk0GZi1nIFR5B
         ez0ZVYdQEBIZ+w2vYjeilksmrj0M+M0iRuVvfTOBnSCnSwwhB/xk93JaB4I5oDzQ/rpK
         bkZ6JW0YBLyG8IY7jtohI7JDGfdzcUi1cs/3HI1EVbu5pIwIDMuJNOv1eMAa+qZnGly1
         Wzbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734441617; x=1735046417;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FstVX3CFTj+42MS9laftTg04okRbVpQOvmKeh9DZMHs=;
        b=oNtt3osmz5iLLdmPPk8f/P7ZqB4hyWG/CgoggvvLqJQJoHkdvl9YRTt9weYJc9zvDh
         3LhBbATnkkZR5bu5RHMSDyjxzjupodCFkx+g1rAhT1BbVAlO/wM73qZVaDUEu2JSSkoV
         Abyr05pQoCJoMQMYUTcsjGjg1tsmOJA9W2QTKl5ymQJOOSoI/tZ2Jh95M8PZK+yx7LzO
         A4T9SLhjQbQ7WtKLOr5YlJ+aty1wCYTSBLnPvMltwBeldRERtvKAg7yjmT+JqynWWDN8
         mS9t6W08egJyCee0rWJt9i+cJRdxskost9K/I1Etj8EIeDU02PoI2v19BCvjZMUYQk/4
         i4kA==
X-Gm-Message-State: AOJu0YwJRE4T30jDCdBk+A2SFKWY1/tD0W79+nlBFYSZoVs/mr5pMybx
	gn/Xj2JWdHQuTPrq++8kY8NtCYi3ta9FsYoP9va9D0/223mzGBE/l+71Fwl0HOliD4qrtUyQk18
	ESN1b+1IiT/8nyNfBBw+A7xyuJWY=
X-Gm-Gg: ASbGncvHUWulZNpt+nNcTnUgr4P6EdA9KmXK72PmE2begDAkBLEC24uFOdU7nxCcLBV
	Ab5+F1MPTq9tY8swW/uIiQ/PF0Hsr1vIzBbyI7gNwsTAbMoO/WBkak9ymDMujCdoNnexX
X-Google-Smtp-Source: AGHT+IFFx90kPbpMheYOE1177/QLK8nVCI4FlXeGlR99M7gIZTPd37rucl/NQo0g2oJIrbiMhA6SNFXFscAA/m2smM4=
X-Received: by 2002:ac2:4e04:0:b0:540:21d6:d681 with SMTP id
 2adb3069b0e04-54090555494mr4984098e87.19.1734441616935; Tue, 17 Dec 2024
 05:20:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241101135406.47836-1-festevam@gmail.com> <173073495749.210192.9138587910771237679.robh@kernel.org>
In-Reply-To: <173073495749.210192.9138587910771237679.robh@kernel.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 17 Dec 2024 10:20:05 -0300
Message-ID: <CAOMZO5BVLpQecZH4vvmRi=KfZ=MvCgUQ_tUKjvUzMGO=wTU-MA@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: lcdif: Document a imx6sx-lcdif fallback
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, shawnguo@kernel.org, imx@lists.linux.dev, 
	conor+dt@kernel.org, Fabio Estevam <festevam@denx.de>, 
	linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de, 
	krzk+dt@kernel.org, a.fatoum@pengutronix.de, dri-devel@lists.freedesktop.org, 
	andreas@kemnade.info, marex@denx.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Rob,

On Mon, Nov 4, 2024 at 12:42=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org>=
 wrote:
>
>
> On Fri, 01 Nov 2024 10:54:04 -0300, Fabio Estevam wrote:
> > From: Fabio Estevam <festevam@denx.de>
> >
> > imx6sx.dtsi has the following lcdif entries:
> >
> > compatible =3D "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";
> >
> > This causes the following dt-schema warning:
> >
> > ['fsl,imx6sx-lcdif', 'fsl,imx28-lcdif'] is too long
> >
> > To keep DT compatibility, document 'fsl,imx28-lcdif' as a possible
> > 'fsl,imx6sx-lcdif' fallback.
> >
> > Signed-off-by: Fabio Estevam <festevam@denx.de>

> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Can you apply 1/3 and 2/3?

