Return-Path: <devicetree+bounces-90016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C31E694385A
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 23:57:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E64601C21770
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 21:57:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A923916CD33;
	Wed, 31 Jul 2024 21:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="QW/iUkho"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACD01607B0
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 21:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722463065; cv=none; b=WYQIeOG91dVWL7ic2a+mRC/ULsQYwIU/4gXWS3kxwDuOPFEqZ5r0i5jbZOCfSL/DDgdDQ04YlG2NBlwe/wV166Iv7fBcG+mELgFzWycesF5v8ZJ25v3jNw1xo/3NXVgzRuzmnJd4cFtJhrNm6m8jQzk+dknZEDkwDhfelUpKvgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722463065; c=relaxed/simple;
	bh=HvP9UTdaOvuGo/1SH9sSfgXUKZ+cWJntvJAMkm1cyP0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Fh5hdVYxDCjCBVb7VO63SGTTPD96/qJfHiAXEBl/ISObGFLXLOBxGwnXhth85LJz4RMrXpLyuo8p7WCTVNMdcAmkhylm+rNEi/oOiCjUyKhEm6y/aSXlkNMBzoadw2NxCgx3NPI6BJDEV1SxiBp4PXKzCNWsGve66U41sClybpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=QW/iUkho; arc=none smtp.client-ip=209.85.160.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-44ff7cc5432so42901961cf.3
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 14:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1722463062; x=1723067862; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=6c0fq/9niEbxhUNOBi6KIx6QPd/gDQL1GeIwgQjNEBA=;
        b=QW/iUkhoAmupuiRyBEdyho/GpwHlDRL2ZuUtZt0185/FCoZyutnKC0KPMyfl2bdsHy
         w0akCd8VUDIf0F3a/7X6ljnetrkTRQC6iaros2vHAs75EZ5XpKj+w6fIxjIq8GLEcL3T
         EPFkomGpR3UyxSfjkjd/00518zEWLfkBAEveU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722463062; x=1723067862;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6c0fq/9niEbxhUNOBi6KIx6QPd/gDQL1GeIwgQjNEBA=;
        b=JNm2//hwGdYJ+YA43SXQZ68ipEbgnaMjiBynrLqlf7ewxO+es+eTTKpk6K1KZLeBBM
         0/3Bi+1iVfRQqU3e93CN5hv5gxMxSVMJ/S2ChNW1BvdLeC08KFsX1bc8oymyOmIi2S4V
         JGgWMUNmRVq+R5kNSdOpRGuRuusn05yjDlm689KGNTj1dFEujCi/PTlC71di2MdhlHQP
         a3/dltfsF/GHXUs6fQAtFs+PL1TrCe+61FFEh2qal57WpBysYMRsDrnWfVDFZ4VeqFrB
         0vzIKL+QrWhIsjjCF81vqKexdSFFsZuVTQH8llg8SR8VgbzTy5ycaSVZSdUwBiIr7cjf
         OvCg==
X-Forwarded-Encrypted: i=1; AJvYcCV9uUeQl5s29DeyEZZd0m3wsU3wGT+DxtoyroVpTjw9PL+242R+6aNDYhYM9nbxWX9fVf3ene2Y5FpwkvvCXQOv/RSyUz1FKoWNmw==
X-Gm-Message-State: AOJu0Yx3NI9MB0x0EmvuZynVrV43D2+01GAnr/HI1QSu/Os1QEk1T3L+
	GcphWHSUs4JThtWAWcz2PFoajGE2XS3AfEQSfOCSgicMk2gx/bWlYUCA20NNIHz1R1gtmiRHFkc
	=
X-Google-Smtp-Source: AGHT+IGGSlT5og+BgbmE0+3uintUQTRZiD8cptlG/Ip2S38pVPXA8r7qLhReI9ywePLT1vM+lc4egA==
X-Received: by 2002:ac8:5a96:0:b0:44c:2c6b:9aa2 with SMTP id d75a77b69052e-4515eadccecmr6166081cf.64.1722463062013;
        Wed, 31 Jul 2024 14:57:42 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-44fe8123516sm63962511cf.1.2024.07.31.14.57.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jul 2024 14:57:41 -0700 (PDT)
Message-ID: <171ab489-7d05-4e43-9d5b-34470e33b20b@broadcom.com>
Date: Wed, 31 Jul 2024 14:57:37 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] arm64: dts: broadcom: Add support for BCM2712
To: "Ivan T. Ivanov" <iivanov@suse.de>, linus.walleij@linaro.org,
 robh@kernel.org, krzk+dt@kernel.org
Cc: conor+dt@kernel.org, wahrenst@gmx.net, andrea.porta@suse.com,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240731062814.215833-1-iivanov@suse.de>
 <20240731062814.215833-4-iivanov@suse.de>
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
In-Reply-To: <20240731062814.215833-4-iivanov@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/30/24 23:28, Ivan T. Ivanov wrote:
> From: Andrea della Porta <andrea.porta@suse.com>
> 
> The BCM2712 SoC family can be found on Raspberry Pi 5.
> Add minimal SoC and board (Rpi5 specific) dts file to be able to
> boot from SD card and use console on debug UART.
> 
> Signed-off-by: Andrea della Porta <andrea.porta@suse.com>

I have already applied this one:

https://github.com/Broadcom/stblinux/commit/faa3381267d01a389b13038504079c85c0bc4392

should I drop it and take this patch instead?
-- 
Florian


