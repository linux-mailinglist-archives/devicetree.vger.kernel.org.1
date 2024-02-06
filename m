Return-Path: <devicetree+bounces-39060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 054AD84B45F
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 13:06:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 380081C2134E
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 12:06:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6BA312FF90;
	Tue,  6 Feb 2024 12:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uUwKGVVY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECBC12FB33
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 12:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707220830; cv=none; b=hiYU3WD1XllGQeHhce72dvZ5Ky+/0Ft+L01RUU3ysjnJjvJT0ldWxppBbiKncKhH86J8AngZi2TVJfUWqJKn/T8xHisHJ5ZKcgCtNV8GJjECwFHu+p2r7ardsi583z+mPEzhS+zaIsl4Kp0PCRxNUIXmEdljmPRju+mm9kfDeKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707220830; c=relaxed/simple;
	bh=zHzTftf7qljyFyamE3gPK65Zs/n2+lrZ0S7UePOD9lA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fQp4xFCYXLS/A5xCW/zn/9rRJESqdAvjuAr1t3N559dtb4FJY20Fy71heFFWinblLY2k/3f0bfG6b+SF7v87orBhZIa2vL7l/xoIkMqObhV1erYPGk08lAde0RTcwj/MmP4Clsn6N6QmGB17NPhJgRZOqpsp2eYCFoHLjWptK1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uUwKGVVY; arc=none smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-68c431c6c91so24147806d6.0
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 04:00:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707220828; x=1707825628; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VYcLq+0GybZqiLelEzr2Y9hS+F3sRASXDSVWvTM+L0U=;
        b=uUwKGVVYrBChUZfjOXBJuiPNkZpMJAMaHB5s+riSgawFAx5YgeSAV9bxi008vjymw7
         SY1ueT+NftJoBeHY1kAT/yhKQz+BvVgmVgwdIYTtIHbhjbUwnEOrDepawx27cbWJDXpX
         N1fk+QmH4cAfVv+1H+hVzcaPvMl5ss/iW+pAf9DT2d0yjTF3Fs5MHSNJyIC4tbvN3EFc
         qGs6sCr6xLv0H5S35KDImW5YH+mReEXAfT9U3OrJqH0PXMDuhuwnu/wSrZGhpWoFw60M
         FnaCLZYX/qrue2rzWRE4fimr6Gry+btpmQWq9+vvviZsATA/kUVOlcs34hg5cAizECw1
         JXfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707220828; x=1707825628;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VYcLq+0GybZqiLelEzr2Y9hS+F3sRASXDSVWvTM+L0U=;
        b=WHx2ZdLZkUY1gPkM2VcsNk3RskWELIfN2PQL/5X/YKfFzZWYEqKcC5t4eQ5W3H0hqU
         zO9QV3POfry8xQIeQ45Np7E8+QDdnAYAAwAj+bEu37sW3/jtls/PDzluij7NwZlBm/XS
         HHAG/C+7j2wrfnGFV9nSNq9kdwjRmoHRQqLAIDCkP8AULhe8e0eYg+AJOej92opByXv1
         AA8/huh+lG+xSLKp4rUqIKf3k3PmhZCr/G0qt3P7bxabET3EKfwR5mjbgTXwJT7TfrTF
         UT7kLgYiUwO5pL5JnLv95YSHQwEdHN7RwLLN3jn6kgvflomeL/ILbt1V2OF6PjC+tedR
         +H0w==
X-Gm-Message-State: AOJu0Yxv4vgDhpE7x9ViB6uVZJVFFC3Y4AaiRYtXGnvza8W9sa6svojD
	0miJMBNcjxyb/8niZjXX05C0NLKLnVemDirQ+382EUrt5XZELUbHinmRfzL34tOyG12ALDnlIjY
	0DBUIhAtMUmOAyQpwM1KnZofHm8eJ3GG0lJm4MA==
X-Google-Smtp-Source: AGHT+IFV+oUSkiUAp29uvJltm9vvmt4Me3yZxlKDNCTv1Gn65ralsDCsUWdPBGzl8Rj9xoJuSnBOEhj1ISiTbwxIvxQ=
X-Received: by 2002:a05:6214:27e1:b0:68c:91be:68ea with SMTP id
 jt1-20020a05621427e100b0068c91be68eamr2250014qvb.38.1707220827979; Tue, 06
 Feb 2024 04:00:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240206085238.1208256-1-tudor.ambarus@linaro.org>
 <20240206085238.1208256-5-tudor.ambarus@linaro.org> <CADrjBPqaE9Mmbr+zkHOAadr3aLSu3GMjS4nPPd4VZY4s2DTznA@mail.gmail.com>
 <ZcISMLoB2ytoQs/0@finisterre.sirena.org.uk> <833b96e5-348f-4c5c-b157-c57c9a67e0f2@linaro.org>
In-Reply-To: <833b96e5-348f-4c5c-b157-c57c9a67e0f2@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 6 Feb 2024 12:00:16 +0000
Message-ID: <CADrjBPpF_RdB5fe9udOgxLKmdb7D0Gux+n0XxUtneuAawSjoaA@mail.gmail.com>
Subject: Re: [PATCH 4/4] spi: s3c64xx: add support for google,gs101-spi
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Mark Brown <broonie@kernel.org>, andi.shyti@kernel.org, semen.protsenko@linaro.org, 
	krzysztof.kozlowski@linaro.org, alim.akhtar@samsung.com, 
	linux-spi@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
	robh+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 6 Feb 2024 at 11:19, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>
>
>
> On 2/6/24 11:04, Mark Brown wrote:
> > On Tue, Feb 06, 2024 at 10:12:30AM +0000, Peter Griffin wrote:
> >
> >> The patch ordering seems a bit off with this series..I believe it should be
> >> 1) dt-bindings patch (docs first)
> >> 2) Add the use_32bit_io flag / functionality
> >> 3) gs101 support (this patch) that uses the use_32bit_io functionality
> >
> > That's the ordering the series has?  There's a random cleanup patch
> > tacked on the front but that really ought to be separate anyway.
>
> I put the include <linux/types.h> patch first because I considered it a
> fix (driver is using u32) and because I need types.h in patch 3/4. Fixes
> first, then bindings, then driver.
>
> Was I wrong?

No my mistake, sorry for the noise. Gmail showed this driver change as
the first patch after the cover letter but the subject was hidden so
it wasn't obvious it was [4/4]

