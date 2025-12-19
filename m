Return-Path: <devicetree+bounces-248137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CF51FCCF11B
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:58:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2EE8130329F7
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:58:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 542982EC563;
	Fri, 19 Dec 2025 08:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="jPnBwrUf";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="Ndkcv2dz"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01CB523C4FF
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766134686; cv=none; b=AgsaMjYFGiwAadkv2qQhqFq9sJPPvOLNb82nLZy0RyP/7GUWwepbNLid9LT3p2MNfZVfyPD7fQKu1vdOMkruXlHURK9yTKz+TaPp3EeENSyHBnbI45iAcXhfhVKwBhfX6EGk/b69pWAuGXT+OgMjyeF0/yzsfwwtGb+zXcdX+XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766134686; c=relaxed/simple;
	bh=lqdLSlV/+AAZvMvBSqFuAhhiAAi9gRXTfKrs46fdedc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YRmYha801ZCNsmDeRaq5aTnIohBKfdKwwY0hodV1v82TyPd+VBXgK9arM1ulWVlXN35a7hFx1x00aoLVwVG7P/25GJFtnL8M+gbTGVrP6kSzZcCoGPMLaOAL4gI87C1kNtwYnUVrEDrGli4yuG5LdD117Rci0r3l/xnsd0xziLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=jPnBwrUf; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=Ndkcv2dz; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1766134682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AJMoqd1fKO8OEBbwlJWa4SvNhhMZvfEzTXvf7u+dka0=;
	b=jPnBwrUfa0gqabyyFAf2O2Fdhq0zMtLPiT2pSi3DdYpZIA7tE7KabIwO7jbpCLwTonPYRI
	YwnR2jkf/tdWW/FjvyvbyDSRb/PothBlKPP7FtgC0kXmP7JJmh80yTS43dUXGzaSQ8QPYV
	T14jD7T1KHw2fHq8Gs7sbzFqgl0+3UM=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-472-Y1PXAWhnN8eXDg79sdYjbA-1; Fri, 19 Dec 2025 03:58:00 -0500
X-MC-Unique: Y1PXAWhnN8eXDg79sdYjbA-1
X-Mimecast-MFC-AGG-ID: Y1PXAWhnN8eXDg79sdYjbA_1766134679
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-430f5dcd4cdso707830f8f.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 00:58:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1766134679; x=1766739479; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AJMoqd1fKO8OEBbwlJWa4SvNhhMZvfEzTXvf7u+dka0=;
        b=Ndkcv2dzxfjzgHnWSIQr0WMcd4J7T9tBBJIftDaTp8b+RM4+WP/QrXzFcxKJlpTBAG
         F3HyFDYplKgsEweah0e205/x5Sq/thqHOuiqP1Q3CJFoPy05wC6JwwTRo0tuDGMZ6opD
         qifTfnMWMO+wW6mTGWxvYMLBXq9ZdYh2w2Uz350zJAdT6n5H7WKxO58UCTnWsMOn5KZj
         VrxTvzWxENaN2nnfZkSjXq/B7/nl/9kfcWG1GoviyTCPFE08j8qX2xQDGsX78qkQAkN/
         7SNIsOJRrfvCkyQskvIqLd4QL+Jd8OGoVozLslMF3rggOgOZlxQTQEuzzei4miIemQqh
         jxxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766134679; x=1766739479;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AJMoqd1fKO8OEBbwlJWa4SvNhhMZvfEzTXvf7u+dka0=;
        b=ZpXdqjsfjD4q9ccaAri1ztERNZpsqTwnuuL4bXBGRsWSFxn/E6kM2t0Fj/iVNW+N6c
         9OPnubTrnSCPpHHBHcIslg4lzPTzedOjvWdZ/I8CiyhhrEtaUu6mgLp5C76s4jISnfBY
         /OwgQ98Mp4YRKfMZ+6A8YJsnkT+Vnuisa9qnM7w5CWWRM9O4PXiRfLG5KZ1FJ6GE86mA
         jiyJ0MVug645QwFdW7boqeVqux5pt21mk80TGum2/xPUQIcvbjtfMA+diNQtcJsqBM/i
         9ryZIoSwRDgx/s6OXOeyKJJIFScSKWXZPZDla6PkmPMtyPPTF7UPpqzlpvr3Vcr0wl2g
         Miew==
X-Forwarded-Encrypted: i=1; AJvYcCWA8gOCnDI+yS4vefoYCKQC8m9v7R/DadZF0ZSysikh3aJFjbNYhkngkdZUZwzSXAGe+GqJtx3E57Ac@vger.kernel.org
X-Gm-Message-State: AOJu0YzTvq5i0o8qJjtQ/5uhV6ewaYtWQzFm5SdkCN5XzbySCYDw7bO4
	SQLJFS6qAQikS7MtinT8aFU6pdvghprSWmZSatwRWWKkjoUAx7BzzZkDCpMQWCGV8gDqW93l1Rq
	pj8pULk03fYlbBxtVf7emWXAmeh8CcPG3vQ5y/+pU1l782yyLPjg/U79ea0qdIUw=
X-Gm-Gg: AY/fxX5Na4b6Q0icVJTWPzbPWMSSo5qc4SZ3od5Pa9ISBHMOYFGTdOSIuKFuXRm6ofH
	08LjfJLOptZhgQaA55K0Fphywor/+rRFw79MVlyfz36Da5Zmrz2gKk+3cIXdYJt0Zyp8SXtZv0m
	tRqDxffEs5HVSDfdTHYBlURK8duEnRIjke11lias39iktP3sTmdAiRlYWv0zIGEplg8SR72V4vZ
	VyODyrkjAfz/PmqMaAtuXGKgFbCQODK9NfnuxP+G6FAKhyuRGaCiUBUp/AuJNBsfG/NwRLXurpj
	7GhkxNv06KJB/dAEw4PPshSYMtQpKZnqPQKmoyJG0Kk7MAKu9TkyvO/66U9NvZxgPDDA7NBmddV
	MqyE6BiE015lt
X-Received: by 2002:a05:6000:2dc7:b0:430:f449:5f18 with SMTP id ffacd0b85a97d-4324e50b88emr2398210f8f.46.1766134679132;
        Fri, 19 Dec 2025 00:57:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFDZdQNlBKsvc8iTNlAZZskbFNld0WQ7P6WHIzHRIlQXsffoYDVBtRn4k62GVMfIP/FzJevzw==
X-Received: by 2002:a05:6000:2dc7:b0:430:f449:5f18 with SMTP id ffacd0b85a97d-4324e50b88emr2398183f8f.46.1766134678751;
        Fri, 19 Dec 2025 00:57:58 -0800 (PST)
Received: from [192.168.88.32] ([216.128.11.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea1af20sm3532794f8f.2.2025.12.19.00.57.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 00:57:58 -0800 (PST)
Message-ID: <a9bbd491-28fe-4ecf-86db-629ac8a2d187@redhat.com>
Date: Fri, 19 Dec 2025 09:57:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v2 0/2] dsa: mxl-gsw1xx: Support R(G)MII slew
 rate configuration
To: "A. Sverdlin" <alexander.sverdlin@siemens.com>, netdev@vger.kernel.org
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Andrew Lunn <andrew@lunn.ch>,
 Vladimir Oltean <olteanv@gmail.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Daniel Golle <daniel@makrotopia.org>
References: <20251216121705.65156-1-alexander.sverdlin@siemens.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20251216121705.65156-1-alexander.sverdlin@siemens.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/16/25 1:16 PM, A. Sverdlin wrote:
> From: Alexander Sverdlin <alexander.sverdlin@siemens.com>
> 
> Maxlinear GSW1xx switches offer slew rate configuration bits for R(G)MII
> interface. The default state of the configuration bits is "normal", while
> "slow" can be used to reduce the radiated emissions. Add the support for
> the latter option into the driver as well as the new DT bindings.
> 
> Changelog:
> v2:
> - do not hijack gsw1xx_phylink_mac_select_pcs() for configuring the port,
>   introduce struct gswip_hw_info::port_setup callback
> - actively configure "normal" slew rate (if the new DT property is missing)
> - properly use regmap_set_bits() (v1 had reg and value mixed up)
> v1:
> - https://lore.kernel.org/all/20251212204557.2082890-1-alexander.sverdlin@siemens.com/

## Form letter - net-next-closed

The net-next tree is closed for new drivers, features, code refactoring
and optimizations due to the merge window and the winter break. We are
currently accepting bug fixes only.

Please repost when net-next reopens after Jan 2nd.

RFC patches sent for review only are obviously welcome at any time.


