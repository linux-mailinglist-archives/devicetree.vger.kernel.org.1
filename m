Return-Path: <devicetree+bounces-241532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B92C7F985
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:24:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DCE8A3418E0
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 09:24:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80F982F5321;
	Mon, 24 Nov 2025 09:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZZdtpfeP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2F62F5465
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763976269; cv=none; b=B12IMm8EdSoT8UjpIbh1Bn1vdzobJLzgsDPK2xIPhc4RX2sydAXwgsuKewX48MwawasfQUAJTRG7O7AtdT18GFLlAIWpXmaIrzkcw5bc7kDkLmzR+ebHjXdy49qaHKChhI7LC195xWijSyAHax13izxpO2aJCcNQ4J2z+Bda7Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763976269; c=relaxed/simple;
	bh=P3TNnHmbMQ7RiZfj11COEtOadWn9ZwdSOUvW0u0Lo8A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Nb5gBV9dFSzvJpNKMWl4zoudPxaBS1FXBIdfUOJJkGyzzgzXneh2X1JyBHDhF3R+PjNNyO6DLJWeSTTCmZLLSt/O4A/BrqbKlODS+nnug9e/hJ9acNazPJhXTAhM+SLtihxPHcgFW4HRmlWE7M3KdVY8joSINcLDxaaoK0WTxUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZZdtpfeP; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b73161849e1so695631466b.2
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 01:24:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763976266; x=1764581066; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=slSocduRhMtJsbQHXkMC9k8pMNaviAqpRIeDggJm8mI=;
        b=ZZdtpfePZFfUT/ZvhU2u/xPyRTq5AfkmYgwBxMgiIm7eNwOoFh9ZRn0tZvJR7Js6bv
         qyaRbzaYX6bvV3RvEsVZm9GQDMRBdu3iRP9eJFDv5Wl2HtYi0i49qYVJA7+2cTVlIPRX
         Lj1AQvJit2VCRos+jwBKM7u2pqXsbuJAaTJ4iZJ6yPn4X81ufl+9M8c8vmCQmVo67kHM
         u7wsRiB1AJTQ9L4ETsKRRXA2AkJKdzSAoM4NbvGh0QP1uwPAqZMZkOCq4LGgCHUhhwMX
         Je8I2P2viPlA2uIsQNLZs2Fwb6gDLY+Cur9+XIHp7LkZyEVBu+X1J0L4XQp4YVzIpUNa
         s6WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763976266; x=1764581066;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=slSocduRhMtJsbQHXkMC9k8pMNaviAqpRIeDggJm8mI=;
        b=Xyl1F2udBRdlVH1PpV3oXbxGgFaOY04U/nHp5dnLoBZbVIFdXANUhgacxqHbhfCvoo
         TzSk95f8qo0J6nCh5firEyhFvwqFgY/Tc/LTpwohodhQQaGc4kIjCbLrYLqPiZd1c47U
         077SMNtXfpqqZP6mcgb4Om4MkGlXAwFyvxPdpS7DgavUYg/mY6X0JtNWYhUI/FJyjx6N
         k0N7SealvO7uPaAzWtW4nGH70wmjifFlNUCSDBOJpuGoiaAB4oYsw60aYGF3Z0iKbp9S
         1Lji81evZCRkjmn77Qlx0TZkKhpgMh6WkOpaQGwRJyCjpbxt0Xsq23kPAR9083c3H1AP
         V1PA==
X-Forwarded-Encrypted: i=1; AJvYcCWo5r4ilRks5L5e2wHWMzFzJhdx+JGwWlZJXFFOrCniLQ2PH1pcwQgXpVQ7dsqongJOm/gSJdSczWCD@vger.kernel.org
X-Gm-Message-State: AOJu0YycnQEgYB5A2X6bcpVVj2OzhTiD94/KaSWVCf6gdMv+RiNueXPv
	9leUUVPWp9koWulnmsOVvzBJSSW69FNhVPkQbC2Zbs2KMDmiYpU00/PZ
X-Gm-Gg: ASbGnct/ZwrIsbAYsKOi3ClzhyPnjBoCvJGGyH5kyve5prRxdrI/PmXDSGaPADEGmAQ
	K7SBeZm2uz43KhSWDqmnp5oOrr/h+iH7IF5jFPlzfkp6vtMi60J3wv1uIRvkdx2oUf9LidBgkZE
	EQ9cYLwsk3frkESmEySWX0iox7Ar0zif+ike0Q+sBXDSNTYimFGOX/Rl9WWpYZD0irlvvn89bkl
	d8Yk4eX0kYVrsH1BrP+QAvwKxtIV9rq/2EMeOIocHeB454wxIC7EYHz5/Vr9TcOV1U3A7D44v4i
	v+Qr38nG5iM69Z1z6BeRLvE9SbheCLdOpFjW/u8coGo38OTz9lUhS852aMfUYH6K++aPdYkDk9A
	laOqT1ria6PaV+ze1ZLZh6oldJccmYQvT7rloGV4OsdFdXYJ/Ya+PyIsL4IZEfeCQoovOwMLaGd
	fGZNp9f90L8SWrTY7ykLyY/6d7TBvFCFXgxusC4jwclDsCsO7sRAH6UMavRRLwxHLYtM91
X-Google-Smtp-Source: AGHT+IG43taRGXlMb7A2ZG4Z0Lz7XxTi1f/W9lGskn1Ni6JWJYwXfKHzRtFJ/vmRNLd6ClmF9wOYDQ==
X-Received: by 2002:a17:907:8e96:b0:b47:2be3:bc75 with SMTP id a640c23a62f3a-b76718ab22emr1047239266b.60.1763976265537;
        Mon, 24 Nov 2025 01:24:25 -0800 (PST)
Received: from HYB-DlYm71t3hSl.ad.analog.com ([2a02:3033:267:9a21:9532:f12d:5875:dc2c])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7655028400sm1195719166b.56.2025.11.24.01.24.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 01:24:25 -0800 (PST)
Date: Mon, 24 Nov 2025 10:24:22 +0100
From: Jorge Marques <gastmaier@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	Jorge Marques <jorge.marques@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, David Lechner <dlechner@baylibre.com>, 
	Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH 3/7] iio: adc: Add support for ad4062
Message-ID: <m4a3o4fbs5bhsru6fsmik3qtthvit3565lkp6itjyqzjbd55hd@whjpvtn7xngm>
References: <20251013-staging-ad4062-v1-0-0f8ce7fef50c@analog.com>
 <20251013-staging-ad4062-v1-3-0f8ce7fef50c@analog.com>
 <20251018171032.144a126c@jic23-huawei>
 <ou6qwayt4g7qaoe5dm7tdg6jl5dwquslpfbok6on5r2q2wytyl@wlqxj5y6ircj>
 <aSQMjZbc75cQtFqJ@smile.fi.intel.com>
 <o4kt2of4xql4azufjgiecm4jzuexgm6nkvr7aghbwfk6qd7yqd@r4plggehzces>
 <aSQhTd5Z7KyvHtbG@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aSQhTd5Z7KyvHtbG@smile.fi.intel.com>

On Mon, Nov 24, 2025 at 11:11:41AM +0200, Andy Shevchenko wrote:
> On Mon, Nov 24, 2025 at 09:57:26AM +0100, Jorge Marques wrote:
> > On Mon, Nov 24, 2025 at 09:43:09AM +0200, Andy Shevchenko wrote:
> 
> ...
> 
> > I will submitted v2 shortly.
> 
> I think the "shortly" is not needed, please take your time, this seems missed
> v6.19-rc1 anyway.

Hi Andy,

I was submitting when this reached my mailbox. Still, noted the comment
on your next e-mail and no pressure on the release window, I just didn't
have further changes for this revision.

> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 
Thanks,
Jorge

