Return-Path: <devicetree+bounces-192542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 088F4AF6FA8
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 12:04:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CFC7D4E63A8
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 10:03:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A32C2E174A;
	Thu,  3 Jul 2025 10:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ZSpfm78s"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 854122DFA2E
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 10:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751537031; cv=none; b=LsDYxbkTizgjE6qkhJ2Gj8UeZnszAO3MwyloBu7jUNzA8ZZcmPtlt6EmJJ/zvCW6vrFNh+pX5L2xo9XPj7rj6NWCS5bOQmTPg426lmD7GI8+QVW+FQZXqs+Wx0nUTfNaoK/D1o7TibIhMVbqJOtqE1X4jmHEyuqoe+sQOg6HU+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751537031; c=relaxed/simple;
	bh=t2jpb7/Z5KgiLlt/9TEa+jgLsbUjBOFYGE/Oo12VC6Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WICITzS1RApOBp7FZUkTp2d+aRJK5tCC4tPRbUk42U+nXrlTKcbkAMmW5DYVIScpT1TWA5Y9X2/FI2hEHLZ7gSL54UQSnXZyraHQayXezgTlnzu91MoF/jXQQueYI2LRknu9F6CUDnUhONAkW4W0oLjDlogGxG/GKKyo4ssgtwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ZSpfm78s; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1751537028;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9B3ihYuWOeAFzcnls83zQtIbBYRAt2J+SrasgFV6Zjc=;
	b=ZSpfm78sb/acQ4XpbsIulma+mBERrQaA7p115HiYangNCCQTrx1BAx+ZcGqaXakP+2r+9D
	pLVQImcm5jBV5TbmKYxjomImeCjRhRecQTxgbJnRWRdlaiDa+IF45nTb+wgxYznje+i4Ex
	rkm+bri+tKbpHnIK96fwZPtFQa8BYYk=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-688-tCTdPb45N6WGA2aADc2PSQ-1; Thu, 03 Jul 2025 06:03:46 -0400
X-MC-Unique: tCTdPb45N6WGA2aADc2PSQ-1
X-Mimecast-MFC-AGG-ID: tCTdPb45N6WGA2aADc2PSQ_1751537024
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-451deff247cso3700565e9.1
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 03:03:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751537024; x=1752141824;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9B3ihYuWOeAFzcnls83zQtIbBYRAt2J+SrasgFV6Zjc=;
        b=P4hi85jB2i4JYDRuzvqMIGhDTHO/EG88yYojILRkd0+RtR/YWEZQOt7rHiuqZ2aQMj
         1any9SKoPOaLlt09NPgD4Qbb6vFJnPuEPQoDADmPbpNW+2nhvulxClKHx+22Z+DEhnZ/
         GSWWC06sCJGE+pBCDp0UNIkl4HPmMZJT+1+NKfk1EnsYIHT5XzYBzYipfWOyAKYWjY7p
         3lAeOFU0+6Fkz03sIBsBD2kQxPV7azXjdCZjEeCpQOExJ0LzzOit4Wz83P+JwX9zn9Py
         XOxaC3NBju8vjKw1L26gnE2A/hfL+KtjKpt+o7Hdg5v1Qv8c9pKRX5xD8Qfe7UMz3G/P
         +8Pw==
X-Forwarded-Encrypted: i=1; AJvYcCXq2yWjvefCGdrVHAGuSI9vnlos1HYgyfEtv/xAYULoO4AbaG3naNgjY0JLblbVvvtanP33pKQMX2zY@vger.kernel.org
X-Gm-Message-State: AOJu0Yw46u8/cfbDiXeCd3r6GLfAMvuoTfj7zwKu5tq+e9uYurBAZtOd
	N5a7f5/8v3F3TfgLzfG8Nj53LN+H+Qq35RozfiM5ydcKaqNB5ChCRhyRxmwMONDC9h8Bz23/sXv
	aA10j+MXmci+4yEhrOlUs8ms2wmKLtX1z05VKmr5J2sPNLUl5Jen9m7bYtEwohSM=
X-Gm-Gg: ASbGnctjGy6EN2ZR5tziSd8I5pfigIbu17qwgwt0rCg+EzFvVWFu7WMS3bMRs/KYJgN
	h7JtAG6IWI0FzNPHLSQPTYCXZgSYGIP4CL7kzuqwgJOjtA65LRxccS3e3zaLjACfdbTb0F2/gaB
	N2vOqLIxGi4+rMhhyHY1ajtLPuuf3vTRWSqXv5MWAxOKorRGvg54geopoNPYJlDOaXiNoonPOc2
	YZSueuGKLlMAxfzkiqnf8Ki6Py3osfIMKhSUlVniSdZDqCPcPfUMKmi/4DGxr8Z8pICsyx6/8k9
	yFFAU2Pmpq8N/zcMv0u5XLGyLFpj85O2qRQwk9u0Fw3Bm2HkImxc+Pw/PrQMPVl7oGo=
X-Received: by 2002:a05:6000:2207:b0:3a5:8934:4959 with SMTP id ffacd0b85a97d-3b3450a2240mr1717353f8f.27.1751537024181;
        Thu, 03 Jul 2025 03:03:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEk+YmnervE/9rlaKNpBDo2E1RoLkBUfVqR7jtbbm8XVo68a+HMCOaP16O0KFNsHAN0CxbnUw==
X-Received: by 2002:a05:6000:2207:b0:3a5:8934:4959 with SMTP id ffacd0b85a97d-3b3450a2240mr1717328f8f.27.1751537023692;
        Thu, 03 Jul 2025 03:03:43 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:270a:b10:5fbf:faa5:ef2b:6314? ([2a0d:3344:270a:b10:5fbf:faa5:ef2b:6314])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3aba76e40c0sm14156922f8f.59.2025.07.03.03.03.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jul 2025 03:03:43 -0700 (PDT)
Message-ID: <56cb86e1-db38-43c9-857b-f14bb4a5ecd8@redhat.com>
Date: Thu, 3 Jul 2025 12:03:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net v5 0/4] net: phy: bcm54811: Fix the PHY initialization
To: =?UTF-8?B?S2FtaWwgSG9yw6FrICgyTik=?= <kamilh@axis.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Jakub Kicinski <kuba@kernel.org>
Cc: bcm-kernel-feedback-list@broadcom.com, andrew@lunn.ch,
 hkallweit1@gmail.com, linux@armlinux.org.uk, davem@davemloft.net,
 edumazet@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh@kernel.org, andrew+netdev@lunn.ch,
 horms@kernel.org, corbet@lwn.net, linux-doc@vger.kernel.org
References: <20250701075015.2601518-1-kamilh@axis.com>
 <20250702150216.2a5410b3@kernel.org>
 <da323894-7256-493d-a601-fe0b0e623b00@broadcom.com>
 <b89e3a66-3c98-45b3-9f16-8247ac1dc1f4@axis.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <b89e3a66-3c98-45b3-9f16-8247ac1dc1f4@axis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 7/3/25 11:03 AM, Kamil Horák (2N) wrote:
> On 7/3/25 01:46, Florian Fainelli wrote:
>> On 7/2/25 15:02, Jakub Kicinski wrote:
>>> On Tue, 1 Jul 2025 09:50:11 +0200 Kamil Horák - 2N wrote:
>>>> PATCH 1 - Add MII-Lite PHY interface mode as defined by Broadcom for
>>>>     their two-wire PHYs. It can be used with most Ethernet controllers
>>>>     under certain limitations (no half-duplex link modes etc.).
>>>>
>>>> PATCH 2 - Add MII-Lite PHY interface type
>>>>
>>>> PATCH 3 - Activation of MII-Lite interface mode on Broadcom bcm5481x
>>>>     PHYs
>>>>
>>>> PATCH 4 - Fix the BCM54811 PHY initialization so that it conforms
>>>>     to the datasheet regarding a reserved bit in the LRE Control
>>>>     register, which must be written to zero after every device reset.
>>>>     Also fix the LRE Status register reading, there is another bit to
>>>>     be ignored on bcm54811.
>>>
>>> I'm a bit lost why the first 3 patches are included in a series for net.
>>> My naive reading is we didn't support this extra mode, now we do,
>>> which sounds like a new feature.. Patch 4, sure, but the dependency
>>> is not obvious.
>>
>> I don't see the dependency either, at least not in an explicit way. 
>> Kamil, could patch #4 stand on its own and routed through "net" while 
>> patches 1-3 are routed through "net-next"?
> It can be done this way, however, even the patch #3 is effectively a 
> fix, not new feature, because the bcm54811 PHY in MLP package only has 
> MII-Lite interface available externally. As far I know, there is no BGA 
> casing available for bcm54811 (unlike bcm54810, that one having both MLP 
> and BGA). Thus, it cannot function without being switched to MII-Lite 
> mode. The introduction of MII-Lite itself is clearly a new feature and 
> it is even (theoretically) available for any MII-capable PHY. So if 
> putting it all to net it is really impossible or contrary to the 
> net-next vs. net selection rules, let's divide it....
> To get fully functional, bcm54811-based networking, all patches are 
> necessary so any other user out there must wait for both branches to join.

The above makes sense to me, but I think it would be nice to capture
some of this info in the cover letter - the fact that many people were
confused by the series is an hint the info was indeed missing and required.

Please resubmit with an extended cover letter, thanks!
(unless Florian jumps in and explicitly asks for something different :-P)

Paolo


