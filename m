Return-Path: <devicetree+bounces-126157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE869E07F2
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 17:07:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46776172E8E
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 15:21:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E22520C01B;
	Mon,  2 Dec 2024 15:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0MKbtU0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69653205AD3
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 15:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733152429; cv=none; b=mDdCfBeAGJtSdMhOyYjbZTYBItIUJC/jYfYiUrEXBBjqveINtEF+n1hmlf2AeirczPjeY1KWQsyoS23dd/FnM1+0a3tRjvyBdFARMQ0F68Jg76QXhcxBPdUvQR0cQE+c/piD0TduLvMTKu4y/tWooJLlkmZ9KO/4g6i6bt5ijZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733152429; c=relaxed/simple;
	bh=igYKeRNvpb65N5+r50esiOOVXM2C3dRuZfCzp51KjJw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S1RsuAQgAuu/WJJUXBFR7J7LJyBVn49/rh3OxUIPB4CrFPYqLVkU5Lllz71yvuUmJixXLfCHBbdNOvHbCutkSPOyeJugpCV84s8wopfnnCiSX/f1jSDTeEF4kqmWYPQsprAdgbn3kx2bOO0KYliREK8aPApTBsZKhFpuaOOYbrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0MKbtU0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3D20C4CED1
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 15:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733152428;
	bh=igYKeRNvpb65N5+r50esiOOVXM2C3dRuZfCzp51KjJw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=a0MKbtU0N4RUupCLhDFJGlqozpVSur/xf9vOX9799Udqo8EmBupZa3y9UbdY0lcIF
	 0mx23TiNmoWm7uqJpUXsUfCDZfRP7rh3oP2q3ZySt6jyE1wcRfli2n7/we3NNkS5XY
	 kgEkXbGKypkV2i3dfc62AT6pJS7CBMrZ6px34ZH2YKIdio5knatVAKKDuGbyA2q7c3
	 ueKfxvYyvExMEPt3b45GXsYPV8DYR0Li4JfVgZ64QZ+euIixyBz7sgf/9/DJFo8WWl
	 U+KHFQM+SRHCD5GDggpv4k/7PGWOzlUtYV48TUtL6fMlIqnVFC2ki/vfJblHzajuQk
	 F6Q8zu+ggKVwg==
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-6ef824f40dbso13539157b3.2
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 07:13:48 -0800 (PST)
X-Gm-Message-State: AOJu0YxpgUpxEORBBZcYIFcMIGhGv2crWLnBjcvv5fatzNQGOdNY8TPq
	ZhV/HYbg0hsWDo8UmHTugzgJL0sjclCkgjj1I4204KIU/Y98NnMMWosyC3MuzvDBFGdFiLhSZ/8
	Yu7SuF6v17uYDNDpDdaeYEazjVw==
X-Google-Smtp-Source: AGHT+IEt8rXRAVGVhrqlEJCQmLl/bbwc7Md81fOn/G+uJpWyevaVDxapmtCTlICIpexoAhQdf9q7XpiRiAF8zfQpAdk=
X-Received: by 2002:a05:6902:f83:b0:e39:422c:c8fa with SMTP id
 3f1490d57ef6-e395b94b0f8mr21367192276.32.1733152428166; Mon, 02 Dec 2024
 07:13:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <f97dc442-b306-487a-9699-f38544bd7219@de.bosch.com> <CAL_Jsq+_VRqG1eMsfZuvftpQ8Eivwsqb0L2gvi4m3pQvdGwXRg@mail.gmail.com>
In-Reply-To: <CAL_Jsq+_VRqG1eMsfZuvftpQ8Eivwsqb0L2gvi4m3pQvdGwXRg@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 2 Dec 2024 09:13:36 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLAG1G3nUXifWPFexs40iSOZSXBC-bE86oF6MtnUUYhGg@mail.gmail.com>
Message-ID: <CAL_JsqLAG1G3nUXifWPFexs40iSOZSXBC-bE86oF6MtnUUYhGg@mail.gmail.com>
Subject: Re: of_unittest: Missing #address & #size-cells warning
To: Dirk Behme <dirk.behme@de.bosch.com>
Cc: devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 2, 2024 at 8:38=E2=80=AFAM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Nov 28, 2024 at 1:04=E2=80=AFAM Dirk Behme <dirk.behme@de.bosch.c=
om> wrote:
> >
> > Hi,
> >
> > on recent Linus' master from today [1] I'm getting [2] running the
> > of_unittests.
> >
> > Is this known and/or is there somewhere a fix?
>
> No and no. Thanks for the report, I'll work on a fix today.

Actually, the fix for this does already exist[1], but was needed for
other reasons. So I'll apply it.

Rob

[1] https://lore.kernel.org/all/20241202131522.142268-6-herve.codina@bootli=
n.com/

