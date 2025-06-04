Return-Path: <devicetree+bounces-182710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBBCACDC23
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 12:50:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1895A3A2483
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 10:50:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CCAF28D8CD;
	Wed,  4 Jun 2025 10:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="mGygoU4J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 795A128CF6F
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 10:50:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749034241; cv=none; b=Wd/nSMXptjjdNXas9oMhSQvdWM9lZn69FJjD5GuE5Qxqc+k5exdg6jMGPu597v41c/uq9c+h2Raa+GK39z0l2RDAKPoUxd6jefaHfCR0BklCPGLH51Zv+isqOP3jvdQIrRSvmeNsH1m5COdXN6Qzq75IXr8xzeiQBDEB1dYrx70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749034241; c=relaxed/simple;
	bh=jn4nygRnTKj9fV+Xag4PqoajhS/sLBPzpXAKdRZIkSk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bS6GDgXyNNrDcBwfmArYC/3DGn6pDFECOHGBnwxcVFDLExIn/XqwhJGqep2+m15bAsT4X2KJFx4xcb7r+bmS0otxH2Ssh8xyhtwUyG3e1dUoatIApqv9vwjLEnKnOKCLhr8NI+93YQ2vax436cr17WwqUs9yRa3WVexLfry+lVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=mGygoU4J; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-e75668006b9so6239912276.3
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 03:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1749034238; x=1749639038; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VMikC/irEVPa0Hohnvi6eoO332ZgA2v4xeO8L+pg4Ds=;
        b=mGygoU4JVXevxiAZITgyyF3XVDdbmuu3iDvu+ng24VEOTIbFQOCregMuKzvG8Fw/qU
         VaF4JzxnOKhKmN2rVrln9q0/8+RiNJyXvzt1KDqOtM3eK/+/DgGWAju6WLKie7o5Kfv/
         ROt/aa8DoQRA8EQYhWNp079emtGlEqqy7VRps=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749034238; x=1749639038;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VMikC/irEVPa0Hohnvi6eoO332ZgA2v4xeO8L+pg4Ds=;
        b=QNOsjL2LaZYXZ0nPaRpHwpTs5TJGD6VE0nnxeUspxi3i218oYsb6odXdmGeOKIyxsq
         h5BOMQG/0fOUYTOsR47XPTkn2X48PzL5FebcKDez7Fu2nsKp83vu4tmjEjqhbC0XcxgT
         waXkGy+ToPdEnJznUFTbw/FgbNXmFJNCZhliVxsQ3OLrVtXjBZpAl3RIm0zQSp74FSgP
         XXMwEnoVuxwd9GhkiJo80BEcvnlcriKKYZWS3EfMKghcuGkrD/EhkCsHYxwhIBGowzMO
         Nh6zX/MyDXSabDFP7I7n2UzwHD4u8x4k1s/gvwMGeafQMsA2ACrQlf0v2OV/TKReEuiG
         HDxA==
X-Forwarded-Encrypted: i=1; AJvYcCVO8benpuLFpoiZzuJDRkvL4p+H7bwm9ZXtarDlM9PJt7eILL3bGpNEe9w2mWYM40dhlUz55KV/P6As@vger.kernel.org
X-Gm-Message-State: AOJu0YzwSp/nUEIeoo4Z8IkWkKsfDSLdGKbWEhMFEYho54c62gNGXjko
	rT1UUiQ32ysY3sWUoUnuzf6P6yq7ClqYdWcO9ZvlefvAvBDN+fNdWYn5/QAwnjH1pko0w57z35h
	8BMJw8vUW71/Q91WrNb9BPgp3c24zzyfLhwjmZTndBQ==
X-Gm-Gg: ASbGncvH0VmMhoJCvWr6Yw95AXXiYzAIDa2+UP20GgXovWuG7P9FAoY54W2B9nnhQcx
	DvPv3X4Q+Mg51UH9wZl0putI4fTFdpdReEn3//+SAppbQTaTL2jXVHgQNwL4MtAOB3pZCkO98tP
	FKrtlnjVyS8Kf1lCuXAFjghXGzA+/IU8GLHaf42ZmjsvTh
X-Google-Smtp-Source: AGHT+IFWlEF6Prrn96FnW4kqan/Qb0noChaG+ccVxhKjIFms+WNmINJx1a1EqZrB7XhYaXDlzutOFigrnkk7T1KJs8o=
X-Received: by 2002:a05:6902:18d0:b0:e7d:c87a:6249 with SMTP id
 3f1490d57ef6-e8179dbababmr3083480276.36.1749034238352; Wed, 04 Jun 2025
 03:50:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250602053231.403143-1-pavitrakumarm@vayavyalabs.com>
 <20250602053231.403143-3-pavitrakumarm@vayavyalabs.com> <9f6b4442-1fb0-479d-9514-410d4d8bfd98@kernel.org>
 <CALxtO0kitR0MnjzPwVT8nsuYThTRX+fbyOH9i2z1KKnCPg1dqg@mail.gmail.com> <ba13c2f1-9b08-4ba7-8093-d55c16143cb2@kernel.org>
In-Reply-To: <ba13c2f1-9b08-4ba7-8093-d55c16143cb2@kernel.org>
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Date: Wed, 4 Jun 2025 16:20:27 +0530
X-Gm-Features: AX0GCFvr1jBPQKug_8tsk9gqR4GmtY_mFZiWF1BuLivnsEZbP1Uhfaym79oBKSI
Message-ID: <CALxtO0nVngMjC4cg+d==p7XktnYJ9EgP_cXgwaJ1NOizPCJqZQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] Add SPAcc Skcipher support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, herbert@gondor.apana.org.au, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, Ruud.Derwig@synopsys.com, 
	manjunath.hadli@vayavyalabs.com, adityak@vayavyalabs.com, 
	Shweta Raikar <shwetar@vayavyalabs.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,
   Yes, I do understand the use of static tools and the W=3D1 warning
checks on gcc/clang. Anything missed here is not intentional and I am
ready to add more tests and checks before posting patches.

I use Sparse, which did not show any errors or warnings in the code.
  make C=3D1 CHECK=3D"sparse" M=3Ddrivers/crypto/dwc-spacc/
  make C=3D2 CHECK=3D"sparse" M=3Ddrivers/crypto/dwc-spacc/

I missed Coccinelle, because I had installation problems on my Ubuntu
20.04 workstation, which has the build setup and my cross compilers. I
installed and checked SPAcc code with Coccinelle on another
workstation and I do see errors/warnings in the code.
I will fix all these and any new ones going forward.

   cocci.log:25:./spacc_device.c:132:2-9: line 132 is redundant
because platform_get_irq() already prints an error
   cocci.log:27:./spacc_device.c:301:3-8: No need to set .owner here.
The core will do it.
   cocci.log:50:./spacc_aead.c:575:8-15: ERROR: iterator variable
bound on line 572 cannot be NULL
   cocci.log:51:./spacc_skcipher.c:202:8-15: ERROR: iterator variable
bound on line 199 cannot be NULL
   cocci.log:52:./spacc_ahash.c:288:8-15: ERROR: iterator variable
bound on line 285 cannot be NULL
   cocci.log:59:./spacc_interrupt.c:117:1-7: preceding lock on line 97
(false positive)


Also I do the W=3D1 warning checks with my .config on gcc and clang

COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dgcc-13.2.0
~/lkp-tests/kbuild/make.cross W=3D1 C=3D1 CF=3D'-fdiagnostic-prefix
-D__CHECK_ENDIAN__ -fmax-errors=3Dunlimited -fmax-warnings=3Dunlimited'
O=3Dbuild_dir ARCH=3Darm64 SHELL=3D/bin/bash drivers/crypto/dwc-spacc/

COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dgcc-14.1.0
~/lkp-tests/kbuild/make.cross W=3D1 O=3Dbuild_dir ARCH=3Darm64
SHELL=3D/bin/bash drivers/crypto/

COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang-17
~/lkp-tests/kbuild/make.cross W=3D1 O=3Dbuild_dir ARCH=3Darm64
drivers/crypto/dwc-spacc

Warm regards,
PK




On Tue, Jun 3, 2025 at 5:37=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 03/06/2025 14:02, Pavitrakumar Managutte wrote:
>
> >> Please run standard kernel tools for static analysis, like coccinelle,
> >> smatch and sparse, and fix reported warnings. Also please check for
> >> warnings when building with W=3D1 for gcc and clang. Most of these
> >> commands (checks or W=3D1 build) can build specific targets, like some
> >> directory, to narrow the scope to only your code. The code here looks
> >> like it needs a fix. Feel free to get in touch if the warning is not c=
lear.
> >>
> Confirm that you understood this. You sent us code with obvious flaws
> which would be found with tools. It's a proof you did not run these
> static tools. It's not the job of community reviewers to replace the
> tools. Using us instead of tools is... well, a mistake but if you think
> about our limited time then kind of close to inappropriate request. So
> did you understand the need of using tools BEFORE you post it?
>
> Best regards,
> Krzysztof

