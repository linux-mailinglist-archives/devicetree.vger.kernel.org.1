Return-Path: <devicetree+bounces-174074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08EBAAAC071
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 11:54:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 941FE4E2257
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 09:54:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F5AE15E5C2;
	Tue,  6 May 2025 09:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="eCswHKJX"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9EAB278146
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 09:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746525195; cv=none; b=QSVHUbCbkFIpD2vazAwz0967PM7JPuvwu094cOJ//RnIZHxcSTLdGeQeD3XrOoxyIWY0Ebfz2Kk7zMe1ufEQJk+Ytp9K4RnaKtryyykS0nGGjbvFRxHk9pRDKhwESwKGxWNIakwgXa2BHrWABbcTCKFZlRgdOg4RjJT1R9GG+Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746525195; c=relaxed/simple;
	bh=yHRqxw11DkfIZ1YAQcw+HF7fx4joijTrq2tX7o6YmGM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zt0Aiv5lzq2G7vGYci/C529lUDiIXChIo/ZdnnDNm1ko2/EJybUm8TpDmBvdjbw36lHdkICaTmp+ILBE7CAQ4hYS5ZEk+S3KRJ4KiYhIvvZ7m2iMC2AZC7SJa4cU5A3i3AAJsyLWb7FaWu4sbzke674AqxqM1fN6OZAcuXaDw7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=eCswHKJX; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1746525192;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yHRqxw11DkfIZ1YAQcw+HF7fx4joijTrq2tX7o6YmGM=;
	b=eCswHKJXz8ujPl/1shc1kepGbjmjMaaOmzLAm19mEc+Xaio4Od5USAGuyLRKYvlJxWRAYb
	JUNLagooPBefza1tzEsHu/9YOMsayGo/2OeBc/TrwRUKHlDewoz2JQx9e/rAQ0hjfkG14m
	qMI2+ynvxwBQ++h3wewdGEwa+EG+fGQ=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-121-BbcMhC_ONXa5tUMOUv4Fwg-1; Tue, 06 May 2025 05:53:11 -0400
X-MC-Unique: BbcMhC_ONXa5tUMOUv4Fwg-1
X-Mimecast-MFC-AGG-ID: BbcMhC_ONXa5tUMOUv4Fwg_1746525190
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-43cf5196c25so29615665e9.0
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 02:53:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746525190; x=1747129990;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yHRqxw11DkfIZ1YAQcw+HF7fx4joijTrq2tX7o6YmGM=;
        b=dK3af33wG9BT4fHzgQc06aml0Wc1iXdGALaXkRmw5+Mi/ukbw6UzfHPNgbXygFJjrn
         GTHymOdae6/QZJx4c5HpdpqeTBwZcZe+w9KiWUwzPjizipWW4BMcXapHL/fR/amgOBXy
         kkQ/Guu3YFoKrxxczcUb0X+6VlypQ6f6nGU7aHWxFTAGN2af/csBgZ+EhATMBX109Kji
         cDGbMKfgiTn/NzkZTqqsXHHhcAy99sLpdkrA51phRAO7u/yBlAAbWbdAGIqui8EBQ6vQ
         D2//BJEjYB07vKGNanG9JTn0bP0zxirsnYVnGBP7Zc58kqiI08ruTu+82tJy4D0F/FLN
         i+Pg==
X-Forwarded-Encrypted: i=1; AJvYcCXyHbAaTJ3fY3EXQ75/YmwbfjYew/cYynvYpjQ0JozMJnD858Fso+eCkIoSi/9bdr3zayVx6yoC71iy@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7Upzv37uqxAvQj5p78f0JSYCWBlyGKh9EpaojzRTBcUAEqaPB
	W4VGHC0zuoTyffrh/gAAi+IcyCRbGyZF8cA0TKKErornuTW3fpLVweI6LrKI7xKNZjH96a8dLLy
	A1UZSmNG6RvPj3ShjGv0WBiHhjUwfApRbjCvTp9lwkPKf5Zcqav+kWo91YnU=
X-Gm-Gg: ASbGncukt/Np5MQNAJQEbd3qVoGhyH4NUddmAAA+SI6UJJXsmRL0Dx/lw3djRVzoGeu
	3zHDDsc6a0nUxik4u253M4iPaQBpVWQ7zoW/sl44gZejPNwKBM5nR5NvaBhQzlTRH2jN9anmpVt
	TtivTJsi2g1l04zA4WYr/0y6ppd9QJSxMYVE8S4ZNP59DB/ygJcjwF4pAfy5ew6i1lWFV7bIxPa
	Xv0YZiQ+LNB7LouFgsnhSEeL3SnQqgatTpEb7H7WRBaw5Bpu4xl2ySO1jAQTpqcQMlGhmO6iM1l
	/Rbt6hjMGcaWuUN7pnvuBG2rXBHf3hXgtiiS317cXPF4zq69rlqTyBAPA1I=
X-Received: by 2002:a05:600c:3492:b0:43d:683:8caa with SMTP id 5b1f17b1804b1-441c48dc057mr110529455e9.15.1746525190278;
        Tue, 06 May 2025 02:53:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEBClihtS9IZe3qn1YixeNsDYjWzT9jRKdwymrU9Lptja+rp5uq6be54s18DEHJEmCnLCf55A==
X-Received: by 2002:a05:600c:3492:b0:43d:683:8caa with SMTP id 5b1f17b1804b1-441c48dc057mr110529075e9.15.1746525189959;
        Tue, 06 May 2025 02:53:09 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:2706:e010:b099:aac6:4e70:6198? ([2a0d:3344:2706:e010:b099:aac6:4e70:6198])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b2ad7ab1sm209878815e9.4.2025.05.06.02.53.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 May 2025 02:53:09 -0700 (PDT)
Message-ID: <ce36ce0e-ad16-4950-b601-ae1a555f2cfb@redhat.com>
Date: Tue, 6 May 2025 11:53:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v7 04/11] net: ti: prueth: Adds link detection,
 RX and TX support.
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
 <20250503131139.1975016-5-parvathi@couthit.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20250503131139.1975016-5-parvathi@couthit.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/3/25 3:11 PM, Parvathi Pudi wrote:
> +/**
> + * icssm_emac_rx_thread - EMAC Rx interrupt thread handler
> + * @irq: interrupt number
> + * @dev_id: pointer to net_device
> + *
> + * EMAC Rx Interrupt thread handler - function to process the rx frames in a
> + * irq thread function. There is only limited buffer at the ingress to
> + * queue the frames. As the frames are to be emptied as quickly as
> + * possible to avoid overflow, irq thread is necessary. Current implementation
> + * based on NAPI poll results in packet loss due to overflow at
> + * the ingress queues. Industrial use case requires loss free packet
> + * processing. Tests shows that with threaded irq based processing,
> + * no overflow happens when receiving at ~92Mbps for MTU sized frames and thus
> + * meet the requirement for industrial use case.

The above statement is highly suspicious. On an non idle system the
threaded irq can be delayed for an unbound amount of time. On an idle
system napi_poll should be invoked with a latency comparable - if not
less - to the threaded irq. Possibly you tripped on some H/W induced
latency to re-program the ISR?

In any case I think we need a better argumented statement to
intentionally avoid NAPI.

Cheers,

Paolo


