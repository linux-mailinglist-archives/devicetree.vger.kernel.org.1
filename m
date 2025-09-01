Return-Path: <devicetree+bounces-211292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE19EB3E478
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 15:18:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3375916ECB2
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 13:17:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9B9A1B21BF;
	Mon,  1 Sep 2025 13:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="NehNTax9"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3C4275B06
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 13:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756732654; cv=none; b=flPRueR61br/c/tdyLlAUvGvrHF3vePJHPcLxWiJMlf8k0iCxWVWBcgX3iKDERwJZftK87LZzD7QXSOoYWVYld12JcA/c50n9b+uYiSMDYZzYJheeD2tv55SzLTyEfCQ5Gj/z2pV7Xh9q99kNQCtOC6V6irgsA0dqnWZZtjKZuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756732654; c=relaxed/simple;
	bh=o9b3osbHSNnxH9lm1GdmOm6srpgce7FMFtAXJOWYNxA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=AKo9loHAxwoy7Nn9mzZj0HM5G9N7AuDYrykN+8xH/ch1ulBijV6DESkdCK1i3KVAQ57ZoLOkzQGGoDTXCH4bQejCxtvGIaINrYu+5y3raegvkxB15/nXcSdDZi+NWK/vFBDzLvVwWssbkDAsriti4y1di4wdxTD5Tc8DbAiCkEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=NehNTax9; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756732652;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=LZO/bK69jUlRIeMZwS/vG5/0W+8gIUMGxQyNC0dZPbA=;
	b=NehNTax99btPQCZqelHUy5JQ+EVON5ciXip9t2ls5yebvt+sNQdg0LcfJau+AUCRkIxJIg
	brDBsEfRM/W4k/7ggvzcpAqZ7hSsbrUJaFqbm/0dvLwnUyS/V4krvzrQhL0Q/u4rwl6WD/
	966ZkqUQqDQCyW7z0h60puNot2XWGqw=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-343-Sd8XH6MoPAuvytUyTb7-dQ-1; Mon, 01 Sep 2025 09:17:30 -0400
X-MC-Unique: Sd8XH6MoPAuvytUyTb7-dQ-1
X-Mimecast-MFC-AGG-ID: Sd8XH6MoPAuvytUyTb7-dQ_1756732650
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-45b8a307c12so6294855e9.2
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 06:17:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756732649; x=1757337449;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LZO/bK69jUlRIeMZwS/vG5/0W+8gIUMGxQyNC0dZPbA=;
        b=xJbBCA8vWU05qOLpIXnHv1mz1BQgT3lny9DdpXMXUtkWGasb1WXq9wdqoP/qYc3tMI
         BxcBDDlk7kYbXF8cVj9y+Ps4q4vdUZjF9B/zZUsyHSse7KBEIpEFKZIbIN7DJu0sODrX
         CBgITqZW4EIpw13alg9uzFiJqDtspc/gNdKPJcD9n1030Cfx0K4cGC1HFi8/a8zxOyIG
         Si5thrWF62SaW8ag+CsB4BBXNlPsBC5M/1jYY1e608zB3vci5z3EDArruE1kZubP7eb5
         00NNORfDeYfSoul/OSGkwYRtHJstf8ILQUhFdHGcGDvXVA13tPVjquuckGwRkdBTaHdQ
         DHSw==
X-Forwarded-Encrypted: i=1; AJvYcCUU4b+kkXE8hLQE3IZz5wCuVxT7qc9NNvOUhnclUtAUPaLxvxg7FEWPHEIbmFP1lBGei+8+B0O96+ga@vger.kernel.org
X-Gm-Message-State: AOJu0YzVjhErYlY/r1+RAwYVTP66uehr8Ggi6cDPIvmhLNKAT8J6305j
	+Ur99bFyLUzVMryW12BiHoKn3hLxfA2Ae061VVcV33F32NFtpsVRGCdXk4aWjF0a4fH9t5QVKeb
	gF/VHw7TmPFGpjJbROMx+c9J7IUxIsuKrKQBpRc5o2Acwv78ibqWm4hns41ldE20=
X-Gm-Gg: ASbGncsJM8DD98ThrOO29maUcpfixfOK05FYdxWYzE97yAM8NDEWQ9DBu87E9eMvXuK
	NexGa8cRZmWr9StpxR5J0XO3xXYucaDedQfWEQMJ3xUTsonWdEbQA2M+QJ4lIRHFVzCleBTJ6E1
	znrSBfMAqoE5CgD1JlEkZcIjoD1UzUKkzvGKiW8tzetiZLq5jzDVsBH/60bKovCXmmrDjSeVENw
	bqdu+eftYL1cUMGNDRbmaN5RIeo2okH9qdvR0hJMIofvKN1K6YK/BoYgoeZVPBJUSOmd1WH0vbP
	4uwnJxUBnxBDrRFl46cFRYma6fTIRpsPgV/jkyUtS96wAYuTjyPaorzJ+hhT3JQA6Q==
X-Received: by 2002:a05:600c:8b42:b0:45b:7e86:7378 with SMTP id 5b1f17b1804b1-45b8558be6emr57766785e9.34.1756732649581;
        Mon, 01 Sep 2025 06:17:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhXOtsZRDLW2l3J+Wn9wiLXesejOPTq/Wp1Kxm7t60DSLp7i1mtWhQUMZ8vc4tXh5zVbs2Hw==
X-Received: by 2002:a05:600c:8b42:b0:45b:7e86:7378 with SMTP id 5b1f17b1804b1-45b8558be6emr57766575e9.34.1756732649152;
        Mon, 01 Sep 2025 06:17:29 -0700 (PDT)
Received: from localhost ([89.128.88.54])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b6f4aa8a0sm238572925e9.12.2025.09.01.06.17.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 06:17:28 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Maxime Ripard <mripard@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: Iker Pedrosa <ikerpedrosam@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter
 <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] MAINTAINERS: Add entry for Sitronix ST7920 driver
In-Reply-To: <20250901-industrious-rooster-from-mars-85e3cc@houat>
References: <20250806-st7920-v1-0-64ab5a34f9a0@gmail.com>
 <20250806-st7920-v1-3-64ab5a34f9a0@gmail.com>
 <24a5ac33-945b-4861-ac0b-94eaa647e893@kernel.org>
 <CABdCQ=Mysc3a5JNe7te0nRAOzB2n9vQcEz+hZmE3B3vmDYNt2A@mail.gmail.com>
 <083588db-10a5-48ff-80da-55c5b79e843b@kernel.org>
 <20250901-industrious-rooster-from-mars-85e3cc@houat>
Date: Mon, 01 Sep 2025 15:17:26 +0200
Message-ID: <87y0qyfh21.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Maxime Ripard <mripard@kernel.org> writes:

Hello Maxime,

> On Wed, Aug 20, 2025 at 03:10:16PM +0200, Krzysztof Kozlowski wrote:
>> On 20/08/2025 14:23, Iker Pedrosa wrote:
>> >>>
>> >>> +DRM DRIVER FOR SITRONIX ST7920 LCD DISPLAYS
>> >>> +M:   Iker Pedrosa <ikerpedrosam@gmail.com>
>> >>> +S:   Maintained
>> >>> +T:   git https://gitlab.freedesktop.org/drm/misc/kernel.git
>> >>
>> >>
>> >> Drop, unless you have commit rights there. Parent entry already covers
>> >> this, doesn't it?
>> >>
>> > 
>> > I don't have them, but I'm working with Javier and I think he does have
>> > permissions. Let me ask him when he gets back.
>> 
>> Javier is not mentioned here. You are adding redundant and useless
>> information. T: is for subsystem maintainers, not for individual drivers.
>
> Kinda. I mean, you're absolutely right for pretty that it's implicit in
> most places in the kernel.
>
> However, it's not here. The drm-misc tree is meant to collect the
> patches for all those small drivers, and we don't have a folder to put
> these drivers under.
>
> It was pretty confusing to differentiate a driver maintained through its
> own tree, and one maintained through drm-misc, so at least explicitly
> having the git tree set to drm-misc is how we show that's where the
> patches are going to land.
>

Thanks a lot for the clarification.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


