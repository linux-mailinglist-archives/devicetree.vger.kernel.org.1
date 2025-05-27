Return-Path: <devicetree+bounces-180745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E21AC4C4F
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 12:35:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 53762178CB6
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 10:35:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1475F25486D;
	Tue, 27 May 2025 10:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="itLh3ljC"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5842924DD01
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748342128; cv=none; b=LQHJjvg2JX2lLlJ96PPJO3xjxXgYFwsGF2bX0ygbwvNe/EU9L1rRXFNU70JO9xor4DF8TV4LWOVcGyNg8I75AAFjCFImZ81fYMMH6GpHBo4PwiDt3o83/xL7hny2LNFNmuHNjQuafAOsUjHl4AqGsxl9cLaRz67qd16lcDggCoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748342128; c=relaxed/simple;
	bh=/juqogzjOcrqZPt0Oi4j+kx+mXvLgxBGp3NXPvo6jfQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NocxXAjDOwNcD2c6lHzWXF21myAaF5nWfTxUdDVAnbM82vWjuLlUAKdJQw8EWC+1FATbZeKcgcfCSOXmLBCG9FfUaJ5QPnfeHord/Cwa7vf9JUcHD5T8y01jNHsVmxWCmiOymHCkkd1VAxwHsUpXo2Q09a+G+t+cQ2PM/VtwdyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=itLh3ljC; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1748342125;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hWu2mrsEBIWGkWqeUeYJyw5B2ia475IvzX8OU4kWUv4=;
	b=itLh3ljCWwbgPS2cHmP3Fg0NZDlJ5dX5aog/jHgT6O1Dp8kvE1P9OcZ1y3dyKIqtJP/5b8
	V4ZHH0RxRD16Eqn+twIEe+c5c9hozWiX6IKXeVltirAfhSK50f2J7eZ1U9vy7lmrTZ3OAO
	0G0ZZjNELjSrf02FpGM32DxoN8ELig4=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-364-hxAG5tP1NgehyC5taQpkKw-1; Tue, 27 May 2025 06:35:24 -0400
X-MC-Unique: hxAG5tP1NgehyC5taQpkKw-1
X-Mimecast-MFC-AGG-ID: hxAG5tP1NgehyC5taQpkKw_1748342123
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-3a4cfda0ab8so1048910f8f.3
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 03:35:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748342123; x=1748946923;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hWu2mrsEBIWGkWqeUeYJyw5B2ia475IvzX8OU4kWUv4=;
        b=NVa1um7RRmIoRSEC7jd5cQqPG1xp47jo31fVEx2XpC4Mf7kY0QNyT7YTld7kZugCAx
         ln/FNeFHvlB9IX0cEspdPBDg1ouhgNdboz+vR8Ffx1JDNoXmQFdXHDeLcIjhnRxu2kwb
         moshn8WUcmVtVLP+Z8ZNv+xHj8eqebGJV4CpmxIMdiC/7nn4wqjfxm298IO1JwEMU63i
         4OU81lEDK7vLC7NyBdeV88TxxFg+TdcAYDzCj7U/J8vCnDcCFCacdhSpz4Es3KTArV04
         bOMqKvZCCsUPqU7A4ivyrvRgMIoj7lPpqvxG6lxkT5hRRJ0IEbCvaKdUG9Yv4xZKGuoH
         fFOQ==
X-Forwarded-Encrypted: i=1; AJvYcCUCV6HYTJ8qNIex+jgPuds9wtlFrHg+3RH1sNfVqAo2O75ns3iYwiDI55r+wFqAei7tBx7bs/f9kHqt@vger.kernel.org
X-Gm-Message-State: AOJu0YzWMugh7NBmePKSAJVqJzpeLGr6+B3MCTvzFcP4XD6Dqum5hznm
	gkjStdzH2amEfMGTwduSUN09haXVwxWG7V8d5jS4rYnq87sAlS5MJ6POgnv2bhwCu58wsLkeGkP
	/cxSNNe8kzgvb2Dq3tCT+BtfKFrDzrt9EFeTDsvWKlKc37y/GgChVt25idvY8SYs=
X-Gm-Gg: ASbGncvW0Q09p9oKujJnacJSnvmwOY0xEgRU1lLMv5Lkx/3fmBYujYVh5PD129j9yf2
	K+d3wu9jVMzybWtOljGikOvlmTmjzcEW4tIeKQ+OCzP39l+QUr6NUIujO2ivSxoNmmjiGiqQjg7
	UoI2NIIaN8LQjkBqn0+MMcidayWL71VtgWnZlCQgOjrcAZ753GvBLzCH+9xkXFX85dTHEgsmNUE
	J7RNXG+StjFlPk1pJmmYIZTqzGCJsUJCKSs98yqhW3YoxQqmlYfTNQRH8h8Zbn2667GuwV2nSMP
	0jcAmMFafSDrvpmVuEU=
X-Received: by 2002:a5d:6e5d:0:b0:3a4:cc6a:4707 with SMTP id ffacd0b85a97d-3a4cc6a47afmr8067278f8f.48.1748342122845;
        Tue, 27 May 2025 03:35:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/Z0+wYgjwb+KMEhoIXQs6NQqsPmlcJox8t+LPqcLdWR6Idrt6pQtkHSyvpeUNQ/WjbvgQNg==
X-Received: by 2002:a5d:6e5d:0:b0:3a4:cc6a:4707 with SMTP id ffacd0b85a97d-3a4cc6a47afmr8067256f8f.48.1748342122498;
        Tue, 27 May 2025 03:35:22 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:2728:e810::f39? ([2a0d:3344:2728:e810::f39])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f1ef0ab8sm262443105e9.13.2025.05.27.03.35.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 03:35:22 -0700 (PDT)
Message-ID: <ec6487a8-277f-474b-b9ef-273a7f160604@redhat.com>
Date: Tue, 27 May 2025 12:35:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [net-next v11 4/7] net: mtip: The L2 switch driver for imx287
To: Lukasz Majewski <lukma@denx.de>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, davem@davemloft.net,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Richard Cochran <richardcochran@gmail.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>, Simon Horman <horms@kernel.org>,
 Andrew Lunn <andrew@lunn.ch>
References: <20250504145538.3881294-1-lukma@denx.de>
 <20250504145538.3881294-5-lukma@denx.de>
 <61ebe754-d895-47cb-a4b2-bb2650b9ff7b@redhat.com>
 <20250513073109.485fec95@wsk>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20250513073109.485fec95@wsk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/13/25 7:31 AM, Lukasz Majewski wrote:
>> On 5/4/25 4:55 PM, Lukasz Majewski wrote:
>>> +		/* This does 16 byte alignment, exactly what we
>>> need.
>>> +		 * The packet length includes FCS, but we don't
>>> want to
>>> +		 * include that when passing upstream as it messes
>>> up
>>> +		 * bridging applications.
>>> +		 */
>>> +		skb = netdev_alloc_skb(pndev, pkt_len +
>>> NET_IP_ALIGN);
>>> +		if (unlikely(!skb)) {
>>> +			dev_dbg(&fep->pdev->dev,
>>> +				"%s: Memory squeeze, dropping
>>> packet.\n",
>>> +				pndev->name);
>>> +			pndev->stats.rx_dropped++;
>>> +			goto err_mem;
>>> +		} else {
>>> +			skb_reserve(skb, NET_IP_ALIGN);
>>> +			skb_put(skb, pkt_len);      /* Make room */
>>> +			skb_copy_to_linear_data(skb, data,
>>> pkt_len);
>>> +			skb->protocol = eth_type_trans(skb, pndev);
>>> +			napi_gro_receive(&fep->napi, skb);
>>> +		}
>>> +
>>> +		bdp->cbd_bufaddr = dma_map_single(&fep->pdev->dev,
>>> data,
>>> +						  bdp->cbd_datlen,
>>> +						  DMA_FROM_DEVICE);
>>> +		if (unlikely(dma_mapping_error(&fep->pdev->dev,
>>> +					       bdp->cbd_bufaddr)))
>>> {
>>> +			dev_err(&fep->pdev->dev,
>>> +				"Failed to map descriptor rx
>>> buffer\n");
>>> +			pndev->stats.rx_errors++;
>>> +			pndev->stats.rx_dropped++;
>>> +			dev_kfree_skb_any(skb);
>>> +			goto err_mem;
>>> +		}  
>>
>> This is doing the mapping and ev. dropping the skb _after_ pushing the
>> skb up the stack, you must attempt the mapping first.
> 
> I've double check it - the code seems to be correct.
> 
> This code is a part of mtip_switch_rx() function, which handles
> receiving data.
> 
> First, on probe, the initial dma memory is mapped for MTIP received
> data.
> 
> When we receive data, it is processed and afterwards it is "pushed" up
> to the network stack.
> 
> As a last step we do map memory for next, incoming data and leave the
> function.
> 
> Hence, IMHO, the order is OK and this part shall be left as is.

First thing first, I'm sorry for lagging behind. This fell outside my
radar. Let's keep the conversation on the new patch version, it should
help me to avoid repeating this mistake.

/P


