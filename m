Return-Path: <devicetree+bounces-30480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F043482804F
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 09:17:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F04E1F26AC7
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 08:17:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DDDE125A1;
	Tue,  9 Jan 2024 08:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="YiUusnsk"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552892575B
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 08:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1704788263;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=TYwl3Gm82X1y9bF7T3uXUgWLjuN0mLmE2BxJvtmQvlI=;
	b=YiUusnskfks7ziGsejmqjRsrqdWjfiuY0CtOd+1Otkm7is8DZbc2Uun7PotpbXh37h5bMU
	Lk+8nrz50Ii5xv7jVSFrNe3xGHiL63fofZ3+1U2xytQCMmwx64sQ/tY0j9m8dyNvD5Lc7y
	5f+uJQvSh6OmXsoq2sPnQ5mIF6evTLA=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-388-8MvHs5QGP1WGEK_e_SkeNw-1; Tue, 09 Jan 2024 03:17:41 -0500
X-MC-Unique: 8MvHs5QGP1WGEK_e_SkeNw-1
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-40e46bceed8so13407675e9.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jan 2024 00:17:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704788260; x=1705393060;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TYwl3Gm82X1y9bF7T3uXUgWLjuN0mLmE2BxJvtmQvlI=;
        b=CvSW+IC+mqE9pc3myfxaztVkGxZIqxbCo+lFhUbbfu1bwpP9bdbCSsnMy2V5sqVGhs
         LqgnSII+HJBgAHgTzI+9WDjX7pHw6rOHoQuaqSFLe1xdve0oV9x5IMEqOmioiS/iWmG1
         Dd2r+6VvPrbGb2pcDogvQ//L7qu/JykbtMYmffBhneDFb/BQO0hKqjFjWLnZR3LPAS/g
         0CRFuYLJSwBJNuHMeTGi6N4Onf1n3mwB08Wymmh/5enp26DovwmgC5jEvpdgprbir3VD
         IP2KsygmPFxW1SjjTiq+ASriXVMpTUFlDfNHCEbkBwWknZb8+F+DAAvGRoqu4H3O+B+1
         CJnA==
X-Gm-Message-State: AOJu0YwBzyw56KrAGg4FLj/MnlkC2DJIX+Pp4fgngVUOOR00uN31vCT3
	KtGY85829kRoXutjblVcrkHgxsX3Os8TGbGpkr1WrXzbDEk/dwYe07IIFjLYZuPrkLy9n2xsrkf
	XZaIPe2iUKoIxeFGA/JbDpWXbDTFCwA==
X-Received: by 2002:a7b:ce98:0:b0:40e:4865:a05c with SMTP id q24-20020a7bce98000000b0040e4865a05cmr1201495wmj.144.1704788260436;
        Tue, 09 Jan 2024 00:17:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGPyXPX8MBPtFN3J4ZHXjeFvlB+/zHNqrDKNgiHYMYHJjKkOj3iwt/RwjRv1ZDD5pH9Bl+h2g==
X-Received: by 2002:a7b:ce98:0:b0:40e:4865:a05c with SMTP id q24-20020a7bce98000000b0040e4865a05cmr1201483wmj.144.1704788260131;
        Tue, 09 Jan 2024 00:17:40 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id m1-20020a05600c4f4100b0040d5b849f38sm13979473wmq.0.2024.01.09.00.17.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jan 2024 00:17:39 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Andrew Davis <afd@ti.com>, Frank Binns <frank.binns@imgtec.com>, Donald
 Robson <donald.robson@imgtec.com>, Matt Coster <matt.coster@imgtec.com>,
 "H .
 Nikolaus Schaller" <hns@goldelico.com>, Adam Ford <aford173@gmail.com>,
 Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec
 <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 =?utf-8?Q?Beno=C3=AEt?=
 Cousson <bcousson@baylibre.com>, Tony Lindgren <tony@atomide.com>,
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Tero
 Kristo <kristo@kernel.org>, Paul Cercueil <paul@crapouillou.net>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org, Andrew Davis
 <afd@ti.com>, linux-omap@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH RFC v2 05/11] ARM: dts: omap5: Add device tree entry for
 SGX GPU
In-Reply-To: <20240108183302.255055-6-afd@ti.com>
References: <20240108183302.255055-1-afd@ti.com>
 <20240108183302.255055-6-afd@ti.com>
Date: Tue, 09 Jan 2024 09:17:39 +0100
Message-ID: <87o7durkd8.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Andrew Davis <afd@ti.com> writes:

> Add SGX GPU device entry to base OMAP5 dtsi file.
>
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


