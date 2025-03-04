Return-Path: <devicetree+bounces-154175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BB1A4F11B
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 00:03:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6092D3A400E
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 23:02:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27D941FCFE4;
	Tue,  4 Mar 2025 23:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="gz8BkfMW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE3641F8AC0
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 23:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741129320; cv=none; b=FHkzMiJbvZFdyWH7+HWKzIVGzauFioqAE4AAbDSFdwoXf724fRAERklbw8y5T1dDxIukIbVWLVluEXFkBq2HURPbMIjvLRDxWt1Ulf+0pumOKe4fkTecUnm7TzaBRql2AHQu2FKH6FE63W23R0cE4ds4dQc6rnEBc4hspV5lLCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741129320; c=relaxed/simple;
	bh=w/3vCvKBxVX0tNbKofihByzFZDT5r/Kyn4cV5PcdUIo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hZoGRlB3FmIyGjFfF6Rmzqs29EqE2647T2+q6dS7fgTDGoZJgf7MCxdQ20MlGii8FGzfAVj4Y05CIRVYKHw2nWAJ8gTj8uKK/dnygBmkTt3GHwUDU0rIVRpmD68/Xhi3cBtjEV2IwDm9hE7bkto/jGkjqZFTznVg3KH5QWCip1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=gz8BkfMW; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2feb9076cdcso10641997a91.0
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 15:01:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1741129318; x=1741734118; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Bpovz4p2dTADlgTVz2T00MypTvf08AyRC4B4b+S6SjU=;
        b=gz8BkfMWvdq3KhdgOnJHCj/JE48P5xfj0lfNgwRyaWtvtbJTog1J4DDhqvBTi4GSoT
         QbwNzEASqE3kLHPdV3TEKU5d1DZmNVklccPjt0pdojk9C0k8wH/6AuFVQciPxb9Wo6Vc
         2Mbd0aDlRq/mU/GwmnCdCqD3s8EBty5WnorpY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741129318; x=1741734118;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bpovz4p2dTADlgTVz2T00MypTvf08AyRC4B4b+S6SjU=;
        b=bsL6dv/IT+5sHydbspZurZ+ZwfQsT9KKl1NQEPn5v9obTLuiKrSRIQXkgUHVV8WQqn
         SXKiYz9SuL1tx2wRUX0VlZ3hlCSMuKKN+gf2h0RK1xyQ3fi0SquWFJpOjJaEhhWjppvD
         Jz9NbWRPP1Kg8tgA2xYfENNNOnihRMMD/LcGgjXUjW7OZgjqSyeUIl0/+nPq+JyX0O25
         lP4L7VeCVVoU1VTVWfl/xqVhc3R1QKwQwepOvV9iHbCrcnUva1PYT1ZBBINFFyEXNH9N
         kzgoHttjb7MSKsiZLTNLuoF7yVVjTBB5aGBIOD5JGtpqD3m3YYNQgyeW1lKqCdtXOvsu
         y5dg==
X-Forwarded-Encrypted: i=1; AJvYcCVsD0sAQERsZo+xtwW6w0Fn5LHl3wfZzP+PeEtFX/4I1Dl1Cq1lkR3LjHhikkeoWD/A38FRRZFA6i/S@vger.kernel.org
X-Gm-Message-State: AOJu0YzgoCV0KrTJPUM4YHmrTH0u96Zk7ZeHOcgoQ1y4OD9MXkYEwQDN
	GcIpRP+XLxcZzJQwezNvSnoRgK72aIxgiWOO+GZ0PXsaGxz9voJDI696Cstq2w==
X-Gm-Gg: ASbGncvC968eF1EA5cU5rfd9xsRcC9Ft298PBDusJ5hZfJ2mEYRRmfj9yiwRkKfG2WQ
	Nng+L8oMSw2e1fb9bvpSyWX+zaa+u1YMqUx9tyKOlAmwVyPcWAQOOT/Kgr84T4R9bZzsv0/kAPG
	/qdKRK4o3MbC2wPl66DbvOnKupaXpPpWpf2GB9O6mZA/dEA4raXagK/4zp9ECouUwYms30j7NHn
	/XdakVyp8E0BV395GswnO7TLKhz35fnBnVv10nl3j03SS3QJmN9BYNhuUqX6XbAXmM2BKvreyg4
	wPrU9JmFMdvuCNGWuj+IcKAYqk7qi1TcoiCaHOSnLlBIRCpmL0ahXwiKBzKEjbEKG+GOVJThWVf
	jcDe3SoXD
X-Google-Smtp-Source: AGHT+IFZi2Lb1U/NQYFlwnnXQ8TLKKp9ji4Z+/znszyXYFRD14/L5VVldpdyQoXzfxuxtr6DE0A7OQ==
X-Received: by 2002:a17:90a:c106:b0:2fe:b907:562f with SMTP id 98e67ed59e1d1-2ff49730986mr1913401a91.14.1741129317859;
        Tue, 04 Mar 2025 15:01:57 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-223501d4e9fsm101714055ad.28.2025.03.04.15.01.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Mar 2025 15:01:57 -0800 (PST)
Message-ID: <934529bf-d859-4eed-ade1-2917afb4e793@broadcom.com>
Date: Tue, 4 Mar 2025 15:01:53 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: BCM5301X: Fix switch port labels of ASUS
 RT-AC3200
To: chester.a.unal@arinc9.com, Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tom Brautaset <tbrautaset@gmail.com>
References: <20250304-for-broadcom-fix-rt-ac3200-switch-ports-v1-1-7e249a19a13e@arinc9.com>
Content-Language: en-US
From: Florian Fainelli <florian.fainelli@broadcom.com>
Autocrypt: addr=florian.fainelli@broadcom.com; keydata=
 xsBNBFPAG8ABCAC3EO02urEwipgbUNJ1r6oI2Vr/+uE389lSEShN2PmL3MVnzhViSAtrYxeT
 M0Txqn1tOWoIc4QUl6Ggqf5KP6FoRkCrgMMTnUAINsINYXK+3OLe7HjP10h2jDRX4Ajs4Ghs
 JrZOBru6rH0YrgAhr6O5gG7NE1jhly+EsOa2MpwOiXO4DE/YKZGuVe6Bh87WqmILs9KvnNrQ
 PcycQnYKTVpqE95d4M824M5cuRB6D1GrYovCsjA9uxo22kPdOoQRAu5gBBn3AdtALFyQj9DQ
 KQuc39/i/Kt6XLZ/RsBc6qLs+p+JnEuPJngTSfWvzGjpx0nkwCMi4yBb+xk7Hki4kEslABEB
 AAHNMEZsb3JpYW4gRmFpbmVsbGkgPGZsb3JpYW4uZmFpbmVsbGlAYnJvYWRjb20uY29tPsLB
 IQQQAQgAywUCZWl41AUJI+Jo+hcKAAG/SMv+fS3xUQWa0NryPuoRGjsA3SAUAAAAAAAWAAFr
 ZXktdXNhZ2UtbWFza0BwZ3AuY29tjDAUgAAAAAAgAAdwcmVmZXJyZWQtZW1haWwtZW5jb2Rp
 bmdAcGdwLmNvbXBncG1pbWUICwkIBwMCAQoFF4AAAAAZGGxkYXA6Ly9rZXlzLmJyb2FkY29t
 Lm5ldAUbAwAAAAMWAgEFHgEAAAAEFQgJChYhBNXZKpfnkVze1+R8aIExtcQpvGagAAoJEIEx
 tcQpvGagWPEH/2l0DNr9QkTwJUxOoP9wgHfmVhqc0ZlDsBFv91I3BbhGKI5UATbipKNqG13Z
 TsBrJHcrnCqnTRS+8n9/myOF0ng2A4YT0EJnayzHugXm+hrkO5O9UEPJ8a+0553VqyoFhHqA
 zjxj8fUu1px5cbb4R9G4UAySqyeLLeqnYLCKb4+GklGSBGsLMYvLmIDNYlkhMdnnzsSUAS61
 WJYW6jjnzMwuKJ0ZHv7xZvSHyhIsFRiYiEs44kiYjbUUMcXor/uLEuTIazGrE3MahuGdjpT2
 IOjoMiTsbMc0yfhHp6G/2E769oDXMVxCCbMVpA+LUtVIQEA+8Zr6mX0Yk4nDS7OiBlvOwE0E
 U8AbwQEIAKxr71oqe+0+MYCc7WafWEcpQHFUwvYLcdBoOnmJPxDwDRpvU5LhqSPvk/yJdh9k
 4xUDQu3rm1qIW2I9Puk5n/Jz/lZsqGw8T13DKyu8eMcvaA/irm9lX9El27DPHy/0qsxmxVmU
 pu9y9S+BmaMb2CM9IuyxMWEl9ruWFS2jAWh/R8CrdnL6+zLk60R7XGzmSJqF09vYNlJ6Bdbs
 MWDXkYWWP5Ub1ZJGNJQ4qT7g8IN0qXxzLQsmz6tbgLMEHYBGx80bBF8AkdThd6SLhreCN7Uh
 IR/5NXGqotAZao2xlDpJLuOMQtoH9WVNuuxQQZHVd8if+yp6yRJ5DAmIUt5CCPcAEQEAAcLB
 gQQYAQIBKwUCU8AbwgUbDAAAAMBdIAQZAQgABgUCU8AbwQAKCRCTYAaomC8PVQ0VCACWk3n+
 obFABEp5Rg6Qvspi9kWXcwCcfZV41OIYWhXMoc57ssjCand5noZi8bKg0bxw4qsg+9cNgZ3P
 N/DFWcNKcAT3Z2/4fTnJqdJS//YcEhlr8uGs+ZWFcqAPbteFCM4dGDRruo69IrHfyyQGx16s
 CcFlrN8vD066RKevFepb/ml7eYEdN5SRALyEdQMKeCSf3mectdoECEqdF/MWpfWIYQ1hEfdm
 C2Kztm+h3Nkt9ZQLqc3wsPJZmbD9T0c9Rphfypgw/SfTf2/CHoYVkKqwUIzI59itl5Lze+R5
 wDByhWHx2Ud2R7SudmT9XK1e0x7W7a5z11Q6vrzuED5nQvkhAAoJEIExtcQpvGagugcIAJd5
 EYe6KM6Y6RvI6TvHp+QgbU5dxvjqSiSvam0Ms3QrLidCtantcGT2Wz/2PlbZqkoJxMQc40rb
 fXa4xQSvJYj0GWpadrDJUvUu3LEsunDCxdWrmbmwGRKqZraV2oG7YEddmDqOe0Xm/NxeSobc
 MIlnaE6V0U8f5zNHB7Y46yJjjYT/Ds1TJo3pvwevDWPvv6rdBeV07D9s43frUS6xYd1uFxHC
 7dZYWJjZmyUf5evr1W1gCgwLXG0PEi9n3qmz1lelQ8lSocmvxBKtMbX/OKhAfuP/iIwnTsww
 95A2SaPiQZA51NywV8OFgsN0ITl2PlZ4Tp9hHERDe6nQCsNI/Us=
In-Reply-To: <20250304-for-broadcom-fix-rt-ac3200-switch-ports-v1-1-7e249a19a13e@arinc9.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/4/25 07:55, Chester A. Unal via B4 Relay wrote:
> From: "Chester A. Unal" <chester.a.unal@arinc9.com>
> 
> After using the device for a while, Tom reports that he initially described
> the switch port labels incorrectly. Apparently, ASUS's own firmware also
> describes them incorrectly. Correct them to what is seen on the chassis.
> 
> Reported-by: Tom Brautaset <tbrautaset@gmail.com>
> Fixes: b116239094d8 ("ARM: dts: BCM5301X: Add DT for ASUS RT-AC3200")
> Signed-off-by: Chester A. Unal <chester.a.unal@arinc9.com>

Applied to devicetree/fixes, thanks!
-- 
Florian

