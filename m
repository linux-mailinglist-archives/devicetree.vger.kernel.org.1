Return-Path: <devicetree+bounces-61459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CE28ACC06
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 13:28:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 97F281F230FF
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 11:28:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6EC3146A65;
	Mon, 22 Apr 2024 11:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="f4FOhdlL"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D56B1465A6
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 11:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713785316; cv=none; b=Wn+++lSY1JJ7OCOsRquCXJVLUWFqIWROVWxRbzVepbFK1F2YL/Be9/z0JAsTmdPeO4wYNA5VXYiD0ejj+bATnkuTL6eGmlTfmOPB26Q8GfRprGUwQL49KrE3x0KUAyofaJaOWzMP96vtfVneGmuiKCgdPYZX8c5SYqjPTE38h44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713785316; c=relaxed/simple;
	bh=LlC9TFfkOyKE9KBJ0ruLXt/YXgDvS60W07+SiC4G7dQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dqr/j8UfRs1aaC/DkkzhhTFCZtJA3xEpi80f2qmZXS+F9f8mFyN35kucDUGOPo/ToxxgrruzFwCd1pOrVdap5QkpT5QulH1M6mI2ztMMQ1QfQrRgeM2AJMMGSkHTy+EbZyD4GTqq3FkKAHiBhj71P4F5VddtVUOISQICVqleH5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=f4FOhdlL; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1713785314;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IdP6aBlHUd1XAByP0AzLdNCgpA2tCV7wBjkJeHqJq1E=;
	b=f4FOhdlLq1BLs8s5QPd0bc6XOpBTrEYDdO/J2A30rD3ZlYP8DJYV7O6qAN3W+fkYFhAPuo
	fBG9mKfY249fMzwYG+kibJtxF/57OhqwlFvG2g+gj4xZCZDxzK9aqBhkHvdqUdrZ1YxNkr
	FBp2bsE7WUGE0e9+cylscWnzLh6XAuU=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-619-d2CB45IcM52oHrpXMIMCCQ-1; Mon, 22 Apr 2024 07:28:31 -0400
X-MC-Unique: d2CB45IcM52oHrpXMIMCCQ-1
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-a4e9ac44d37so216667966b.0
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 04:28:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713785310; x=1714390110;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IdP6aBlHUd1XAByP0AzLdNCgpA2tCV7wBjkJeHqJq1E=;
        b=BDQUDZFgzJQoJdXKBkj9Q6VaJi6WjxmjnI8fYxWR6sXt4kpuQ6+yo1QebM96CpQSaQ
         G6aOZXV9KnME2bqYjcu5F6NEAVYcdHodyOv2cE8grHpDShXgMv+n1xpzpL6DYulD7Ye2
         nAbpLwi+e/wqBvTXg5OTB5trYZ8a5K/O0ceakEh2KDciMmgwPiA5HJnKqpro0GMjHUMb
         Qdi+bDmLWwNDV5n5IUcboC3849H0FJi6KDNFf6/0+7iafRY/2NWr1RU20Ig5oACpS6ew
         QhR97iilOSfryuVCJfXqOgMfEGy9Rodcwzv1vKxKB4g56nPIy97CvBJAfBEz8w5N2O2w
         iIPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZEcLMZa5pCFVTno4mCSFF8PzfU03VXhmPSxhyQFDPg13cR4cG36uTtYakNhsD2tQJlLqw7kG94ZXEY7oO8/Mpm3j3akKqzSVw4Q==
X-Gm-Message-State: AOJu0Yx6lccGAfaQG7anRSmxvrbtl6rcE9hSMaaB75lwvVjpSs7AHgbB
	cpkAKUBGnXMF/KxMWq48JgY7pWk3Bx0HLBFI5EeI2c5Puv/MVKobrLjAR4JPpg4jI2zsING332c
	LRlqYUcz6zj8unhQR32CObTJ4FYtj/JfC24njuXXi3Va98KONsUPsbkU7itI=
X-Received: by 2002:a17:907:94c7:b0:a55:aee0:517 with SMTP id dn7-20020a17090794c700b00a55aee00517mr2715566ejc.30.1713785310800;
        Mon, 22 Apr 2024 04:28:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYltrgJMhWpRSqD48zzNpCNz3G5JP8VifbDGgrJ1pm53j5xEijUgLtV36FCwtzF7rrmcTjmg==
X-Received: by 2002:a17:907:94c7:b0:a55:aee0:517 with SMTP id dn7-20020a17090794c700b00a55aee00517mr2715553ejc.30.1713785310475;
        Mon, 22 Apr 2024 04:28:30 -0700 (PDT)
Received: from [10.40.98.157] ([78.108.130.194])
        by smtp.gmail.com with ESMTPSA id d13-20020a170906640d00b00a5267ee40efsm5731727ejm.18.2024.04.22.04.28.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Apr 2024 04:28:30 -0700 (PDT)
Message-ID: <44b64f19-8141-4c6e-855f-d2b4e821e0c9@redhat.com>
Date: Mon, 22 Apr 2024 13:28:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 0/4] Input: support overlay objects on touchscreens
To: Gregor Riepl <onitake@gmail.com>,
 Javier Carrasco <javier.carrasco@wolfvision.net>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Jeff LaBundy
 <jeff@labundy.com>, Conor Dooley <conor+dt@kernel.org>,
 Bastian Hecht <hechtb@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>
References: <20240422-feature-ts_virtobj_patch-v9-0-acf118d12a8a@wolfvision.net>
 <9d898a98-cb7d-45d8-80c2-2ef428288e6b@gmail.com>
Content-Language: en-US
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <9d898a98-cb7d-45d8-80c2-2ef428288e6b@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Gregor,

On 4/22/24 1:22 PM, Gregor Riepl wrote:
>> In order to generate proper key events by overlay buttons and adjust the
>> touch events to a clipped surface, this series offers a documented,
>> device-tree-based solution by means of helper functions.
>> An implementation for a specific touchscreen driver is also included.
> 
> I believe there's at least some x86 tablets that have such a layout, so maybe ACPI bindings would also make sense? Or can this be supported by your DT-based solution?
> 
> I'm not sure if it would really be needed for existing devices, though. It's possible they were all handled by touchscreen controller firmware so far.
> 
> Hans, do you remember if we've encountered any Silead or Goodix devices where the soft button overlay didn't work due to missing firmware support?

The x86 devices with Silead or Goodix touchscreens with soft buttons which are
part of the touchscreen digitizer that I know off all handle the soft buttons
in firmware and do not report regular touches for the soft buttons area.

So I don't think that something like this is necessary for x86 devices atm.

Regards,

Hans


