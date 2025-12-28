Return-Path: <devicetree+bounces-249950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 32805CE5165
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 15:42:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C6E7C3007FCB
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 14:42:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECF13298CA5;
	Sun, 28 Dec 2025 14:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="GTzqnqAt";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="VsUrg0mS"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D61F1A8F97
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 14:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766932960; cv=none; b=NyDOCK6cwRb7adzqXZymiCBENlNFcD/5BudkaHYNfM7fMyADtvp1FFN38RlRKjPJXtiNdWo+k8Pm9KmY0MxyQwAcTIcZk+EaOHI1NL5boonfIk1GYetRpLzfc0KEfOAi3rF31IsLHfLY0dAmVqPcYP6WK98Rc+e+TjBpEAGYM5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766932960; c=relaxed/simple;
	bh=JPG/RzZhWVCp1ZFmNfPJQRrkOSlkYOST8bscerOo3gU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D3NHxnf7/86scWhrhxGGACe90k5y6+zkZ8PHkC8VPk17swp/Oczo81jpVv2C2e6kzhMRSr2chCG6IDjBUfnFCRgg1RgP7xusxiKzrUIWyCHgduHnkOnyUN2hG/pKH0r2vWsSX7qUrUwNz+FrLnPkB6AZLTpMyw4sb+ZiAJpvjbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=GTzqnqAt; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=VsUrg0mS; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1766932957;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=G8bryifZcLhB7SqhU4h4jRRAVhy7f0MZZFCKs5cin8c=;
	b=GTzqnqAtsamCl07YllXP+34ZnKr1l+uhCMM2yfu4AZbXO88BjCDO6Zl678B0fYbYaJxl0k
	Boa4VHuwiwVhPnhAllxLUV1jAK/gQCrRb4/hsEaTPDohYSzHVd56guXqHAk/SA3oqwXNQ6
	x+9wVwcu70ojDjXk4D5uPGcQ6+9QXM8=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-558-tKGrldcqPh-L5x9IlbDroA-1; Sun, 28 Dec 2025 09:42:36 -0500
X-MC-Unique: tKGrldcqPh-L5x9IlbDroA-1
X-Mimecast-MFC-AGG-ID: tKGrldcqPh-L5x9IlbDroA_1766932955
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-47775585257so58653325e9.1
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 06:42:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1766932955; x=1767537755; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G8bryifZcLhB7SqhU4h4jRRAVhy7f0MZZFCKs5cin8c=;
        b=VsUrg0mS1/nBtuc7mdfxmA6O3icrzsH96hQDRuNYdp+aoyUsBFQ7uTfO3Vg5WEQfEx
         jjdVJLaMc1JUcA4damBBWnnuxst1v2nUtFk1MYnxin2fqleZZFhVyt5fm4MNwQxFgFCt
         iCueSi9k/K1ow4Bfl2lB4PbxLWk3cEO87yjZ5zU0SscvQREruMeS7zZmdH9kcr79TNZD
         IPpTm9LRwlopvRw5XLF4A0cwa3yl9gYK9xeORUbWQmX36f+UvTDMQAzrCN0z5qbXmAfP
         Xpv/HF5cQ1vs2Wnrje6hV18IPI+kTp6iiZP9321Phhu+B3KQMhiXnkBpnZ2HuktfTi/g
         E+bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766932955; x=1767537755;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G8bryifZcLhB7SqhU4h4jRRAVhy7f0MZZFCKs5cin8c=;
        b=nyVitEZwsyN28m65Gis307i0kGDLlpiDN++8HWZdBeSskYmk2XST4K7YDcOMNPkZHm
         ofQCBKah6wwfCAGcthMyOrQW4fOreHUc7QhomgRlnAIPavmvW3kI3cdicCo2ZyyM/UOI
         4xXdmzvu0nsiK6c273YQbytVvFgqVrp9HkphYVr+ty/2b/IUhUIZ4TywLqPUddzYDfGt
         dZR4WMlExp5k5PPa6uqKNcdmJDXBWUK9S5zT8sUgQ0viI+wUrc8481U/s7qLX8BUak+a
         HJAt00larqkCFOnlIRKw+q1peqWUz2EaOCgvUGCgAJJyuxZZfb51KeXplUcU7SL58PMg
         2UfQ==
X-Gm-Message-State: AOJu0YxQAoSe5chH3sgAHG91aHYB86DhSH96q0byUYUnQsjdo/G5orB2
	5nwGFherdpw39m0d66rUUMCB8EhlZU8e9zRzhIwgrbexq3DxgHHsgUA8sRFON676Gr0Ya65oWEd
	PnSw17JzFc7jlm0S9vcks2LEdg6I+kfSFWGWF/9siT6BwzzRvR1W+ZcsD0DD+iqk=
X-Gm-Gg: AY/fxX5e1u5HbG942Ijr9NCYu2LrKG0n9EBIoUKMflCq2HDiEFSJgNG3Zckd+vtDOp5
	S8YwdBSbyTRnv5tEzonTWg+8SHx8xdz1wuku06kiVZYAHxM7ZRQuZdxa9D/M6i5NwLhy5DvFeY6
	EbPnytu1zBNI+dIbt7s+nyHIyhuZZDxi+iBpPF7Py5ZAepg68ge9LRG/NZ7qgFON1oCHzz0EOR6
	NZymVCVYBobLC8J1cz6lo5lX8DDcjRHTr3Al0/VooI8i/HC7SmAwHs3hsZMs6JzIIrZR/Hh6IPq
	x7bEFLyRSP/vg9wSbCd4sfLQEymkQKR3PGBMxLmqkXtnvhgTc09KASE1jKAm82paCl/I41j1C+d
	m9WYt6E1Hx1cY3g==
X-Received: by 2002:a05:600c:3489:b0:477:7ae0:cd6e with SMTP id 5b1f17b1804b1-47d206a9856mr274621975e9.5.1766932955094;
        Sun, 28 Dec 2025 06:42:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE6f/QOt+EFLwIiOz3zZKaye78peQJoKonMvSd+nAHO48JmNttMUR/PKVg2n8Lh7V90fWHv6w==
X-Received: by 2002:a05:600c:3489:b0:477:7ae0:cd6e with SMTP id 5b1f17b1804b1-47d206a9856mr274621615e9.5.1766932954702;
        Sun, 28 Dec 2025 06:42:34 -0800 (PST)
Received: from [192.168.88.32] ([169.155.232.231])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324e9ba877sm56566919f8f.0.2025.12.28.06.42.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Dec 2025 06:42:34 -0800 (PST)
Message-ID: <5fe241dd-ae17-4cfe-80f7-e7ea80f8b781@redhat.com>
Date: Sun, 28 Dec 2025 15:42:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/7] ptp: vmclock: Add VM generation counter and ACPI
 notification
To: "Chalios, Babis" <bchalios@amazon.es>, "robh@kernel.org"
 <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Graf (AWS), Alexander" <graf@amazon.de>,
 "mzxreary@0pointer.de" <mzxreary@0pointer.de>,
 "Cali, Marco" <xmarcalx@amazon.co.uk>
References: <20251218142408.8395-1-bchalios@amazon.es>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20251218142408.8395-1-bchalios@amazon.es>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/18/25 3:24 PM, Chalios, Babis wrote:
> Similarly to live migration, starting a VM from some serialized state
> (aka snapshot) is an event which calls for adjusting guest clocks, hence
> a hypervisor should increase the disruption_marker before resuming the
> VM vCPUs, letting the guest know.
> 
> However, loading a snapshot, is slightly different than live migration,
> especially since we can start multiple VMs from the same serialized
> state. Apart from adjusting clocks, the guest needs to take additional
> action during such events, e.g. recreate UUIDs, reset network
> adapters/connections, reseed entropy pools, etc. These actions are not
> necessary during live migration. This calls for a differentiation
> between the two triggering events.
> 
> We differentiate between the two events via an extra field in the
> vmclock_abi, called vm_generation_counter. Whereas hypervisors should
> increase the disruption marker in both cases, they should only increase
> vm_generation_counter when a snapshot is loaded in a VM (not during live
> migration).
> 
> Additionally, we attach an ACPI notification to VMClock. Implementing
> the notification is optional for the device. VMClock device will declare
> that it implements the notification by setting
> VMCLOCK_FLAG_NOTIFICATION_PRESENT bit in vmclock_abi flags. Hypervisors
> that implement the notification must send an ACPI notification every
> time seq_count changes to an even number. The driver will propagate
> these notifications to userspace via the poll() interface.

There are a few formal things to adjust (reverse christmas tree order in
variable declaration, empty changelog in patch 6/7, prefer #if
IS_ENABLED() over #ifdef). Moreover:

## Form letter - net-next-closed

The net-next tree is closed for new drivers, features, code refactoring
and optimizations due to the merge window and the winter break. We are
currently accepting bug fixes only.

Please repost when net-next reopens after Jan 2nd.

RFC patches sent for review only are obviously welcome at any time.


