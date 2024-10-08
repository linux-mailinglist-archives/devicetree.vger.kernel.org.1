Return-Path: <devicetree+bounces-108904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D82A9943C6
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 11:13:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC2D51F231A6
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 09:13:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CF3F18DF96;
	Tue,  8 Oct 2024 09:11:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BjoafCjZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF0D17C7C9
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 09:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728378685; cv=none; b=mUcaNFcBphV5Nh/opcpzzJVPnRzHkrdfO7s0fu3k2zr769dGY70gKUJ1xb8j5NmrBCoMyW7jl7hxLkh/pwJ5BvfO0I4HKhIUoFA7qiICZhef2JYFASL/eJCKu6LXqDJZZzOt6PGt8DyqAy47yxVRWm5Hk9AZny24AOyk0VHilKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728378685; c=relaxed/simple;
	bh=84HK2DYs4iHZXfWaS/6Hpz++BkQ+086CSJY0qyJZqCY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=emlOf7Foj+O01/KSYaKOec7lsN3UorBbFJfltzb6ThFFwoCdUYZcKs8vtbkDGiELSJ1muST9qHXZhNWPumEqWzYXgBsB4RPGNSllCbSgTYF4uIbHYGO9MrOjC3K3lltELPxIT/KVdLwGKGiqGd5y8kspQWlwLFvok/WMBO+FBJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BjoafCjZ; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-e28eaf56ffcso734354276.1
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 02:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728378683; x=1728983483; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OAC1fc0GGzeGQymFrjhdhUKIp7jN5760ULqXJcDJVQ8=;
        b=BjoafCjZWwFflHxwDM0+H3PE47kbBqTGl/zl2bgdgsHY/e1DgUYrfzWlgn5JSJ9N3Y
         oLASziHYjIgsx2Oj2Ojod1xkVoY4QEmwD895UybnlNhURZCjYjV90mke1lIJhc/AgayI
         nQl+OVXdwoCQPHRFm4W2dLmzs9Jf+7lEJs0TkNu7BYLyV/M8suVejbzMjQXy06ti//sZ
         N2p4ETvKeA4KZZt/5rt651FoDo/MR7RTsyl02ruHaH1BL192OkCRlqm1yKpqmYD0ZVg/
         FX4+X+YFcDl0Ipxf2uO9KMOtm/9wF4b26ByerHEFmsg9HJp7VGz6casdQSJesHNCFD6M
         Pc7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728378683; x=1728983483;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OAC1fc0GGzeGQymFrjhdhUKIp7jN5760ULqXJcDJVQ8=;
        b=qLcb6nozduP2ewJKQNH7dLKhiPeL6zRD06G2ccwaEVH2Bokh9xJUlyEoUv5Ov4ZOfc
         UUf+iLx9INZPcLgQmwuKWzaIFBNUvJNTY5rTMvF847tnxLINCyjQAjDk21ZkGAz10lf3
         2I0pXTWZ/xZNeYpSN9VQ6iwOW8eq8tNzZXCPEPy3WsoaaAgwlme7MyrGDKwHCmp22KR7
         WlUL1v0dn06W6YdY5UpVBWMGxmlDsfsPQGkqnzjID9qzERIlE5bazh+ZJc8wJXHZykAX
         YlBENcXipK912YD9145ihuVqDG02jGDP+TtIbCDy2Xdm/3pn2OM0p23ek2WqUSHzyFJz
         lybw==
X-Forwarded-Encrypted: i=1; AJvYcCUjADVWd+BulI06iANeg1nSLz3gEWR7SM6gEBE/pxrq9kUPb3dSLa+fOPiT/Ny/DXWIO6QqiwIeIMd4@vger.kernel.org
X-Gm-Message-State: AOJu0YwKN5snvtfvG+HSSYzwF7NeZRZxU+ktxmq0yBw6xhhgPX8MT20R
	Rox19y71RHxBs8XbBVSOy/eFNNYUSyQoPsaPf5+L87Ao3ODBWbJod9hadtrJdPBQipbm8/8GqyN
	tFRZ4cz+o+Vrz67c9mJGZDl47E4SuX+BCW5GzOA==
X-Google-Smtp-Source: AGHT+IHGsrKT01WcmDgyC7IYp0pZMB5k4X7yPX1YU+KNNnvYVWtze3O6NpuAFLLQ3kwmCNNi4szI2T/fCfZNHwwlnFI=
X-Received: by 2002:a05:6902:1003:b0:e28:7a13:747b with SMTP id
 3f1490d57ef6-e28936ea449mr9780326276.27.1728378682910; Tue, 08 Oct 2024
 02:11:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241002221306.4403-1-ansuelsmth@gmail.com> <172833255295.162249.16483920948700467749.b4-ty@kernel.dk>
In-Reply-To: <172833255295.162249.16483920948700467749.b4-ty@kernel.dk>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 8 Oct 2024 11:10:46 +0200
Message-ID: <CAPDyKFoueMwVfN+P+tG7zT+-iUs=hghsRu+i9mNiHGw_9tcwBw@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] block: partition table OF support
To: Jens Axboe <axboe@kernel.dk>
Cc: Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Daniel Golle <daniel@makrotopia.org>, INAGAKI Hiroshi <musashino.open@gmail.com>, 
	Christian Brauner <brauner@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>, 
	Ming Lei <ming.lei@redhat.com>, Li Lingfeng <lilingfeng3@huawei.com>, 
	Christian Heusel <christian@heusel.eu>, Avri Altman <avri.altman@wdc.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Adrian Hunter <adrian.hunter@intel.com>, 
	Riyan Dhiman <riyandhiman14@gmail.com>, Mikko Rapeli <mikko.rapeli@linaro.org>, 
	Jorge Ramirez-Ortiz <jorge@foundries.io>, Li Zhijian <lizhijian@fujitsu.com>, 
	Dominique Martinet <dominique.martinet@atmark-techno.com>, 
	Jens Wiklander <jens.wiklander@linaro.org>, 
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>, linux-block@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	Lorenzo Bianconi <lorenzo@kernel.org>, Miquel Raynal <miquel.raynal@bootlin.com>, upstream@airoha.com, 
	Christoph Hellwig <hch@infradead.org>, Christian Marangi <ansuelsmth@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 7 Oct 2024 at 22:22, Jens Axboe <axboe@kernel.dk> wrote:
>
>
> On Thu, 03 Oct 2024 00:11:40 +0200, Christian Marangi wrote:
> > this is an initial proposal to complete support for manually defining
> > partition table.
> >
> > Some background on this. Many OEM on embedded device (modem, router...)
> > are starting to migrate from NOR/NAND flash to eMMC. The reason for this
> > is that OEM are starting to require more and more space for the firmware
> > and price difference is becoming so little that using eMMC is only benefits
> > and no cons.
> >
> > [...]
>
> Applied, thanks!
>
> [1/6] block: add support for defining read-only partitions
>       commit: 03cb793b26834ddca170ba87057c8f883772dd45
> [2/6] docs: block: Document support for read-only partition in cmdline part
>       commit: 62adb971e515d1bb0e9e555f3dd1d5dc948cf6a1
> [3/6] block: introduce add_disk_fwnode()
>       commit: e5f587242b6072ffab4f4a084a459a59f3035873
> [4/6] mmc: block: attach partitions fwnode if found in mmc-card
>       commit: 45ff6c340ddfc2dade74d5b7a8962c778ab7042c
> [5/6] block: add support for partition table defined in OF
>       commit: 884555b557e5e6d41c866e2cd8d7b32f50ec974b
> [6/6] dt-bindings: mmc: Document support for partition table in mmc-card
>       commit: 06f39701d0666d89dd3c86ff0b163c7139b7ba2d
>

I think we may need another merging strategy for this as I quite big
changes in the pipe for the mmc block device this cycle.

Would it be possible for you to drop the mmc patches and instead share
an immutable branch with the block changes that I can pull in, so I
can take the mmc changes?

Kind regards
Uffe

