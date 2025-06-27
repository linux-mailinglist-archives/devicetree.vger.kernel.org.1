Return-Path: <devicetree+bounces-190198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B2FAEB048
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 09:41:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 71B673B510A
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 07:40:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47E0B21D3EB;
	Fri, 27 Jun 2025 07:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="TSjoIEZg"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD40921CA13
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 07:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751010048; cv=none; b=WSPoO2aQ6mj0XnaOYLX7DLqaD27gpUfjBw0TzBElmYj3PKUvMLoj7ReEa2EZAnnGe8pRPw+Wh5i4Hsy6LbuezLZuEO1RYL6OBVE5ACCPk4/MV++nr//SycIyjlddUqKQqsAA0FCzoHYX5FrqZkZCXwZaMcqnRS2PqluQNhFe2N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751010048; c=relaxed/simple;
	bh=gN5pAE2IubpyXdGdukqbjuNT7itxOBgkgX1Y5EtimiM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=KjSGd3eJRCxqki6tcy7mlx6+Zuy1sHrl9RgH+VmK5zSRCcjcOSCAJbmhRkzrpl1i1ktrMVUWwoL/VmPXZ9ow80UJsYEDNwmoYRG3mxt6Q0j64hFJmHD5vfDFyiPnOgLdN1KXRr2pKLxOFjoPJTJI9lIpW1ZPrD+EtQS+S7fYeG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=TSjoIEZg; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1751010045;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=rBnCGbSfprcirqT5UrYZ51B5MHbuiPAu4AbyyIVx9XA=;
	b=TSjoIEZgV+3XJQxm/LG5geb005wAhs9MjIeHWG7MXON0QhXWzgtR3Dosqid7Lb5BzCNct6
	l0DA/p9SqZGcH41N8+sRClvlz+oZQFYkdhZ/7FcYv5w7JFOjxeYWJkySzf6zSA04Zrd3CO
	Pyt32A8cg+qyplaRpaIjxvM5EwXAAZ0=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-118-xSbvgvd9NuGX5VL7QsJcmQ-1; Fri, 27 Jun 2025 03:40:41 -0400
X-MC-Unique: xSbvgvd9NuGX5VL7QsJcmQ-1
X-Mimecast-MFC-AGG-ID: xSbvgvd9NuGX5VL7QsJcmQ_1751010040
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-3a5780e8137so1431594f8f.1
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 00:40:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751010040; x=1751614840;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rBnCGbSfprcirqT5UrYZ51B5MHbuiPAu4AbyyIVx9XA=;
        b=c4z4nYaE40v3CpEkZ0XV9NO/5CEKoTyYzmlGlji/LMn1XH4JbAt+uPmfFqgon1NfJB
         WkyRRc4MKUlqod5TTbra02T80KPbMzuyipkRuiqaTCAeOv1UBAy1Ib2nyXHTwXqRthbw
         QaLO+N6V0b53YzhERbVZB0qZrvC8MVnf6BADQMaXScs50BkG67TuRZh6ld5iNfA397wn
         3SsVJDo53gMOan9xcDWADCrtIUxrnrJud4/9jSbcyJanFkKbDQIkco4fTUyXLOT/GyGr
         gNd063EM4OFgzsSJOu21MpRfC0Oph/SpFq6wSiSwt3CdzCvu6sO2/ghyEFG30RyB3GE6
         pzYg==
X-Forwarded-Encrypted: i=1; AJvYcCXZORV8WHSjnrU4vSSa5kH7KOGiZNY4d5TLbfODpp8S0oA+fzmmBTXUtnY+iL+wtS+O3W0STsjfvLzb@vger.kernel.org
X-Gm-Message-State: AOJu0YybAgSYjhrerRCsViXTXUEdCZD6PgChQscs6+rhmAc1d5crGioD
	BF0xYc3RDbNFmlXf4VG0qGItdf3DnMWnCUbsePFed/esytYhlXDXyhWwZFdPEvNF8doEUH1yNnk
	fZPP486s31flt2tr+Yua2hXVJ0gnJoydmxMeYakesiRPrCgnNfYQTmGKcLj9PdSw=
X-Gm-Gg: ASbGnctvctp26buzfXaUhjvRJT91JgbbwOn/TDMLRCdhFmaF3+P8PGNfWvLhH62xxQe
	FYxNgPK/3+PXxRT1tlvXt0LJMpOmGiPM6YagRbiOBdoTIHcHL3JjjxUTLBHCP74uhTdGwZQ+CSk
	oEWbV1jVjlOfDPJk+GwqhioTO1jDx/6SnuDm08yPHLtSi/3INSfDHQKWf/PRANXR/aeATPGcjWP
	vFYy+ZbzBvxrq37+O6aDYwJkC24K+21blaYxqQKnWNnSXZ+q+USt7MqtXyB0s77dec7Zww2gZri
	u25n/ci4D/8yuS7O4zvnRQNeglIG5/p+CzozZb5IHV3jemmZgv8nKqq6OpGAp2fcn17nolvOeur
	TE4WX
X-Received: by 2002:a05:6000:21c5:b0:3a4:e238:6496 with SMTP id ffacd0b85a97d-3a6f312ded8mr3496375f8f.18.1751010040105;
        Fri, 27 Jun 2025 00:40:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHffkWr+tNQHcP3BKAqhEIUlPXtP0GPPD5lJm+uaf4h6Jumi+zY3AGg3kh3v10ckZG0pyurtQ==
X-Received: by 2002:a05:6000:21c5:b0:3a4:e238:6496 with SMTP id ffacd0b85a97d-3a6f312ded8mr3496353f8f.18.1751010039681;
        Fri, 27 Jun 2025 00:40:39 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a892e528a9sm1956705f8f.60.2025.06.27.00.40.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 00:40:39 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Luca Weiss <luca.weiss@fairphone.com>, Hans de Goede
 <hdegoede@redhat.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Helge
 Deller <deller@gmx.de>
Cc: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Luca Weiss
 <luca.weiss@fairphone.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: display: simple-framebuffer: Add
 interconnects property
In-Reply-To: <20250623-simple-drm-fb-icc-v2-1-f69b86cd3d7d@fairphone.com>
References: <20250623-simple-drm-fb-icc-v2-0-f69b86cd3d7d@fairphone.com>
 <20250623-simple-drm-fb-icc-v2-1-f69b86cd3d7d@fairphone.com>
Date: Fri, 27 Jun 2025 09:40:37 +0200
Message-ID: <87wm8xd43u.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Luca Weiss <luca.weiss@fairphone.com> writes:

Hello Luca,

> Document the interconnects property which is a list of interconnect
> paths that is used by the framebuffer and therefore needs to be kept
> alive when the framebuffer is being used.
>
> Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


