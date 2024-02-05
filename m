Return-Path: <devicetree+bounces-38533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 433F184963B
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 10:19:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F36A42847E2
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 09:19:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCA90125A4;
	Mon,  5 Feb 2024 09:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QYHdXPm1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729EB125B6
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 09:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707124761; cv=none; b=j1P5kb75v3XEGAWXB2M8zUSlXlwbanEAze1dkaR4bUNmT8jniUFIYV+KQpqHCfbiuTb/bA1Ppsnaa1lVsF9eLUDKc57S+M4D3I7A41eMzKITpFG+0FFq34ULa2miwqcRGPDkb8ckhxv8JKuJnl6p6gjbfjXQMjION1Krk9/UTe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707124761; c=relaxed/simple;
	bh=ob7kGhoaTTcYxGAEHYBwOgAL//YL1EYSlpk8KvQ9uFo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZFmBfoG2trn9JTu9alxVjz1UJCjB68Q0GzorzcADbyrS1gTlJSns+SxhNGZ/TIH6FFzZ1LOKu2ZudbGPBHoRDyskhf4dnjehmTYrr8adWY0DiI4308SIAAHvzK4PzyImZC/qycR1DcIL5Sg9VqQlA54Hec5hX47NiGBd1tTJwK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QYHdXPm1; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2909a632e40so3005831a91.0
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 01:19:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707124760; x=1707729560; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iltS7oSXonQHc0bgKrJF7wtzZ9k7Q1yk9n+rFzQ/yUQ=;
        b=QYHdXPm1C7q22XTaT0Ursk/Nwg1DQ7Dim0UVSLhWhaSC/rwsLwdHbJohqbeE8qcSDT
         M040udggCrJYFWu5NiSkC3I9INnT8V5mrxWjy7jMkyKxVyBK7rDAnI+lYUT8U6tGSwwR
         SPvW/nGgxQa9aTWVdaHsHEle3Ln2fTLjrpNn/Lv9WrVfuIdmChwu22Uw9oLNi20a8Y4L
         G+HWQV6JGnD/0FyX/aB6xkwdMNsIedX3dFer0sJfhiz3OFVsyDCYUtaJJaMIGbCxJJpp
         qqfxNmmg/XVIfBvOJJC7P32buQfaFbesbYEDB4mfFBNTan7b6MlugqE7KDC5Xhqebbmp
         ge+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707124760; x=1707729560;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iltS7oSXonQHc0bgKrJF7wtzZ9k7Q1yk9n+rFzQ/yUQ=;
        b=MVto0wruez/4ULjG30k6T7LcBAFsiRRTq/UAu1ChCAK8lRIgfRfZOg75oqjzgffBaA
         IxmNHERZupl4iMEk2tGHEwaNhYN/QUz8hSDUyI9k/KS5TxW3kA8FSXV34KGjQF8tE3bO
         Omgt8GUgMXfNiX9kd02kyXXyL+io3TeQMp40uwFFNMNYpNaPBbqcd9Y2hum6c0o6XeA4
         RdsLpDWOnDhVAjDXQI8RIGhN+ftmL1QlT2AWpfQXNmmTviH0oy/XIsuLJ3UmFulsmgJ2
         tXBH5OjmkFbLiHHv++D3xF/RLOY2sbKmRGGL8jt/sRM5apXz7WRmj14t+Fob2LNvsziE
         iG9A==
X-Gm-Message-State: AOJu0YwOTr4gVBDig+hvm7l6y/AxGHW7J6n++rWgGfPPRWHYRizJSHYk
	yT8dnetSyATeYTM4F9krtrsJAdUdd0RFm6s9RpJXqqxs2TuyF3Yg
X-Google-Smtp-Source: AGHT+IESYoCV147Z8ReqSCVtvKEQ4MC+wbYHXFw5OPogtbOAzxIOHrBZislh4kREZD8wfe1wA16mog==
X-Received: by 2002:a17:90b:11c2:b0:295:fb0a:7651 with SMTP id gv2-20020a17090b11c200b00295fb0a7651mr11697886pjb.33.1707124759689;
        Mon, 05 Feb 2024 01:19:19 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVcZl0fVyTq17h6fjzJ2SMdNVNgRxD8GH9w6BrkA2pWkHQ0ylgxzOASy2aTYW9rjixrgzKcnAHdOaaSuLdT3wOz3i6ZCucTJ+cfArMohrX0agTSInVzkDVYh+fq15M+hU7PS96P9oMiLkYGVUG+rpKmk7WZwkdodHBwVqKxpx7X6aZjNUIbP/mGdGEX1aBRKaFFkVJAnwEv+MhPHvFaq8PWLTlgGXrDT1V6eX1gdpSuG/A4yEmaWqmLyrxpjpitdJhDVbxVtpFt6PJb9cPa9DOB/TKSOh4k95ugQgGm3aEM7QSKFs7s91aoMiOOXmir3mN7mFrFW8d+KzjS0AhjH89eCHTUKgpPpGg54clbCDfisH5j85WSXW4yViK/XcdChfGZ+6FRC0jROatT
Received: from t480 (89.208.247.201.16clouds.com. [89.208.247.201])
        by smtp.gmail.com with ESMTPSA id oc17-20020a17090b1c1100b0029020be4298sm4734066pjb.0.2024.02.05.01.19.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 01:19:19 -0800 (PST)
Date: Mon, 5 Feb 2024 17:19:15 +0800
From: Shawn Guo <shawn.gsc@gmail.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Subject: Re: [PATCH 1/1] arm64: dts: freescale: tqma9352: Update I2C eeprom
 compatible
Message-ID: <ZcCoE4Ss72hvDf2w@t480>
References: <20240110100526.478771-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240110100526.478771-1-alexander.stein@ew.tq-group.com>

On Wed, Jan 10, 2024 at 11:05:26AM +0100, Alexander Stein wrote:
> Now that there is a dedicated compatible for the idendification page use
> that instead. This also allows the removal the size and pagesize
> properties.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!

