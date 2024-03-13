Return-Path: <devicetree+bounces-50209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2268E87A5AF
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 11:20:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 96C291F222D0
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 10:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D26BE3987A;
	Wed, 13 Mar 2024 10:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R0nCg18E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141D238FA0
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 10:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710325223; cv=none; b=OAE+9VRzQkrhzilV2o/6d/RONkLYx6Se/Y9H2GVSQlrRM4cJtvpT8P6jVoiWs/47ZgXKKbYenoVBrUVSCqUeIBmFBVtVqhVR8hX8RtwlDb4UZ0GsZW/Y/O2blAwbedizx1bmNHWaHElf9IHo+6WvaV43IfNAy8GLTCKcNvuGt40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710325223; c=relaxed/simple;
	bh=54ISWejEc7g43gLJbaA6kw3tAbDUhEEnqU4SOmf5mdo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TRrK8PeLTxlFylpCDqtUAVaZYOcNbVUaJDLAauQ9wPBz5H4dLiqauHGXHX4ORzUQqesCEhWDkHxaAVpEW6cN551JRtTMHSaVoGM366wy3SmeTMfB18UbNi+bFf1JB5CSAaBYheJs21X0gsuF47JGMS++xKOqltUlYfrbUvca7gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R0nCg18E; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dcc84ae94c1so742190276.1
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 03:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710325221; x=1710930021; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=54ISWejEc7g43gLJbaA6kw3tAbDUhEEnqU4SOmf5mdo=;
        b=R0nCg18EO1pW9zayhsTn8LQj7M3+tiyyIwN4VB23GEi3NQitBZ7czlmYPgZD9vk+tE
         1siPpPrsZbCZzW8KpscjM7/rWYkTIds9ia/8k+pclKiEqcjsPCghD4OXM7h4bamAp1ub
         qGUGm6rG03fdKia17bjrSjhUBqBFW05+SQlK8vyXTjcKRFTazpiuG03NfV1GO6g6dDqx
         4wXVWMKHqt8TmpUDjfksl7fe/u7A6wt+HPq4L/o+b8Wez97PUM5yuLzIY4+LKXJlIeSW
         hIVzvYo0Gknfe4kbcp06LD0WOiPjIBdf4q1yQOEdMsMauyYomnOeDZ4oM/GIz0afO8c8
         yKJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710325221; x=1710930021;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=54ISWejEc7g43gLJbaA6kw3tAbDUhEEnqU4SOmf5mdo=;
        b=ngMK4SE1vgzS39St0wJE15tw3DmNczk6hCAkoBndWElwFT377zw67I71HOHeyh+XAc
         LXlZaKojEYA1prNXWLKXKU5teHpAp0NNKvpYILFUGm+2a/eobB31NvdgtzoO8IV1HF3B
         TZYwDs0eJyJO1j8oJajY1N+eyfabeAEtP7w+II8p6Ptsjv6H70W6b4UOtm1wOJvUmtIw
         PekYnvUB5fBZ1UBIET4i12nTOVBlFZvumlr7zzYGNiqdpIMeLpZAq3Hh8ClM0PtxXoHv
         Ln/4RmR6bSHEysKioglYhx1bkMFtA+YZGA2lUKzMAi5dVx6L5zKK/66ZLBOuGCy91Xgs
         xOoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLrO1e0SlNYUwWH9y19V3k0NVkA9LVo1WdBUhYzh4D0G7NYfcCZYNpIGgLoCeOQP9yzb4EDqOqpBhgkIi439Orspd7CYVb2qmOIw==
X-Gm-Message-State: AOJu0YzdqQj2h0jYLqASTNRPnjjjAVLD8R20BBvHvc+EZA9OUQSuyZDK
	4Ub6QCb7YSEzECyH3Kdweh5Ls7rKomRNuBrRHhIdcADZ3/klTp8lPgkKHY+YV6vSOgK7H68kV7x
	MBvTQVGTmkxjCWt40SM099ZpmDD8Zg2d/GZPBOg==
X-Google-Smtp-Source: AGHT+IFm+nd9UQ/qBzI3QBLuuQiXvE1fxdsTpFm/8S45FQPW7ia2y7pgMtQG7PtBRgpPtevnZAjJUXHxcwo/XGYvOcw=
X-Received: by 2002:a25:2c3:0:b0:dc2:2e01:4ff0 with SMTP id
 186-20020a2502c3000000b00dc22e014ff0mr2046178ybc.45.1710325221040; Wed, 13
 Mar 2024 03:20:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1709667858.git.daniel@makrotopia.org> <CAPDyKFpQfue5Fi0fFSnqHNg2ytCxAYfORVP_Y86ucz2k5HRuDA@mail.gmail.com>
 <ZfBK5qT_GO_FgtQP@makrotopia.org> <CAPDyKFr7mMEZE5n=6kxxsj9P3oLjLyVx20O9q0-pmyXzXYk52A@mail.gmail.com>
 <ZfBUoc5IjzxbEj7B@makrotopia.org>
In-Reply-To: <ZfBUoc5IjzxbEj7B@makrotopia.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 13 Mar 2024 11:19:44 +0100
Message-ID: <CAPDyKFqd=JF6LP4-U2_JNg6Et_PBHFMisnhnUqndK68ZeZ29fg@mail.gmail.com>
Subject: Re: [RFC PATCH v2 0/8] nvmem: add block device NVMEM provider
To: Daniel Golle <daniel@makrotopia.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jens Axboe <axboe@kernel.dk>, Dave Chinner <dchinner@redhat.com>, Jan Kara <jack@suse.cz>, 
	=?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>, 
	Christian Brauner <brauner@kernel.org>, Li Lingfeng <lilingfeng3@huawei.com>, 
	Damien Le Moal <dlemoal@kernel.org>, Min Li <min15.li@samsung.com>, 
	Adrian Hunter <adrian.hunter@intel.com>, Hannes Reinecke <hare@suse.de>, 
	Christian Loehle <CLoehle@hyperstone.com>, Avri Altman <avri.altman@wdc.com>, 
	Bean Huo <beanhuo@micron.com>, Yeqi Fu <asuk4.q@gmail.com>, 
	Victor Shih <victor.shih@genesyslogic.com.tw>, 
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>, 
	"Ricardo B. Marliere" <ricardo@marliere.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-block@vger.kernel.org, 
	Diping Zhang <diping.zhang@gl-inet.com>, Jianhui Zhao <zhaojh329@gmail.com>, 
	Jieying Zeng <jieying.zeng@gl-inet.com>, Chad Monroe <chad.monroe@adtran.com>, 
	Adam Fox <adam.fox@adtran.com>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 12 Mar 2024 at 14:12, Daniel Golle <daniel@makrotopia.org> wrote:
>
> On Tue, Mar 12, 2024 at 01:57:39PM +0100, Ulf Hansson wrote:
> > On Tue, 12 Mar 2024 at 13:30, Daniel Golle <daniel@makrotopia.org> wrote:
> > >
> > > Hi Ulf,
> > >
> > > On Tue, Mar 12, 2024 at 01:22:49PM +0100, Ulf Hansson wrote:
> > > > On Tue, 5 Mar 2024 at 21:23, Daniel Golle <daniel@makrotopia.org> wrote:
> > > > >
> > > > > On embedded devices using an eMMC it is common that one or more (hw/sw)
> > > > > partitions on the eMMC are used to store MAC addresses and Wi-Fi
> > > > > calibration EEPROM data.
> > > > >
> > > > > Implement an NVMEM provider backed by block devices as typically the
> > > > > NVMEM framework is used to have kernel drivers read and use binary data
> > > > > from EEPROMs, efuses, flash memory (MTD), ...
> > > > >
> > > > > In order to be able to reference hardware partitions on an eMMC, add code
> > > > > to bind each hardware partition to a specific firmware subnode.
> > > > >
> > > > > This series is meant to open the discussion on how exactly the device
> > > > > tree schema for block devices and partitions may look like, and even
> > > > > if using the block layer to back the NVMEM device is at all the way to
> > > > > go -- to me it seemed to be a good solution because it will be reuable
> > > > > e.g. for (normal, software GPT or MBR) partitions of an NVMe SSD.
> > > > >
> > > > > This series has previously been submitted on July 19th 2023[1] and most of
> > > > > the basic idea did not change since.
> > > > >
> > > > > However, the recent introduction of bdev_file_open_by_dev() allow to
> > > > > get rid of most use of block layer internals which supposedly was the
> > > > > main objection raised by Christoph Hellwig back then.
> > > > >
> > > > > Most of the other comments received for in the first RFC have also
> > > > > been addressed, however, what remains is the use of class_interface
> > > > > (lacking an alternative way to get notifications about addition or
> > > > > removal of block devices from the system). As this has been criticized
> > > > > in the past I'm specifically interested in suggestions on how to solve
> > > > > this in another way -- ideally without having to implement a whole new
> > > > > way for in-kernel notifications of appearing or disappearing block
> > > > > devices...
> > > > >
> > > > > And, in a way just like in case of MTD and UBI, I believe acting as an
> > > > > NVMEM provider *is* a functionality which belongs to the block layer
> > > > > itself and, other than e.g. filesystems, is inconvenient to implement
> > > > > elsewhere.
> > > >
> > > > I don't object to the above, however to keep things scalable at the
> > > > block device driver level, such as the MMC subsystem, I think we
> > > > should avoid having *any* knowledge about the binary format at these
> > > > kinds of lower levels.
> > > >
> > > > Even if most of the NVMEM format is managed elsewhere, the support for
> > > > NVMEM partitions seems to be dealt with from the MMC subsystem too.
> > >
> > > In an earlier iteration of this RFC it was requested to make NVMEM
> > > support opt-in (instead of opt-out for mtdblock and ubiblock, which
> > > already got their own NVMEM provider implementation).
> > > Hence at least a change to opt-in for NVMEM support is required in the
> > > MMC subsystem, together with making sure that MMC devices have their
> > > fwnode assigned.
> >
> > So, the NVMEM support needs to be turned on (opt-in) for each and
> > every block device driver?
> >
> > It's not a big deal for me - and I would be happy to apply such a
> > change. On the other hand, it is just some binary data that is stored
> > on the flash, why should MMC have to opt-in or opt-out at all? It
> > should be the upper layers who decide what to store on the flash, not
> > the MMC subsystem, if you get my point.
> >
>
> I agree, and that's exactly how I originally wrote it. However, in the
> first round of rewiew it was requested to be in that way (ie. opt-in
> for each subsystem; rather than opt-out for subsystems already
> providing NVMEM in another way, such as MTD or UBI), see here:
>
> https://patchwork.kernel.org/comment/25432948/

Okay, got it, thanks!

>
> > >
> > > > Why can't NVMEM partitions be managed the usual way via the MBR/GPT?
> > >
> > > Absolutely, maybe my wording was not clear, but that's exactly what
> > > I'm suggesting here. There are no added parsers nor any knowledge
> > > about binary formats in this patchset.
> >
> > Right, but there are new DT bindings added in the $subject series that
> > allows us to describe NVMEM partitions for an eMMC. Why isn't that
> > parsed from the MBR/GPT, etc, rather than encoded in DT?
>
> The added dt-bindings merely allow to **identify** the partition by
> it's PARTNAME, PARTNO or PARTUUID, so we can reference them in DT.
> We'd still rely on MBR or GPT to do the actual parsing of the on-disk
> format.

Thanks for clarifying!

So, it looks like this all relies on what DT maintainers think then.

[...]

Kind regards
Uffe

