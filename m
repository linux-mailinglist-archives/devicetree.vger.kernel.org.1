Return-Path: <devicetree+bounces-194059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D22AFC92F
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 13:11:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D39331AA2709
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 11:11:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22CAD2D8388;
	Tue,  8 Jul 2025 11:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="PD0trDaV"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A565219A6B
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 11:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751973062; cv=none; b=QRqeWqN1efV9lC6c2L+t3hMxM0w2/xtaeDQ29DzOdvRgc7wnWJytPK/qFHy6fYc2uazEOSFH9hx47hoc1Bd5dGkCV5cDiftFpJFP1zQh6KReQxIbfwYnSxlallLxhV5Okk8vCTeApKO34ZVSY2YVshOy+XvaVV9meCEc08aCFKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751973062; c=relaxed/simple;
	bh=I3YlaLMNbIntcC3nHGYxd3PhL0m1vzFc22REJONgU9c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O32g5XpU8KjblXDAdfojb8lZjLsRkzdWDducOjQmT8+CPmCM27QYsfD77O6VrVcIVmn2a8bpJrCIUMb0ClSrdfsBIcBF2b1TgLYIuf4Ph58XPrCRwxYtEmWV3y68oNrvtZtPjXbIQlfwXhCT05oYo0loq7XR4O7YjQAkXYtY84o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=PD0trDaV; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1751973059;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VCCSM5EGfPIeP6kZ4qXJFewXUNSwRA78to6oWgtBl/o=;
	b=PD0trDaVNcHXt5T4H+TUP1slFWegSnYE7ZMdTtE5zPZdJCv+IDOKxKygiolhRPtLZnB374
	UyGpvpOOSXL/2hUZ17sFF4CLDdHCz2kY89DBNjmxwviHDdnhbgADHT/7GxM7wsFn05pjDJ
	dFeM7ZUjlmpRjtIr4LJZGMcFzgkZxnE=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-515-Qbq9ENlxMXi7mn1BbDb8KQ-1; Tue, 08 Jul 2025 07:10:58 -0400
X-MC-Unique: Qbq9ENlxMXi7mn1BbDb8KQ-1
X-Mimecast-MFC-AGG-ID: Qbq9ENlxMXi7mn1BbDb8KQ_1751973057
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-450db029f2aso19540055e9.3
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 04:10:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751973057; x=1752577857;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VCCSM5EGfPIeP6kZ4qXJFewXUNSwRA78to6oWgtBl/o=;
        b=VXf53KQqTYyiYuMTjZfXMB4kFQf8/1BmpnQ3Vdti4oySO+G9YFTeb1ZmDBp/y/RAUS
         vWjWX6vY0AT2A7SF84DJomQ4yu7bNNsie4/9XTP5UkcDBgFQsAAcZBhZX9JJv2ydcL3l
         C01ucVuoT4YOc7wOPX5i4NNEsi9Cu6OjqfiEal4hU79lW3IU2FCn00XbhkxX+lFGAlnU
         wBNQJ8StXZcKg6mJRtGifgqopblQOEcIscXWiHmbnWOKaFApoFCLygZJg/0f7q3pt3qu
         HE+VPB67WkrLMKecVt9EdKdJFSOKRl6YA/S0HXSxcOf2vwXlfhGKTb0Kb8/bT/MxEIRx
         Bxzg==
X-Forwarded-Encrypted: i=1; AJvYcCU27EuVkMYsLryE/kr46Esf7fVzh+jRerUNU4t9+0EtCo9VXDinFGjT6QvV7uj3876gaxkZOWJgZg81@vger.kernel.org
X-Gm-Message-State: AOJu0YyxdBXjBzxpFIi5k7KC8esmqR+C3BmVoMXqvjGG8jmPqFdyIxsZ
	BXUTx7OY3HWAce0hioaQ+NRj/92FaIWuqlE0g02ISutsz0jwMzkjlvPZnGPvDzScBG6hfkjhIQw
	md4nVWUAMdiNd8NyEoljR40RG0Bau5kLhQUmyT0qGx7NltkFbce6C18LejPRdQcg=
X-Gm-Gg: ASbGncuZ1rObyy886I5ziMsKVr8LkVOEkQqZd+C4YQZb93iawug8lnm3USVDzi8X5Mm
	y47aafNR+JFytC1kZ6zJm2VrTzSinKTDOU/Bh4WuGbH/nksxRjpkMCTmrKSON7hvBVrXzVC06zv
	WiGJcHvv0b1egY7dE1ATrYfmiZaeHZwGBEhX1fyjXWAb4NP1kBNse+ANTLd5K2jFYoqAsecOFFw
	intq46zOT6OJNL7zdDSZSdFFr7+JDS2B7ulM4F62kvhk3Km/U4ahQePPgLYKbNGH5nRMl8z6pvo
	timNIU/DBu/Tyt755p5XOY/oAMJcySd0EHz5XAnfFqtcHBhSetDtWYVYXiit+pNBsT6A9A==
X-Received: by 2002:a05:600c:1d8d:b0:440:9b1a:cd78 with SMTP id 5b1f17b1804b1-454ccc7ffc5mr42390505e9.10.1751973056823;
        Tue, 08 Jul 2025 04:10:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHaNulokkynI0xWQ9J9Q5uhDXLP6/QZtP79j6yK8Ti/Akkv8f7oR/DstuNuGnFQRRxDD3e+uQ==
X-Received: by 2002:a05:600c:1d8d:b0:440:9b1a:cd78 with SMTP id 5b1f17b1804b1-454ccc7ffc5mr42389995e9.10.1751973056363;
        Tue, 08 Jul 2025 04:10:56 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:2717:8910:b663:3b86:247e:dba2? ([2a0d:3344:2717:8910:b663:3b86:247e:dba2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454cd3dd1aasm18697345e9.39.2025.07.08.04.10.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 04:10:55 -0700 (PDT)
Message-ID: <617d064e-99e4-491c-8fe7-d74d8174d9fb@redhat.com>
Date: Tue, 8 Jul 2025 13:10:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [net-next v14 04/12] net: mtip: The L2 switch driver for imx287
To: Lukasz Majewski <lukma@denx.de>, Andrew Lunn <andrew+netdev@lunn.ch>,
 davem@davemloft.net, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Richard Cochran <richardcochran@gmail.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>, Simon Horman <horms@kernel.org>,
 Andrew Lunn <andrew@lunn.ch>
References: <20250701114957.2492486-1-lukma@denx.de>
 <20250701114957.2492486-5-lukma@denx.de>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20250701114957.2492486-5-lukma@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 7/1/25 1:49 PM, Lukasz Majewski wrote:
> Changes for v14:
> - Increase the maximal received frame size to 1536 (for VLAN)
> - Use spin_{un}lock_irq{save|restore} when altering dynamic table of the
>   switch and mtip_adjust_link() as both cannot be done when switch IRQ is
>   potentially enabled

Why?

 (the previous one alters entries in switching table
>   the latter one may reset the whole IP block)

What really matters is the scope (process/atomic, bh, hardirq) of the
relevant callers (the functions that do acquire the given locks).


> +/* dynamicms MAC address table learn and migration */
> +static void
> +mtip_atable_dynamicms_learn_migration(struct switch_enet_private *fep,
> +				      int curr_time, unsigned char *mac,
> +				      u8 *rx_port)
> +{
> +	u8 port = MTIP_PORT_FORWARDING_INIT;
> +	struct mtip_port_info *port_info;
> +	u32 rx_mac_lo = 0, rx_mac_hi = 0;
> +	unsigned long flags;
> +	int index;
> +
> +	spin_lock_irqsave(&fep->learn_lock, flags);

If the _irqsave() part is needed (and I don't see why??!) than all the
other `learn_lock` users should also use such variant, unless already in
hardirq scope.

[...]
> +static void mtip_adjust_link(struct net_device *dev)
> +{
> +	struct mtip_ndev_priv *priv = netdev_priv(dev);
> +	struct switch_enet_private *fep = priv->fep;
> +	struct phy_device *phy_dev;
> +	int status_change = 0, idx;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&fep->hw_lock, flags);

Same here.

/P


