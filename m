Return-Path: <devicetree+bounces-215566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 959A6B51DE2
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 18:36:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D3C781C26FB9
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 16:37:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D23D2262FD4;
	Wed, 10 Sep 2025 16:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k+/m851E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2023A26E712
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 16:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757522210; cv=none; b=YeFpABHZ3hP5undq6DF9XMF4Y5+CGG01K8QEzO0W5FWW/DgFDW/1EJqHzL0LU2LLte4OFnxLnB6qxjpFjaqDuGvgkISWqB4fhw5XIypmBLYOUEzbaftEuK6mHoWasaaihiU/TFHdhsl0vYBkpl3PDhtdw1EKmZNaoXDu8QQ3Ezs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757522210; c=relaxed/simple;
	bh=KJ6uNw0HKk0H9/K2jkc1j6Gr8BtOWS9xg6hVUrGi3EU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dirFh4uui0vd6hQFxy9lKo3HGKoo8dLGcJFF+/eG5RXpMbTu0deVAz1N4B9iJRB9HkI56Cn3n1m02ZU0olD5OWmETq/CXwKUPZpk4rLe8Fy4UFZOFe0JD+kuIi41UpoRJMS3n0TPzZtFa/bb5av27DfUklwEyTrhqbniyiV5hDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k+/m851E; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-336cdca64e6so49100411fa.0
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 09:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757522206; x=1758127006; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KJ6uNw0HKk0H9/K2jkc1j6Gr8BtOWS9xg6hVUrGi3EU=;
        b=k+/m851EYDKZGxGGMJEASjFJUGSU3z+HgDgIxQxLqiUmbU74doszc/wx9aZ8HYFfKH
         6gh+RnN04ErS8pUcXSIPSXmXiL6Tbk396I8c3XKPJzksGfFpA40lfrd7KB+20wT8+ut2
         wfjD723rQuA6DunWsDPnhpZ5LqmclZIAEuyMGWzPggJPpAkqiYsJTIeMUH/CbEL7FwRA
         xcnN+CUtE5oVD0RJ3PerXPLYerNY+NYOXcvtd1cZJLWTUfdargQPHYcpYZxZqTOjNSfZ
         vya6CffKq8jH2kC4gxosLUGQ8tLy8VEE/CJlDrNy/2sesJ69ioPd98LSifEZxOsHcDjA
         65Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757522206; x=1758127006;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KJ6uNw0HKk0H9/K2jkc1j6Gr8BtOWS9xg6hVUrGi3EU=;
        b=Z7nblDmOYwrnvebBfmKxL/om5TP68IOOxLTLb01YoQEmI7DjgrJeoc2+dDaC544U9X
         18IDj8U62WknNaITceFaDYsF+LCePKBRcW0aYw6l+oAYwATvn6atOUo7T6SkLw0ozwPz
         jl77yq0yekEHDLYPdfepY24yeCtjGtgwrM6PW+MsK5v8cTTGAmBH4mwMhVk00XGYVaBZ
         QBl+xLjEN80aLXgCMb31XeQ+e4li1Z6jfIt5tv41q3yu0KP6n5O0vnxtg/4BDblPsdON
         u0v8PNg+dorrvshS522H+GblbsdH1Z+Hx4Zk3egwECxMx7M89bYtXSS91btClnOkTk2U
         YQDg==
X-Forwarded-Encrypted: i=1; AJvYcCWyqxakT/VVvbr8oL+Uoxo/eOD/EHJnMEfSf9/PaOIs//YR3eHISonkr8rgp2C+lHPxcFEzzFxzYjWy@vger.kernel.org
X-Gm-Message-State: AOJu0YzK+m9LPp1LHCTScVoJmVURGpiJlA1pWbNClFGUly5i823IBDqR
	8/n82g/KH3BPpJsAfN/aJXUh4IavWOBRLHVhp6vl26P9th6o1dj8PhkoCp+rgx7DzMXw73NtRcf
	1BJ3qtGWvW2lI//WOhb04k/j9a/5qOOo=
X-Gm-Gg: ASbGncsF2FF2EjLMKbhmEWUO3nt41iW3FTmwLQ3uiICOYz2OD+pCb3pFFjFwjegq/E0
	cxudTxwv63lt7rLpVKoFE9//B1dvwIBFIEYQjcuhDaalY34z4ppKqYwG1kIs9Ew8kh9sBHkN1FC
	QYovZcO2hsR1ERL+iGCP+F0Qt4+7VFwAqlkzHuGk9gEZpTMe5uhWeq7qbCDHqe6ukWSa5jTso6A
	EJBi4Mys9sfLCWxwMmHfQdrldZDNnaUOev7Ut8=
X-Google-Smtp-Source: AGHT+IFjFrlIdQsJBkbl5UrFknUtSHC2zpRAlUQjHTiQtPng500/xUyi1rm6QWi644I+fPHp7fWPkvMNF1fxWMqbWDI=
X-Received: by 2002:a05:651c:1549:b0:338:bb4:6d6f with SMTP id
 38308e7fff4ca-33b616395b3mr51779561fa.44.1757522205739; Wed, 10 Sep 2025
 09:36:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250910020525.342590-1-festevam@gmail.com> <20250910020525.342590-2-festevam@gmail.com>
 <aMGfiOZrVaFIqA2R@lizhi-Precision-Tower-5810>
In-Reply-To: <aMGfiOZrVaFIqA2R@lizhi-Precision-Tower-5810>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 10 Sep 2025 13:36:32 -0300
X-Gm-Features: Ac12FXwaCBXY8HP2XPn41wXZeHzdr74VgHu-UVfAGT6QVSQ5gGrKs0lhgzUSNzo
Message-ID: <CAOMZO5BGFAfJYFZGCStYhGoFM9-P9=LfFKSNqoTAmMQoox2nEw@mail.gmail.com>
Subject: Re: [PATCH RESEND v4 2/3] dt-bindings: lcdif: Expand the
 imx6sl/imx6sll fallbacks
To: Frank Li <Frank.li@nxp.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	imx@lists.linux.dev, kernel@pengutronix.de, 
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 10, 2025 at 12:56=E2=80=AFPM Frank Li <Frank.li@nxp.com> wrote:

> > compatible =3D "fsl,imx6sl-lcdif", "fsl,imx6sx-lcdif", "fsl,imx28-lcdif=
";
>
> Anyway, you change dts. If you change dts as
>
> compatible =3D "fsl,imx6sl-lcdif", "fsl,imx6sx-lcdif";
>
> needn't update binding here.

This was discussed in previous iterations.

The change you propose may cause regressions for other device tree
consumers, such as bootloaders, where the match may occur only aganst
"fsl,imx28-lcdif".

That's why "fsl,imx28-lcdif" fallback needs to stay.

