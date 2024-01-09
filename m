Return-Path: <devicetree+bounces-30482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE7B82805E
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 09:18:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8CAD0283388
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 08:18:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BDE7225D3;
	Tue,  9 Jan 2024 08:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ALtrAymo"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D607114AA9
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 08:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1704788301;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=n65c4qWz4ks9zOal34K20DK0gagOlvJ5Umts6SIzDOo=;
	b=ALtrAymo6HXag3KV9Li2xvGydpAWdr87VgY41QdRVv+saSj+OuZDwW654ztKzu9tDANNfS
	x+P2FfhkD+oYHEcHjC78iJlWDQTyEwbKuUTj9KRH69dLMHTyRFzODTJRbvtrTy/au2CnUB
	t3Wkk5ye1OpnJoW+s3yIaTzwvTYITGc=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-655-LaME5u0vP6i4ryq8wTRwSw-1; Tue, 09 Jan 2024 03:18:17 -0500
X-MC-Unique: LaME5u0vP6i4ryq8wTRwSw-1
Received: by mail-lf1-f69.google.com with SMTP id 2adb3069b0e04-50ec9529001so591188e87.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jan 2024 00:18:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704788296; x=1705393096;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n65c4qWz4ks9zOal34K20DK0gagOlvJ5Umts6SIzDOo=;
        b=gSyQeKwf3QnwbuXy1wNPreF1Sc71SCkHcNdijmGZd76u4YetMOfrpAwn7XaUDmFjJJ
         z1MRnWGBTWKW4yMy/tpxYBBnND/pYp1hHe93PhFmSXisADUHjt39B4cJBCIsoE2em8OW
         Z10Cy39LsKdV5CVqFagMdjKgTZdVcMk8gKVA92vJPw5jROIfwMBt8Ny/1u2RFU9zusfN
         A5jYAstuOQ+CQm7XiVqJ6nShw+XstGBSLBTFnvK6VWDTzwhSe+oxuFktkGVEEX17MiVt
         8VEVuP+aLFMY7auJ4aOrzBY0aS9EfjIckuuTnBsyKPQxs3TkfIN2oOQfRsfCksM7U9v2
         97sw==
X-Gm-Message-State: AOJu0YzSvClwoIjVXCROOEYZz1d04F2xsgNrV4p9VB/jxeMqjulDn7Jy
	liHPlIWXjyub6JcQa5fp4dx/4NxDb/S7SDG4WWag0ka1mihzDOUtc5lSo27vAy8HVKzDJUf8H9F
	FvUaTLMkai4jyN/m2paVWAy6qv5IA7w==
X-Received: by 2002:ac2:58ce:0:b0:50e:7749:7b99 with SMTP id u14-20020ac258ce000000b0050e77497b99mr2113182lfo.37.1704788296542;
        Tue, 09 Jan 2024 00:18:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFdtUeH2vYHQ8BQ+eP1vRTxNMHVd8DQJlUxLueRlKUz8p2AmTLylqVNqr7Fv47rw3ollbOaPA==
X-Received: by 2002:ac2:58ce:0:b0:50e:7749:7b99 with SMTP id u14-20020ac258ce000000b0050e77497b99mr2113164lfo.37.1704788296241;
        Tue, 09 Jan 2024 00:18:16 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id z18-20020adfe552000000b003365fcc1846sm1708295wrm.52.2024.01.09.00.18.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jan 2024 00:18:16 -0800 (PST)
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
Subject: Re: [PATCH RFC v2 07/11] ARM: dts: AM437x: Add device tree entry
 for SGX GPU
In-Reply-To: <20240108183302.255055-8-afd@ti.com>
References: <20240108183302.255055-1-afd@ti.com>
 <20240108183302.255055-8-afd@ti.com>
Date: Tue, 09 Jan 2024 09:18:15 +0100
Message-ID: <87il42rkc8.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Andrew Davis <afd@ti.com> writes:

> Add SGX GPU device entry to base AM437x dtsi file.
>
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


