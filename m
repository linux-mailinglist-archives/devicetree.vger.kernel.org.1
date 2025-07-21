Return-Path: <devicetree+bounces-198394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E531B0CA51
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 20:09:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DB14A188D8BF
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 18:09:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2F2D2874E5;
	Mon, 21 Jul 2025 18:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="WKFj66y7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70AD62E0924
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 18:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753121304; cv=none; b=bVpNiie1D8hKleVMv0thKZ08h7tVvfipfy81BT0im7t1sPLguce2FsHm4JlMVf4m9jM1HE5LyV7A32zd0Nk9KTFQYgYjFQvlV17VmZ5Dh4xL6gQlmcEF4hbYgB82zc/6o74JaHHbSdNMEJG0w3bmd4NP41JCzIZ1wHP0jwqc5v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753121304; c=relaxed/simple;
	bh=92+Q39EW0fbLTpEgLkOhiI/YwGHlNATxM4RpKtbF9Vk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hLwvj3y4RjtTOuKtFkiEB8eqsJmWYzEV1Z9yyulFih35CHxBBYqwZlvt11O8kjydo8m0D7ikA/9GqM76MTYHa5pxt0SC7kzN9v848WM+EeZO4KPyonxU1ihRQA27jSRWAQS0aTa5rAdvcC5TaZ85JS3pepYzoPbvRZq7LVWujWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=WKFj66y7; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7425bd5a83aso3979298b3a.0
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 11:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1753121303; x=1753726103; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OQau27tiFbgxeFSGF9XUGR95YzgyQaSOU0OlzzUWZMQ=;
        b=WKFj66y7fg08NTjqsExRyN4/HYJvmzOjn1pjVz2G4vIdrbJ3yYAoN+PG7BBbighft7
         C/gcsYy118Qz6nafIvPSWZ7u+W3Lft1TtzM/qQfhlnkHyXC+WqgKW8wZy08EBjxta/dA
         1dm03V9nqZbU6XK0Ei6e40HVKqer0G4YrQMx8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753121303; x=1753726103;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OQau27tiFbgxeFSGF9XUGR95YzgyQaSOU0OlzzUWZMQ=;
        b=LjIpKzfyfC52tytQxTEOXxpln4d0ah+W8B+OoWaOja9+C+hCJBdVMpLt/eHaKF48hn
         8jS6i5dKPrHb3Bk/zbZsuiqwr4E1q7+wYtngXRObyC5HWJH5G+oO/CvfeH9CGXhQ1iQ/
         09L/927NyzoGSWQ9xRDSdL68YrqUV7FsmKoiS1hQyNtr2mdmcd/rynZjbtMJMzhaJmye
         vUE1j3zMCxPbQlF5JIvvZDJyekJ/YtwNo7PzAULomXF2MImb7fp7pv/yKqlG45/SrYOE
         8XEymNqWsqRbxFLxlaER/YTzU5vGOhJe+WcGBfPibEc4rQtBzMKVUh53JmMlc6CNfw99
         AWXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUttTS7gX/P12zP3gAvnOPtsJfTinX9X50x1W7CdEVmLKMOaeUV4Q9xQ+fqf/3hwqqrWyW2Zx91z7wU@vger.kernel.org
X-Gm-Message-State: AOJu0Yya0GO2V7Rg6aJOFnZG2AvXdDIORcKBEKdwfxmo2nQ7HRHtfQSx
	ohlJ1Y7jb4DgAWhzTzSsV08ECBAw9j2QWwu226wVac9fU3mtoJjP7G+GmxTchfDHuA==
X-Gm-Gg: ASbGncssTWzm6N+1tFql8KM5yM+nedKOmS0ukvt6GKCN2BwalhwiF6/paK574uIDWpR
	YXJ7qeUrreTXNmmjPj2gpsB5IinWiDqIg2VOd1HNIgsxR/iTQQEpV65t3GJJv9e1HGHdBDZX4/M
	LXzmxRA+bqVkmvQwCAX0weXZnGadYwoGV2qBTd3A2zbvMg72scaVoDAG+ce/k3IbRIv4ZB1WQ9U
	6IRD4+fm4thSgJEW3FXrMb2blP7YI1VoXEmOfp6PSJFRmjKb/es+AYewoBJ6Zl4dctAKBbk3Ulf
	riJdwQ1BTQxR3xz0BbHV0TS8o45fI28XKu9tJH0tUf4Yil7Kgt1IBjekCsZtMXwnjWYp8/P39Xk
	95zKeKkJMFaEbEqj5iYUokRpElO2gEJ2WoWcJKQZ2M8iDot7xBeYBKgbGtqLEiEDj9dkh/0/6AO
	lf
X-Google-Smtp-Source: AGHT+IH3Pl8hly1TQfln2anufJFdUC5B1Ir4HZCUoycIdoSWzeF9avLSYC/Imq9DCATPu80vE9gR5A==
X-Received: by 2002:a05:6a00:4b43:b0:749:8c3:873e with SMTP id d2e1a72fcca58-75724876b0bmr33128549b3a.24.1753121302713;
        Mon, 21 Jul 2025 11:08:22 -0700 (PDT)
Received: from [192.168.1.3] (ip68-4-215-93.oc.oc.cox.net. [68.4.215.93])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-759c84e24c8sm5845796b3a.15.2025.07.21.11.08.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 11:08:21 -0700 (PDT)
Message-ID: <7bebb6b5-d527-4621-9438-8a8d0ab9d970@broadcom.com>
Date: Mon, 21 Jul 2025 11:08:20 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 1/4] dt-bindings: net: document st,phy-wol
 property
To: Andrew Lunn <andrew@lunn.ch>,
 Gatien CHEVALLIER <gatien.chevallier@foss.st.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Christophe Roullier <christophe.roullier@foss.st.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, Simon Horman <horms@kernel.org>,
 Tristram Ha <Tristram.Ha@microchip.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250721-wol-smsc-phy-v1-0-89d262812dba@foss.st.com>
 <20250721-wol-smsc-phy-v1-1-89d262812dba@foss.st.com>
 <faea23d5-9d5d-4fbb-9c6a-a7bc38c04866@kernel.org>
 <f5c4bb6d-4ff1-4dc1-9d27-3bb1e26437e3@foss.st.com>
 <e3c99bdb-649a-4652-9f34-19b902ba34c1@lunn.ch>
 <38278e2a-5a1b-4908-907e-7d45a08ea3b7@foss.st.com>
 <5b8608cb-1369-4638-9cda-1cf90412fc0f@lunn.ch>
Content-Language: en-US
From: Florian Fainelli <florian.fainelli@broadcom.com>
In-Reply-To: <5b8608cb-1369-4638-9cda-1cf90412fc0f@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 7/21/2025 10:07 AM, Andrew Lunn wrote:
>> Regarding this property, somewhat similar to "mediatek,mac-wol",
>> I need to position a flag at the mac driver level. I thought I'd go
>> using the same approach.
> 
> Ideally, you don't need such a flag. WoL should be done as low as
> possible. If the PHY can do the WoL, the PHY should be used. If not,
> fall back to MAC.
> 
> Many MAC drivers don't support this, or they get the implementation
> wrong. So it could be you need to fix the MAC driver.
> 
> MAC get_wol() should ask the PHY what it supports, and then OR in what
> the MAC supports.
> 
> When set_wol() is called, the MAC driver should ask the PHY driver to
> do it. If it return 0, all is good, and the MAC driver can be
> suspended when times comes. If the PHY driver returns EOPNOTSUPP, it
> means it cannot support all the enabled WoL operations, so the MAC
> driver needs to do some of them. The MAC driver then needs to ensure
> it is not suspended.
> 
> If the PHY driver is missing the interrupt used to wake the system,
> the get_wol() call should not return any supported WoL modes. The MAC
> will then do WoL. Your "vendor,mac-wol" property is then pointless.
> 
> Correctly describe the PHY in DT, list the interrupt it uses for
> waking the system.

+1
-- 
Florian


