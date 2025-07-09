Return-Path: <devicetree+bounces-194575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C91AFE87D
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 13:59:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E0006E23A6
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 11:59:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 296B42D77F6;
	Wed,  9 Jul 2025 11:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="I/l9ss5C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE6B1FE451
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 11:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752062383; cv=none; b=hyIBmV3PII7R5DmYXN7MumE/blP+RjNBYRmdN/tSz076Et0EOXSCpIcsWPwb7zdnl+v38E5ENEc7FQ8LOxZIqhh6JoWBmLe/EF+HPeNx9UkWoY/VtaGINqc6xzNAZTdFlgX4+qzFSb9frPR/bGB7v0khu6hfbUwm+tN8cnnXomg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752062383; c=relaxed/simple;
	bh=9pVv9RHixO9d2u5FdY4HrMvtjdLG3sLqMZQKJyVQ/RE=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=R9y5NT1JOY3UJGIaoH4RM/fcK7YoW1c9nMQFQdSljG4cNokBanUZKx4NNcDqZqlVxNI6UNhx3+panathBvD9u4zj9AACso2HI+lAiryV75H+H6zSYwVHccMByqrqmN0Ecb1fU20d3vNrpXlh9EBrYsvsBBsE75Hu0CiJp6pVbTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=I/l9ss5C; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ae3a604b43bso864349866b.0
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 04:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752062380; x=1752667180; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VwaoJLiJYF12OSK8rGI95sJddGwuByNYIOGTk/ksVzQ=;
        b=I/l9ss5C9PAfhDlfShQ35YWk+BRm0E17GRDikPaSam0JgAbLc7P2ns4sZtt/a4OVjg
         rYbDpPQ0KVyUKUQSAikua41foV/Ua12/X2/pUCQyLppBr867YhrGPO1mnpzhnTsIzStj
         ekxRxJJK3kCbTDa6KevbEF+bKhYv4R8x29hQuT/YtrSOHMAqlaqMGNs5alz1aVaA0hNZ
         KCBMRZ60vAFAWebteaqt67asWPfIUBxKYEuYt9IbqYsqxxkifb2d8rF++zBaPUray8Kd
         3QMI63XvglFpMilnPnKQaVVZkWl8xSMjvxmQbxieOILT2Hoo2iVGfrksdWPkBxTJDsp0
         RXRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752062380; x=1752667180;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VwaoJLiJYF12OSK8rGI95sJddGwuByNYIOGTk/ksVzQ=;
        b=bTnNIKJBvSZ+FxABjhCbrb0iMHc8XarfUXhHX1z7CpKQZbvcAQDt7fy8dfFvVg2eD6
         Qxms0poQrxA3hwEYQCpa/e5fd5zKX+loM8BF7LND9V1IuU/5vFqUC5PcgZpzjPQtP2+o
         bMPD7wCS4Q4LmOvDt564OpfdyBeEP/aH4BHy1Jvguc9hVth2rQKdOHmvMNRCyDKPYMUl
         REB51ENSxvI/IPR95sP2xqsXpBAkM6ZwL68S0o/G+S7wGRu+5x7ooSNwwF50hTDDnakT
         lNDjpNbSFIHa52Ie30IqZ1uyMsu4O2L9CRHUGr9KR9VCqEhK8bcoGS4Q8lopKF0WFBbD
         R2tA==
X-Forwarded-Encrypted: i=1; AJvYcCVnycH9S9oFt6QzyHLvIneUS+OpmyA9YgZ1/GAi65QLb99cCsFiYf8gXBx/CqlTOW9TS/hA44cdajj9@vger.kernel.org
X-Gm-Message-State: AOJu0YwIhw6qRJUdUgWGEmFCA816U2yauEqTpppp+XRAZUQSNBX/KgnI
	z8S2GYpXN7qGf2hZbKX36WEd7klHSiVZLQS6XB7Bmqtpf4jVRu0LHbDOSl2jOGIo2pc=
X-Gm-Gg: ASbGncssgfN7s1SEjhE/ZcdFqTvJujxKx8PfkT6ZA0Z14LkIMHCHMkQZMAS/XAgH66D
	5V2UBWZ+drWJPwhhR4JJOffpDOVAxrhF7Y17QJl9beCq3FTOBAMs/JrxkrnSGhw8GWonx0Pracs
	XyCg862/nDrL2o6AtlBgIezh0Fbz4mticf5vjnBHTp8rb9ElVGjeLJeBrqWjGu5hhzVImnOBoZy
	5L0gUbDcb1aKuINpWF6vixoMaBN0CTuttnp8/bsUV64wuMV0LtmzVUTNnpzFr1Yvfp19bLc1H1I
	RVn2rcut1FgjAzdclVhmC357U6Tp2n5mFn/eKhFfBvbQmnRKdvn1DDuDelGgQnvhi4ptDEfnlue
	/3Dxg6fLf3lAnYuWxoBUV+A0fplXx1UmemX/b9i+M5A==
X-Google-Smtp-Source: AGHT+IF5M43gbb1VPZRgUmXUN6Xh1tAveUbZcs0w5aMrTx9Nx/yzR4T2sKl+aY7FPc+zZ1BgthqpOg==
X-Received: by 2002:a17:907:9708:b0:ae3:5f74:11fd with SMTP id a640c23a62f3a-ae6cf5e8e9bmr206052066b.23.1752062379715;
        Wed, 09 Jul 2025 04:59:39 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6d7fc3584sm76721666b.62.2025.07.09.04.59.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jul 2025 04:59:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 09 Jul 2025 13:59:38 +0200
Message-Id: <DB7IA132RX61.200FUO5T7L3I8@fairphone.com>
Cc: "Hans de Goede" <hdegoede@redhat.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Javier Martinez Canillas"
 <javierm@redhat.com>, "Helge Deller" <deller@gmx.de>,
 <linux-fbdev@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 3/5] drm/sysfb: simpledrm: Add support for
 interconnect paths
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250623-simple-drm-fb-icc-v2-0-f69b86cd3d7d@fairphone.com>
 <20250623-simple-drm-fb-icc-v2-3-f69b86cd3d7d@fairphone.com>
 <ypjcqiyfzjobg4zsm5sowjtu6ctvzgd4bvt3wpbqbb7o7f3rcm@q454aob3wwth>
In-Reply-To: <ypjcqiyfzjobg4zsm5sowjtu6ctvzgd4bvt3wpbqbb7o7f3rcm@q454aob3wwth>

Hi Dmitry,

On Sun Jul 6, 2025 at 1:14 PM CEST, Dmitry Baryshkov wrote:
> On Mon, Jun 23, 2025 at 08:44:47AM +0200, Luca Weiss wrote:
>> Some devices might require keeping an interconnect path alive so that
>> the framebuffer continues working. Add support for that by setting the
>> bandwidth requirements appropriately for all provided interconnect
>> paths.
>>=20
>> Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>>  drivers/gpu/drm/sysfb/simpledrm.c | 83 ++++++++++++++++++++++++++++++++=
+++++++
>>  1 file changed, 83 insertions(+)
>
> If simpledrm is being replaced by a proper DRM driver (thus removing
> those extra votes), will it prevent ICC device from reaching the sync
> state?

How can I try this out? On Milos I don't have MDSS yet but I can add an
interconnect path on another device to try it.

Are there some prints I can enable, or check sysfs/debugfs to see if it
reached sync state?

I only recall seeing sync_state pending warnings in some instances, but
never that it's synced.

Regards
Luca

