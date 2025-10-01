Return-Path: <devicetree+bounces-223046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D7567BB08DF
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 15:47:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9155C4A4541
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 13:47:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 658112FC009;
	Wed,  1 Oct 2025 13:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJpWLnZU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411B32FBE14
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 13:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759326421; cv=none; b=TCpL53wkDXdvI8gu+OSOMcGV5OFlZN2ukzVmWmQntCw8vjkeyzmo+L4hrXQHqUsERHvyh/Qafm30XHzVvAKdHi0Q5xGKESsb6n6Xeoko9nNB3lxPTI0nHLUFqP1MR+3dDpz6vAeawc9rmFo/iSLJxhgnLxuaG5XnzORKnxwQWWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759326421; c=relaxed/simple;
	bh=v+ji9plO4OzWyJJ2i6Oh5BS7dDU72AHEz/U7GHRK0w4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kbqAQWi+cPPQNZxXdibm653NzBiBc2B1/QJnj5FjjuPh80BlEYb3NxwdsI7QqO4WbsKzLmMEFq/obrmtUrQg4I+lEw9wm7CjiEl8zoG0cr7PfWx7DoKsfqtuC+cgwndAu4o1bRJSFnq2rF+TjuTrnE7yP4Q2zgsiuAG5gzrxIoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJpWLnZU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEFBCC19425
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 13:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759326420;
	bh=v+ji9plO4OzWyJJ2i6Oh5BS7dDU72AHEz/U7GHRK0w4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=PJpWLnZUs/Qd6k5o8UqglFabLM6IU77E3dnUU0B3fJveBa3kcBTimv8qg/OuGM/r3
	 MzZXEovqv1QlqX8V48teQDlIg8f5W3+vDCFQpv0dMwF8j4RxFQCMR1pEbi7ENAw7QW
	 9663pSH5QDFqg7Lt11Td7creO9rr3+bn4/Sx5FVpafRfIE8Ok7ZLKdpwUIuR1mpAC7
	 qA7wZR202TEx7wpSv0AmNbjqqpGNyYkjE9HyhWAhpLOTRFiTIdat3IN1rBEUXVe/HX
	 twLTH03nBqgJ2yxw9mOBhKY5zNJzwRt6yKhzBzJaFM1BmjLKLLp966txK1Qc24+29f
	 17fWRMwzYPRFQ==
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b3d5088259eso605893566b.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 06:47:00 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXoPOxwxcPl/l+tBP3TnSv3h2uYk2DfE2pVMM5v6l3s8Px8vXGlZnWXI4RoSFyB9qdfqxKYvy9sLm3T@vger.kernel.org
X-Gm-Message-State: AOJu0YzKhbQgyJVJRPQSV/Zf7+JClDVpbGi7GvEV9xvCovceclhpnODd
	Q0vrerC3hJASSor5K1I+ujpAd92mAb4jB/CE6EZfqFphwkkSgpN05iSDpPqSJMcrofs7MQE0roh
	R6NipGcZjeQhNc3alYYP7zL0U1wHvIw==
X-Google-Smtp-Source: AGHT+IG9ni4sY2zl429plZ6qIAweLfDCEUNWwBAiRJ2N77L+a8Jj28/qR+F80g2b2zgIZ5GWBfDitVWfYI5X8+Mgc2M=
X-Received: by 2002:a17:907:26c9:b0:b40:2873:a61a with SMTP id
 a640c23a62f3a-b46e0dad64emr408799166b.6.1759326419310; Wed, 01 Oct 2025
 06:46:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250929072306.5634-2-wsa+renesas@sang-engineering.com> <20251001125149.GA1122744-robh@kernel.org>
In-Reply-To: <20251001125149.GA1122744-robh@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Wed, 1 Oct 2025 08:46:47 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+Rnmv26tjOednFuQkLf0hwfMU1xihLT+D6aym0SigNng@mail.gmail.com>
X-Gm-Features: AS18NWD2sQKDdAvC2H5URHdQH3iLfTDYG6Pm_keCh6ddLiDqUsFxVxjTYOqR5Fg
Message-ID: <CAL_Jsq+Rnmv26tjOednFuQkLf0hwfMU1xihLT+D6aym0SigNng@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mfd: dlg,da9063: allow 'interrupts-extended' property
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, 
	Support Opensource <support.opensource@diasemi.com>, Lee Jones <lee@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Steve Twiss <stwiss.opensource@diasemi.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 1, 2025 at 7:51=E2=80=AFAM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Sep 29, 2025 at 09:20:47AM +0200, Wolfram Sang wrote:
> > If nested, DT schema cannot extend required 'interrupts' to include
> > 'interrupts-extended'. It needs to be added manually. Fixes:
> >
> > arch/arm/boot/dts/renesas/r8a7791-koelsch.dtb: pmic@58 (dlg,da9063): 'i=
nterrupts' is a required property
> >       from schema $id: http://devicetree.org/schemas/mfd/dlg,da9063.yam=
l#
> >
> > Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> > ---
> >
> > Copied this solution 1:1 from:
> >   Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml
> >
> >  Documentation/devicetree/bindings/mfd/dlg,da9063.yaml | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/mfd/dlg,da9063.yaml b/Do=
cumentation/devicetree/bindings/mfd/dlg,da9063.yaml
> > index 51612dc22748..4af5fcb856c7 100644
> > --- a/Documentation/devicetree/bindings/mfd/dlg,da9063.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/dlg,da9063.yaml
> > @@ -110,10 +110,16 @@ allOf:
> >              "^buck[1-4]$": false
> >          thermal: false
> >        required:
> > -        - interrupts
> >          - interrupt-controller
> >          - '#interrupt-cells'
> >
> > +      # oneOf is required, because dtschema's fixups.py doesn't handle=
 this
> > +      # nesting here. Its special treatment to allow either interrupt =
property
> > +      # when only one is specified in the binding works at the top lev=
el only.
>
> The solution is to fix dtschema. I'll take a look at it.

Now fixed in 'main' branch. There's a handful of other cases fixed
too. Had nothing to do with nesting as most cases were ones where
'interrupts' was only defined in a referenced schema, but then
required in the outer schema.

Rob

