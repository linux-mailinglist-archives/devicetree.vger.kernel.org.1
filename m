Return-Path: <devicetree+bounces-254067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C8080D13AF9
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 16:32:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D9BAB30EECD7
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:16:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FD3A2E7186;
	Mon, 12 Jan 2026 15:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iDZQ830c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f46.google.com (mail-dl1-f46.google.com [74.125.82.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A3C2E7BAD
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 15:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768230996; cv=none; b=hx8VrppcFjIYl8Vz+U5o48q7NYMvdQl0C5Nex2O1ub8Pq2BmBbyX/HsryaXt0Kl5OVFrT4yHkQHtL0vu21WhOLblC6va1geZx3QL3FYYjIsU7yar8q2wztD8rB82ydXc1Wa0RlLFOB/ubtf5Wn6U7eZem6IIb150jhy5M4tQp+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768230996; c=relaxed/simple;
	bh=fZlUD5xt/Oc8vtyWy3eYw8xb/B+jFgzZv9qyjWg7ggg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=G/O3jMR5zQkzKjvhK2C4XBAloqFF4Hflh5IOv4NlrSq68M6AUBIZaBGXXkfYuAU6+wdBI4M24u9q/VGnERsqrXD0U2D7ZRCjivPdFhPXz0dnwcJnh1rrrWQX7nvad/XR96d/pzhYvD0ECFB/foZnRef6ha3WHAXYlPxvNxeFDBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iDZQ830c; arc=none smtp.client-ip=74.125.82.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f46.google.com with SMTP id a92af1059eb24-11dd2370722so1823147c88.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 07:16:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768230994; x=1768835794; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tjpZhhJ244VWi152mVXLmo02ttK8tRkSgyHzO6ob+m8=;
        b=iDZQ830cgYKMql7diZKNVFivVyfDE+fWNyVtp050VPOSJaZosweH5O92GSXU8tWZo2
         UUTNzICeS0HV1/40hLk/AalMSXzoZ1RYVC5jE6xs8PQtEWEg8JC7sQCKEGiKyod6nuC3
         Gc6D+CwasLWawWhoMgTv+JqX0NS+PWXrvc4hzFtbBRap6EJY9agdkGkbdp6Uc/uz0Ali
         tQIaqpbG6aucu5aZBQKizmCZLQCkSJukkXh1cHVwa+jG32ByDq/84/3OgP/4kKrMxQhL
         CeStmeMHM+jvIqixaTVSF/klH2FXeTbgPx6gp6s/vS0SdN62/ftZZDKIBaJgRQ+B6v6i
         p0bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768230994; x=1768835794;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tjpZhhJ244VWi152mVXLmo02ttK8tRkSgyHzO6ob+m8=;
        b=A3d0idH5cRWrcu15BCw5omAFuaPu2H8GSto22rPId724itYe9UBocrgmCp9/haQWqY
         I2IWqvKT26M997BhCdMXqGhvjEtk6yR1VxK5lI9eg3E7kxxcgCJmngVkx6UYof0VPYyg
         I5qCzSLQBdFA6WwooilYrEDCMwX/aN4fGtaRmOxCwLHT34JQMq4OdodeYqJ8EdNCR6+6
         9dnogrndIXvDUwhokY6ChvCmAXo2W8pEuD19wFdSCFDzUZ7zyDkSGarCIrKSo0RDR2F/
         R2YlmpDj679nMC43DItj6Pp07SUPbQWEJd4IOFCmPwi4C6lOKQv5FSS7AoxSFL1xaDav
         ERKg==
X-Forwarded-Encrypted: i=1; AJvYcCWJJPS6Fw7/RTfAnTZpHqBKhpEuHE3RlSUHUD7EXsq/y0nAUZWru4QBJSe+YeQIbTau03h1ejv6fdMU@vger.kernel.org
X-Gm-Message-State: AOJu0YwdXRoAn4G+bxi9TyLNcJQyCsZxo5L6n5hl+9KzYAW3LJp4c+LK
	A/y8ZYxL+hHhxFH81Njq9d5FVivL4XC1+YykLcGJOieOAN7UARBisW1QYdvC8/FoPtTkIhw8a56
	bAeSZlrZsRPfhfgAT2YAHPfvLIrTTBvQ=
X-Gm-Gg: AY/fxX6dJ/syfd8qAvQqhxU5bE2mfeHar3V9KHNYKvY7gn17bwI+Z+Z7u5dMuCPyQv7
	im+1thCy+aLTLIusM1LzxBPAnC/Mx41i1CzoVYjuwRs7CNXD7idjyg+OhlNZ12ZTZ5huh4hjr/C
	1CUG5YOKfyH14d7Z00CPTFRFCvRMAKN/Hie0BW7JO1uusU4lUxtsGF6qvScmE2B0c4U0HyTb9lp
	hN24PHefHkieE3aCCekfFDCVniWeHpnXGGwN55i1aads2IVLSh39+14NYqYl0fTjV9WH6+/H/o2
	eMEVJtCD9Fhh+9pYwfs8xV/V+fuCVYhkxXXM3zGMVwEvy7CMpfaddXdXqMoiOCvRNQ4HzLehab+
	et0SZXelERQ==
X-Google-Smtp-Source: AGHT+IFHlbgIEWud1+76aPHPsc3g08WULKUxffQ2bprxJjF72yS3WxmIzikQjlBxRi1qrqgHsYBgta6WOtv1vz8/Clg=
X-Received: by 2002:a05:7022:698b:b0:122:2f4:b24b with SMTP id
 a92af1059eb24-12202f4b38fmr14259478c88.25.1768230993994; Mon, 12 Jan 2026
 07:16:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260112135612.465325-1-daniel.baluta@nxp.com> <CAOMZO5D_YMfsPpqB4zB4iL+ENO1X31Go2CcBdK+JcmsaZ_HNNQ@mail.gmail.com>
In-Reply-To: <CAOMZO5D_YMfsPpqB4zB4iL+ENO1X31Go2CcBdK+JcmsaZ_HNNQ@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 12 Jan 2026 17:19:02 +0200
X-Gm-Features: AZwV_Qi0Oev2XLPh0w5afRLy2ZMfDu1SdsID0r_7FwML4hd7i3jYVe7anPJW1e8
Message-ID: <CAEnQRZAU7xEGtK-d-KM5e3RcW2ayASAqwZsU2VGLAzvJZwzQng@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: imx93-11x11-frdm: Add MQS audio support
To: Fabio Estevam <festevam@gmail.com>
Cc: Daniel Baluta <daniel.baluta@nxp.com>, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	kernel@pengutronix.de, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, haidong.zheng@nxp.com, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 12, 2026 at 4:38=E2=80=AFPM Fabio Estevam <festevam@gmail.com> =
wrote:
>
> On Mon, Jan 12, 2026 at 10:53=E2=80=AFAM Daniel Baluta <daniel.baluta@nxp=
.com> wrote:
>
> > +
> > +       sound-mqs {
> > +               compatible =3D "fsl,imx6sx-sdb-mqs",
> > +                            "fsl,imx-audio-mqs";
>
> Wouldn't it make more sense to use compatible =3D "fsl,imx-audio-mqs" ins=
tead?

Yes, this is a good catch. Will fix it in v3.

Discussion for future patches:

1) is it common practice to always have a more specific compatible
even if not used now.

e.g Use

compatible =3D "fsl,imx93-audio-frdm-mqs", "fsl,imx-audio-mqs";?

2) The current compatible:

compatible =3D "fsl,imx6sx-sdb-mqs",
            "fsl,imx-audio-mqs";

is already used for imx91-11x11-frdm.dts so I guess we should keep it like =
this
as this is already ABI right?

