Return-Path: <devicetree+bounces-248146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D33D5CCF357
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 10:53:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 26704302BD10
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05E2E2EA172;
	Fri, 19 Dec 2025 09:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="CxQNk7ju";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="Pk/t1bgK"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DAD92DF143
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 09:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766136979; cv=none; b=NQ6JrLhoIYACwl6/M+vLOejFYqtV4CwAfdX23lILahiC1dAOnaUsfGDgQJ9hWYCeJMUTBIfA6bPkYXoZ4rhEDJVuQE/W0mudJXkzqGV4Pk415eB4CpsFYsmf63HNjfRD/CvLf0pem73G1TzYj7+b/1nwCQ2rTaCNH4cSgjC89R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766136979; c=relaxed/simple;
	bh=GiWcSuhwfhSwNHPv2dhlIDCY1StzMEtdf8zT0B4mPbE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NZVggsrN4724FKhsDjxF4j492EQXt6C177huZLVW78KNwX4KYFGgw91+cg90CcOP+S9QjoXBfHjUEbk6xp21l+3ZRAiZ8Y9Oe/OCWOfCXJtff3wMTuauUpoyOUbRH3VsOXyYNfKr2C+RswkliAzhUQ/80x43YLmCdUQ4InuAC+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=CxQNk7ju; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=Pk/t1bgK; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1766136977;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NIYbt7grBQIHzw83Cnuftmwc7pNTj1PBMPieyzGvyRQ=;
	b=CxQNk7juqCryNkfew3vtia1E2t12ZEOWVm2+nnJoeG0wypH300KegvIEzJZP7MmyQsefry
	KhQJmTK7k1P+PgT7gTa+f4tGVpWWQLNSY+0MVX8B4jJd4ekCJWzFu/28jHobkLkUmOD318
	VRIGEkN2MoQOXN0V+R9FvgEwlDMhuPQ=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-173-HYkXC0ZZMOi5xGNIU815Xw-1; Fri, 19 Dec 2025 04:36:15 -0500
X-MC-Unique: HYkXC0ZZMOi5xGNIU815Xw-1
X-Mimecast-MFC-AGG-ID: HYkXC0ZZMOi5xGNIU815Xw_1766136974
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-430f433419aso1090712f8f.0
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 01:36:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1766136974; x=1766741774; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NIYbt7grBQIHzw83Cnuftmwc7pNTj1PBMPieyzGvyRQ=;
        b=Pk/t1bgKfV65loeCyFK3co3+nzdjKE24sL5r+mT7eu6NIYU2haS3wZCp00cIUfQwFN
         Bh4pOaQ8QxU2IjUJHy913HOKoSqybRF6hiE7f1AfhXLnoEr442OKM62Z2xJ+69J9Hy9s
         hCOGEBMhT/d5RpfX4q+Wx0LgDQlTazQtcs6/vDvmeo2tnO7LqJdQ3CqZ758GkSdhd5Ub
         3TeClgy5QX9QTePfShbWhovXWtfbA0IOxX4+lcHlHIInFqmNuc3YPYnPwDc7Mn1pKRvH
         xyLo1x4xOtVbwJNF9+xrYvNlSANulZ5Xmsm55czmNDodRU5WUW7J1BYGDyfbSJPsuWUM
         hiVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766136974; x=1766741774;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NIYbt7grBQIHzw83Cnuftmwc7pNTj1PBMPieyzGvyRQ=;
        b=IoW8bMUs/vU/kWQ+lQI5QH6mIWqxX+7t6PsQPSpN2IXS+ZGmVP9MzFMQvA4ScuieUK
         MOB9Sxo8hQ+vH7NNCqKVZyOs0NSa71tJQxYGDSgIYW8s5m4iv5QIpkGnzKEXt/qeIrtW
         ucH8iEcOdDfAyfCkTUekGF7smdOXhU2sAoGundycWhdP8W7xfjId2RTUYaEnrevb5/gj
         ER4OdiYxwoj+aC+1MuCnfyTEx7Cofn1fiTZhX2kLrWi6Kzni8MiF09FOQoyZLPh8narF
         IMVwgkzU4cDcLTH1oHj7njwwbKjA0IuoPd8dvIs+N+pYK/TZBX0ZZg8a0BV2Xw9jKhd6
         8L2w==
X-Forwarded-Encrypted: i=1; AJvYcCVrBSqFVFHU0ZhB1p69hRuWoXdAovUO6isJd/Z8odrMEI1HFO72NkUGkPCj468o6IBeGFlW5tzqF3Lw@vger.kernel.org
X-Gm-Message-State: AOJu0Yzxy/H07kDGn02FW6kmP4eA9PY2lVFKk57KdcR5MhQ2FVJW4EUb
	uNa7spLBd2NRtyRemHCcW5S1fRTzS0yMDcGuxgw7fRaWST5CNHD28qxMhM+BaHYWtChI90c16Sk
	bfW+DwVnEp6rpJLv5DTTh6WmAR2I4gbdoV14XX8+RwiZ1goq+vLiSk+Sc1ka+GS4=
X-Gm-Gg: AY/fxX69QTR6TlR6ew7Z4r6dzmtxTOiFpZ+7QzDSVHF0kZkJpi7T+YmHQblZATv13j1
	DOdvoCtBqN3QYzFmznPNyet3LQMB8TBIaqObZtanvpqxE68/a1u0oMsuZWcLyQYkF/HawPp/AaL
	xJ1BLxHI4PIt//S0g2L2WMifnahmGpahB2pH6jiEi+SsmGDtOmE9yXBIVu5ufuvTxrBuKbhePUp
	npT3LAScNpFk2wYFobQUT6/gvz6G+iUgatpGBuNrEVllyq93MIsqQjq/BikARXEbE+tRatcq+0G
	p2auw368AOlD3A6oQFD0/DUdpYDxIsuhRh2bGd3YlgIcOOEaEeTxzX0DU4J4GvmCJXP5IB+bD5H
	a7CmUrE93ha6q
X-Received: by 2002:a05:6000:2907:b0:430:f3fb:35fa with SMTP id ffacd0b85a97d-4324e708c5cmr2718426f8f.57.1766136973997;
        Fri, 19 Dec 2025 01:36:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHCuR3cgSEQwzSvGYDAcne7PBu99GClzJIGuNqcNF5F1N1BF/0rlwj0Jbshv7zUfUIeX2+zeg==
X-Received: by 2002:a05:6000:2907:b0:430:f3fb:35fa with SMTP id ffacd0b85a97d-4324e708c5cmr2718385f8f.57.1766136973538;
        Fri, 19 Dec 2025 01:36:13 -0800 (PST)
Received: from [192.168.88.32] ([216.128.11.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324eaa64cesm4195438f8f.35.2025.12.19.01.36.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 01:36:13 -0800 (PST)
Message-ID: <5356f427-3966-4d41-b4fd-11dcd1140505@redhat.com>
Date: Fri, 19 Dec 2025 10:36:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [net-next,PATCH v3 1/3] dt-bindings: net: realtek,rtl82xx: Keep
 property list sorted
To: Marek Vasut <marek.vasut@mailbox.org>, netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
 Aleksander Jan Bajkowski <olek2@wp.pl>, Andrew Lunn <andrew@lunn.ch>,
 Conor Dooley <conor+dt@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, Ivan Galkin <ivan.galkin@axis.com>,
 Jakub Kicinski <kuba@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Michael Klein <michael@fossekall.de>, Rob Herring <robh@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, devicetree@vger.kernel.org
References: <20251218173718.12878-1-marek.vasut@mailbox.org>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20251218173718.12878-1-marek.vasut@mailbox.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/18/25 6:36 PM, Marek Vasut wrote:
> Sort the documented properties alphabetically, no functional change.
> 
> Signed-off-by: Marek Vasut <marek.vasut@mailbox.org>

## Form letter - net-next-closed

The net-next tree is closed for new drivers, features, code refactoring
and optimizations due to the merge window and the winter break. We are
currently accepting bug fixes only.

Please repost when net-next reopens after Jan 2nd.

RFC patches sent for review only are obviously welcome at any time.



