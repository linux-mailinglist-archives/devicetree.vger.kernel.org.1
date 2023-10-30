Return-Path: <devicetree+bounces-12912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 986097DBDCC
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 17:27:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A195A1C2083D
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 16:27:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B170618C15;
	Mon, 30 Oct 2023 16:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rxq0OUiV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93C26C8D2
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 16:27:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67624C433C7
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 16:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698683222;
	bh=EhkKNngUQNbFcyqQ0JE73xgCCt67m/WrBqvUp8zSB8M=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Rxq0OUiVhGvEvUTP4+DZhVXhhfKxvQf0ybhfzd7+/5OBmskwzS9z5gKqRX5XzYLS6
	 k62r71Uvvyg3kGGCCTO4sLhe07ix4CSL4nGtA15i4lO0zMmb+aUxXfieL/mW6cx3uz
	 vzf/7uifEwRi4DPneEOMvdDsEFR6QkZBhE8Q5R+sn2MFxBHJvBdKTV1wDM5x7tguwl
	 TdOPnekBAGtpV6lq0LdVJriCKuJLFWjho9aAZpLd5NPh2cIJdYVdURGNuzgLTnOBz+
	 ZCd1fIRSgqiLu9H1FhsfPiMO6cjqsw2hqDz3KnmqYO7c+/MYZ5wYnMnVwrzNfFgoJU
	 2dBbZA3IVxRMA==
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-507973f3b65so7084190e87.3
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:27:02 -0700 (PDT)
X-Gm-Message-State: AOJu0YzmyoJ6OQweCNZ+6MUEoPL9WAv2zcgeVwgAvxckaZDF5HqmnTVm
	+gAhb2qz1zJo8Xo6Rtd2gul18mD2fW/Dl8VC7Q==
X-Google-Smtp-Source: AGHT+IF5zHYs7vQJ85FKme3sDrgJWcT2F+8Etvi0m8ptOud26W/x21H+QA1KvtesBLW1W68PJ2Kt8twUnRJf3ZS29as=
X-Received: by 2002:ac2:521b:0:b0:507:f0f2:57bd with SMTP id
 a27-20020ac2521b000000b00507f0f257bdmr6882239lfl.66.1698683220637; Mon, 30
 Oct 2023 09:27:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231018233815.34a0417f@yea>
In-Reply-To: <20231018233815.34a0417f@yea>
From: Rob Herring <robh@kernel.org>
Date: Mon, 30 Oct 2023 11:26:48 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+qcc7ERmGAywp=7oGT=XGoBsMO839_jtzxeNcCN-dS_A@mail.gmail.com>
Message-ID: <CAL_Jsq+qcc7ERmGAywp=7oGT=XGoBsMO839_jtzxeNcCN-dS_A@mail.gmail.com>
Subject: Re: Several kmemleak reports + "refcount_t: underflow;
 use-after-free" at boot when OF_UNITTEST + OF_OVERLAY is set (Kernel
 v6.6-rc6, PowerMac G5 11,2)
To: Erhard Furtner <erhard_f@mailbox.org>
Cc: linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 18, 2023 at 4:38=E2=80=AFPM Erhard Furtner <erhard_f@mailbox.or=
g> wrote:
>
> Greetings!
>
> Getting this at every boot on my G5 with kernel v6.6-rc6 with OF_UNITTEST=
 and OF_OVERLAY selected:
>
> [...]
> ### dt-test ### EXPECT \ : OF: ERROR: of_node_release() detected bad
> of_node_put() on /testcase-data/refcount-node ### dt-test ### pass
> of_unittest_lifecycle():3189 OF: ERROR: of_node_release() detected bad
> of_node_put() on /testcase-data/refcount-node ### dt-test ### EXPECT / : =
OF:
> ERROR: of_node_release() detected bad of_node_put() on
> /testcase-data/refcount-node ### dt-test ### EXPECT \ : ------------[ cut=
 here
> ]------------ ### dt-test ### EXPECT \ : WARNING: <<all>> ### dt-test ###
> EXPECT \ : refcount_t: underflow; use-after-free. ### dt-test ### EXPECT =
\ :

The test tells you to expect a use-after-free...

> ---[ end trace <<int>> ]--- ### dt-test ### pass of_unittest_lifecycle():=
3209
> ------------[ cut here ]------------
> refcount_t: underflow; use-after-free.

Then you get a use-after-free. Looks like it is working as designed.

I believe it's the same with kmemleak.

Note that running DT unittests also taints the kernel. That's because
they are not meant to be run on a production system.

Rob

