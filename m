Return-Path: <devicetree+bounces-244295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 167E8CA3657
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 12:11:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 967D0302068B
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 11:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 734402E8B7E;
	Thu,  4 Dec 2025 11:09:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="JLcgvcWI";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="OwSiACeD"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB2AB2E542B
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 11:09:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764846558; cv=none; b=vFqSZJW74PojdU7X0ovT8s18OeiVynC1rJkyHIZl2dT2p0Qy1ec3a+Z7LmU2nyEmh4oH5sn1DB+29M1sZFBqGGgmdhwlPAseHRrvp/Qrm0odacjxPDvGpgnf0CG+C9k6tEw2rFNm9BfQDckHvEMlRksqPFXgviRNrSqKDYdOIvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764846558; c=relaxed/simple;
	bh=iEcJS1ImshZ6zlxJ5JYGXmza23VWEf3D5XGgBdYeHbk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V2AgmJ1R/S8ABcobnvWF2Ixk+qy2wVMA8dAHF8ugdu1TM8UAauJMa01ZiIH+AQxjKABLeGpMVDBZ1zpPey5JXZdpd3NXnAhT3vWbVwImxiJBZrEUtMhuirumOCDSn3kmScj7eTNX8eejK0JDJZLAO5mjQWEq2yPRl9OY1MUZnA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=JLcgvcWI; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=OwSiACeD; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764846555;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T82ZSvq1AhTv0DjkR4v78xLPKykCUc2Mvpo6gNcCnXU=;
	b=JLcgvcWIxDgojAutaNFVnqh4jpC1a5YPdb8jZ2JPsRE1bVhrnHAFrOx9iZ2BhvaoHT2lgD
	WqSyMTBR/Bw6+W+HgvV52xRQtBDzIAnOHlw27UbKgVPK+SbcDeNnB6w0i9LCbVCK0ARjan
	FegSoguMqywBaUJXMee+vK+8uRWT8t0=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-361-lWdsZF2bO3K-NyFb7SLBww-1; Thu, 04 Dec 2025 06:09:14 -0500
X-MC-Unique: lWdsZF2bO3K-NyFb7SLBww-1
X-Mimecast-MFC-AGG-ID: lWdsZF2bO3K-NyFb7SLBww_1764846553
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-42b2b9c7ab6so377874f8f.2
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 03:09:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1764846553; x=1765451353; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T82ZSvq1AhTv0DjkR4v78xLPKykCUc2Mvpo6gNcCnXU=;
        b=OwSiACeD8ounek8OQuYf0PMTi7e1BC7atDD9N3Bl6h8rkY5mdFbf1/f8Un7gwplO9N
         QdQW300HZes3jmbifvpkNdneravTzXKH6fHzRmlfh7+zGrZb3jPM5R2LpmhXCQH2Hunb
         bNwgmXhVU01npAuQCooSanMViwBUUoxN45wNplxdV0U37Dzx03Krtm0z1xCV9ahdJmGx
         6FMzOr2l6rL0P2T81PS8zYikJb8OzMLoL6peXm2glRrzG5HhS7dY+5EAc9FtOl5I/bwg
         ao2KTwaP4+pz6Q0X/Dwa1Cy05GCTR4JSgm0FbAiJYNY/EvVUCUMt1lH+1kaPDQzdcKeZ
         elMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764846553; x=1765451353;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T82ZSvq1AhTv0DjkR4v78xLPKykCUc2Mvpo6gNcCnXU=;
        b=edY5TfuyKDixSS27pYCiFFoL6rbr2yZXOznA82hrtLSKkmvdqyOutznUSFIq6ORvrM
         LYwG4u4amwo8fmigGmYR+mNQCMCQ3wvGZDZGnLCf9XffDU7RpbVZVHRB/D+1ITcJFzMp
         KcyjIbAm6Ro/Wlfi1L3OUCNuq/eSw7r4tobU5fSTgWM3oSwLdpACQIOxPTtLhgvudroE
         hi3usrtmfdoaKb0+4V1B5+8XbXPfFYfxfSqUYjWaISjHG0H3jbbQg4ApxMjkjfGsaIxM
         7pDJZJRLjayOB/le8HALlVDd7WXai+kw6Jx6xZpUW3OF3m4oIrLTumLi+rUQ7JOESF4D
         BTEA==
X-Gm-Message-State: AOJu0YyHMDfTYNVcQTiVSLbxmlkK2h9+ExxOU7BojPS6vd88JxPWxT4g
	/5lAxMDVq0gQDeckPluhsFMEA3VtBRgehc7jFLIdeV5lFD/T1w6lmDMTK7hNrNAKtX00K/Gl7cp
	v2uQIVF8kWkpivXikUpHgq/EJlihiXISXBmtAkafaSh0zRyi8nwQ26eTtXyHTg60=
X-Gm-Gg: ASbGncturXFi4wOlOY1SMEfoVgExuAB8R2lVW4rgTdjAyZpOJDyEsGeAnxgb7dJ9bYI
	F5DmExPnF/nHgs4+ugj5LRNfR6dhKtWbyL+v5IGdyNyYT7Ej3UUw7CzOt85VnOdrV8Mq+K0x3Jy
	98I4iICmUGt84w2MT0a4pn/u2HQNex2W9gn/HdH9YpeC6flGVtMIqUrBrqggrmNMhCx6f5Nr236
	BX8+aNM2HcC8gO9sOxExamoQ/1gIUR8wXDtn8as/d/ZGt4mersUmPy0xB+vA+p0QY8MiV/wbvaL
	T8xXvTEkfxkwAdv2MXPZGjWFn+LHjcplHvxdxf0tXxP6H9IbD0mNhbeGeVdkwAq4ux0QSy5Ayi8
	s9T+GCgTQAvLM
X-Received: by 2002:a05:6000:4011:b0:42f:760a:764e with SMTP id ffacd0b85a97d-42f760a79b7mr5483751f8f.32.1764846553324;
        Thu, 04 Dec 2025 03:09:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHb4LHNT7hjSXHvt0Jn7DaTqIpQKrsWbA5DyirMeRYRCFtGpD+XfXdyxr4Htp0h2I3WX4xOjQ==
X-Received: by 2002:a05:6000:4011:b0:42f:760a:764e with SMTP id ffacd0b85a97d-42f760a79b7mr5483700f8f.32.1764846552842;
        Thu, 04 Dec 2025 03:09:12 -0800 (PST)
Received: from [192.168.88.32] ([212.105.153.24])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d331e29sm2704209f8f.32.2025.12.04.03.09.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 03:09:12 -0800 (PST)
Message-ID: <de13a729-f590-44e8-8177-68bc43809048@redhat.com>
Date: Thu, 4 Dec 2025 12:09:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/4] ptp: vmclock: Add VM generation counter and ACPI
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
References: <20251203123539.7292-1-bchalios@amazon.es>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20251203123539.7292-1-bchalios@amazon.es>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/3/25 1:35 PM, Chalios, Babis wrote:
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

Linux tagged 6.18 final, so net-next is closed for new code submissions
per the announcement at
https://lore.kernel.org/20251130174502.3908e3ee@kernel.org

/P


