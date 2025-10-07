Return-Path: <devicetree+bounces-224315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5450DBC2BA0
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 23:11:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0DE9B3C4275
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 21:11:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C75F8240604;
	Tue,  7 Oct 2025 21:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="SlnqIBb9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f97.google.com (mail-io1-f97.google.com [209.85.166.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC0A21D3E8
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 21:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.97
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759871479; cv=none; b=N6b3u+KIMmpi5zJyGEOErvoK7OhPubPYsq3nefp5LzbLi3jzsoUVAiLeMN9w3AWacRTSvxJvHM9IvvQfzde5R0ftQY0FH2zOGio0XdHOTzD6EXDq/64JP8S/nMq+WsgZSGUNgaGHbqWAF2LHQ6j1QdV+XTDyS7F+J+EK+HOBTio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759871479; c=relaxed/simple;
	bh=pcEbNrBGzDpjnQhT3/g96GNnfq/fmo3DiWZRzNbddjg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=SYsNLv858NO2j87NFBIVyKC4DOq45lbY5HUZYtFGfh18uSC0S+GGKQlcjhSWSoCIlh+co0CHw4A2s6eIBiietkKMbnc29BMDViC4b6IwyhB1E20IvI12H0l1Qw6F80H0fn5tK6dv5WhUEJ48DFTdO1SxWFFXdnvPCGxyfme4oOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=SlnqIBb9; arc=none smtp.client-ip=209.85.166.97
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-io1-f97.google.com with SMTP id ca18e2360f4ac-90926724bceso571192239f.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 14:11:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759871477; x=1760476277;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1Yf9bQ86CY94L4VUItHhrop26PnQXUpjnSRZHnRMXkc=;
        b=Nu7HTfz8Kf0WtkxEOGU3LaN/gbJcZnIF2j/620chBrSXwA9V47vougOxvkqOTUfcrg
         p6cVyrZsjFIl76Fdb4bM8suNKbyWX+gfVU+mU+WJaIJaQTd/9mzNmUrFod4OWX/7tfX6
         zPl5RoNwvwlQ0GFSbVbSCalWH1PBK6mKcxoh8xUsDnai3jng41TH8ipJ6gsp+OzMBNok
         CrX/2wGFd/FXCcYmneyIDZxHLYRTvIGE5IUlw1OKC0u5+uedOvnY2VnezvhxuQPngSGH
         UtViFHIcfAnsbHGsYurF0ETPur7TxEDqqG+pWQAxj40FWqE3e5nHykpfcXayUTtsuuw4
         drzw==
X-Forwarded-Encrypted: i=1; AJvYcCVhyaotqeNOPyEjqmCIeyYj4SJe+j8hQaMAcyMOqgdRN1hFbi78fYDZmd8fqgTiXUzpB4BzmFdxSp0H@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/mmdLrgATtFXe0G1nkgnLEnHlJQYXko1N1CW1y7r4k0sAveH9
	HPCb6a/qDwnRAs13wCzEjbrIWq/w6CPIX7kzIHob/9Y+DNEqmmm8CG6DokHzk8xtp+I04DTTcxM
	bhnW/rfMhCEqbvhDsr46thJpWUendzCKwE4bh4BKIIgcDKbuo+5wLxVtgBPmnNNku5TJSi1WJy0
	5uHjLOxHr3BEuL0/d3Emg7KZtaTw6jdInTZVPYPgzwIadYgXBBLMQGmlg4eEWjUoD1LnGjF3uWq
	7wDSHUg9SpuvuXKy6ZkzA==
X-Gm-Gg: ASbGnctodrJcwcdLiJlBHGtDdx2iMDsOhIq0QD516nhCpnadDh3DUeCHtUIiOdvADwX
	gnEiXgeSxOQQjskkLkGrFvV+OBvDFU9JMLzfguJzkQDveLi++ZHtoTwfuBSKOe19UqML0YcD+Nr
	AILj42FsMzelMYQQqzAPoKh/g9momCGMPGvJ6bivdrveTpGIASYX76BjBBWUYZF1BdUroer1mCQ
	unrJsKxRKynNhGXnxQqulaVlaMgQf3ecbpfSd+5IlSsUfPhj1yYkghmUSUyDaJIDi9Jnpkj30HG
	UnaSgkCl6dIpmlRBIks9ccpPtmyGEIE/IuX7BaVMwg8TxgJxklVVzZf9Kjc2geAbE3HvRLkieoa
	3Xegdza6HEYtLynvWbtPz58GlalJUJ5hQEVymrWCdMQ/WJonIqvfTNnIibuSie1vh4f6sAuNDxY
	XZLEyjbybtvGYO
X-Google-Smtp-Source: AGHT+IHudgxP6cnJOkK6nIu787d9MgTUsLTWXZyBhmHKnYIOuOTks22svxfvhk0k41ELfq9R6zs1copTXNpk
X-Received: by 2002:a05:6602:3fcc:b0:936:dfca:f7b with SMTP id ca18e2360f4ac-93bd18b1c94mr92692739f.8.1759871477276;
        Tue, 07 Oct 2025 14:11:17 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-118.dlp.protect.broadcom.com. [144.49.247.118])
        by smtp-relay.gmail.com with ESMTPS id 8926c6da1cb9f-57b5eafe225sm1281345173.12.2025.10.07.14.11.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Oct 2025 14:11:17 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-26e4fcc744dso41063895ad.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 14:11:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759871475; x=1760476275; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1Yf9bQ86CY94L4VUItHhrop26PnQXUpjnSRZHnRMXkc=;
        b=SlnqIBb9yTJlBilRcniFnEGs1M4sJCXHuJvkwTAdNBnLV3WCkkUivD+pcGdD0TrdjQ
         9IRxDkTRZHmm7hXzLMRawumdwqEtC8wXNhYZYqF5TtS0h4tCPMrt/PVvcNoIVbOfFdcv
         7pwR3yzCRXzwH7oPM5PhuCj5T2Cl5kYcQ20eQ=
X-Forwarded-Encrypted: i=1; AJvYcCVusCmXraMASaFb1DasPI/kkN2pFyRniiiTUo1IWSJHSMpV6WrT74AOZQ9pQmN2cb4LzyqFjpsFdiDc@vger.kernel.org
X-Received: by 2002:a17:903:3c4f:b0:25c:5bda:53a8 with SMTP id d9443c01a7336-290272b5529mr13211355ad.37.1759871475127;
        Tue, 07 Oct 2025 14:11:15 -0700 (PDT)
X-Received: by 2002:a17:903:3c4f:b0:25c:5bda:53a8 with SMTP id d9443c01a7336-290272b5529mr13211165ad.37.1759871474709;
        Tue, 07 Oct 2025 14:11:14 -0700 (PDT)
Received: from [192.168.1.3] (ip68-4-215-93.oc.oc.cox.net. [68.4.215.93])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d135d71sm175727765ad.58.2025.10.07.14.11.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 14:11:12 -0700 (PDT)
Message-ID: <37220187-7369-4b20-8e00-0846ee0ee6fd@broadcom.com>
Date: Tue, 7 Oct 2025 14:11:10 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: broadcom: bcm2712: adjust display status
To: Peter Robinson <pbrobinson@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stefan Wahren <wahrenst@gmx.net>, Phil Elwell <phil@raspberrypi.com>,
 Andrea della Porta <andrea.porta@suse.com>, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20250924085712.1040284-1-pbrobinson@gmail.com>
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
In-Reply-To: <20250924085712.1040284-1-pbrobinson@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 9/24/2025 1:57 AM, Peter Robinson wrote:
> Typically non critical IP in a SoC are disabled by
> default in the SoC .dtsi and enabled on board specific
> configs. There are usecases, such as some CM5 carrier
> boards, where display output may not be desired or
> connected. So disable them on the SoC .dtsi and enable
> them on the RPi5 board.
> 
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> Cc: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Cc: Andrea della Porta <andrea.porta@suse.com>
> Fixes: 25d77bdd7df2 ("arm64: dts: broadcom: Add display pipeline support to BCM2712")

Applied to 
https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
-- 
Florian


