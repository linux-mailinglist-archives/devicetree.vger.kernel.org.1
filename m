Return-Path: <devicetree+bounces-140908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C3DA1C391
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 14:11:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D089A1887754
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 13:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAAB12080D7;
	Sat, 25 Jan 2025 13:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="DBQjKLH0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9022080C0
	for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 13:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737810698; cv=none; b=BxCoO1g21JNJtGvYIbEtsgJYnIny6vF5U3DK4WyZA00hTxfoPXSYcY/zK/qdlbUZp4guY0xpn+uZKvOzcQyJ4dUX5CLfY69zAWG3LzoMKaIOuCzkNUqarEMXWTibe6IXBhlinnMgqW0fIyVe+YuJHaM4BMi1CEaQyOEv7jXG//A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737810698; c=relaxed/simple;
	bh=a/mPoBkduWt7AZhC7tlzOK5+E8d9jn6bQf5Fqn4529Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WRj0O63YABynJbc0JAmX+uMIUX3yFqWChAusbu7jv4KMJQ2ZsNV8MvwtGqOMVX+nTaGy6OixzUNmLu8XNlTUMOk4Nk8YgF4MJaOipeeqW7UKfot6qIN76y+6/pbHxwhnNbe9h1Gmgi7xAPlOmPeQ0a4Y1EtBX4Xqy/9jgmhREKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=DBQjKLH0; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e5773c5901aso6675366276.1
        for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 05:11:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1737810696; x=1738415496; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i9w/182ECZVPmRavMFGQ5pT+3mapjwFmkPCGbm41FWo=;
        b=DBQjKLH0dSsl4EHhG2AoO/ZhkX4OYKM9kYhzV+FrisORFH3Ro6q1bV9hKrn2eUvF+m
         x9OaGcRnsrIMU2yI1Oxr3Qfqn5Uco5Lnf8VZzQMQyT+FvrHRWLrYxsSCvz0iKeSDb5kX
         Lf/gpNb2+UWKipWkyr+xMWXVCuejF1m+5JM30=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737810696; x=1738415496;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i9w/182ECZVPmRavMFGQ5pT+3mapjwFmkPCGbm41FWo=;
        b=JWSUf0Bm8tvYRitiCSCQGGMAFVOi+NOtCrRUc7zO5+GZkT6rmccR1bUSrkOqfmIMDm
         /W8EAqfalWs26Fkx+VaWKF5TetJPaiGFRiyTtD8VmUY+4heQNWdqxfNUOioU8BbPgBK9
         gtxIcOr3xWQtCnPqsJvHrLHRuX1Goqtwk7JCQitrEVVdIzDaOscvaXNCBwgPr92fvo3z
         aM02klW4XPe7a742OJ4zD6JtjbuHLC1yYaM0/TSprb2HXyX6SfS9A2yQEFxD93L5yiQT
         gCmwRESjjhVUvmks74jf13Sm8xIjGsDflcN1qtW88OzUN0rYb/acGEaWhojYKvE6jXW6
         SbtA==
X-Forwarded-Encrypted: i=1; AJvYcCWsRafuAybnswM9akkGiOcO/xzW3UGZJv1Eb8eSpGLTR8RHqXSxNFy8YyT7DuwsCgd2oMrWfoRIikLL@vger.kernel.org
X-Gm-Message-State: AOJu0YzlffyYHaOoiWUpdQX9t+2fTAIIJVlxiCgA7TpjPOvjZid9fhuV
	0Xtp2wg5UyxXK/WAJ2ixJLK40OW01IE9kEfcunJ0VtYScEK//IietawrZ+62HqQXTqFVS1RK/wn
	Mi2LZ3ciaUgY8+M7eUL+JcS//tmiZsIvrtWvrFQ==
X-Gm-Gg: ASbGncu0V2Q6fJ4CNK8Ci+6FNWfeJ52+t23eQSRLsdE1EinD8qRptZT+unf4TtlA64W
	mpi9y+DVBhIK0UhFlumx30EXMmAv9CvGcVnGXWEsCFo4XhialAXy1HDnv/j5t
X-Google-Smtp-Source: AGHT+IFVT+av7DVOjmbZvLFF9xaahV6NF4A2ll6W9sj4bZrkAo2BEsKYGC6Vyjk/Y1UoxEutVGm/TOioJhjYJCJ3h5c=
X-Received: by 2002:a05:690c:6612:b0:6ea:6644:ddf8 with SMTP id
 00721157ae682-6f75829ae26mr50723297b3.0.1737810696019; Sat, 25 Jan 2025
 05:11:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
 <e2de94ab-82ea-4d36-a9dc-75f6891d8927@kernel.org> <PAXPR04MB8459537D7D2A49221D0E890D88E32@PAXPR04MB8459.eurprd04.prod.outlook.com>
In-Reply-To: <PAXPR04MB8459537D7D2A49221D0E890D88E32@PAXPR04MB8459.eurprd04.prod.outlook.com>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Sat, 25 Jan 2025 14:11:25 +0100
X-Gm-Features: AWEUYZmjhh81tIBZTP5C0Ax6XsZDjPG7rmhj0pU30KKvTD1HwU7fFDBX6Eu8t4k
Message-ID: <CABGWkvoKV6dv1sHXJ1AZz7byp2ibh5uzLx9knF01HrcJLJyzCg@mail.gmail.com>
Subject: Re: [PATCH v9 00/23] Support spread spectrum clocking for i.MX8M PLLs
To: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abelvesa@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-amarula@amarulasolutions.com" <linux-amarula@amarulasolutions.com>, Conor Dooley <conor+dt@kernel.org>, 
	Dan Carpenter <dan.carpenter@linaro.org>, Fabio Estevam <festevam@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "imx@lists.linux.dev" <imx@lists.linux.dev>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Peng and Abel,

On Sat, Jan 25, 2025 at 12:47=E2=80=AFAM Peng Fan <peng.fan@nxp.com> wrote:
>
> > Subject: Re: [PATCH v9 00/23] Support spread spectrum clocking for
> > i.MX8M PLLs
> >
> > On 18/01/2025 13:39, Dario Binacchi wrote:
> > > The series adds support for spread spectrum clocking for
> > i.MX8M{M,N,P}
> > > PLLs (audio, video and DRAM). It has been tested for the video PLL on
> > > boards using i.MX8MN and i.MX8MP.
> > >
> > > Changes in v9:
> > > - Add 'Reviewed-by' tag of Peng Fan for imx8mn platform patches
> > > - Fix building warning raised by the kernel test robot for patch
> > >   v8, 11/18 clk: imx: add support for i.MX8MN anatop clock driver
> > > - Add patches for imx8m{m,p} platforms:
> > >   - 23/23 clk: imx8mm: support spread spectrum clock generation
> > >   - 22/23 clk: imx: add support for i.MX8MM anatop clock driver
> > >   - 21/23 clk: imx8mp: support spread spectrum clock generation
> > >   - 20/23 clk: imx8mp: rename ccm_base to base
> > >   - 19/23 clk: imx: add support for i.MX8MP anatop clock driver
> > I responded in particular patch, but let's respond for formality to cov=
er
> > letter as well.
>
> Sorry to come into the binding part at so late stage. I just
> got a request for i.MX95 SCMI CLK a few days ago which is impossible
> for vendor specific properties.
>
> But I am not sure "assigned-clock-sscs" is welcomed by maintainers.
> Please also help to check whether this is usable for your patches
> to enable SSC for i.MX8M PLL.
>
> >
> > The bindings here might get obsolete already with work:
> > https://github.com/devicetree-org/dt-schema/pull/154
>
> Not intend to waste to your effort.
> I also replied in the PR to express my apologize.

Please let me know clearly how you intend to proceed with this
series in light of Peng's series and PR. My team and I, along
with my company, have been working on this series for three months
now. We do not intend to stop, but we are requesting feedback from
the maintainer on the quality of the work and guidance on how to
address the next steps.

Thanks and regards,
Dario

>
> Thanks,
> Peng.
>
> >
> > Best regards,
> > Krzysztof



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

