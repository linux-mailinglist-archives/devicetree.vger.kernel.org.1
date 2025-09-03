Return-Path: <devicetree+bounces-212140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E55B41DD7
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:57:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D6DD1BA81D8
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 11:56:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 300192FC877;
	Wed,  3 Sep 2025 11:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="dDRZrJiv"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF4B2FC887
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 11:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756900497; cv=none; b=gSS+aZtvFQtdJ5gIUyzw1a7HrHEOIu9UWnktuj+DcGcJhA8TZPhwllLxG1jEQTTMbUD5zaX0Tot7ehDW30Y5Y7XFLMiq5mAW55IURf84HxIZ/nSp4fJvJgLBFcTxOn+spPmbLWtQaicbeJ6ixRPHbTbuW0LxPbu3u+cGnHLJrDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756900497; c=relaxed/simple;
	bh=TYgCZgwlN04iCqEguaBK9XY+ydSwFww+nSrI+Eg5bsA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uNwO32i9BGMU3gVm3/N4obRKTlPa0J7xNy0iQr3wbq7fSc6dh2DyGd3mYrZHsgnIYgmJusuarSKKrcO+ktTOk/y18qlYrYMjcq9FelLd3NYP1ZaHhCruGFGO9QU3ytCCPDGrNo4znvZyR5gy6TeQHT4ANRVcT9v90H4eq2YHo1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=dDRZrJiv; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756900494;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Vy+lxzXfL0kgtP99rbzpLuAz47IO4D0JFyDaKKvEah0=;
	b=dDRZrJivtvIXxAnkZlWy3Ku1u91kpQ9r7ZOtO4MW9APA2iGkP5vOAc0Zibs9ah5YSg9Qd4
	YL1le+SSSiqnmpdQoptf/1RIzejR0o91VVmuZUT7lxerAC4ayxpJ97HlyPHikKfJFUn4pO
	SLqqiYzgCG97ecTNtGpoCnNK638YlGA=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-554-7gIsBtwPP2mCQzeNayevBg-1; Wed, 03 Sep 2025 07:54:53 -0400
X-MC-Unique: 7gIsBtwPP2mCQzeNayevBg-1
X-Mimecast-MFC-AGG-ID: 7gIsBtwPP2mCQzeNayevBg_1756900492
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-45b99c18484so7953455e9.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 04:54:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756900492; x=1757505292;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vy+lxzXfL0kgtP99rbzpLuAz47IO4D0JFyDaKKvEah0=;
        b=cY6vymsiHhrJ2YAQ4pIiuGB8zS7NIN6W1JqJNk/bVUOgfdxDbmI5rQrcaceqqhR5x1
         I3bJlz5wpcNKp1b/vQxuhCHAokDMjxeHOy87ElFQbk3y7lnpffFWUPC7ekP10IMbB4eS
         s01L/ToHUcCnyOqKx/9+T7WUG1PZqNnuK1dwc6xolgPuFLLtL2T7XZJzOpK8+SDPyZQx
         cJfjb4kkmV4oyILtnmeb7UAtvmDUnuv39vTgLjK9pzl9FoqfHn+OZVBUbLrVUspRCvXb
         bELHkdRRC+NKQ3e7qov1hKwD/0T008e8Bx4Axzf3rKwBuiK5p4q6aUSEl4+JIiEwfx2O
         tq8g==
X-Forwarded-Encrypted: i=1; AJvYcCW7ZOuVBmyVSRenPM/K1yE07LqlUrJsuV7ICOXR3woOhYv9G/Rm60P6VH9p9szPsKU85GYoYsJ6T3sZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzadc+JzZ6WByIT/z7zqspcKwmR5/ii6t4au6DurWy8UmloKrBT
	iIbpRRqMARHLsBQj7qPjlgV7FgKpy2/vepK6m9V+USYM5c3NKWXRqWD71jokTTN3hLlp7rYdTjZ
	z192YWhrLf/4cBbZlJNUTa4VRv7e7zpIJDDMOGGLpkEMhi1U6Vbv0QEja7MvyuIc=
X-Gm-Gg: ASbGnct6eJTTZTP+t/bvzz7KKThaQs90oXvOPTptIO6apDmgnKUIxKmYufnUzFCSiWy
	XT516Pi3VxAbhhBl+JLeU3c8vnpoc8N0Q47T8s3bt2Kr83Sh/uHx+Pr5oD1z+Z+FHKMfhieINLz
	q0uQ8prifq8taV3DeIcNZKiXIDEr6m02BSFpXSf95Kib3ubijWy1pnC2O2RINJkPktvJwN+TJG/
	RuSmNXtWOXI8+KDukcA53XIFBd0PxKZqhVRsR3hRXMl+x/qJUYh3Wfr+LHgswMhcToj6QK3fhJp
	ceusx4cTf6r+nRfuq5W+AkS7E7b32z9LLBtG1AETEdbB4EIRf/V423/axCeT5CoIfJ7BqVTIQ4a
	+mJQZRmz1QQB6rQBwNkHj4Xm1Cq7tx7f6hPCqbz2n0pTeieUSgzqw3So9hOrunMBQS4s=
X-Received: by 2002:a05:600c:3b07:b0:45b:b05a:af04 with SMTP id 5b1f17b1804b1-45bbd1e7bdemr33528585e9.14.1756900491947;
        Wed, 03 Sep 2025 04:54:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH4cpqBq++Zrb9IT80A4uabVZk9ElZFleozbFNUtapOQ1NF258s1FbhAQ7gOCAX/tb7ptHTCQ==
X-Received: by 2002:a05:600c:3b07:b0:45b:b05a:af04 with SMTP id 5b1f17b1804b1-45bbd1e7bdemr33528325e9.14.1756900491452;
        Wed, 03 Sep 2025 04:54:51 -0700 (PDT)
Received: from ?IPV6:2003:d8:2f09:9c00:8173:2a94:640d:dd31? (p200300d82f099c0081732a94640ddd31.dip0.t-ipconnect.de. [2003:d8:2f09:9c00:8173:2a94:640d:dd31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b6f0d32a2sm347689785e9.9.2025.09.03.04.54.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 04:54:51 -0700 (PDT)
Message-ID: <735f70a4-049b-4be7-9d08-97e2b326808a@redhat.com>
Date: Wed, 3 Sep 2025 13:54:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/9] dma-buf: heaps: Add Tegra VPR support
To: Thierry Reding <thierry.reding@gmail.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@kernel.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 linux-mm@kvack.org
References: <20250902154630.4032984-1-thierry.reding@gmail.com>
From: David Hildenbrand <david@redhat.com>
Content-Language: en-US
Autocrypt: addr=david@redhat.com; keydata=
 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
 qIws/H2t
In-Reply-To: <20250902154630.4032984-1-thierry.reding@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02.09.25 17:46, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Hi,
> 

Hi,

> This series adds support for the video protection region (VPR) used on
> Tegra SoC devices. It's a special region of memory that is protected
> from accesses by the CPU and used to store DRM protected content (both
> decrypted stream data as well as decoded video frames).
> 
> Patches 1 and 2 add DT binding documentation for the VPR and add the VPR
> to the list of memory-region items for display and host1x.
> 
> Patch 3 introduces new APIs needed by the Tegra VPR implementation that
> allow CMA areas to be dynamically created at runtime rather than using
> the fixed, system-wide list. This is used in this driver specifically
> because it can use an arbitrary number of these areas (though they are
> currently limited to 4).

I am pretty sure we want a system-wide list. Currently we maintain all 
areas in a static array limited by CONFIG_CMA_AREAS.

We can adjsut that to support for more dynamically.

-- 
Cheers

David / dhildenb


