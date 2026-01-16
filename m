Return-Path: <devicetree+bounces-256084-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 180CCD31A0A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 14:14:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C0D130CCC66
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 13:12:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3372D23BD06;
	Fri, 16 Jan 2026 13:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jXl8HWna"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A1C225A38
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768569175; cv=pass; b=WdsP2FbrIuGVGTGMs8oiSgmRv0TVNoVLrqJRVAq2Y3YY1cJi5+CAeeY/FgCFEZOSNcJUKXELNj3kwUj4r0ucxE7B9Zigg52p3VMPV0taO9RJocfxbZvXGvGd9N+FGUeDIT1dZSObQ3R0fl9wZvSX1BAjwVhbX6MkCo9VHmsYI70=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768569175; c=relaxed/simple;
	bh=5QKkZmeT7DXJGFJhrM4fZXkVbNqAw/WPTCXP1ArbBe0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XzW/lrzN2G0yaC/YjiueBN00XHoXIqwInpaoe9n5pnMf3ze9SQFMWWdqdkxVrpDG/1G3HcNjHoJE80UF7Q1WKNPON5Z187pz+Yp76xUMN7JFsrljTSrlZSAsp4Mc/2BUjPXApAvoC6rvX6rUr5vEHeTnOEkwhnY2rLTUC6J6JmA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jXl8HWna; arc=pass smtp.client-ip=74.125.82.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-11f3a10dcbbso1945053c88.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 05:12:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768569172; cv=none;
        d=google.com; s=arc-20240605;
        b=NP19FBHbTTJREgg/BXWbIX024Qn3ADlnpcOXBPpQtU9uoFkOUZRH3XS7gKE3cd10RX
         GcIpzxve1hTixUrq2nskpIH3VWyhQUL/mEe22oAlFtTJAg4FkFTjJyCaNE0Bbcu93jxR
         jC0n0gsjP9pZDGrRJ/AdEuZ37ESgnCSFYGHvWJw6v1ltgGu4/ztJ+iURdRRrDw9OkK2L
         C79J0lprDNcgLnS93rOaumjLhCC7nXyEFZ7k7foDQacv4XL063CvbWEV33FRjVOm9r0L
         jz7pKPBkybct1ToDAhnAa+KrIewYQoqNiJE5uivWf3lyFvA8z0Uc8YMiaKXR1l0rq1HZ
         fXFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=03j7E/5lSgdBFIcHFHyLJRuwczvGgB4tG0icSZxNhK4=;
        fh=ozOjsa+cCAxQYWlvwSyY6b5oMT87eqYHqPCFBx1rFPA=;
        b=R+1gfdaSVDMxBgaiFEMVKNEoGtS2g/LQy+WhGozSmd2teUn9jVb/gaJfQu9Af0fWeh
         S9s3O5smcrK2QQC7ogQiAm49+8C+hdgVLT7SLMYx+gc7J4oHS2TVTp7jYkoE8Q5I5EoE
         PFGLFibuP1Iu3ooBFbYp/zu5RUiA4dCMOviV8isop5v5v0IWzpNX+l77zeZt4Od7PgC0
         UokrAuHAIZDmOLCybPPYJWH5de2cqwXS4/EGrzK6HfDPxmNjYdvLv4r3JOxHYwDmFzAP
         JxdyWLr0tCoC/HhcV5izdK2mXyzFnqTMn1ewG+Fr8P3HZmU5fZF05uyFimmgDH1AmMgM
         foZA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768569172; x=1769173972; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=03j7E/5lSgdBFIcHFHyLJRuwczvGgB4tG0icSZxNhK4=;
        b=jXl8HWnaZmlT6qWW+ksvr68866H+6EzuGWRhFuVHNUt6WbF78y18IXtIOvV4hfLDeF
         kesI0Mqvgwktq4SdHb8tqlc3BuLrm69ocFFlc6yZI9XMZA+8iBiqHziC/xKgmtH8STN/
         wXJga0+7GrDdPtn0njnVglpKp5/F1PQywk2/kPHvTu7BxWM64Q8QUtxgN3oNwoCs4JaM
         8toXcdTvd3EkcLYH6sS9eTexLiJmgkJ8AstVxVbYq4rXKY/moqX6yJ3UzCuTFll7MQeJ
         e3R1zdR1FUnaQlwlubXIIdsuohibnbXp6UsU9HtwlSgLiH9oWS5W3DLDE4ENCPXsZZyf
         WBfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768569172; x=1769173972;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=03j7E/5lSgdBFIcHFHyLJRuwczvGgB4tG0icSZxNhK4=;
        b=M/BDon4PbBZHNNxlJGxEUoq9e7dFKqdAGQg7cRR5R1Guh9O0RWMpgVmAQse5/1iybq
         sTveJQfEoIb1/7mg2swImnTSUZquoGqLyaJmMCDLC+bvTxZaqh/RWnkKcWJx7Au1Nc6/
         YaRXu3CCU3288qD4z/p33PebkMswQl0NUqBMPhlLtZBKXVQZOUiwK7Nf4qIm7W84KcFU
         jEruw1iGhLTk8ovcuH9IZWSt0y6KlVdol8ad/UvNpA4Ynt/h6aqWwBrWZqXG7F9UBaSr
         pnr56Z8AttU+MkCN8cyPdwcsdOI5ZVbgXWJ7kOp9Qbdxjr8EzYB8c743F5Xgv5wZS2G2
         JGPQ==
X-Forwarded-Encrypted: i=1; AJvYcCV97Yuq1QVskcYoi6Hmt7USnINCGymJEmV2IwDvOvQcnPvqK1FtZ9Rhj1xs/28WmNpJ1hZ73CTtdgFs@vger.kernel.org
X-Gm-Message-State: AOJu0YyYY4pG7jEqS/Ph7kPsPVVkEujR9LOu20UVt4kTlIm7vwuq4oCB
	dgIccndAg5QZ2g/Y3G7xndNgxClXSVmz3OVooedGutyikXfyIwFS5dFEPUyajVcVorpBTtdqTv1
	o0fuu+UzLhFjIk5BGwS0rJPKvbjg5+r0=
X-Gm-Gg: AY/fxX5TJl8lxbxsKrrMMJs9m5FVIiREi5Zz175temgptyTRqP9cAlwWt/+1RKt5j++
	Up0zG6WYIx+m2mIrjy0269mQP/PSvxMhfY6csivM+cmssQMiBem0bWZB8PemREcpyYKVjBnli8s
	J8nZYAaNlSl69lESa0QTlhQobv2Na8IX/9llbSETKNfBoGImNwCwa7ut0umWbPH8mTVl6rIKbqw
	fSWU01+RZZWA4AX4eiP1CGJe5DFkrAxMhK7qRGUxUHjzRw7xAOPIP88mPJt2yvWw40ZnSalz1wz
	jpYbe40dSXYuPYQA+RFiV9h8JfBNz4R082NbiWhuj7OEFJ5TD9vKU+72I/7koh01Wlbyk7UXhjS
	TnoLdfGKSjA==
X-Received: by 2002:a05:7022:618d:b0:11b:9386:826a with SMTP id
 a92af1059eb24-1244b37be53mr2062623c88.47.1768569171566; Fri, 16 Jan 2026
 05:12:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115-imx91_fix-v1-1-9351c3fac76a@valla.it>
 <CAEnQRZD2CvQLO2hBDbX2H8PeeNkzQmLoK6jzeF6HKw8HHa8ukg@mail.gmail.com> <aWo3PZni1Pb9T6FI@bywater>
In-Reply-To: <aWo3PZni1Pb9T6FI@bywater>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 16 Jan 2026 15:15:32 +0200
X-Gm-Features: AZwV_Qhavkf8CkCe2llxYLM2ksgSNEeosl9zOuFKwiRZDMiSYX1oM1egYm13IpQ
Message-ID: <CAEnQRZC4QVV-AmMAdQHujTtJu2Lk8MQ=J3NRAFLQ1tZAPE6tOA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx91-11x11-frdm: fix CAN transceiver gpio
To: Francesco Valla <francesco@valla.it>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 16, 2026 at 3:04=E2=80=AFPM Francesco Valla <francesco@valla.it=
> wrote:
>
> Hi Daniel,
>
> On Fri, Jan 16, 2026 at 01:40:11PM +0200, Daniel Baluta wrote:
> > On Thu, Jan 15, 2026 at 8:25=E2=80=AFPM Francesco Valla <francesco@vall=
a.it> wrote:
> > >
> > > According to the HW schematic, the CAN transceiver does not have an
> > > enable pin but a silent one. Fix the GPIO property name and polarity.
> > >
> > > Fixes: b4bf5e55899e ("arm64: dts: freescale: Add FRDM-IMX91 basic sup=
port")
> >
> > Just for clarification GPIO 23 is connected to a pin named CAN_STBY.
> > So I wonder if it isn't
> > better to use standby-gpios instead of silent-gpios?
> >
> > I am looking at FRDM-IMX91 schematic file SPF-94610_A1.pdf.
> >
> > But on the other hand we have
> >
> > static const struct can_transceiver_data tja1051_drvdata =3D {
> > =C2=BB       .flags =3D CAN_TRANSCEIVER_SILENT_PRESENT | CAN_TRANSCEIVE=
R_EN_PRESENT,
> > };
> >
> > So TJA1051 is not advertised as having a stdby flag.
>
> Regardless of the name of the net, the functionality of a standby vs a
> silent pin is very different. In this case, since the TJA1051 is
> including a silent pin (pin S in he datasheet [0]), I think it's better
> to declare it that way.
>
> In case someone adds the support for a phy-oriented listen-only mode
> (which is something I am thinking), this wouldn't break the integartion.

Makes sense.

Acked-by: Daniel Baluta <daniel.baluta@nxp.com>

