Return-Path: <devicetree+bounces-195388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 983F2B01784
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 11:21:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A2AE1C2744A
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 09:22:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEA16279DB8;
	Fri, 11 Jul 2025 09:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="A8Djs/dZ"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01314279DC2
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 09:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752225699; cv=none; b=QbHD8JFR/Hb19OmjKOARg53YpS7bkAKjfT5LjXZvVKnYBEwOAFV5bq5+CwUQ0zI2tn8hS2Vq9ltmWufVQRvPPg7z5mIzb5mrH3cbX5AchtsWVCzXNGRO9c/FZouyVz2mxQGUOd1XWhS6cf7Sl63Wpho469woUNgqjSHj3t7jyRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752225699; c=relaxed/simple;
	bh=J1+gY7OYN0kPR3TnuQRjcQzBegXWzAAyK2wtVtceRZU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=dkU/JDHqGNdfq7Q3PGEGPGoAIRoJ0MgSN8t4eYiQjF7bQXyeHb6HeX8vze/0BaJjkH0oQptzQA1ReUyLLrBrCBfUdliY8EVxiIHULDZnQP+tVqx8DM4AtHBvNDXrzc8MTPpCHZ64Ws6n9vN7a6TR4oOv74MoueuVHzil8K5Of0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=A8Djs/dZ; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752225694;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=S0JDyIunfR5DTlK8KTu+Yf5amiLX77lLqYYzQS582qg=;
	b=A8Djs/dZusV3nm1DA67QPIdOY9htHu+SHuOkjDyzutQCst99DtGMyeEt0XuEKr6GcjuJgN
	26lMEc+MzZr5eh3BVcWYwIy0ni7oFYz2+C8NQw6C+D3ithN6t8fCSc8e2KWDQiD33V3kyu
	DrcJ1uCBTNeaZgJhqkGUBQiwSqfBRmQ=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-637-XcCEZcz-NVG9EIDW4bdb1Q-1; Fri, 11 Jul 2025 05:21:31 -0400
X-MC-Unique: XcCEZcz-NVG9EIDW4bdb1Q-1
X-Mimecast-MFC-AGG-ID: XcCEZcz-NVG9EIDW4bdb1Q_1752225690
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-45597cc95d5so1981075e9.1
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 02:21:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752225690; x=1752830490;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S0JDyIunfR5DTlK8KTu+Yf5amiLX77lLqYYzQS582qg=;
        b=SMmJHSPtFKMcd4vpG9oVrIK0pR5sKIK7tz8n1fujG/oclMO5dse7brxsIO8I17mI+L
         sxuvFCDlzr7NLozmfCOx5lbKXgKZPrXguicfqqp/Jq+0YS7k7T07uuno8HD2AQcOgTVq
         7LoxU/8V9Jf/hpmn6OEK3FOaFNuMvSFXotDGK4KCB67pG8cuybLvta23SkNSjVmb/vlV
         tJlMVVuR2n+mFJ2pOYnYrYA7SQ8snoyp/hk1uDcLEKsD/4jqw4QPfZlps14dtnUotPUP
         glU73jrIs5iLqeyYb9so32mHoDLkemDSIfS+Ank90xKl8uISK61FlYW0ywWV8U2u10Yj
         ZvWg==
X-Forwarded-Encrypted: i=1; AJvYcCUC41eS0zyegQW9Z2PlvPzeVRN/yJliZ6p9bW4BYloUDl8a9D4n9PkBy7eebAis8tDbrleKAIYIc3jG@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7G9JGp9yOuUWwbCTOFUiUD86zKY8T8x8FEnUIu3+064iuInnl
	3fetkvkXA/KFfi8VWPMeoNLbbJAM7Axn5YO7bbYRo0TA138LwINbNf0JHYpriVW/XCJm3CXI+Ev
	muQ7BrFOtf9hG2r3KuG32j7zkjFVi9DYfrkA5ZtSBneJyXJACCifx9hHAJI7VCp8=
X-Gm-Gg: ASbGncsOgjjnLyIn/1K537hUR8ieEDYhDa6rcH7Vj50DVNT+YhN7e86sibLD5DQED84
	cOh931/JcsI4Ro1KKxa6oyQGI2t9ID5rPubbLf11rHuxtP/HSmc10QEDg1ZOn1i1tLzX34Fzwe2
	/RF73NZz5dF9rY15B7MuXkoa9AQEFVkWvBoreDE+EC2/S6GGHVzLTUobOMA68CPr+OgaYczzXvl
	RhhdYA/NwBUhoUWJkf3/ru3yNrZK83ObfzaoOAAAdiBSJ3YOa+jyoGU9Fo/mFI3SWZaXryHOeh3
	AgFPLN4oSYfEl1cKyzrWCXsHKfFG+X0BGVxSJac4wVe0sOdVaub1ZBMEA99UJ9paDOfu5NWfWm6
	bNXQVGJzhYA2515nHTGraGQ==
X-Received: by 2002:a05:600c:4fc7:b0:450:d568:909b with SMTP id 5b1f17b1804b1-454ec14848amr22904645e9.14.1752225690313;
        Fri, 11 Jul 2025 02:21:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHopr/bZIg6PNEafq2nN27RiUQenQ7qTkGeKlIozsRqo7Tj0VZVvTn0sX8s4NUjyeT3MpW78Q==
X-Received: by 2002:a05:600c:4fc7:b0:450:d568:909b with SMTP id 5b1f17b1804b1-454ec14848amr22904355e9.14.1752225689892;
        Fri, 11 Jul 2025 02:21:29 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454dd537d12sm41439605e9.24.2025.07.11.02.21.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 02:21:29 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Luca Weiss <luca.weiss@fairphone.com>, Hans de Goede
 <hdegoede@redhat.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Helge Deller <deller@gmx.de>
Cc: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/5] drm/sysfb: simpledrm: Add support for
 interconnect paths
In-Reply-To: <DB9237QHOXRU.JRJB8SPUX8RO@fairphone.com>
References: <20250623-simple-drm-fb-icc-v2-0-f69b86cd3d7d@fairphone.com>
 <20250623-simple-drm-fb-icc-v2-3-f69b86cd3d7d@fairphone.com>
 <87qzz5d3le.fsf@minerva.mail-host-address-is-not-set>
 <DB9237QHOXRU.JRJB8SPUX8RO@fairphone.com>
Date: Fri, 11 Jul 2025 11:21:28 +0200
Message-ID: <874ivjf5gn.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

"Luca Weiss" <luca.weiss@fairphone.com> writes:

Hello Luca,

> Hi Javier,
>
> On Fri Jun 27, 2025 at 9:51 AM CEST, Javier Martinez Canillas wrote:

[...]

>>> +static int simpledrm_device_attach_icc(struct simpledrm_device *sdev)
>>> +{
>>> +	struct device *dev = sdev->sysfb.dev.dev;
>>> +	int ret, count, i;
>>> +
>>> +	count = of_count_phandle_with_args(dev->of_node, "interconnects",
>>> +							 "#interconnect-cells");
>>> +	if (count < 0)
>>> +		return 0;
>>> +

You are already checking here the number of interconnects phandlers. IIUC
this should return -ENOENT if there's no "interconects" property and your
logic returns success in that case.

[...]

>>
>> You could use dev_err_probe() instead that already handles the -EPROBE_DEFER
>> case and also will get this message in the /sys/kernel/debug/devices_deferred
>> debugfs entry, as the reason why the probe deferral happened.
>
> Not quite sure how to implement dev_err_probe, but I think this should
> be quite okay?
>

And of_icc_get_by_index() should only return NULL if CONFIG_INTERCONNECT
is disabled but you have ifdef guards already for this so it should not
happen.

> 		if (IS_ERR_OR_NULL(sdev->icc_paths[i])) {

Then here you could just do a IS_ERR() check and not care about being NULL.

> 			ret = dev_err_probe(dev, PTR_ERR(sdev->icc_paths[i]),
> 				      "failed to get interconnect path %u\n", i);
> 			if (ret == -EPROBE_DEFER)
> 				goto err;

Why you only want to put the icc_paths get for the probe deferral case? I
think that you want to do it for any error?

> 			continue;

I'm not sure why you need this?

> 		}
>
> That would still keep the current behavior for defer vs permanent error
> while printing when necessary and having it for devices_deferred for the
> defer case.
>

As mentioned I still don't understand why you want the error path to only
be called for probe deferral. I would had thought that any failure to get
an interconnect would led to an error and cleanup.

> Not sure what the difference between drm_err and dev_err are, but I
> trust you on that.
>

The drm_err() adds DRM specific info but IMO the dev_err_probe() is better
to avoid printing errors in case of probe deferral and also to have it in
the devices_deferred debugfs entry.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


