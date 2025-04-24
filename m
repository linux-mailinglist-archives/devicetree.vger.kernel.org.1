Return-Path: <devicetree+bounces-170596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9458FA9B900
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 22:20:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D00A4C4E4D
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 20:20:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C76EF224226;
	Thu, 24 Apr 2025 20:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="FzSTFY9f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387E921D5AA
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 20:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745525948; cv=none; b=j/7ptzg57rZzPV8eFaV0rsMbzzypZXbiBz80Hn6Vz9WJW7RlcXz+YBlWSb4GF9u0NW8SuMyuTVEsCex+Sg2EgErn1iOKGsT+Hpn59SYcdBkOWarhxCuqb5+jC88i9Gu12O1mlkS35YOgS7c52eaQ9iiwT+Vlp0nx2XXg8a18wbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745525948; c=relaxed/simple;
	bh=wXtt3O6QR0SBtm6JBBM/8SyfsD/cxOGQ/lU0OsnQlXc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EOHWIs8bJix0LnIyvZ9fMKzp4odOtpjo/7N1ZJiDY7t++RPWKQ7SPO8j3RxmpM2sAXIhAbgr9KP/l2tyceSmOb063sUvqjjoDp976JOMgIgxQI1z7qkNk2VfxVMATxDYPwk5HAlhc4wUN0IvN3g18Ll6FX94vOb9fdWHVblzK4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=FzSTFY9f; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-72c13802133so410506a34.3
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 13:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1745525946; x=1746130746; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=fqpCmm/9ps6ojnKQ5WNeOaRI3x7j1foxwoVLfKtNdk0=;
        b=FzSTFY9fG5hY3YHZQtsfEwjUpuxHQPsoEIEyMFZ4wQrDbRYURtHEuUIG7KsWewiz5E
         shrNvIeTJN8WtzHFxwctPsg6BMECAzlV0GEsrVy0za+78FZr79Wq2Gr9PFKxc8ba+MD/
         IlTzE/QL0ze3Xy2bm2KH4pHdmhZhKuh2Bh5mQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745525946; x=1746130746;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fqpCmm/9ps6ojnKQ5WNeOaRI3x7j1foxwoVLfKtNdk0=;
        b=H+1taDgf5kE6navDZPfBSm38cXs2Dkou8FSoQUnURuJ+zALi7/U6Jtv2VhGm0ocZ3P
         obxF/JdNLl2gE+KgHfwd6+9HnmEu4z3w5TeZexuvM/whnCv44VxuM1F92jtlBnkicHNV
         4gtwz5AFrZjS4xtX59W755EfbYPH3sWIw+EnlwzwI82AFn9349M+sgbeni3qS9d+ezlg
         FVEKONaiSK/AaDt62zGP4s2sc4s+NZmimVVCxaI2RnWcku8Oe2MJIy1/n0PN2Ya90u5J
         eDgwPm4vDwbO59C1598tG88Uk3HLEaY4oAdZ+hFkkJ44UM6fvmGj2ojspnuBzwlu+sfP
         mp5Q==
X-Forwarded-Encrypted: i=1; AJvYcCVy3DtrxUyynXLDMJ/DvLMSF201puKMA+390C1KC4rEZVk0ms7nprewOtTSlpWxBgXYpFRzXtjCHES2@vger.kernel.org
X-Gm-Message-State: AOJu0YxzbzYcJCeAER/J4e5zburnqD+Sd+zKrrbckFa/D3V1QoKayGM5
	LGO8wekrvz2TVWwZrVYNZzHJ0jrKeD+lsLn1KK01xhQi82ImmnY+TpaG1kQ0lQ==
X-Gm-Gg: ASbGncuoB5Ih+aDNco6zitmbgjAi7Y/ll/ojKniS2XBwPXTZRdl4+d+bRXHtJ0nzAwX
	DQo6vjoZUexZx5lgqPOu6Vw+jNmfPTEH7trdd0114bvFlg+jhuwPT1iKMjhMdNWOIQcAnNd9ywk
	NrxCJf7CtvyVymRQD02N0gOxv0XjOuq/+0x7uzq+ldDeZcvgUA6hVENAtSzeEN3OZsna1lNNkNt
	2kSWwk4PsxhdDV1dcnDEBOdSpnlhUZ2x7assEWKWpbOD3NmIglocoiyeQMeuGFrW5vu0j2P4YXL
	tFHKQ+IQLpj7uHDnhxFruhrdKJMJHNRqFcIki7AEKFIt3gyKnVwpZHmvUA0lcVRYzMdaLY1frcf
	uQ4NIe2VJtJY40WGkCVlixIDVa89AtnmfaQ==
X-Google-Smtp-Source: AGHT+IG6Zmz2sFvChlWMDoH7pTDFaR1Uux4d3RWMHcXZbIqfP6Es8O8XHkxJz+V9Fp3SVlkL6sqntQ==
X-Received: by 2002:a05:6830:2a8f:b0:72c:320c:d960 with SMTP id 46e09a7af769-73059c6b3efmr842016a34.15.1745525946160;
        Thu, 24 Apr 2025 13:19:06 -0700 (PDT)
Received: from [192.168.1.105] (88-187-52-200.subs.proxad.net. [88.187.52.200])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7304f2ac2besm363165a34.30.2025.04.24.13.19.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 13:19:05 -0700 (PDT)
Message-ID: <9f2ebcc4-69b6-454d-a5cc-72e51d5fdff2@broadcom.com>
Date: Thu, 24 Apr 2025 22:19:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v2 4/8] net: phy: mdio-bcm-unimac: Remove
 asp-v2.0
To: Justin Chen <justin.chen@broadcom.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org
Cc: rafal@milecki.pl, linux@armlinux.org.uk, hkallweit1@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, opendmb@gmail.com,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, pabeni@redhat.com,
 kuba@kernel.org, edumazet@google.com, davem@davemloft.net,
 andrew+netdev@lunn.ch
References: <20250422233645.1931036-1-justin.chen@broadcom.com>
 <20250422233645.1931036-5-justin.chen@broadcom.com>
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
In-Reply-To: <20250422233645.1931036-5-justin.chen@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/23/2025 1:36 AM, Justin Chen wrote:
> Remove asp-v2.0 which will no longer be supported.
> 
> Signed-off-by: Justin Chen <justin.chen@broadcom.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


