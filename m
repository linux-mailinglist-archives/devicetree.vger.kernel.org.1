Return-Path: <devicetree+bounces-93309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 037CF9506EA
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 15:54:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 35ACB1C22948
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 13:54:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BF8019CD16;
	Tue, 13 Aug 2024 13:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ibMvYLPt"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CF5019CD19
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 13:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723557272; cv=none; b=eiQjoFqMY9q+UUA8bUpHoIx+JlEsvzu/qaKgZz3P686seEX7CcYVsn2YM97f2YmaeOtdt+Qzo1kxfjY0f145goSsd6law6Zi9JSuwwSPNtJ+U/lJI2wT6JggxQyIPsepEGA++OizfsWqUhmwsL57TtdY1L3sAfgl5gQafOiKq60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723557272; c=relaxed/simple;
	bh=VXxCCJXPNv8rAnDPDBR/EdsEcMV2Jfe8Wu2+Nlrny5M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iqySUGjAn0Sn5kCShMX9fJ+W40SfZTCY+SU3IPfPKqp2B0lNYmxhNn5LHuTvjRobhf84tR/DSgP/u9c2UbAtmf5vbHRCLpwmEIZbObFfe4TJzuVK4GqLhIayROr8wNrgF8Vh/ChRWPgF9CZebFqoSPJP2ZU1lpbmpSARJxbxl+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ibMvYLPt; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1723557268;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ftSvgbnin9t8+uyc0Qyra1ua6IsRzeg+RnvJFpXFr3Q=;
	b=ibMvYLPtuGU1NtUhzSSo+WXABh98TZ0mRl0Sl2vwO5eHOlUXwrdAmXD+MbfdoXkjkwF42A
	7e0gJ01/roP/YIKVVxc6AywsdjJgTn1LRNZJ+GUtnKMMIeCqkwZrf5dm14C7DLuD4j5VlJ
	VAEPAA23TSry0yhPLXxQ4mwEqe4isSQ=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-528-EjgwuBwaNrihCqI_3uqatw-1; Tue, 13 Aug 2024 09:54:27 -0400
X-MC-Unique: EjgwuBwaNrihCqI_3uqatw-1
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-426624f4b7aso10506425e9.3
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 06:54:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723557265; x=1724162065;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ftSvgbnin9t8+uyc0Qyra1ua6IsRzeg+RnvJFpXFr3Q=;
        b=vrnXe1iv3fS3whrxsPG8LjXPauPEnSioqB0atyPwOCmeMj1G8LFTJfRID1MabSmmp6
         /4nlquWXZKCJE0b1CZVBM8RP5MOU93AC1eTewV9Vgn3cnLjH4H636Gz4GwxLmfYPOUgv
         A9JHNuFwwE/V6mBUO0BDqL6usWEPfTWx6b1Uk3Ra/MOLVf01gngbLwQOdE8os5XaX4dj
         LDOocEP228VwvdhYwrsACv2fveJJMe+ncE+J7OGyZuARvkf3+DUfGTPpmrh5bbGD10Xg
         h4YuH6QU3tPG8wXyGnE+rK5VDrZlw0nfA4PmFQ9nMa3SUMJe9o/UnBZSMiMBe8IkTWEE
         opSg==
X-Forwarded-Encrypted: i=1; AJvYcCXb5Wn+GHLn0Bb9vsicedEAfZo95Aq9SbTzgQ/9ZwZm/smm3DhYKcjd9POBxe2nC9ByHS0i+WoJsP1+@vger.kernel.org
X-Gm-Message-State: AOJu0YyUUvlkDNT4oI8G4Ll4n2LAlkgeNjt3CmqA4glWURotTsFeSFbE
	Epb5tnBUMQRD41TTmOFldvpdVUcqamHdsWMdqO31cVLxckEdFNAbDrkZJufsDOklbRtx43YrHal
	TfrNRvTvbGbcd9eHa/xaj4dIWxCOWL9oNmulS+MBTkVheOlEN1d9Xiekx0BY=
X-Received: by 2002:a5d:64e7:0:b0:368:4c5:12ec with SMTP id ffacd0b85a97d-3717028178fmr1083048f8f.8.1723557265261;
        Tue, 13 Aug 2024 06:54:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEkGXvuWmr9Mw17RK3kt8FwYNiZEJrqhn5ZvawfheaNNHSvSGHpYTP6xuawTq17tPof0GuX2Q==
X-Received: by 2002:a5d:64e7:0:b0:368:4c5:12ec with SMTP id ffacd0b85a97d-3717028178fmr1083037f8f.8.1723557264732;
        Tue, 13 Aug 2024 06:54:24 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:1708:9110::f71? ([2a0d:3344:1708:9110::f71])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36e4e51eb47sm10459247f8f.88.2024.08.13.06.54.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Aug 2024 06:54:24 -0700 (PDT)
Message-ID: <8dfa7ffb-f40b-452c-9c3e-6bb500e1a46a@redhat.com>
Date: Tue, 13 Aug 2024 15:54:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3 2/2] net: dsa: microchip: Add KSZ8895/KSZ8864
 switch support
To: Tristram.Ha@microchip.com, Woojung Huh <woojung.huh@microchip.com>,
 UNGLinuxDriver@microchip.com, devicetree@vger.kernel.org,
 Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>, Rob Herring <robh@kernel.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240809212142.3575-1-Tristram.Ha@microchip.com>
 <20240809212142.3575-3-Tristram.Ha@microchip.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20240809212142.3575-3-Tristram.Ha@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/9/24 23:21, Tristram.Ha@microchip.com wrote:
> @@ -542,11 +545,11 @@ static int ksz8_r_sta_mac_table(struct ksz_device *dev, u16 addr,
>   			shifts[STATIC_MAC_FWD_PORTS];
>   	alu->is_override = (data_hi & masks[STATIC_MAC_TABLE_OVERRIDE]) ? 1 : 0;
>   
> -	/* KSZ8795 family switches have STATIC_MAC_TABLE_USE_FID and
> +	/* KSZ8795/KSZ8895 family switches have STATIC_MAC_TABLE_USE_FID and
>   	 * STATIC_MAC_TABLE_FID definitions off by 1 when doing read on the
>   	 * static MAC table compared to doing write.
>   	 */
> -	if (ksz_is_ksz87xx(dev))
> +	if (!ksz_is_ksz88x3(dev))

I think that for consistency and readability the above should be:

	if (ksz_is_ksz87xx(dev) || ksz_is_8895_family(dev))

Thanks,

Paolo


