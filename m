Return-Path: <devicetree+bounces-87943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDE793BA08
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 03:06:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 817311C21904
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 01:06:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A4514A32;
	Thu, 25 Jul 2024 01:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lS3IR5Hq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1BE33C7
	for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 01:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721869584; cv=none; b=Rbl4PjhYgiaZRNYHawsj7LY3dLWTw/kAu/W3vj8/xxv80lqFqeeJdKwaqDi9sFNicbSdsv8IVtCk8Ugd/dwrZReGOqeu/jivVCfa84pgLkD6pNpZZOoxBEb/8afULgp0rE3o/VOdQSElNSlCNWhDYSHEyW9P71RsPYlnuowg89Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721869584; c=relaxed/simple;
	bh=TB3Hm6XGbDPgJII4XztCnvOepjpz+iOC6LrCU/y/ZPM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FAc2OMkdJIfo8/b6+kBEGTjWOZ9oVMGTaZiXtBhsMFQ/WScRD0g1ISpZFyNij6H4XbkZwsyBYDuS21qXY1l3wQyiRjFBl0TwtxuTiBKFrMmiGeUiPEZmLPmdpmpmOXaoreJiic/oJxayrGJpERl1W9wCnRqkjwadQ9Y7WpG9VBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lS3IR5Hq; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-64f4fd64773so4703737b3.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 18:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721869582; x=1722474382; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TB3Hm6XGbDPgJII4XztCnvOepjpz+iOC6LrCU/y/ZPM=;
        b=lS3IR5HqhWfIYa++7rheKl0hzgWUpgEDVF9gecKmvuauZBqQlpkcFMqtuH3NSyJIsX
         JsPl0P8ruIa+BBF0MKwAQWU1P8qG/d02hP07tNVf+sxTDG2n6z53OnN/GX2WYd7FA62J
         KWosg+nCObovqeRDgzDGCQrfW4gc/evvPEj4HuT45nQyxoHOHEcatXqS8jgT7NrvlVUF
         yncoQih/nKl/O9hBRUNu/p37oiZwotrnJY5+6zGE+yWO/+/ji69O2R0vwJmCElSMFGCE
         SgEYqdto1VJS6CEOVebbGCYpygqzM0NDUBO5SO0YIjWXfRs0p7eNb65l7RBKCXIoWAKk
         XIkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721869582; x=1722474382;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TB3Hm6XGbDPgJII4XztCnvOepjpz+iOC6LrCU/y/ZPM=;
        b=Vqvf/iJxVxC60ZWmzbjf4MdF0++Z2F/Oo6vJ27tpq9tG2mhqV4lYxbX204J8mCyvpb
         ItnkPLM6W3OE3noqlVrEUFjlKIAdvq1xgzcCa2gvtuWzld0xlWONKvvhAxqUJF4Kof5i
         mLi1rChOQ88yZ7kE6SYOhMcIWUubbIuIS7a/JbD0j0XHJ3ojgMnBqUIVlUb76iv+FU5b
         OvYMSlyhYn4z8+1ZVKnfsfzK3cST+ht7bWosgEe4/oT3UZeZZe4rnUlHk4dRkjgZAs7D
         1ww76RIeyX/qCZ186utWz6BrOWVeeNcyG9PuNjaW6VgPUdZ7qt4fJ2b+NpJX2+gLnkjb
         N5tg==
X-Forwarded-Encrypted: i=1; AJvYcCXEoj3iG/pDEsYH78WcGPhnnxhlFFi34Ze49WMYK/EFLawgi32/owGO3GJInSmPpHgG8QcJCxQfqVaSl/Db+6EZPjAc2CBzg8puQA==
X-Gm-Message-State: AOJu0YxuDfmKXPEsCv7LY/0zChCbVEgebk0WRNps4/BnOLmwWZCiYzO2
	5MI5cpvDcnctjNOIPsE/HbC8eOgZd5qrDPsnHaUQnPWHH8jptQzQ0UxdKEeBTrpxft8I7WaOWic
	vtpOoo3gFluo21DWl+PbdT6l9ZlN3K11d/tGaWw==
X-Google-Smtp-Source: AGHT+IEOV7O5I0pX0ll/iJ+MoyJB63BQHQXFPzbiOz03qd8h58aQ5h7oPXvbm2HxBtsw/y3yAhYUHuLdyclrxpZ+OBY=
X-Received: by 2002:a0d:e306:0:b0:618:2381:2404 with SMTP id
 00721157ae682-675b8336633mr3139137b3.44.1721869581819; Wed, 24 Jul 2024
 18:06:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20240724153125eucas1p26cded41c82d3a851a7a4d845a81a3e29@eucas1p2.samsung.com>
 <CAPLW+4nYfVytXnpDs02QQGms59dL+=pAv7NMNPK6Ymsemmi_cw@mail.gmail.com> <20240724153118.914714-1-m.majewski2@samsung.com>
In-Reply-To: <20240724153118.914714-1-m.majewski2@samsung.com>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Wed, 24 Jul 2024 20:06:10 -0500
Message-ID: <CAPLW+4mg6XG=NzpKZ-j4L_djpYgaRv3rWJh5=ny3me3bngsLxg@mail.gmail.com>
Subject: Re: [PATCH 0/6] Add initial Exynos 850 support to the thermal driver
To: Mateusz Majewski <m.majewski2@samsung.com>
Cc: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 24, 2024 at 10:31=E2=80=AFAM Mateusz Majewski
<m.majewski2@samsung.com> wrote:
>
> > Btw, I'm
> > curious what is the reason for implementing TMU? Do you have some use
> > cases where it's needed?
>
> Not really AFAIK? Mostly because we have the hardware, are familiar with
> this driver, and have some time to do this :)

No complaints from my side! Wish more folks were working on this
platform :) Please let me know if I can assist you in any way. Hope in
v2 you can account for the TMU clock I enabled in [1], and test it.

Thanks!

[1] https://lore.kernel.org/linux-samsung-soc/20240723163311.28654-1-semen.=
protsenko@linaro.org/

