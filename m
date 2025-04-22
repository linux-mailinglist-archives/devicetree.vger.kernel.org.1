Return-Path: <devicetree+bounces-169627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BADDDA97A77
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 00:25:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE81D16D47D
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 22:25:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 142802C2567;
	Tue, 22 Apr 2025 22:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="FEt4no6J"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D752C1E1F
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 22:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745360747; cv=none; b=kWzREgqFv2hH/h+n+8ekIyoFknp2FZS2rTKGitJkQCFMQb8Sq4ymG9Mw5dXAzW46zhv305M5oK44D5Po0kq1zAv335vEKieLG4sb3OmH/iUbk5KfnqyTTuTfZcUZAV2K6yMLMnBGlPaeAKJAYFRNiN5CxZyf2II0GjTIYaj4Z7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745360747; c=relaxed/simple;
	bh=7HqP6IOThqTCj6+KwEK9pl+t3S1elMAtDPI4WqhbDrk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=HwLkjvS0lhFXNLLyIv3ifsK9I2T9+t3kxX0FrT6k3ue+j7H9TGx//pizdb10jTlGSUlMySAvG+15B/xaPpmFQCXyiIwSyM2CQ3Cnz26NenoMYTMMFbnZg/EG3escKGZqBNrxfncKqf2xZrryoSJHSjRw3d+XTQmqr0njJo6kvDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=FEt4no6J; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1745360743;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4vRslFe4cN0lEvwN7grLmrzlhqlPU6F80LH1oewlaaw=;
	b=FEt4no6JUnZa6Fz1Alux0u3c9Dm6oQzwCVglUPDqDSIq0VSGUfuZ/OUfRBZStmF7DEi9j+
	uuHOMAeENVKi3p3dgCRGD1grpqdE2G+Kuvir/ENrDJ6+b0gxquAz+fKf7nsbqA9AZiexjl
	1OhxcPLzNvwaI2gOBoO5c1awi8L6tZo=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-314-V_x1URloNSSedgaVcb_LAA-1; Tue, 22 Apr 2025 18:25:41 -0400
X-MC-Unique: V_x1URloNSSedgaVcb_LAA-1
X-Mimecast-MFC-AGG-ID: V_x1URloNSSedgaVcb_LAA_1745360741
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-43cec217977so29720475e9.0
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 15:25:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745360740; x=1745965540;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4vRslFe4cN0lEvwN7grLmrzlhqlPU6F80LH1oewlaaw=;
        b=P3Drqq0hdQhR0yVXDqRHeN9tof6JJC4QJ0dY+Yh0wO8MeCVD3ivJHLIyfc7uhnqJkw
         8QGN819DTxkpxYqifH6RmK9FlFu1Dp7J6ZoPm643scL6lrqsgd0C1LVIpJcQ5MHFmPpR
         uCpXC15kn4EO+5k+pawIPn7yY0w4Geq52EXXBtzzhx+/fUTfj6860gnbGUwhcJfGhQoE
         J/lZEmnV3ZI7TAb6LqUN3urwGi/fK47c9Z8dOSMZ2b0X8T0x4IN/4QIWVW6im34VbSXC
         YH0OYXTAvDT6nzdALatYvJUci06YZf2EHlXMP3BzS2Rs6Tb/S9n3MfHmiGwSrbMNrCUy
         i5GQ==
X-Forwarded-Encrypted: i=1; AJvYcCV13Qasl2/FgZEHne8kDoDSrwQMpCXDI7b27JZsKA2om9d9ZENjSGURa2xU83gK3mK3oi05gbxfu8Oe@vger.kernel.org
X-Gm-Message-State: AOJu0YyWAtnrY9/6BdJKu0BBddj7VFTiGAQgNUo5E2XRgSzpSC/17DUj
	0qSMKMXxI7t7Rudap74VABrecqhFV30f9W6W9Mf09etyHgLIX7kJ5b9jsa5K033fpOt5BwkR07b
	revH56qwVbIYiunS4q2VreCyeKtbUVw7kchkwULrSwRIsQNgLvxR4qqrKwX0=
X-Gm-Gg: ASbGncuKU8KJlE0hx01QqC4ovSaPJVpktRMd+0d5urkcXbla5ozGQVJLvwi2068hxN9
	NCmK7fXPkqwjABNznqygXM0IJvaSjv6Xh75o/F/d14ZchI742HrExgF+9i1e3JrWlXvkrAjGE4e
	LRZ+1jg1QbA+7TLRfT4OQbA32GG8wP+X7yOg5fbnsMlkhwtHaiZIR4GH6K7ZmyTpWAS+wgHw8p6
	8cnH+B2l7r4PR7P7vgx7aAdh5WouAPx1TO9HCsdKoS66uU/oiUk50fYTnKyPmFpGMCPfSCAAXRt
	IICP8iaZwtygtsG0gl6o1ppSyas9EJlBJ0axHCwVf9csc2RxhCDBVVyr+cQTWm3rsBJdHw==
X-Received: by 2002:a05:600c:a363:b0:43d:2230:303b with SMTP id 5b1f17b1804b1-4406ac0a8b4mr138387035e9.20.1745360740673;
        Tue, 22 Apr 2025 15:25:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOs7XI0oTVw+DKb/7MP/FHJt4LRqW8okLBk6z7fJGL0tMZ+Jiu0PXC4iek8XZZs+XJeZ3sSQ==
X-Received: by 2002:a05:600c:a363:b0:43d:2230:303b with SMTP id 5b1f17b1804b1-4406ac0a8b4mr138386945e9.20.1745360740331;
        Tue, 22 Apr 2025 15:25:40 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-44092d17086sm3525365e9.4.2025.04.22.15.25.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 15:25:39 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Marcus Folkesson <marcus.folkesson@gmail.com>, David Airlie
 <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Marcus Folkesson
 <marcus.folkesson@gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: display: Add Sitronix ST7571 LCD
 Controller
In-Reply-To: <20250415-st7571-v4-1-8b5c9be8bae7@gmail.com>
References: <20250415-st7571-v4-0-8b5c9be8bae7@gmail.com>
 <20250415-st7571-v4-1-8b5c9be8bae7@gmail.com>
Date: Wed, 23 Apr 2025 00:25:38 +0200
Message-ID: <874iyfbzq5.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Marcus Folkesson <marcus.folkesson@gmail.com> writes:

> Sitronix ST7571 is a dot matrix LCD controller supporting
> both 4bit grayscale and monochrome LCDs.
>
> Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


