Return-Path: <devicetree+bounces-175609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7B7AB1465
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 15:09:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C97D41C26BCF
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 13:09:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6531829116A;
	Fri,  9 May 2025 13:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gOG4HmyZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C640D15E96
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 13:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746796136; cv=none; b=f4LDXZLXsSg/94GivFF/PhUDbdhTrvG1SBHBbP1v5tjDqD7k8qxrj8fCmFq8r1DqFtLHdLNMRKaW9dM30pfxLj3g+dwqryzRVfOhvypvbM54KJdIGa4K9HWm/7L/xXdu3m3UuQwP13aC8zmG4fWf0S3fT/IdiuhKQIvZdOp87jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746796136; c=relaxed/simple;
	bh=3jKAL3goVnv+0cf7KVmGqRXlYYkch85M8g6QwoX24Gc=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dw9emrTv5HIFFfA1qRnyOeTiu0q5pUA/QbtzO4M56vuNheU4mKvCd6bi10tSCoi0v3SToQKt2ROCNO/GjuVBa++X9xRJMc0YG/biLkuFYrd7ij+VcZQaPthyB/t6Qk/xIQhzmy4qPnhOhCirr4d3MQL+AQWAlHeBE3VYOI+bOaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gOG4HmyZ; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7301c227512so1748248a34.2
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 06:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746796134; x=1747400934; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=5Pd/m01PDi5c8NuGiBbVhA117WkSdRT+UArDIp/Z3Jk=;
        b=gOG4HmyZI5xQm4QxjgPQGt+qt8fzHp1R+/OZQKIznx70h/7miqq+ZybpZZF0S9SLVJ
         KlhE1HzNsO0zntfvdhZpdm/utvQyynZuKOol53gOl1thvBCvmPVY0mTDndywrMonm9pC
         LLptwm/jAlOc4PLMMkzZC5ebvIyON2/Q7+L3niyR7NsUTEdBlGai5po+m+eHi80hKmPR
         fcUxRVUoYN25MC8IF3LngnVM3sI5O1kQArc5v1HhyrLmztLuBPiOUKFs0NUjuABulCoL
         D0spFUDeFyXGVMLC3wMyRmD0VW5qIOiRl/kNVfzmRcMB+GDz5dJu1TBHCf0c1tF5vrt9
         MbjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746796134; x=1747400934;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Pd/m01PDi5c8NuGiBbVhA117WkSdRT+UArDIp/Z3Jk=;
        b=iphR85WBjtM2Ko7OY4rz6Fa8GsRkgzPoWde587J1RLF4thocw4RAVVTrWC67DV1e7P
         a8MVLSZH2MbultAYPp3U4V79LcJVYFy2AJB8SAmxnJ3xZMmmmwFhESBsvP71fa4nCnTf
         bjS26BLklnM7HeOUShOt9jhmAMIdKw+t5uCph5WTn4gD+Hqh5hy4vVt8auSitI2sMT0m
         i6J/cBx3yRuOfGiYOiYN5m8YvDaKaElPORduHYtthX3OSIIAbliz8k3yWZ0bZxQME1Py
         sh6Qo3xja5/LSgHb+b1bIh1kd195qBSA4hczVi5+fl5CSVjtlZVym5xoZROLSHVUMern
         UVZg==
X-Forwarded-Encrypted: i=1; AJvYcCVOSNufEAJejNEiISqn29p8296XIwLKu5zvgQg0Ahm8ntBVeTm0JJJZo4YML1XjvZwhYjeODrzTavxh@vger.kernel.org
X-Gm-Message-State: AOJu0YyFxJ2BBPZGZkYScgUZ7vvXPULhUefyTs4IAplx1nlzqxHxoF5Z
	tflaBPH+jVEvK+/dDLsKn35wf9ZReI2rW6YGz5gUm+sGgNSXOVpG
X-Gm-Gg: ASbGncuvUCKmJNRQoLXZAiEPDoWM2YFb0kRv8EINyjBOfCWUacen6PcCBJMSqyT30Ld
	iykDucW+39Mj+TQhTMmkeW5Mpd7ckJDycvUBziPF+fL3i8btRNjPqLecXoyPk22fyxI1F75jKus
	gaFId98PiEogaNvY4YGxds8DIaw4HqwQAq2k5N0w2kQwRtGdFZ8hcr0FOCPFObzYM9kIuU9Ji5d
	ck29KrZwP5N7iP6bi5tuMQgICQmkinitN4p84n1xxpMQcqbZSjQ/ZpBvB3Rhzdj+ixVAtwmkrwp
	yyPmRznWEcAeSLP8jRS+XPlhpyjuHH6BaKZMru6h1r+olPd/
X-Google-Smtp-Source: AGHT+IFEqGEU4+gmYrxK27SseVuJ9zHCcIk/byTROyoULXtbOeqxt2NTixyEVGYHAQ9VcKae+xCSqQ==
X-Received: by 2002:a05:6830:4181:b0:72b:8889:8222 with SMTP id 46e09a7af769-732269fa0d7mr2673118a34.8.1746796133759;
        Fri, 09 May 2025 06:08:53 -0700 (PDT)
Received: from neuromancer. ([2600:1700:fb0:1bcf:a91d:390d:851e:20e4])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732264b143bsm525881a34.20.2025.05.09.06.08.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 06:08:53 -0700 (PDT)
Message-ID: <681dfe65.9d0a0220.1c2d35.592e@mx.google.com>
X-Google-Original-Message-ID: <aB3-ZLAUO7YThhoF@neuromancer.>
Date: Fri, 9 May 2025 08:08:52 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org, ryan@testtoast.com,
	macromorgan@hotmail.com, p.zabel@pengutronix.de,
	tzimmermann@suse.de, maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch, airlied@gmail.com, mripard@kernel.org,
	samuel@sholland.org, jernej.skrabec@gmail.com, wens@csie.org,
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org
Subject: Re: [PATCH V9 00/24] drm: sun4i: add Display Engine 3.3 (DE33)
 support
References: <20250507201943.330111-1-macroalpha82@gmail.com>
 <20250508-foxhound-of-interesting-drizzle-34adae@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250508-foxhound-of-interesting-drizzle-34adae@kuoka>

On Thu, May 08, 2025 at 09:26:24AM +0200, Krzysztof Kozlowski wrote:
> On Wed, May 07, 2025 at 03:19:19PM GMT, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > I've spoken with Ryan and he agreed to let me take over this series to
> > get the display engine working on the Allwinner H616. I've taken his
> > previous patch series for Display Engine 3.3 and combined it with the
> > LCD controller patch series. I've also fixed a few additional bugs and
> > made some changes to the device tree bindings.
> > 
> > Changes since V8:
> >  - Combined the DE33 [1] series and the LCD [2] series to better track
> >    all patches necessary to output to an LCD display for the Allwinner
> >    H700.
> 
> You have here three or four different subsystems. This does not make it
> easier, but it makes it a huge patchbomb with unspecific or complex
> base.
> 
> Such combination makes no sense, because anyway it will have to be split
> per subsystem. You just know made it difficult for maintainers to review
> and apply, because they cannot apply entire set.
> 
> Best regards,
> Krzysztof
> 

I apologize, please ignore this series then. I'll break it up more
among subsystem lines and note that they are all related in the notes.

Thank you.

