Return-Path: <devicetree+bounces-199828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DC653B125EB
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 22:58:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 67072161399
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 20:58:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEB3725C838;
	Fri, 25 Jul 2025 20:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="grTo9X7P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D20125C706
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 20:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753477078; cv=none; b=DYZTRy9VqTENHeMl9lZAWrfUEuUppAvOBhLChFgK2g1vi5HJ/faw/HZkpZ2ovuDZfBinUSIHgHCiE0gmW/eY4DK5LlRLp13BZtM31toNxCvSsc7rIGLPetT5BD0rzZ5wFkYIT2i6fTdrXSjVYqffjHGpOlBmqT2xlyH4ENlB8Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753477078; c=relaxed/simple;
	bh=k232VtwVVZG2FzWgQtBvQ1fahoflcx7WLbYbFpJ1VHs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W6R8hWoLdvyPy2wWUxRm3HpdAGnUgkp4rUE4MteFHxOsG8RBd8UStTJylA5e0Dyu+3VLsVslZvEDqv2gR/RXKWj9QCL+4dyEJEW6bmtb8LObEyj69xcK9drnjusibZ2Y9N0IQMt+zjf1a6I5eZR/DlbaYjLgsn6X0hQs6TBoy/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=grTo9X7P; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-707122b5b37so19223416d6.3
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 13:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1753477076; x=1754081876; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=0linhnc6R4emmot5qcWK/rphABGbjiM80Hvs52mvgpw=;
        b=grTo9X7PKi8x+wY3BMwvXvHiHfEph5Xj3DN4ypX3+IUngowp5OPMe41r8eyzeBvSBD
         UC4ISeJmgm9z4lq1Z8fHCYogxtTC0FC8wbzfgL9OTXvEn9FV0A9mmHtHxm12dJdYEUZC
         qeOeyeR51kLrdp6bRsYaao0khpc8RagrJwB94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753477076; x=1754081876;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0linhnc6R4emmot5qcWK/rphABGbjiM80Hvs52mvgpw=;
        b=OmYaXWNTaPzJ7RhI4RnNgQYkD5OVuYK3q7P9n6aGdBzG47ZraFjZdwJJAaqexbkZNg
         KZvZ1p/gkrfsQrCTyWi5eDiQSa16XPFY16dJSo5iUr2uvV1K7tq1y6fpiZ/gk6p3y9nM
         uEqRO43VU1PmhG+uqxyKV0TT0K/dNQvS/JEo/361L4QJL3Rp6iNakYedcM/oxtZc3sfg
         itKVfNMzdxlrbIs9akWcIEpoVTLlwV1NAWtqaXB/zhDxEex74rGcEmgaCasE4tMMCMgm
         S/4dKQSdsoYDKXx/1X6KPDsZxPt6LYf5DdixeI9xLI1KCE/vL9YKJJ0T/x+j1mdGHwP/
         haiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxDmv+eHneALSq8GoEZuB9BnfYziXDrjXWDRy/fzXmE8fRm8qM5HrQtWpmEL2O+sQ0L51p60P3R6PM@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+uNyR0c3ZLnoelHeF037yBlij2BGY520EWx8rVY2N+gEi3hSW
	XNUpAnC8Vee3FDTVAbTbPPYt76z73+2boyr8y47DdaTcJTr/SRi2xZaydol9+Nzgfg==
X-Gm-Gg: ASbGnctrYKz0hbV4Hrn8qrUDkS7VMleYO2imcciePIdCAWnXSZBetmavEhJq+cfMoOa
	gysi7BIAsgzpJlpMUTpNHHfMbUDbdrd1t44povnP85T1smmziwpsGlQWWWDE4TOH49MZ/kNR7w0
	AU/hokRW9Z+i4IFSaws1Xi++0ECXog8HiPqtvYtJ+mjIjoTGclIzz0jCl+cWwirNV9qmftDFM/I
	QYx9niNP89h2VlIcVDasWIALIIl/v58cL7enDBTxD5zpeMaijHWSL2xQ0DRH/CxfxMEa9avgO3y
	3UaRjHtLXbHbyJytvoFEsEKc/ph8mqmjDB4CbpY+XxHV7P8LBQfzKsR2WxwfYjthOxr5+vm7Vcg
	6N4zdmAu/YoihJ8/HoFFfOb10EMyI70LVSD4mmXiDzPwrrzoEdPJ5REZCxWtO2A==
X-Google-Smtp-Source: AGHT+IFM/h8z9wxWmVisKKuJLLilE16LMHU69yVSgZxmcR64rBzMd6QSyjirXwAAUfv3FWcEqWULIg==
X-Received: by 2002:ad4:5dec:0:b0:707:151d:3234 with SMTP id 6a1803df08f44-707205a9d4cmr35292276d6.30.1753477076161;
        Fri, 25 Jul 2025 13:57:56 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70729c92aefsm4282516d6.100.2025.07.25.13.57.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 13:57:55 -0700 (PDT)
Message-ID: <debca09a-7eb7-47c1-9613-74db49f423b3@broadcom.com>
Date: Fri, 25 Jul 2025 13:57:53 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v2 7/7] net: dsa: b53: mmap: Implement bcm63xx
 ephy power control
To: Kyle Hendry <kylehendrydev@gmail.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>
Cc: noltari@gmail.com, jonas.gorski@gmail.com, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250724035300.20497-1-kylehendrydev@gmail.com>
 <20250724035300.20497-8-kylehendrydev@gmail.com>
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
In-Reply-To: <20250724035300.20497-8-kylehendrydev@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/23/25 20:52, Kyle Hendry wrote:
> Implement the phy enable/disable calls for b53 mmap, and
> set the power down registers in the ephy control register
> appropriately.
> 
> Signed-off-by: Kyle Hendry <kylehendrydev@gmail.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


