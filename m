Return-Path: <devicetree+bounces-87068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 42AC293877C
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 04:14:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D767B1F2112C
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 02:14:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B964410A0C;
	Mon, 22 Jul 2024 02:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="T3po7Ka4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1422CA64
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 02:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721614465; cv=none; b=k1sT/DxFekbnc0gwTmFIuYfM9R3m10j+ZG5WdRCUwQ2pu1A7RCn7cpFxcy3vqhj2TNqgntlRBC7bGmY0s8lvJ7co3DswVfx0oKBrPuidyuipbm/z+VPI5VQBGplXeNfRro4awC8CGDW0/XyKa1RuwfSA48+gxW7DXiV9d1xuqpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721614465; c=relaxed/simple;
	bh=AJiaG+8x6Qhj7Wc27cG9Bf54PaCAqk9PdZsLZCJ5YBI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JIOmdQEPV6skAU6JyMAEtLHZagb3NqesOl6sQOtQQhTp5C1C4UFy7Oaj3Tor5PmKYE0o+PSGOKRUzpdrvrVKQXFbWKZwt+zmNSjNLuDsH6cTj1cb+pcnLLcFdpJQHAfr4ex+kondMbYUfXm2xylCO+eU5QA0SyQJMell39A9QXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=T3po7Ka4; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-250ca14422aso2085216fac.0
        for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 19:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1721614462; x=1722219262; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kl/5HdiGOfFOfo04ZJqI2kOtj4nNd83dcFbNpwK/70I=;
        b=T3po7Ka4FkuG9TASaQl7cSeDfd107oKKu8ed8bpaeAqDuDaIrkcs1APMqclS/AZRss
         tCm6mrCIHLf4sWIw5mYAINM63oSbbo6wshaK22uigiY/ClLyVMhC8oSQJz4671zTQT68
         eDJCAfNCqyJbY0FXvLkGnyA8/XaDur5lS8UV/TTD7pu6OObld3DoLTqWIFHuCzM84fg8
         BYm0LBRnjzycpEfq29uGlYxZl9eQZCiSOLWHnIRJHY0qlfArj6zw7p4tYXEKobYKxn2T
         qkH8g4oX9RkZrHqhMakaFkeqV3UTwLdhHJO2NWpQNJLb23VKpCC6/oO0YpzIdvy+WJOx
         NnZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721614462; x=1722219262;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kl/5HdiGOfFOfo04ZJqI2kOtj4nNd83dcFbNpwK/70I=;
        b=kArQq2TEE/rWduDIE1jXsyN8peaVwmp6Pp2IuhD1jAcw8Dqx6kWAxwYRgGhgqohdfV
         fNk8cy67hxr6BP5Vqv3uBGhIg0sUYCtFO4CiQnkUeSdd+kWEZmk+8Dwb9cRfoKuUrCdR
         rx3qcmcOVQDbvgybeQNO1GIJ8nzxWdOkJYvoCw8i6jAZun/QS48HKmyd9mQDP4Bbjoe7
         BohPoHP/FlysGNG6rl12cbVYpGpsC9ctTzyK/iMEXhP0TvEEu3+Jv/KikT8rlUs9NlOr
         ZeOBRBf7/50sAJANmqv44JXUFao2e3CHAaB3KYB9JSKkFc2kQpWfMbsx1pnmIEditq30
         hkAg==
X-Forwarded-Encrypted: i=1; AJvYcCUfoEKD9zhj52VEtQnRFmfF6E9G0LuynJWVL2mJDEqYbcRjoo+qGSTXwbLBqMlDhKJ5WtT9Vw2WKbnQDscsMxrbH5VpfTsr/J17Iw==
X-Gm-Message-State: AOJu0Yw0bqw/sXVywy3+BK4oFOVRxtNEN9nYFoIoEzHn0e5tZD5WH5dn
	OzSw+ZpSATRz6xQG1O8dF4lLq/iNZ4jUm62H6Skqr56EIlQxJDm+mYUBf+bGkg/2OQt+GHL52eZ
	nlPFv2GSvIsaUEEKXtg/3THB0xJ2zKU0gopiXVw==
X-Google-Smtp-Source: AGHT+IHnB9IHVe+JUhN7+3oCZIPRki3xbro2mIHQOGvKQ+6goU1pu1Q9XgV6wLqCAmGxdb7cSYKKnOMLQd5vLv7Sn5A=
X-Received: by 2002:a05:6871:b28:b0:261:10b7:8c48 with SMTP id
 586e51a60fabf-2638df8951dmr5202348fac.27.1721614461869; Sun, 21 Jul 2024
 19:14:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240712083850.4242-1-yongxuan.wang@sifive.com>
 <20240712083850.4242-3-yongxuan.wang@sifive.com> <727b966a-a8c4-4021-acf6-3c031ccd843a@sifive.com>
 <CAMWQL2g-peSYJQaxeJtyOzGdEmDQ6cnkRBdFQvLr2NQA1+mv2g@mail.gmail.com> <20240719-flatten-elixir-d4476977ab95@spud>
In-Reply-To: <20240719-flatten-elixir-d4476977ab95@spud>
From: Yong-Xuan Wang <yongxuan.wang@sifive.com>
Date: Mon, 22 Jul 2024 10:14:11 +0800
Message-ID: <CAMWQL2iWsxLJZZ3H59csJ376Hdtq+ZKjD92BtM9zhdXm+fh2=A@mail.gmail.com>
Subject: Re: [PATCH v7 2/4] dt-bindings: riscv: Add Svade and Svadu Entries
To: Conor Dooley <conor@kernel.org>
Cc: Samuel Holland <samuel.holland@sifive.com>, greentime.hu@sifive.com, 
	vincent.chen@sifive.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	kvm-riscv@lists.infradead.org, kvm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Conor,

On Fri, Jul 19, 2024 at 9:17=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Fri, Jul 19, 2024 at 02:58:59PM +0800, Yong-Xuan Wang wrote:
> > Hi Samuel,
> >
> > On Fri, Jul 19, 2024 at 7:38=E2=80=AFAM Samuel Holland
> > <samuel.holland@sifive.com> wrote:
> > >
> > > On 2024-07-12 3:38 AM, Yong-Xuan Wang wrote:
> > > > Add entries for the Svade and Svadu extensions to the riscv,isa-ext=
ensions
> > > > property.
> > > >
> > > > Signed-off-by: Yong-Xuan Wang <yongxuan.wang@sifive.com>
> > > > ---
> > > >  .../devicetree/bindings/riscv/extensions.yaml | 28 +++++++++++++++=
++++
> > > >  1 file changed, 28 insertions(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/riscv/extensions.yam=
l b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > > index 468c646247aa..e91a6f4ede38 100644
> > > > --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > > +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > > > @@ -153,6 +153,34 @@ properties:
> > > >              ratified at commit 3f9ed34 ("Add ability to manually t=
rigger
> > > >              workflow. (#2)") of riscv-time-compare.
> > > >
> > > > +        - const: svade
> > > > +          description: |
> > > > +            The standard Svade supervisor-level extension for SW-m=
anaged PTE A/D
> > > > +            bit updates as ratified in the 20240213 version of the=
 privileged
> > > > +            ISA specification.
> > > > +
> > > > +            Both Svade and Svadu extensions control the hardware b=
ehavior when
> > > > +            the PTE A/D bits need to be set. The default behavior =
for the four
> > > > +            possible combinations of these extensions in the devic=
e tree are:
> > > > +            1) Neither Svade nor Svadu present in DT =3D> It is te=
chnically
> > > > +               unknown whether the platform uses Svade or Svadu. S=
upervisor
> > > > +               software should be prepared to handle either hardwa=
re updating
> > > > +               of the PTE A/D bits or page faults when they need u=
pdated.
> > > > +            2) Only Svade present in DT =3D> Supervisor must assum=
e Svade to be
> > > > +               always enabled.
> > > > +            3) Only Svadu present in DT =3D> Supervisor must assum=
e Svadu to be
> > > > +               always enabled.
> > > > +            4) Both Svade and Svadu present in DT =3D> Supervisor =
must assume
> > > > +               Svadu turned-off at boot time. To use Svadu, superv=
isor must
> > > > +               explicitly enable it using the SBI FWFT extension.
> > > > +
> > > > +        - const: svadu
> > > > +          description: |
> > > > +            The standard Svadu supervisor-level extension for hard=
ware updating
> > > > +            of PTE A/D bits as ratified at commit c1abccf ("Merge =
pull request
> > > > +            #25 from ved-rivos/ratified") of riscv-svadu. Please r=
efer to Svade
> > >
> > > Should we be referencing the archived riscv-svadu repository now that=
 Svadu has
> > > been merged to the main privileged ISA manual? Either way:
> > >
> > > Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
> > >
> >
> > Yes, this commit is from the archived riscv-svadu repo. Or should I upd=
ate it to
> > "commit c1abccf ("Merge pull request  #25 from ved-rivos/ratified") of
> > riscvarchive/riscv-svadu."?
>
> I think Samuel was saying that we should use the commit where it was
> merged into riscv-isa-manual instead.

Got it. I will update the description in the next version. Thank you!

