Return-Path: <devicetree+bounces-132965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6ED9F8DBE
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 09:09:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B5F437A24B1
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 08:09:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CC801A38F9;
	Fri, 20 Dec 2024 08:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cogentembedded-com.20230601.gappssmtp.com header.i=@cogentembedded-com.20230601.gappssmtp.com header.b="rxDamQGY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AB761A0732
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 08:09:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734682179; cv=none; b=EEkdL+SAk26RbCXt3phnjxrRzDRt7RvywOghibHUcmLdHEgNZ+BUwlMjZD7DltajxXhxJjoiR3crlXcqREr1B84ZwU+AiJEe9UWNAB62KiDONH4WHRtqi6KiNIL/2k1dOJUIeipucuO04MrvqoyW9jnkWhc5wg0nRBfdm3tY3FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734682179; c=relaxed/simple;
	bh=RZGLnoL48vAfpOS6MUjRxghvSaxCzIP33faA7KSTB48=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ok74lhpTE81Jls99S2stIWotkAxYKDUEuVyZ17JPt3z3INkucgABlWFu5Em1vxB0b0R2sfL8orUW6dKbtclcYuy9yaLOdQWzpPatDrCBsYXx2f0GY2X54j0mTBiGmfAttXv+1Y2NfhFFCv2ny3NlglwesCMm1fgyDjzR5dr/cpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cogentembedded.com; spf=pass smtp.mailfrom=cogentembedded.com; dkim=pass (2048-bit key) header.d=cogentembedded-com.20230601.gappssmtp.com header.i=@cogentembedded-com.20230601.gappssmtp.com header.b=rxDamQGY; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cogentembedded.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cogentembedded.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53e3a37ae07so1665048e87.3
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 00:09:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20230601.gappssmtp.com; s=20230601; t=1734682176; x=1735286976; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QF6UIXiEkHZmXmCHoNP/5n9jgMJUTxHNacJ4sboJOKQ=;
        b=rxDamQGYKGbdHhDUbXzBaxDcQWqBp3kKy1zSvmUtYoKfbVxEOp32S3EuaYpKnu2Qji
         tWzg7YxZui37wLjz+nQp0o+AimwT8cqLNAoIgN9JGewGLfrEco0H9QSvjKmyt8UgHtD7
         uMtDGm+1HLoSJWYzekl+Vrx1H26Xie05uI1bfcUaKyAB67zRomlIw+VPOSQBaImi0qFq
         L/BIo/Cy4wQMxHWo3S0DXrxqs5KM7q0b9zP0qSfHDiWXkVGEQsk7Vq1OEf9ONY6ClR1R
         s6HerZ4tZ59+KX8BGsr4zbON4Bzn/TdbNOPm6MmK4EioJ2iagCaDznksKBglLGMtmgMw
         F8lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734682176; x=1735286976;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QF6UIXiEkHZmXmCHoNP/5n9jgMJUTxHNacJ4sboJOKQ=;
        b=b6o+mJPTSm5LPgNGnsS4zwVLH4ZbX36cUy/Yi/Q/8qUJuHBoZQ1cZ912Q3sZIScdvQ
         ZDHQOrAj8pJg+1WwFu94lJAidkqiJ3eZW0VmJ2kBGwmLLpkHcsCzBEhUlGlNuqrvD4rX
         PBf0rBBEUtKk2DgmlPfqgLVLHgojIYvMlT1gfhvHbABodIWjzXggyq0NSF+ULb3jS3n7
         7mEGafzeaVsG6SMPIKmWI5oS/qRpz9EH+EjnPIN87RTRDvwQZl+tO2huaYGwtR16l/i1
         RcIhnJIvKGDNY0y2KOOq5lT+7zEC0dUcOO4487r/PxMb3OO5cfSY3JikuHk+jYjXbMo0
         ZB1w==
X-Forwarded-Encrypted: i=1; AJvYcCXGrZCroybkmh3G8ED7E6zQlkeDZfVmtJHWR47J41T4g81pRd0CR2GwBOvyxFH8gt78n0F1LcKRUrKN@vger.kernel.org
X-Gm-Message-State: AOJu0YzNfi79E+DQToHrCnSP7fN2rA7kfR9OMpdjXumT4BvKgIdEYwqe
	Qutq2robOXO0fXZKyVYsRidmYLpJpy85oWVixRXYe37qiKSMZXlGB4+YedSa+U0=
X-Gm-Gg: ASbGncurmiN6pboW3LGhDAfeCmplPuwoQSCk1poyU1rCauS2xt9BwkyxOs0oyCxKx16
	sUYPePUVJwSbfINJdDezI9i5E3Ich58JoSWC3CEa1IpTgAp8msATDNbKRv1KGE4AoYTV52KjXBe
	/gxv+3cuDnM4WTD6djh2VcZ430GimfzR1CPIuq8dyGvJVUghbNg7xcY7oxKV1icbNRx9WlODCYl
	sd6Lz5U9MS1s06FFQLr3DATG2K3fccjtfCU3Np5H3WwuS5A/9icl91NiYNlXsjOoQLhBoJS9kRA
X-Google-Smtp-Source: AGHT+IFwM9giffUHrEP/MTz0pVObL+nMy8Xk6RiX3KQ+DCpfdFx5uhdfpy/4qHCmQMHFdCluSPPBOQ==
X-Received: by 2002:a05:6512:1387:b0:53e:3804:57ae with SMTP id 2adb3069b0e04-5422957ac55mr661172e87.51.1734682175720;
        Fri, 20 Dec 2024 00:09:35 -0800 (PST)
Received: from [192.168.0.104] ([91.198.101.25])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542235fee84sm419634e87.69.2024.12.20.00.09.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 00:09:35 -0800 (PST)
Message-ID: <7b009b7f-0406-4dc1-80b3-79927d6143f0@cogentembedded.com>
Date: Fri, 20 Dec 2024 13:09:27 +0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 1/2] net: renesas: rswitch: use per-port irq
 handlers
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, netdev@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Michael Dege <michael.dege@renesas.com>,
 Christian Mardmoeller <christian.mardmoeller@renesas.com>,
 Dennis Ostermann <dennis.ostermann@renesas.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
References: <20241220041659.2985492-1-nikita.yoush@cogentembedded.com>
 <20241220041659.2985492-2-nikita.yoush@cogentembedded.com>
 <CAMuHMdXV-2bdU9Cmk_VHTJ=M3Afg5aTfY=_k=p6v1igzpV5kBA@mail.gmail.com>
Content-Language: en-US, ru-RU
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
In-Reply-To: <CAMuHMdXV-2bdU9Cmk_VHTJ=M3Afg5aTfY=_k=p6v1igzpV5kBA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

>> But it is not required to use the same interrupt for all ports - GWCA
>> provides 8 data interrupts and allows arbitrary per-queue assignment
>> of those. Support that by reading interrupt index for each port from
>> optional 'irq-index' device tree property.
> 
> Sorry, but I can't find where this property is documented?

I will add this.

Nikita

