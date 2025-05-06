Return-Path: <devicetree+bounces-174089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5591BAAC0EB
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 12:08:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D7893A1773
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 10:07:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C06E0272E7E;
	Tue,  6 May 2025 10:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="fVCYukBZ"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C44226AAB2
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 10:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746526087; cv=none; b=QH8OjItRqFgIo/ozcaD1UPy/FXwXCN/GTcDIjADyVa9EbdoLZoWiI07ItguevmCmF1PzqjTUGfmHqnAn99YfhaBPceS83qCzOSJv/WU13wIg9HQ3Ds+D1UJPySJYDKJbrtBU2ixtpVulEdCYP2I2s9gycT1FHg4gNCI/cGxSr28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746526087; c=relaxed/simple;
	bh=Wz6GfcLllA8wXtKZftbfMGr8twZTF0gIGI34vcXnxvA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Rw/RE8MmUAVaA/dFZrkKPQuOm3vNZhz82jMQSZRNuoZmvSgXaULZ4b9kSmBSNK8cxPt5obUswEcMPRuu76jyTJoV7T6dJ/9ZqyLxTlN69lUQ7i7EL0D39lSMms6BJTHhU76t/Mwd4nr06SQOQ4rvLncurMmJGLOdnNyERe3e+F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=fVCYukBZ; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1746526085;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2KtQkNqGsM537amwwqhIUa++uqwpFX6sC1hurxsMCHI=;
	b=fVCYukBZAHcpNHxC5l7aWX7MxV7r3Xaqfu8pedC+lsO3H0/OpjrnAl5l8/gjAw8U2qLuI9
	ePCuOYmoJ5+qi/qWOtI+FzqEraPlzMHJCxxzZV8z0FBZDCPNv9z+r+xPAloQQVyRzT8fWU
	GMFahnY1ok+YbT7zeWqEHFMRRtnEzXg=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-35-fcDs-rGbNjedFs8rhOS6Ow-1; Tue, 06 May 2025 06:08:04 -0400
X-MC-Unique: fcDs-rGbNjedFs8rhOS6Ow-1
X-Mimecast-MFC-AGG-ID: fcDs-rGbNjedFs8rhOS6Ow_1746526083
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-44059976a1fso23448675e9.1
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 03:08:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746526083; x=1747130883;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2KtQkNqGsM537amwwqhIUa++uqwpFX6sC1hurxsMCHI=;
        b=ayqJaqUjS7WxdHVWuK+35tYbVt6lSX8aRCzDgkp9Awo1GWMYCSqvR9gUHzq+4oTGyQ
         a+wktMxk5WNdd8qIr7+k/Y9yxZTBI50khyPVwshMhMHgpz2dsFCz64OowskCUVen616h
         SI8cRGsU36tONv6WKehDjrcsatEXvEEskEIexF6B6FKY57rfY+Bj00Ddp+RDxGt4QeQY
         R421uT+sE7NJ15G5BNCwEZrleJbDHPuRsoqMFfElDKGW6VpskvW+9XYPKIeicthwevxy
         tSdxe0Foa5T9QRwzhTEBmeIGTbxoJckn//bGHHo8jGz8wwFAhUwh/frCx2QifGiDoOsp
         dgTg==
X-Forwarded-Encrypted: i=1; AJvYcCUeXaLF9IMTwbmgDvyNL40+VyyeHLkWcUQm/KZ31rOeNvkc666fZckjk0ysKwiXwtH6l2Qyt7zEP8e9@vger.kernel.org
X-Gm-Message-State: AOJu0YxgCBP+sW6w88HgtPxV0o7tTuRQs20wWAGjl8BZKKbmeyf9u+kP
	U2+30/xSrh6jimQjwr71xoML0NE8oCYl/lOBB+ynw4FgN3euyph9+LxFq353eGHj1mbck64JGQY
	5om0Ts1InHEkUQ+T5KWVnAKBENrQyha8odJMowIFEQROhRzm1k8tVBijCFWM=
X-Gm-Gg: ASbGncvxY+fRc/PVces3SP9hLKvMONVcg/sDbgCT6GnHJcpUDbF5wQFeruk1jjrZT5Z
	cO7FnU5y/Y+gNJIKHckFzgKxOCLECLODNWbwEfvfZ2WM3Wi6DoRHeeQTb2YHK+yAHTQz8TU+cQh
	mHoCF2bOWZWwq839WbTY0rQEwgbgXnIYehQqWNR5Q5W9FRtTJMOSJSp4CAS/s9jmEEgsrZIRD5J
	AZPDCwLmFkYG2aMRrSnZLQ4HHkAW6L2cCfnLFfL/N3NPNjwAgEyTdmJtnYhbXAKlZfUn+8aCEpd
	G5fAVq6zv/Z1eHsyPAZEjLPyrsONxq7TAiUf9SAsqwZaIqf9UqF+0GnNYck=
X-Received: by 2002:a05:600c:5304:b0:43c:fe15:41e1 with SMTP id 5b1f17b1804b1-441bbea0afbmr153287205e9.4.1746526082875;
        Tue, 06 May 2025 03:08:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhc03MBzoZWgjKorEMXR128n+knjgaDZEvqQTT3kpgSCz4Z047896lj5XIARk7un2ADQgeHA==
X-Received: by 2002:a05:600c:5304:b0:43c:fe15:41e1 with SMTP id 5b1f17b1804b1-441bbea0afbmr153286675e9.4.1746526082521;
        Tue, 06 May 2025 03:08:02 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:2706:e010:b099:aac6:4e70:6198? ([2a0d:3344:2706:e010:b099:aac6:4e70:6198])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b2aecb60sm207881215e9.11.2025.05.06.03.07.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 May 2025 03:08:01 -0700 (PDT)
Message-ID: <19f4f38b-9962-41d6-97b7-e254db3c6dee@redhat.com>
Date: Tue, 6 May 2025 12:07:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v7 03/11] net: ti: prueth: Adds PRUETH HW and SW
 configuration
To: Parvathi Pudi <parvathi@couthit.com>, danishanwar@ti.com,
 rogerq@kernel.org, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nm@ti.com, ssantosh@kernel.org, tony@atomide.com,
 richardcochran@gmail.com, glaroque@baylibre.com, schnelle@linux.ibm.com,
 m-karicheri2@ti.com, s.hauer@pengutronix.de, rdunlap@infradead.org,
 diogo.ivo@siemens.com, basharath@couthit.com, horms@kernel.org,
 jacob.e.keller@intel.com, m-malladi@ti.com, javier.carrasco.cruz@gmail.com,
 afd@ti.com, s-anna@ti.com
Cc: linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, pratheesh@ti.com,
 prajith@ti.com, vigneshr@ti.com, praneeth@ti.com, srk@ti.com, rogerq@ti.com,
 krishna@couthit.com, pmohan@couthit.com, mohan@couthit.com
References: <20250503121107.1973888-1-parvathi@couthit.com>
 <20250503121107.1973888-4-parvathi@couthit.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20250503121107.1973888-4-parvathi@couthit.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/3/25 2:10 PM, Parvathi Pudi wrote:
> +static int icssm_prueth_emac_config(struct prueth_emac *emac)
> +{
> +	struct prueth *prueth = emac->prueth;
> +
> +	/* PRU needs local shared RAM address for C28 */
> +	u32 sharedramaddr = ICSS_LOCAL_SHARED_RAM;
> +
> +	/* PRU needs real global OCMC address for C30*/
> +	u32 ocmcaddr = (u32)prueth->mem[PRUETH_MEM_OCMC].pa;
> +	void __iomem *dram_base;
> +	void __iomem *mac_addr;
> +	void __iomem *dram;

Minor nit: please respect the reverse christmas tree order above.

/P


