Return-Path: <devicetree+bounces-194016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFB3AFC7B9
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 12:03:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6AD18189E681
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 10:04:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 220E22676D9;
	Tue,  8 Jul 2025 10:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="V6LkYvGT"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83E082222CC
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 10:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751969016; cv=none; b=ouTK/1fl+Fniksnwu8PjUdUOQytjmwBtGe1OGY7hD96ue+FkfKQPeCdjrZ43jIPO+/E99KVcuej7UzsMm3uZFqSFSxIvfw5fruxfUeMFFciJxSJbA75MjQkrCl9Nq9H9jvhVG60GQ8LZ80xFKPvXvRlF5h+dInOSMpb32tADZGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751969016; c=relaxed/simple;
	bh=J8x/CPUWA0HL/cid4XRRf2yJGc3d9K5BSR2KvtLBWhc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ujLOCR7fngq8gRx+4FkbmgiHZi8vqX1LCm5Pospsrexo8y+Gi8egzkI8OPivwvp+R5T4VTDLFmqQgII2Vd2Zsz2LzMk0dxayNwulCFkYfrPoJHPLys033j0JiduRZTG17N9hLjdmHVX+iq3UQN5elBggANV3rE0zoqBBYHnsmNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=V6LkYvGT; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1751969013;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5YHab4xqAP2Akdg2G04m0t1Le3rHcVZpLaQPZJUOZ1g=;
	b=V6LkYvGTE6pn07RAvUL5Fx1HtVgO77Fgo8kv8Rm78GVrhQ1PwpBMKi7zNb+f6d+Q4WXarM
	01re35gRccT+vnASoZrum+Hqtbxd8pVS7yDNXvU3HRj8DEYah9Zi87uMc9mJ28wfFpvYTx
	loza9DCppkRwI43MvZze3S/NhmdQXco=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-372-5gHXo-u6OROyVN_alddfBw-1; Tue, 08 Jul 2025 06:03:32 -0400
X-MC-Unique: 5gHXo-u6OROyVN_alddfBw-1
X-Mimecast-MFC-AGG-ID: 5gHXo-u6OROyVN_alddfBw_1751969011
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-3a6d90929d6so1775149f8f.2
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 03:03:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751969011; x=1752573811;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5YHab4xqAP2Akdg2G04m0t1Le3rHcVZpLaQPZJUOZ1g=;
        b=pGJHJ45yffXpXPmptKRs6ZMwpcfCknRtK55u6DDqGvtnoMn6/OpCqlT1xXG8VCZQf1
         bFR53bFkBv7k/h8FTAVsFGFJc9YtiE5XTAmQlYq/cnANpBRmw8YJUftBiT5k0ChYuXkJ
         /LNm7541l7miZcYgx53UawFdc+XMPBRd8j0L+YK9qO2WB4NkifC9cZRmHAzZzyedkfyb
         KjtwFC8cZ2gNL4KptGaTr0ggSGdHMoaLiDhIVSP0i/lpOi1RBEyJ5ALc4H3xMMg9fcGR
         i7hWi1LiEd+nerkP529n38F5/Qx8Hv01NXn3+19C/RcoMfdD0YmyHeCUqnT/O2eRKuew
         YZTA==
X-Forwarded-Encrypted: i=1; AJvYcCUiQOzZ5RG+yBN8FUOvHY8M08gwotoWeo2+fkzJs9W5aR8S4MZbA5WvFnpdI214c1N8+xf4ajKEIsDe@vger.kernel.org
X-Gm-Message-State: AOJu0Yxzfd/un8ymZvaMZCQ2hKz/H8UC+mxgrsWhUGhax+CSnyyxmwsB
	g7nspzW9kKW/7ryrPSIue/vOd2fUdoILHI04gQpY/IpGkg7tlGLzyBWetYgJBrlVwARVKVPZUQ0
	WzZRmXTtf5uVbpKFhMIdoSiB6/0WvwTugFsKVpzDvMxiFuVK/WXSoGWqBAsziuus=
X-Gm-Gg: ASbGncvDPyIo4/pWglA8STIWIvHaSlPGDfQOD0MrlVHi/Sbdv83htUL/0RgXtulz3rO
	FXbYLvRtvp/gGCTCeyt8GV3S2m7oGPL6eMQeaKdHki6adU2HkMnP162VsADWluoab05fdEt4zg5
	VgBLuye6FE5I+qbeq2N+kAlXRf91BrgUYTM3ByJFIKHxwfhXiefd2U29gEbmtz1gpFvayrcVvSf
	hEwXFsm+Dgqe5ngHbkLP7e8RM5aTMv7itiQpFDOumdqG5sxE1/DJNlGyj3Ti4GcxsJcqGRQDjR7
	6ynCCVbzH0hrRZn/gi/hl51gL+LPsXmTmVWIMI8NQ3c3+jgzuJF0/QryR+/6PwwYFpuIxA==
X-Received: by 2002:a05:6000:1787:b0:3a4:f72a:b19d with SMTP id ffacd0b85a97d-3b49701198dmr10216091f8f.8.1751969010551;
        Tue, 08 Jul 2025 03:03:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH1SvwWcO9VGXYTPULjJBC0m6vJeUr2jVKEuOXwryHw29XUGkc++r6gFKLLfQS8l/e7j3Mcpw==
X-Received: by 2002:a05:6000:1787:b0:3a4:f72a:b19d with SMTP id ffacd0b85a97d-3b49701198dmr10216057f8f.8.1751969010016;
        Tue, 08 Jul 2025 03:03:30 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:2717:8910:b663:3b86:247e:dba2? ([2a0d:3344:2717:8910:b663:3b86:247e:dba2])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b47030ba48sm12695745f8f.13.2025.07.08.03.03.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 03:03:29 -0700 (PDT)
Message-ID: <ea22a546-9381-48c3-8bb6-258fdd784ca3@redhat.com>
Date: Tue, 8 Jul 2025 12:03:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [net-next v14 06/12] net: mtip: Add net_device_ops functions to
 the L2 switch driver
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
 Stefan Wahren <wahrenst@gmx.net>, Simon Horman <horms@kernel.org>
References: <20250701114957.2492486-1-lukma@denx.de>
 <20250701114957.2492486-7-lukma@denx.de>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20250701114957.2492486-7-lukma@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 7/1/25 1:49 PM, Lukasz Majewski wrote:
> +static netdev_tx_t mtip_start_xmit_port(struct sk_buff *skb,
> +					struct net_device *dev, int port)
> +{
> +	struct mtip_ndev_priv *priv = netdev_priv(dev);
> +	struct switch_enet_private *fep = priv->fep;
> +	unsigned short status;
> +	struct cbd_t *bdp;
> +	void *bufaddr;
> +
> +	spin_lock(&fep->hw_lock);

mtip_start_xmit_port() runs with BH disabled. The above lock variant is
inconsistent with what you use in patch 4. Please be sure to run tests
vs the next iteration with CONFIG_PROVE_LOCKING enabled.

/P


