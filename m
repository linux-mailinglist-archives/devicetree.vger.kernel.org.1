Return-Path: <devicetree+bounces-156932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 098DAA5DEC2
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 15:20:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3FDE47A71BA
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 14:19:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E98BE24CEEA;
	Wed, 12 Mar 2025 14:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzvjHoyO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C341C24C664
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 14:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741789211; cv=none; b=nOXAHZNCXC3HBCxlLDmIcjzE8/lGQdhgw2K2J0nGh/fV9mC2fxSuogFTR47NQxfL+UIKKmULoraLue5VkESlRVyY5Ck7KOXC6HnBweyN9ywNuDuyoKR+hCKHU4ITS+vW3B7ScioEgRpxOaoU6WTzxBl+HOzC08ocsp4uGuQnuUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741789211; c=relaxed/simple;
	bh=Pj0r9svOb4a70lCFIyzVyDRH+u2ymFBBAwLcOdDxowM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=K2eEh9sGjTp4kEU1NCcx4U/1PhI9CKVO5frdSgv8vw6a0R/NQTcXuqfYWoN3EYJ3wAwkRVh7jywCeTADXVSN+diZOk4Xx1qqTuyNjAJB5KtkIkxOTrZbviLLxkVpjxy2r9CXU6xaXP37syBpV8ImCZ68eaO3Xn8uVSZL12wqGGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzvjHoyO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38879C4CEEE
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 14:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741789211;
	bh=Pj0r9svOb4a70lCFIyzVyDRH+u2ymFBBAwLcOdDxowM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=fzvjHoyOGIC062rC43Y/Zg4JidcVPiVliwWeUXPmFz/fR6+95ZKXmVb/AdwDijIsC
	 qLlZ6xFvbwK/aNlUZINdIkpQ0aUly0yUiDWnQJuwa4Am9+6llfwox+dnr+ySAAdsrE
	 aRJ1gMmPjpG+M3tcAIFE56bFQCG3Q+OcZFX2K2PgYBSso7lHlEDuxaRnfaq1n3WgSs
	 VOXaZCdPcr9p+KnrCNz2vfEEzBGfTRE37p2aMWeQBNodKXI73apFwJFiiryJ+kHVP/
	 WCNwhudgUg4/9nJ3Qi75nSNjLi1xzbiO3BDmRX1hdil3JqSl2hu0NWyKgdbeHdUVpT
	 xnmJQExohBlRg==
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ac2ab99e16eso607418166b.0
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 07:20:11 -0700 (PDT)
X-Gm-Message-State: AOJu0YxXLJ4VCQsV2wLpbrxtmODVUc9hDRunI/QWht87R6BH/ai62rRz
	wN34Yv+WlsCALUDW4ZUFmQSm7d4HGckgpd8Y19/HX++U34A43m+XH4e7sW3Y8iu3jtEnG8bukU3
	3NXCtEj+UNHzZ/cOMDoqcBqV+pw==
X-Google-Smtp-Source: AGHT+IGcWs0afmTMM+LPThJ4NNCf+M3D/nikLkrmyOvYo3KZPH6YNubjM9fFx4NzupVn/KqQPXEC5HLHCBxRF3eq7hY=
X-Received: by 2002:a17:906:9586:b0:abf:d4a9:a096 with SMTP id
 a640c23a62f3a-ac252fb6f47mr2332916966b.37.1741789209790; Wed, 12 Mar 2025
 07:20:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <MEYP282MB3164D0271E9BDA49BBB7E7D1BFD42@MEYP282MB3164.AUSP282.PROD.OUTLOOK.COM>
 <20250311131348.GA2859052-robh@kernel.org> <MEYP282MB3164B4D3CC54CC6E9D46E55EBFD02@MEYP282MB3164.AUSP282.PROD.OUTLOOK.COM>
In-Reply-To: <MEYP282MB3164B4D3CC54CC6E9D46E55EBFD02@MEYP282MB3164.AUSP282.PROD.OUTLOOK.COM>
From: Rob Herring <robh@kernel.org>
Date: Wed, 12 Mar 2025 09:19:57 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+YP9QP5rUTZ=KqgRCNYZ2uK+oUBbpdwWgb+ihUsjAcpA@mail.gmail.com>
X-Gm-Features: AQ5f1Jq3YS4KSbGya9JGj9svjEUYKyypoR1XDg-twxkobwueGDsqm0bsakOqz2o
Message-ID: <CAL_Jsq+YP9QP5rUTZ=KqgRCNYZ2uK+oUBbpdwWgb+ihUsjAcpA@mail.gmail.com>
Subject: Re: Bug: lock problem for the function of_find_node_by_name
To: Ryder Wang <rydercoding@hotmail.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 11, 2025 at 8:41=E2=80=AFPM Ryder Wang <rydercoding@hotmail.com=
> wrote:
>
> Hi Rob,
>
> Thanks for your reply.

Please don't top post.

> This issue occurred on some embedded ARM system for some device driver wh=
ich called of_find_node_by_name. Below is the kernel log including the call=
 stack:
>
>     [  650.456107][ T3481] BUG: sleeping function called from invalid con=
text at kernel/locking/rwsem.c:1637
>     [  650.465589][ T3481] in_atomic(): 1, irqs_disabled(): 128, non_bloc=
k: 0, pid: 3481, name: kworker/0:0
>     [  650.474970][ T3481] Preemption disabled at:
>     [  650.474976][ T3481] [<ffffffd36bb03118>] of_find_node_by_name+0x2c=
/0x124
>     [  650.486191][ T3481] CPU: 0 PID: 3481 Comm: kworker/0:0 Tainted: G =
          OE     5.15.149-debug-gc1dc9fe4253b-dirty #1
>     [  650.486208][ T3481] Hardware name: xxxxxxxxxxxxxxxxxxxxxxxxxx
>     [  650.486219][ T3481] Workqueue: events_power_efficient phylink_reso=
lve
>     [  650.486244][ T3481] Call trace:
>     [  650.486249][ T3481]  dump_backtrace+0x0/0x214
>     [  650.486271][ T3481]  show_stack+0x18/0x24
>     [  650.486287][ T3481]  dump_stack_lvl+0x64/0x7c
>     [  650.486305][ T3481]  dump_stack+0x18/0x38
>     [  650.486319][ T3481]  ___might_sleep+0x15c/0x180
>     [  650.486336][ T3481]  __might_sleep+0x50/0x84
>     [  650.486348][ T3481]  down_write+0x28/0x54
>     [  650.486364][ T3481]  kernfs_remove+0x38/0x58
>     [  650.486381][ T3481]  sysfs_remove_dir+0x54/0x70
>     [  650.486396][ T3481]  __kobject_del+0x50/0xe8
>     [  650.486413][ T3481]  kobject_cleanup+0x58/0x1e4
>     [  650.486427][ T3481]  kobject_put+0x64/0xb0
>     [  650.486439][ T3481]  of_node_put+0x1c/0x28
>     [  650.486454][ T3481]  of_find_node_by_name+0x74/0x124
>     [  650.486466][ T3481]  ethqos_configure_mac_v4+0x13b0/0x1750

Not a function in mainline...

The assumption with of_find_node_by_name and all the dt functions that
operate as iterators is you do a get on the 1st node before calling
the 1st time, and then they all do a get on the next node and a put on
the previous node. We could move the put out of the spinlock, but then
you might not find the bug in the caller. Also, all the iterator
functions do the same thing.

One thing I noticed is for_each_of_allnodes_from() is not safe to call
outside the spinlock and we have 1 user doing that
(drivers/clk/ti/clk.c).

Rob

