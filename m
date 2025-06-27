Return-Path: <devicetree+bounces-190315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF314AEB6BF
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 13:43:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B135F163DDE
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 11:43:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0337A2BEC28;
	Fri, 27 Jun 2025 11:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="K1e6F4Mc"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459372BD58F
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 11:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751024615; cv=none; b=Op3xl/7CmO+cgi7l2nJDQPAA6ae6FN2BU5WENVNQzzLN0/e2N28QckRlgz4GmmlffMxNqjnLJNip4p63K+6JJNuSLeDLsMCWD9O6uUiPvlP8H1+hVMpYdLknMUDPB36PxSqE+PNT/aU8YcQq+zff6IHkd9lV2giLcLwO1/0ul0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751024615; c=relaxed/simple;
	bh=+iGcw+PtfwIM7ievMJRC8fS+eyL4YN2rOv9Hq1pYiqU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=o9awNQlldDHsczIOYB2EWp8XJhp4ugxXoOSRHcC8j5GWs40m3Qmely5dXW76D6s4JpxF05MYhU+2Ku79qUNp5m2vLEdkY6Meso1ODjbrbKbnQYOFJs2GvC5oWPWQ70UCa98C6553rvuG6c2xygLnWkSbmqH3BLWUl0d/8kWu8ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=K1e6F4Mc; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1751024613;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=jUmKLkX17iXsI2jcTtKOQRw0H+vEuZMVGDpj7iIwmzA=;
	b=K1e6F4McSJ3QCQJkkZqsDByzJdFwefpEp1qoyVgvNCD8X9Qyv47RwGSrUceYrEdlgS23w8
	dhnDHwHcnmUAJ6MYuqEjSmDH1BFOd3yRUyTkMCm42n0p6QgQ5xFC49xI+JxgOhelXAwoOo
	aXCa5gtTDV4ztZaTVe9+NQpmlFZZ9cA=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-172-tb9Tb7JCObGFQ5Qb6wv_sA-1; Fri, 27 Jun 2025 07:43:32 -0400
X-MC-Unique: tb9Tb7JCObGFQ5Qb6wv_sA-1
X-Mimecast-MFC-AGG-ID: tb9Tb7JCObGFQ5Qb6wv_sA_1751024611
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-3a6df0c67a6so1323343f8f.3
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 04:43:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751024611; x=1751629411;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jUmKLkX17iXsI2jcTtKOQRw0H+vEuZMVGDpj7iIwmzA=;
        b=hOySvdMBFaxEAxhLffGqtJlUnh5wlSJXVqi2KNlPBDWQ0R5mDy3xhs2ZUkjOZXtHc3
         RZQk4eTkvjrI4SgshKzFEUDszbHVOBk2IwHQ+/rE2OM4Qla2euItiKEdxelOwIfTu9rO
         1Z4OlfNBg7GgPO87Pr30sKpjlbjyvxjjC9Lu2nGp1N11wEtuYsvVng7vOImybeQgB71M
         Q2zuOFe43aIdlpde8hwzt4H8s0db3ifiRp9RaimWedvTCYRGri396ifxFbe2Sfs310DJ
         v0fNBQR8NkPbCPIfznXiVheo9YN0sFmjLurFEcVIUEbcCtfh5jqbkItDzvewRUj/L8nG
         5f3w==
X-Forwarded-Encrypted: i=1; AJvYcCW1IKIz5NXzhTk53Onx1mM+wQxOWlhX9Okg5wKQbC4elurzyzxqaB3JhRYZb4Z6++cIt+N52kaIZJsi@vger.kernel.org
X-Gm-Message-State: AOJu0YzuOTiN06hX6GyllYCDWjN4Rqhf17fbYbHtdj8q+jcCO2ZEBLSj
	XjWUMj+5SJDpYuN/s+gUdq8qv71BieJJRXDXhwXO72Ggsdzj4iPkgfgnESDeVfDJ4asprWhAB2r
	nyesLtbn7Yt0Dx1TNOSE1TgDXFdom6KTI4elWMkJ/kl7+9ucI1dnUas4/SIRNKG4=
X-Gm-Gg: ASbGnctSOpU3FI2mAV7pWR3bMW4GyYZAbJGnPi9Ronvfpev1pdSa2u3gfi4rbdBDAzA
	gnyMHYOmLFV/PrJmG2Cbkc67ksCmciTqxvnp4dgPzbZoZCPORDxVGrc6zo7OmtRt8hBVu8yrpFW
	vJj52ucaAbMSw3rwMR7HWHoGJjlGU8//mwh47CBjEYecASjZ8l7LOjg+6nmn0Xt/gZ+wR/Ee68h
	vdpKbxmZ9kvs9OBPDirBxw4QhNR5MQo33+039z8xFKIcDWvjco5IMK38f9NuRNeUoXYmnlOsGFH
	coFm+ih9M8JZg80oKbJkllaCpJLhwaOGmhVEmQe0m8p/vITDqXHQ11r4zgVRjeIUsaxN9KP3ZMr
	WYSIH
X-Received: by 2002:a05:6000:2082:b0:3a6:f2d7:e22b with SMTP id ffacd0b85a97d-3a8f482ce2dmr3118533f8f.18.1751024610719;
        Fri, 27 Jun 2025 04:43:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHqa9ksaS7DGTCCj2sUyTBC9ZYvO5eiqt8mHI65N4aQiSc8WyhN8W3ePYCE3h36zJaWTbQjjw==
X-Received: by 2002:a05:6000:2082:b0:3a6:f2d7:e22b with SMTP id ffacd0b85a97d-3a8f482ce2dmr3118496f8f.18.1751024610179;
        Fri, 27 Jun 2025 04:43:30 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a892e52ad2sm2454072f8f.48.2025.06.27.04.43.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 04:43:29 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, Luca Weiss
 <luca.weiss@fairphone.com>, Hans de Goede <hdegoede@redhat.com>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Simona Vetter
 <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Helge Deller
 <deller@gmx.de>
Cc: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/5] fbdev/simplefb: Add support for interconnect paths
In-Reply-To: <f7c816a7-e93e-4146-80dc-8fec6113fcea@suse.de>
References: <20250623-simple-drm-fb-icc-v2-0-f69b86cd3d7d@fairphone.com>
 <20250623-simple-drm-fb-icc-v2-5-f69b86cd3d7d@fairphone.com>
 <87ldpdd3dn.fsf@minerva.mail-host-address-is-not-set>
 <f7c816a7-e93e-4146-80dc-8fec6113fcea@suse.de>
Date: Fri, 27 Jun 2025 13:43:28 +0200
Message-ID: <87cyapbean.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Thomas Zimmermann <tzimmermann@suse.de> writes:

> Hi

[...]

>> These two functions contain the same logic that you are using in the
>> simpledrm driver. I wonder if could be made helpers so that the code
>> isn't duplicated in both drivers.
>
> No please not!. Any work should rather be directed towards deleting 
> simplefb entirely.
>

That is a good point. You are correct that having some duplication to
make easier to get rid of the fbdev driver is a much better approach.

> Best regards
> Thomas
>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


