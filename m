Return-Path: <devicetree+bounces-13328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE647DDAC3
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 02:54:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA40128182E
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 01:54:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C4EEA35;
	Wed,  1 Nov 2023 01:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="czdPojpV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8684A4E
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 01:54:22 +0000 (UTC)
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83079103;
	Tue, 31 Oct 2023 18:54:20 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-5a7afd45199so64168307b3.0;
        Tue, 31 Oct 2023 18:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698803659; x=1699408459; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+xndyojUWSZZS6wC+L3oMlDNJUSHBHtUd/985yNA14M=;
        b=czdPojpVG+MHVDeIkXTi+Uq7k67zx0CnQoj697J7Tqd/FZ+/QJPBiw5HNDniIgdp5C
         6G5VNqtwlN20KfH88Qa3lZBtlidrxXJ8wYsFk7wTQxYFlvKmyB93mZNZ+0Bv+2xFsvqv
         AoivZX7fA9KUYnz/W1YEb7Q9qwuO3S5ASadgHkbg9ikkXw3XhDX1vZ1WXNfStz6xpTT4
         KhuMxnRZBLgTtjxV4ORSh74vgbJkIaME2iGHFBSfGY419lmptZ2Hnu2hPjrEZPqoZcXP
         o5kSRalRDAnQDB2YSQPvQeNpw0fsWJmyzdnAH6WfFwNWU3gapylMcAc5chusDjcgHpKc
         rrNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698803659; x=1699408459;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+xndyojUWSZZS6wC+L3oMlDNJUSHBHtUd/985yNA14M=;
        b=leZtnIlNMhITlva3yRxqhBRi9C9RZ9WdxkViFZcntjGN7ATWcVL0X6OHTJ8fEgsfio
         T/+T37gzMU2y7jtdVoMi2LvdoeL/yEiBenYILrYAB0b/yrm2Ds9FjSe2G0I3horXLnv8
         Pd8BGIuS9NWSCpgRbXRqX1Yz0vDs1gh1kFeMyZM0HUIAnQLWSakn4H246LGglqcTE1O8
         SNttIBLWWGtb5ZWDZVFYplZOgNEhLTOIY2Vi+A6wSLpi0AvyNDnrSlavlQU5cq7CdPcn
         9Hw88Gt10VhZYXrN09a/3wDH01sByg7DYN4mSwWy/+GmNGxYmz89XnhIkF2601qFb/eu
         d7qg==
X-Gm-Message-State: AOJu0YwnzAE9FBO343M0nD/bYJcA+Xh26Q+ovWCnHipYg6ZIzoasLAop
	U9Lu/bw44uvDDkwvc4alRe3/5v1jbw8cXfgwpug=
X-Google-Smtp-Source: AGHT+IGsOuzuHAt1UYOEC9rTH1lEADAwKcru0j0aIocj5HwKzJf8KIsocB0CQEcrqCjW62HvM1bbKDi6S0/YDbKSQNk=
X-Received: by 2002:a25:8287:0:b0:d9a:f666:b68e with SMTP id
 r7-20020a258287000000b00d9af666b68emr13529776ybk.30.1698803659588; Tue, 31
 Oct 2023 18:54:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1698717154.git.zhoubinbin@loongson.cn> <dc6621dd09b4710c66140b830d0b345682c7b707.1698717154.git.zhoubinbin@loongson.cn>
 <20231031175055.GA1801059-robh@kernel.org>
In-Reply-To: <20231031175055.GA1801059-robh@kernel.org>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Wed, 1 Nov 2023 07:54:08 +0600
Message-ID: <CAMpQs4JeTvNRv0Jg+-HAeKD4S0GEm5j0ReCjRVYAneUsqqPtOg@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: interrupt-controller:
 loongson,liointc: Standardize the naming of 'loongson,parent-int-map'
To: Rob Herring <robh@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Thomas Gleixner <tglx@linutronix.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Huacai Chen <chenhuacai@kernel.org>, loongson-kernel@lists.loongnix.cn, 
	devicetree@vger.kernel.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-mips@vger.kernel.org, lvjianmin@loongson.cn, 
	WANG Xuerui <git@xen0n.name>, loongarch@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 31, 2023 at 11:50=E2=80=AFPM Rob Herring <robh@kernel.org> wrot=
e:
>
> On Tue, Oct 31, 2023 at 10:36:36AM +0800, Binbin Zhou wrote:
> > Since the 'loongson,parent_int_map' attribute naming is non-standard, w=
e
> > should use 'loongson,parent-int-map' instead.
> > Also, 'loongson,parent_int_map' should be marked as deprecated.
>
> While yes, '-' is preferred over '_', I don't think it is worth carrying
> support (here and in the kernel) for both.

Hi Rob:

We try to keep it compatible as the MIPS Loongson has been using this
property for a long time.
Krzysztof also thinks it is required.

Thanks.
Binbin
>
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  .../interrupt-controller/loongson,liointc.yaml    | 15 +++++++++++----
> >  1 file changed, 11 insertions(+), 4 deletions(-)

