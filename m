Return-Path: <devicetree+bounces-191194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4960DAEE54F
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 19:07:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7BA733BD886
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 17:06:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEB4F2951DD;
	Mon, 30 Jun 2025 17:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Hm0Qr4MJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDA9293B73
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 17:06:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751303201; cv=none; b=EcZ7cJVgOBID08+8e/OLX/ZTP8P+RTiOVR6pc8yDDgnjCfLc3Wlx7ETjSnJx9RomdMXJAmZDDeHfsDbKeRhUtw5BHAVgpW/qjhNpB5rplUILl5Z3RFE5xTy5r+oprQnKXxT7zOg4sTXDtIFwXihm6cuHclzKPn3z7m0X770rpD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751303201; c=relaxed/simple;
	bh=Rc4d7uA3KTPb0dBTant2cJkdRo112Z9ZMNCYt/L16FI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NpuqzUvR27Bdqv3DnOClt/OkQAPrhqlIczGxeNIwZyLe2B9U7/M50Cpb7XOAlEdEqh/PxPy8aI0AmvKzrbXRj10W23H/usD3IrNHxRn3sqqU4GvoElRdYV3FAOEvXR9jXjN0x2mGs+j06QA+7iVS+hWvTq0+SxFv1JM8VMSJcDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Hm0Qr4MJ; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-879d2e419b9so3579333a12.2
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 10:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1751303199; x=1751907999; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=4pe2m6OO+aD5Db2RKVohczYrYxmhZoW19EPa28ikR2o=;
        b=Hm0Qr4MJpLleVennQIGqtr8daQa6NusrX0L9w86eP8NT9s+x1CGnUPogP7QV6utJbU
         jctXTtc9kV+n2GWSkNaSA6i8iwBJAovmnE8lxA2rUqMfa5EnCYNJSoWpiDyXZNA9Sq+Q
         v+dooAGi0whVsvOEeBeiw6zE9O+EjvjCABVCU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751303199; x=1751907999;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4pe2m6OO+aD5Db2RKVohczYrYxmhZoW19EPa28ikR2o=;
        b=dj2pgs+2NikgfRh7OiL3hUSVlbqaiuLAHF2pEdNyfw8DZ0X0B27oUraOWx+ley8PrQ
         vXwqa4xH/nz0a6O0MjGLOMsZMRRxGXK1VufB9WQHNPCYbhX4ZgfhWs9lWB2ZJABLZekz
         pdlNmxESOp/e/jQ67hXgupJOfkO42pICB98Gc1hIU8UQ+jcenVZibL/daVM+JlMbvs5d
         pcEx1Cz1F92llKG3PM3N5LOinu6BopzHh3oPNtRHsWiz3H+pzg89qpPsa4ra4aKGS7nY
         ElmzBnFCmbw+0fSq8SxhkIgrAzX4ecFfiLZc+IvRGA5atEpEyOjEQu8aofi3QyRsYZ87
         9Rcw==
X-Forwarded-Encrypted: i=1; AJvYcCXOdoNMLYNThDsEoAo5v0lrQq903FEfwgsZWg6CfUjz7DQg/21lWIevZEEzry0MFLThMYnGl8fAbOoC@vger.kernel.org
X-Gm-Message-State: AOJu0YxE2CoF7t2C6sXjhg0SbzmOFnn+oErVLgabC7jVlo3n3YAov0XM
	elEPlVRKvH4NSU7LnTHYATNAlBjSwxuNhbSf4K9luZRKNilnNV1h8XHEbuMSgzS82A==
X-Gm-Gg: ASbGnctK5Ovhobl7m5mNLX8jlVIPmwRYZkVHggfKE8eeFgyMHHTmjq2hvhhQIg9JU4f
	TTzmL4AqgLaVWirRI20NqlQnT2+kEQGFNKEhkaPVMUXR9d1405ofQXfPjl6iEvMAA6oehTot2cs
	nH8s1msueNZxjtjko6d3gXHRGewmukEiRqzsLYFCn3yYoLJhNsDJ5SuKf3VGHehEEj6z6o5oxJU
	BtSgg8ZrLfiuzX+a+wO9FUPMK1hRSg0iCfBZrOeHcNuO+VX16yVynbcNFlJ9XLVS3dgRKduc11Y
	mPB0i7apX/k4a4JFJ9cjmvZ8KvmKFGDm105+citAcomv9S4fIyQGdgLmyvITaWCJxFLwK1pSdog
	DQtJxgjL92c0/n5jvpU8MiA9HGw==
X-Google-Smtp-Source: AGHT+IEKg9TUOzSxppsmjj2yfzPJiqt0cGVRpjZz8q0wTCde0PRYfqv5J+NKU001pB8mLSvZjg6Bkw==
X-Received: by 2002:a17:90b:2f8f:b0:311:a54d:8492 with SMTP id 98e67ed59e1d1-318c910de41mr20420929a91.6.1751303199555;
        Mon, 30 Jun 2025 10:06:39 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-315f5426bf0sm14325650a91.23.2025.06.30.10.06.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jun 2025 10:06:38 -0700 (PDT)
Message-ID: <10c14d8b-f3e8-47a9-85fa-8780c412b900@broadcom.com>
Date: Mon, 30 Jun 2025 10:06:37 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net v4 2/4] dt-bindings: ethernet-phy: add MII-Lite phy
 interface type
To: =?UTF-8?Q?Kamil_Hor=C3=A1k_-_2N?= <kamilh@axis.com>,
 bcm-kernel-feedback-list@broadcom.com, andrew@lunn.ch, hkallweit1@gmail.com,
 linux@armlinux.org.uk, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, f.fainelli@gmail.com, robh@kernel.org,
 andrew+netdev@lunn.ch, Maxime Chevallier <maxime.chevallier@bootlin.com>
References: <20250630135837.1173063-1-kamilh@axis.com>
 <20250630135837.1173063-3-kamilh@axis.com>
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
In-Reply-To: <20250630135837.1173063-3-kamilh@axis.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 6/30/25 06:58, Kamil Horák - 2N wrote:
> Some Broadcom PHYs are capable to operate in simplified MII mode,
> without TXER, RXER, CRS and COL signals as defined for the MII.
> The MII-Lite mode can be used on most Ethernet controllers with full
> MII interface by just leaving the input signals (RXER, CRS, COL)
> inactive. The absence of COL signal makes half-duplex link modes
> impossible but does not interfere with BroadR-Reach link modes on
> Broadcom PHYs, because they are all full-duplex only.
> 
> Add new interface type "mii-lite" to phy-connection-type enum.
> 
> Signed-off-by: Kamil Horák - 2N <kamilh@axis.com>
> Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

