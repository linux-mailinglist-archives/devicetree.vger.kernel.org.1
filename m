Return-Path: <devicetree+bounces-73660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA0A9002FD
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 14:05:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 03FBEB263FC
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 12:04:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86BC9190060;
	Fri,  7 Jun 2024 12:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gCpmLiuC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0387518FC63
	for <devicetree@vger.kernel.org>; Fri,  7 Jun 2024 12:04:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717761883; cv=none; b=EZS4AUNei40nrVl7q6wTGwM9yAyH8LxGCWw4f/qLF3lU09Hl4NbK0AetHreYdQATxMgmi/vfnV7AOPttvM6MaNv2rDFYvghKBP8olp+OJA93PZgyiqgIosfST+yck5FniswGQey+brW73uws0woUXigW3M3dBrQKd/rW/BED49c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717761883; c=relaxed/simple;
	bh=fXfeb4+UvRDSQYpRVmIq3/quRpqs6deTuQHw/AEBAIw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lyZG12/8g/uAFcxi9A4UlZmU+gLceTWLW1AxKG4wFKErt5OLAODRBHcUoK/Bc5urMp2AOjt/VN9C7FBYfwtLlrlZlA9z3LP7VVa/TuOOevUHUDS5rCnEsiwY0KnVhz8CB+XjvygzBvQLECXuWbzA9q25Pkar86F3PntxN26nW54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gCpmLiuC; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-6f9398390fcso643793a34.3
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2024 05:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717761881; x=1718366681; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DsnAIOZzuHsMblCK5Wyo2qtzh+qW0N73ZweI2cUEP1k=;
        b=gCpmLiuC9QcxG4hGd5xo2KsVlduLNH5uN8uLb1kXcE94Ek/FCwRmIFVoyVmODrKfae
         /rfWHzZxtne/rjL4z1uIAMMFYfYTxyIqDQM9OvxzRm1lqOkQV5Y2NnLSZHn8Tuiw6Ld0
         sK9Ibgmq/FmrdWax1BVaGCRCDjWq61kNpCHvGvNNZSxKQ9GeSMK9yKvtE2Zo+Z/alfVh
         YLjjrwjPRyFwmFQnWJ3noVgncnVjEbAHrnM6/dUrxmT3KNM7sjM2e5FqUu/hCXzG77Yq
         TjvvDvPTcBVikZVxqsJIQ1GH8LDNuhWvJ7qxDRAWXoIhjNFf3n4Ft7CppzY/G3y6gIqE
         oHlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717761881; x=1718366681;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DsnAIOZzuHsMblCK5Wyo2qtzh+qW0N73ZweI2cUEP1k=;
        b=pjS673QNBgEml44U0583VHL2UFHaD8mJoGdBHGsIB/abYI95BnOR49pZTCVIjsZfs7
         +US8wu9qtqhKlowd8xcLrL4H5+6jsBFHvG2zRrg5dKJQMWuiBYSdiv03BCOd5ILpz4gN
         zGhls65OjMlDUHlgYgVeJKU04fYt7swezSDbPlfLWxbFn3Vrk604NuhQD85Z68tljbkb
         s7t9pb/d49FDBSpXax3dG3YiEvChVNUO8jXERuHqufsdtcKsjOEJn6FPmC0elwVWNAi1
         EMisaHLDTxT5/glPoFWf9FR2zbFq/YECx1OTfmK08tWIFvBg07xIr6LEEE/Mufhla3WH
         65MA==
X-Forwarded-Encrypted: i=1; AJvYcCWwxu2ccD+MOyxDgFzTodrJR6cCu4ptU0rmwJiej6qMJZp9O8PQqDESQqUBRfYf/wbVrzdA38h3U9LNephdQCj57VMd2d5NYpSrkQ==
X-Gm-Message-State: AOJu0YyJds8Xxvut+f8s+0GvOJMJQwMmUC3DYZE3K0C5ahn3XKaz3NBx
	k+0TSsyoppIbid+pjjP+De3mmaVIeZ0YqLo25+XUPpN7mMzwkYFl+E4/P+05VKnAbp08OHHjXpt
	h5IG4yl8szruqVbUP/LWm/COf4UYG+U0YNzyAuw==
X-Google-Smtp-Source: AGHT+IETi62DUKnC9LFoGDVSrwVYfAj5bLtwDr84JTqNN4MYb1edwtz3sgiNUcALGr6HLEisP7i3zCXtYPAx8jBX/jE=
X-Received: by 2002:a9d:7d8b:0:b0:6f9:631c:c45c with SMTP id
 46e09a7af769-6f9631cc6f1mr222367a34.3.1717761880907; Fri, 07 Jun 2024
 05:04:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240601084528.22502-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240601084528.22502-5-lvzhaoxiong@huaqin.corp-partner.google.com>
 <5yz4uct3dnxqflij34zasu6fhr42gyl6kjfjobftrwpsl6j4y6@3kzp4s3dxktw> <CA+6=WdSpHp6WRwZ3ta6ZR585ON9XSjWB5s1EjbhpBnWGWmhRAw@mail.gmail.com>
In-Reply-To: <CA+6=WdSpHp6WRwZ3ta6ZR585ON9XSjWB5s1EjbhpBnWGWmhRAw@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 7 Jun 2024 15:04:30 +0300
Message-ID: <CAA8EJppknn-doN=1jNBiZFUqF5ZOPxb4jbNe5Cf8uHatS4cbfA@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] drm/panel: starry: add new panel driver
To: zhaoxiong lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	benjamin.tissoires@redhat.co, dianders@google.com, hsinyi@google.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 7 Jun 2024 at 14:51, zhaoxiong lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> hi Dmitry
>
> These two panels are not the same IC but their timing is the same,
> only the init cmd and panel parameters are different, so I made it
> compatible on the kingdisplay driver.

We usually merge drivers by the driver IC, not by the timings.

Please stop top-posting.

>
> Similar to this driver:  panel-boe-tv101wum-nl6.c
>
> thanks
>
> On Sun, Jun 2, 2024 at 12:26=E2=80=AFAM Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> >
> > On Sat, Jun 01, 2024 at 04:45:28PM +0800, Zhaoxiong Lv wrote:
> > > This Starry panel has the same timing as the Kingdisplay panel,
> > > so add starry configuration in the Kingdisplay driver.
> >
> > Do these two panels share the same driver IC? Programming sequences do
> > not seem common, so it might be better to have a separate driver for
> > this panel.


--=20
With best wishes
Dmitry

