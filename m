Return-Path: <devicetree+bounces-30475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BC182803C
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 09:15:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 07E331F27C1A
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 08:15:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 595E51E504;
	Tue,  9 Jan 2024 08:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="IiyRRneE"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74699EAC8
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 08:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1704788096;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=XjjwhVNGSNqCSg1vyGrdOD6jXBKYkFrF+Jag2J5d6o4=;
	b=IiyRRneEU2nXBJYlSYnS8aKDHNAdAXFxkwOBRo1/iOT4qWjOupW0UWizE0ybEZ9NSiS5oc
	rvM2Fy/rkFFGkvKXtRY/kvjGAD9SrSQ8qCk0T+VTJS3XwX3s108eb6CjVABFGejT1jltFN
	CGQr3N9sgYF4yvEOX31cfLXFVBY8u6Q=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-483-wpij26xiNeO7QMNp5D1oPQ-1; Tue, 09 Jan 2024 03:14:55 -0500
X-MC-Unique: wpij26xiNeO7QMNp5D1oPQ-1
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-40e433874e4so16458505e9.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jan 2024 00:14:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704788094; x=1705392894;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XjjwhVNGSNqCSg1vyGrdOD6jXBKYkFrF+Jag2J5d6o4=;
        b=lrEnStlSABFAfKUc2dZXVySJRIsMq9iQ2a1YVod3IOeZSK77A5kmHcYfV0jWjbHF0J
         kh1bgf8lPDGsUSTQz6klG1QTE7044F5wrQgD+J8pKa28RbWqsua4bKIP2dauAs6O23xV
         KB0M13oRzGxb8lS4KHBFYEVFfr2auE4Sao+QpGMcGbjb2Wg2xMXein2Iik4jgTuz/uJr
         XvPHPwM7d4QmQqSrptOOOrQFDMMYAlY7ZFF0nP/0FGs8zEw3YBukqoghBwAQkabtLH9G
         ME56m+7vRXmwPjAvAMjSOWldqCcjB0+6uAAPPBRxEpVec8o8qXLD1IqU03ktytLuNzEJ
         zL4w==
X-Gm-Message-State: AOJu0Yw8Zhn5rl9iNogLCGG0gnfbW1iBGeA0Js62bdPPpdKc7FpFSRch
	B/6oO44r6INJL0El2adAfR/knqXN5ohUx6MkHJCN9tZzNEdF0QpXoPOcN06QehIKmjMHE+SPgZF
	EH+smT35NU1IpHbR8dWUIX7a8Fm/TYA==
X-Received: by 2002:a05:600c:138d:b0:40d:5aaa:a2d5 with SMTP id u13-20020a05600c138d00b0040d5aaaa2d5mr1256152wmf.201.1704788094058;
        Tue, 09 Jan 2024 00:14:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGM/zyCyvEk68nBtBHpa8i1HjkLCmgaZkHeoZuSH4LDKPVKXrc1TZ23aOpoe2Y4Ruh2MVABOg==
X-Received: by 2002:a05:600c:138d:b0:40d:5aaa:a2d5 with SMTP id u13-20020a05600c138d00b0040d5aaaa2d5mr1256135wmf.201.1704788093729;
        Tue, 09 Jan 2024 00:14:53 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id i5-20020a5d55c5000000b00336e15fbc85sm1696619wrw.82.2024.01.09.00.14.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jan 2024 00:14:53 -0800 (PST)
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
Subject: Re: [PATCH RFC v2 01/11] dt-bindings: gpu: Rename img, powervr to
 img, powervr-rogue
In-Reply-To: <20240108183302.255055-2-afd@ti.com>
References: <20240108183302.255055-1-afd@ti.com>
 <20240108183302.255055-2-afd@ti.com>
Date: Tue, 09 Jan 2024 09:14:52 +0100
Message-ID: <87zfxerkhv.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Andrew Davis <afd@ti.com> writes:

Hello Andrew,

> Signed-off-by: Andrew Davis <afd@ti.com>
> ---

I think this deserves a commit message with the rationale for the rename.

Because kept an eye to the previous version, I know the reason and agree
with the change. Also, if remember correctly this was suggested by Maxime?

After a adding a commit message and Suggested-by tag:

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


