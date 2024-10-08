Return-Path: <devicetree+bounces-109254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13264995BB2
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 01:32:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A1B06288500
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 23:32:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CA32217906;
	Tue,  8 Oct 2024 23:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="C5C2UlnG"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 863F9217914
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 23:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728430302; cv=none; b=DN8a9R1S2pDnaAAbbzq4k8XPuxvyAcLFG6MVTiPJ+UVVFlOV+y2TJSZ/lMfRBF4goWfAet7SsJoEk3+8N1bkC9CqCB09u82KO/FJk+FEbYWsc+sk72K2PHp4yM49dCqFEk9Nux36PXg2G3WO28XC95pC0E7iW1WbIiHjXgcNbgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728430302; c=relaxed/simple;
	bh=L0KTwLnzheiUXjttjLV2Lqcd9HJafSUi1w2rkVrGuDs=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=JkZya6b+/MmCBkb+FwY1JblUmDQjsd7zn520xlF0tWfBdU5qJ0dnvdjhiaCOj4ZkM+rgtpZSt/Y5P5JR+w+K2PeC2z9z6cP8BUXoL3tJHmDBK46jpfOQru90lvET53yhnCCRphN9mpYkGhs9E7YIiy2pwBnLfCebJ9YC7G3OC64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=C5C2UlnG; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1728430299;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=bcHI/yoxqMGYj53GeW2FJrS1QmCjSHPEphh4FYDw95Y=;
	b=C5C2UlnG08cIiDr8G4QoxNOFt/giA1QMeond5K7cAyu7qvbHihwF288kbyaFPN64Hc4xtj
	3GgjaLJ5I82nxb/YHCPRn1dZh8ADza2UlNT7V7eeH5MwQofDKuxBmJ/Ok05vZrV+S9mA4m
	LOakiOK0n+BGscRzeKmzDdGdbCe+5Dk=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-57-3m8DHAwzMemg_heAv-Deeg-1; Tue, 08 Oct 2024 19:31:37 -0400
X-MC-Unique: 3m8DHAwzMemg_heAv-Deeg-1
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-42cb857fc7dso53143815e9.0
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 16:31:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728430296; x=1729035096;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bcHI/yoxqMGYj53GeW2FJrS1QmCjSHPEphh4FYDw95Y=;
        b=WdVjhtZN8r5/g6jfxqdjCnpyRbZWIiGjyFQWmLfgnKw/FjyUgIkLO9TKDS67sYXG3H
         fGri1J2LG8FoOwxsO3SQwVw1jkc/R3iApuiXhv8xChGxrVKMWNA+C6T9SwKo33M8yhEu
         EnPo15J/a+PB8wY0tkNvRSr2zs1uS0p+sYFZ11Yqe6HkHzgAV540N4XzM62uKsMOPeln
         4RC4hJNAceZYolWl9gWnpAT2RVQoRIGu4jHsE9u2POtpMRZcYoc+uJA/7CI8HMXM8LCh
         YF/tzPM14nG/HT+wii+KnisSUeUr4Re0iBec0rYbHuRTecaF/QK9E2UNSbUdCKGvYrsZ
         xZew==
X-Forwarded-Encrypted: i=1; AJvYcCVLmsffbsQVXX2h93IV0NWMbWpdebb+l1a0pliVNrr8RGCSiB3p1RsVtpXfdLVnU1+tT4kKFRAGmK+g@vger.kernel.org
X-Gm-Message-State: AOJu0Yxs/lmUuYcrfMwMKfVyUGvzcKhE6TTj3xdn85wnLpS43Dyy+KfH
	sHdoqbIEJ+ALnHzlXwOE2jpCyAG/Vjjp5ZATgCG8jkNNfV5X+kDVkbx2JPA4QXSUROeb3/nHGO7
	egvpFNhir5GmZBKMsWZ3mljHZ33heXwboIUWjOZmhbkjlicFQ+Rqp+OCo6myeETSa1Y0=
X-Received: by 2002:a05:600c:154e:b0:42c:bf94:f9ad with SMTP id 5b1f17b1804b1-430d748c5demr2212065e9.34.1728430296387;
        Tue, 08 Oct 2024 16:31:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFsDCoGsEnLWtBD4wbwe/UtP6akKWGqolcID8v8lmzb3yE09FOD27dIScP1cjciCpbwi3g6+g==
X-Received: by 2002:a05:600c:154e:b0:42c:bf94:f9ad with SMTP id 5b1f17b1804b1-430d748c5demr2211985e9.34.1728430295975;
        Tue, 08 Oct 2024 16:31:35 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4304efc1cd3sm18504815e9.1.2024.10.08.16.31.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 16:31:35 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Martijn Braam <martijn@brixit.nl>, Ondrej
 Jirman <megi@xff.cz>
Subject: Re: [PATCH v2 10/14] arm64: dts: rockchip: remove orphaned
 pinctrl-names from pinephone pro
In-Reply-To: <20241008203940.2573684-11-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-11-heiko@sntech.de>
Date: Wed, 09 Oct 2024 01:31:34 +0200
Message-ID: <87a5fegoix.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Heiko Stuebner <heiko@sntech.de> writes:

Hello Heiko,

> The patch adding display support for the pinephone pro introduced two
> regulators that contain pinctrl-names props but no pinctrl-assignments.
>
> Looks like someone forgot the pinctrl settings, so remove the orphans
> for now, until that changes.
>
> Fixes: 3e987e1f22b9 ("arm64: dts: rockchip: Add internal display support to rk3399-pinephone-pro")
> Cc: Martijn Braam <martijn@brixit.nl>
> Cc: Javier Martinez Canillas <javierm@redhat.com>
> Cc: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


