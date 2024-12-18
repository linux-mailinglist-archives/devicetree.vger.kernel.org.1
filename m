Return-Path: <devicetree+bounces-132279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4C99F65A8
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 13:15:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DBBB8188BF7C
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 12:15:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E686A1A3042;
	Wed, 18 Dec 2024 12:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rOTmYd6q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89C6A1A23A2
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 12:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734524094; cv=none; b=oLoX+CfZ/s+OGtkAnqGedmUA4haPcuk1QVY11LZ43aF/XHrslzObEMAIvSIdHkfT8fMaMrMTGGtcWgmJqBb0xgA+Y5FBbjmJYMzotwb+EKt5/MYmhvSadWopjB/6Wp509wfL7Ql4hpL7ZW9kV5b0Z42NhsYFq7G3YER2/+JCFZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734524094; c=relaxed/simple;
	bh=qWC8TK/CZLbEW+1tkvwXLeCJBYK6BKk4PiQCgLFscV8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NkjTV1azs4iWQDZYDJvntXk/KZ/FQ6otN9+Uddcq7+I1UkpuwOPCOGUFQv2k091cy3BylnQzD0ENhZowqPkwpg9X/BZf07BfDpl2w/xC8PlidpahMf0ThWFOmf5Y5ayyb/XbbUGATNyfGo+G0OY8hyuQJQl3XNC2ZlmTHBGfOC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rOTmYd6q; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3eba0f09c3aso1868390b6e.1
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 04:14:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734524090; x=1735128890; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qWC8TK/CZLbEW+1tkvwXLeCJBYK6BKk4PiQCgLFscV8=;
        b=rOTmYd6q5kgQeyY6ClrjdXp0SepMlqGwphB9HigdF7ZcbCJCEE9TD6W2n+96axfNJo
         9bUjKrWNwWMbfd/W8k6+TrYDFLSOpEirtK4GtjixuOSAOD+4/coH+ZTeEv17T7uYaUgD
         S9FfeV5dfGbmznR4LcdsahyRBBvNk4hiyB4bZfs6oqvo2m6iIUPuMUcY0sw72cMHGGmB
         vnu5FpJb+3sklJw/EzCfbsQVcjJ0CyII62ZcZ05RDNZeKQi0LudRcjAYPRRPxXEL/AA+
         EDul0BxjuI491L8w9naYl65P7OrPThZGZYvjNElXyCaa917/B3GNFwhqoyqsIEAOzvgs
         0mSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734524090; x=1735128890;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qWC8TK/CZLbEW+1tkvwXLeCJBYK6BKk4PiQCgLFscV8=;
        b=ii4oNeHLdOXrIzqOxD2y/gC1F+keXiKn9YXeuJL9mrHCZi7FXotv7sNAacdSvYfeQi
         sLuhvzY2zVfLqhcEYrHSB0LRV08dRN4WjN8VRAxSBkuA20iR/HTXz9sL2mCKAxQW3QK6
         uYmKTdSIKjiPXO1RbRAzieMQxK1g3sCfVcVzHvU5s6xqFUb8nNZ4DgERHb9N2A0aSyBH
         +GZkoZ8qImbklnACm0sEYeR51uLlsTisJn6Ogh3K0ts6THggjMH463iMFSzoEcrwHDtt
         hPgC4z8e4CnvQXvzVsBiH8UPlrMsUCxg6oIn3kq1Xfn3wz3XxvS1cD2sX9eKYou3J0Fp
         RCew==
X-Forwarded-Encrypted: i=1; AJvYcCVyTEoYD5xvt95swGvJ/ueBYpvwyOwwFttd8dc6wVk4L1xu6oekHuqh57OCOEBGxsjwORkpPlXgzDoh@vger.kernel.org
X-Gm-Message-State: AOJu0YyHhf1AhT+HAFpGLqEBBMraSLYH9i4nbX+BjJbWH6/vKsbbQKTr
	TG+FpaZkoj+9p6QqHINdk9areJ7KGOJ2N4suHMwX7sdpCU4W17HDdRYcReRXP6OOsYmvdQyEDkS
	BJOr+b9jti4NB/bM5kOlVyqTnmPysiXRKWdVwvA==
X-Gm-Gg: ASbGnct4y3D01N8ISpLrrjUZcOrN+oWO81rffTXM2a7t103Z/36QAJv6Nu6M8zvQDZ3
	rjtMByrNnLSecWETjF7rKBEHNEu2cJ8tFDCD3ABo=
X-Google-Smtp-Source: AGHT+IFdw7iYmOiyk30Vm81g/2qKdB3Em6Po0+spT5pDn8MU1wacuialp5Zo32J1hgw5gReqkX3215F81udAl9ELCSg=
X-Received: by 2002:a05:6808:4443:b0:3eb:8855:eff7 with SMTP id
 5614622812f47-3eccc093e98mr1458028b6e.27.1734524090549; Wed, 18 Dec 2024
 04:14:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241216-gs101-simplefb-v1-0-8ccad1830281@linaro.org> <20241216-gs101-simplefb-v1-3-8ccad1830281@linaro.org>
In-Reply-To: <20241216-gs101-simplefb-v1-3-8ccad1830281@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 18 Dec 2024 12:14:39 +0000
Message-ID: <CADrjBPqUcsiX5u80ASfWOe17Cwnr6EA0g2bxfgc-e8YpmWkUYg@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: exynos: gs101-oriole: move common Pixel6
 & 6Pro parts into a .dtsi
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

On Mon, 16 Dec 2024 at 13:06, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> In order to support Pixel 6 (Oriole) and Pixel 6 Pro (Raven) properly,
> we have to be able to distinguish them properly as we add support for
> more features.
>
> For example, Raven has a larger display. There are other differences,
> like battery design capacity, etc.
>
> Move all the parts that are common for now into a gs101-raviole.dtsi,
> and just leave the display related things in gs101-oriole.dts.
>
> Raviole was chosen as the name because Google uses that when referring
> to the combination of Oriole & Raven, keeping the familiar terminology.

As discussed off list lets not use the "raviole" terminology (as it
precludes Pixel 6a / Bluejay which is also based on gs101). I think
something like gs101-board-common.dtsi would be better.

Additionally I tested this series on a Pixel 6 Oriole device (with the
latest Yocto initramfs) and the frame-buffer was functional.

With the above comments addressed

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Tested-by: Peter Griffin <peter.griffin@linaro.org>

regards,

Peter

