Return-Path: <devicetree+bounces-30481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 53020828054
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 09:18:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E507D1F27EA4
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 08:18:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70DCC13AFB;
	Tue,  9 Jan 2024 08:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="BYdhY58D"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236CB2575B
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 08:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1704788283;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=P/n6bIUbxiGj6HkflcqkLH0/hS7ErA/FC9bHCDvM3UU=;
	b=BYdhY58DuHjmJ7Qk47tXkTk7z8igHZnFm7JT05zHRvq/1rZUStwwmrCq5c8o0MoZI9Iwd+
	GeZaV2LaeEB474EhUjWo/K5M7MvDrNW22H9103LcwBlkOUIDXcsRYvtbnmUOXwA/w2dtyt
	ZjIF9aKMjdmYrYsJO9onUPCWE4XhlRk=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-230-B2hjo4oEN8GA6O_SOKbhRQ-1; Tue, 09 Jan 2024 03:18:02 -0500
X-MC-Unique: B2hjo4oEN8GA6O_SOKbhRQ-1
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-40e34df6fdcso20749295e9.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jan 2024 00:18:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704788281; x=1705393081;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P/n6bIUbxiGj6HkflcqkLH0/hS7ErA/FC9bHCDvM3UU=;
        b=XG4/GIwL8eAZGE12EYxViy+BPDqYVbzvSNh5V6EF+65FvCjeGAR9TCzoRW78eTFaAw
         Z+o2BrL19YlVOdh5pocn9koFoqwqLEisDz+uB17eu1DTkme9b4f7qCBNTvHDim9qfBMO
         grfBRiEYMm0hKLJH2+MbvnE6HEOnjVxFfRV1M3dUwOq5LSyoTGLEB6BSPX+U7Vsxzkub
         MjUXM+RPQ/uj2vE6PC/AdBDgsorUX3dhGFacoLd/SFE8krlbYeuW8Gmp/wtGJTOlZpi3
         r5BZ6HG1LHEa4eiLpz2etKx14FxNhHKLn0uRAoS9koLSWTncA/kMO5FuooQGCzR1siu/
         Om5g==
X-Gm-Message-State: AOJu0YzQJuDSChGNDPgwIQraQQq2dIcq5zxveH9LQHVEKak6asYmSoz8
	Scc+PsYzGL+duPqQIPyNAj7D6/VtYAj1yEd+Z48J4phBlARXNseSktrMRJ7wct8oCRQCw94cOhz
	TKOqlZkLPjZm53hgdUu5/qItc4RnPLA==
X-Received: by 2002:a05:600c:3b8d:b0:40e:5136:9c1b with SMTP id n13-20020a05600c3b8d00b0040e51369c1bmr141949wms.171.1704788280595;
        Tue, 09 Jan 2024 00:18:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFC/CVCQxxwutC14ngh1OLfN28XsPAOZa3F7Km+RhSKTaEmlH4ND2gHIL5o1B6PeT/ovdJFSg==
X-Received: by 2002:a05:600c:3b8d:b0:40e:5136:9c1b with SMTP id n13-20020a05600c3b8d00b0040e51369c1bmr141937wms.171.1704788280323;
        Tue, 09 Jan 2024 00:18:00 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id v10-20020a05600c444a00b0040e486bc0dfsm5117272wmn.27.2024.01.09.00.18.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jan 2024 00:18:00 -0800 (PST)
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
Subject: Re: [PATCH RFC v2 06/11] ARM: dts: AM33xx: Add device tree entry
 for SGX GPU
In-Reply-To: <20240108183302.255055-7-afd@ti.com>
References: <20240108183302.255055-1-afd@ti.com>
 <20240108183302.255055-7-afd@ti.com>
Date: Tue, 09 Jan 2024 09:17:59 +0100
Message-ID: <87le8yrkco.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Andrew Davis <afd@ti.com> writes:

> Add SGX GPU device entry to base AM33xx dtsi file.
>
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


