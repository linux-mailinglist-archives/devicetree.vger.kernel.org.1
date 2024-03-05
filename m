Return-Path: <devicetree+bounces-48539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 445858726DA
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 19:46:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC665281EF3
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 18:46:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32EEF1B941;
	Tue,  5 Mar 2024 18:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="0NkO5z9e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB43217BCF
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 18:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709664373; cv=none; b=fX5hkKYr3lkrWDYchftMqV4mSA/Xq7TsllLrQ5+M5BhnKsx51/4ODMiW708bye+1lRvtve6Nu570qKgY797VKBYTuxM6BEDSy0wvW1bSByXpm4aCugGInbnN7B5UIYRb1mYcIzNwEs/6K6Ym7szqtd52zQcdV2fJ38/qBfQgCC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709664373; c=relaxed/simple;
	bh=/LnC5euhEkvi9g1j+7vW5UYkJX4X5vpM3r4mGJPrFEg=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lvvnIOsGSCozl5ekvcxnCUxPCS9kUbpIg6YwBk+GOd+gKKoggWoz68YGG9kcq/nUsXgqvGYviYkWoaFMAo/lC0i4cqkh9AJuRKVpal00I2avYQhUAB4V/fDAhY2xMShITsQtfjQfwYT5+fWlUvnW4XLCs1ox1asteBrZ3OmEKdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=0NkO5z9e; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-4d35123b0deso1330110e0c.2
        for <devicetree@vger.kernel.org>; Tue, 05 Mar 2024 10:46:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1709664369; x=1710269169; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=/LnC5euhEkvi9g1j+7vW5UYkJX4X5vpM3r4mGJPrFEg=;
        b=0NkO5z9eHBBB8c4HLJt5KzYl8vzSyf036prTFWY//2W3n6vrC1bXcEHP7YUfpVe0j+
         vKdncZ/RiSFVto+0aObY23X4I0k8/ewTAmgcFCJFx/N5fpupkbLRvt3jaH3ZhT2x6Ayd
         NsZZrySLSbWcmANsr+eWe0eTlAPLOFHOK9rf0pYulzBjQAEiHJpAGffA0ga128aQqc5k
         nqDQrMRlJc04UOEM1lgnEyq/Z3jNqoFykAvw7HLNolCvvoxqcPNFzREJlQd6XorX4RN5
         +ABOC3rSWwtyyPC1wneTbUk0SeTRYcwa/HZVefyCtWK+3+rGCCjrrbFdW1pUtsB95Jhx
         h3nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709664369; x=1710269169;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/LnC5euhEkvi9g1j+7vW5UYkJX4X5vpM3r4mGJPrFEg=;
        b=Le5kTmam7DQ9wgIEKstO26X3FwDg1SIBXSyf2t2XZl/xgspYoxMLNG3kVuUorZsvXo
         7rzEuLuuuaPpHd/Cy52CL1MrYhxu/ggCiga+PnOS+xXaMHHBHDhehP61eZAOmwIx4yzS
         /JRXDtP/9SAiUX5ArPQ4jd2L+isfsYIeM1uwAPNRWZB+tv3FTmfTnQarKmcEejkKx2lv
         7d7edLAYdGV+gYrRcndnWVNWK9UoQCqTRn5Bgs3QRB55QlUruKWlr3MVxBDoKgo5boJ1
         wE2KGXJHGb2JCAAZp0iQ2FLaqi1JeTtm+v5XnxsX9Bd8CjGY4Pcwl8VI0YjoBHNuTvoI
         WtvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUjFRCCq/zilTI5Hf5WlTtOfjggOFk6Ij9eqk1ZKoI1OIYiQe6xHAky2JR0AOUM+rXCwrstlgQ0TKRQI0p+4kUQeeac8y+jRv1J5w==
X-Gm-Message-State: AOJu0Yxs9AZ6qfffYMSj1uSJRjqO2OKDZFy+mRzSlnp3C27JkLUs0/Ek
	IUyuxe37xUJ6oHBkeatDyDebQdFKSgAUchH6Y2HiXLtULMAOm5IB/WFTNvQIJghSDD6YnQm59K0
	T/bkIUkbAilnfr0ZgHJUjZ9R7GsTT+FHpl97rWA==
X-Google-Smtp-Source: AGHT+IF5LNAsCj9uKlcwQ0xjZDOIljAtQYkRhUygWidZvqbCJ3ZfBiva71D6xRf4C+MFbeWe6buOKgtt6R5YNX1ju3A=
X-Received: by 2002:a05:6122:3214:b0:4d3:4aad:22d4 with SMTP id
 ci20-20020a056122321400b004d34aad22d4mr3579962vkb.0.1709664368851; Tue, 05
 Mar 2024 10:46:08 -0800 (PST)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 5 Mar 2024 10:46:08 -0800
From: Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <CAL_JsqJjo1SBcf=ZLi=iunaHiX6Mt5H6wkoPcecnZmiAcAyihw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240303104853.31511-1-brgl@bgdev.pl> <CAMuHMdXWdKZjjZc39iXfa6Nohtn+Xm9YvcF+YoRpNzCgeWD8tA@mail.gmail.com>
 <CAL_JsqJjo1SBcf=ZLi=iunaHiX6Mt5H6wkoPcecnZmiAcAyihw@mail.gmail.com>
Date: Tue, 5 Mar 2024 10:46:08 -0800
Message-ID: <CAMRc=McBf8Fbacnxozr+=-7AFQ0EOXbaG+zUhkNEb9g1mihmMw@mail.gmail.com>
Subject: Re: [PATCH] of: make for_each_property_of_node() available to to !OF
To: Rob Herring <robh+dt@kernel.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Geert Uytterhoeven <geert@linux-m68k.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 5 Mar 2024 18:56:04 +0100, Rob Herring <robh+dt@kernel.org> said:
>
> Long term, I want to make struct device_node opaque. So if we really
> want to fix this, I think we'd want to convert this to use an iterator
> function. Though I guess any user would be mucking with struct
> property too, so the whole loop would need to be reworked. So in
> conclusion, don't use for_each_property_of_node(). :) Shrug.
>

I basically just need to get the list of all properties of a node. Even just
names. I'm working on a testing driver that needs to request all GPIOs assigned
to it over DT so it must find all `foo-gpios` properties.

How about:

int of_node_for_each_property(struct device_node *dn, int
(*func)(struct property *, void *), void *data)

as the iterator? You didn't say if you want to make struct property opaque as
well but even then it can be used with provided interfaces.

Bart

