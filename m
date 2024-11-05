Return-Path: <devicetree+bounces-119042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 442299BCBCE
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 12:27:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C1DCCB241A2
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 11:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 508951D5165;
	Tue,  5 Nov 2024 11:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E8m6FFCs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F9A11D45F0
	for <devicetree@vger.kernel.org>; Tue,  5 Nov 2024 11:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730805990; cv=none; b=jR07eGDaDJyh3AuptZq+D0BmEhaGwrdV7IJtSxUOnD2nz/Lz1KsOBkVTaFaCCXbN4dSiFApG/HM1Mc00Vd7M2ofPR1Vgy3+rZcxVYWm8MUUEttmD5ONmieRzwM7pgpBA37Mqz42U0fCs6iF0gWgTxQmTp3STR4F4lIdF07t/UFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730805990; c=relaxed/simple;
	bh=5QQgUw2ALK33YJykVY7tKUEL4qnSJZInxh6RWYviDA4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YZlA3AtXzKMX08+3xiMykXGS4J8THHYqTMNSp/wuXtpDUS1JG6BuZ9Jl+YSBi2nyKGymr/sYrrAnmj8miC1irdMyc6MLhRaERoV2I6ZtWlLWxnStcPdtn7PWIl/m9SGf9QpZkpIU/sDEQZrS44FHv9VpF5qiCN078fBGWHkHgEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E8m6FFCs; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-6e33c65d104so44665137b3.3
        for <devicetree@vger.kernel.org>; Tue, 05 Nov 2024 03:26:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730805987; x=1731410787; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZbPFk8wJiQvrTCXjlYgvumUQ0j3KXfVkR1pWzQFIBYw=;
        b=E8m6FFCs+Shrh0CSDyAWDehh/MGhCznW3oNxLJnLnEW+/uLh5Ig8n441HhbIayj0V7
         OhN8KVljL00ESkeG5C9rg3HTkvELnDSI1SZ5eRePfkBj3hAP07073U56foYcQQfuKHCQ
         8Ysp2kde9dnWoPCCfnzzaNptWA/G81N/aRD2GAhbRc+k6MUc11nOPL8nW0dF9tDmJfUj
         4EitIwTY2qq6eD1tizvxK5lo4RgDIYf5r8+fqr1ZZeCojBYrDRJWSOmLRyGO/LJQXulk
         1t4fQ5AZtd6u9uUblt45kv0MZXOksD4PtZ8YVSxLIHjJnvU752Zme5feyiXZrLOn1vKh
         OxyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730805987; x=1731410787;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZbPFk8wJiQvrTCXjlYgvumUQ0j3KXfVkR1pWzQFIBYw=;
        b=xROmsQrf11qyl9ofNS/lUD5Ij49lYPm2cayQ4YcVZHxCBZs8XWJQMPjrnvCa5eH3nf
         HPbIW5IdtepTLCkHh+LJ1CYyXFMheQon9eTLN0rRVnNgXZF72MRwGu1ZFoBrbf4gRXFZ
         go/9uoziMr6AAdr0z5+Tk5e0ggVY0V8APyhCXS4ja5HOXbZ6C66Fi1xonjYJEVm58Ywn
         f7b5/eq8jBpNe8Nr+8FrA8gokoJ8T/ZE8xr2l0yRBA2h2Aasjyp9C1L1/pooyGHUoNlJ
         uXG/Nvh7U7mAhor1LBW+QJS5nqzkx3zbKi5aqO6LAWFB9wduZlazh6VgAGHs+cFjlLS2
         U0hQ==
X-Forwarded-Encrypted: i=1; AJvYcCVscqItKKQqjUrapm5FgyLipmGRXDdwt133y8vOGzzXU/tLsSA0nuVb5psefj3LBylb/g5NUpdy4bEj@vger.kernel.org
X-Gm-Message-State: AOJu0Yx40CKE1radyml95vV9CWq24V/bIoKd9pLowg69lzPCH6x7dhbV
	yRLIsoGtW0PDlTzjNy6BNN0nXGR9mmOCD0Z/iCXx9NRHcBVz6rHxu1lvEi6Hl7UBVQq9lbso9SE
	Ei5DvOxuT8GGbxd6qRF1+qFdpc6zqFVD92+0xdA==
X-Google-Smtp-Source: AGHT+IHwht1pfSwQlaqWWbyXJaYST2v470nqEkV0Y3tMwYWqipVeiUaNoITHKiBik6whym2zw0rsn51UBBneR8aGa1Y=
X-Received: by 2002:a05:690c:fd0:b0:6ea:8d6f:b1bf with SMTP id
 00721157ae682-6ea8d6fb48amr78680707b3.0.1730805987251; Tue, 05 Nov 2024
 03:26:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241028023740.19732-1-victor.liu@nxp.com> <20241028023740.19732-5-victor.liu@nxp.com>
 <Zyn5CgZvyg05cgJW@kekkonen.localdomain>
In-Reply-To: <Zyn5CgZvyg05cgJW@kekkonen.localdomain>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 5 Nov 2024 11:26:16 +0000
Message-ID: <CAA8EJpoaLnw46DUaZ+z-YSkbdk-f45-dKMjoQWu16zaC6i-H-w@mail.gmail.com>
Subject: Re: [PATCH v4 04/13] media: uapi: Add MEDIA_BUS_FMT_RGB101010_1X7X5_{SPWG,
 JEIDA}
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Liu Ying <victor.liu@nxp.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, andrzej.hajda@intel.com, 
	neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, quic_jesszhan@quicinc.com, mchehab@kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	hverkuil@xs4all.nl, tomi.valkeinen@ideasonboard.com, 
	quic_bjorande@quicinc.com, geert+renesas@glider.be, arnd@arndb.de, 
	nfraprado@collabora.com, thierry.reding@gmail.com, 
	prabhakar.mahadev-lad.rj@bp.renesas.com, sam@ravnborg.org, marex@denx.de, 
	biju.das.jz@bp.renesas.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 5 Nov 2024 at 10:53, Sakari Ailus <sakari.ailus@linux.intel.com> wrote:
>
> Hi Ying,
>
> On Mon, Oct 28, 2024 at 10:37:31AM +0800, Liu Ying wrote:
> > Add two media bus formats that identify 30-bit RGB pixels transmitted
> > by a LVDS link with five differential data pairs, serialized into 7
> > time slots, using standard SPWG/VESA or JEIDA data mapping.
> >
> > Signed-off-by: Liu Ying <victor.liu@nxp.com>
>
> Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>
>
> It's fine to merge this via another tree, too.

Thank you!


-- 
With best wishes
Dmitry

