Return-Path: <devicetree+bounces-223554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA4BBB7AC3
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 19:12:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5D18E4EE255
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 17:12:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0F452D8792;
	Fri,  3 Oct 2025 17:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="NYINhqs+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f227.google.com (mail-yw1-f227.google.com [209.85.128.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AC57260590
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 17:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759511537; cv=none; b=WbeQqPVuR6TZoQ1iwjrjSPxHcxoquNNIfyrRgDAKTMu8mWYI9UZDLJC9XkZ/OkRP6TV6fu1xxXzd2BTNMIqASoQUpumKi3eVOrS9guwEW5jRxh1JDQGKjup8dCYQRsTdUBq01egUcRIOSbVUN7UAQsm6DihJFAcKgauz2kB4WMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759511537; c=relaxed/simple;
	bh=9SlwudKfjm2H6CDBihaHiwrvhvQGx05mbbKqjmzJGt4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rXR7kNWGg3/fNP36l0tAroakH1N4JrocMigbf6inEC+w1Y/InYyJZSnh+H2uiAgGpSQX9M/ZY5ITX/fWBFvRUaWWgwbKcrQnSn4QM3NVCtbiYx4tYSkzLDRun9uc8zH6ILkNJVwIOGS57+Zzj4AtVVELCV1yRNtPY+s9YP1l74g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=NYINhqs+; arc=none smtp.client-ip=209.85.128.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-yw1-f227.google.com with SMTP id 00721157ae682-71d71bcab6fso26789597b3.0
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 10:12:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759511534; x=1760116334;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z+rEM9+wzhaFVPN9JNs7nDiRdjo8ZbQobpK1PNdub44=;
        b=CUgikz5BHJhVSVPOTsK1kA1EUi0ZPN9koXfa4nEXJC7aS3rAAjzyXXFlXZ6oes/riM
         cOGimo0PEoQLB3MFVQ5VHh8pYzQ5GsOSp64HN34/ik2T8KFwCLyJVGWph50W752PACfD
         P2i2alsS3EuBEHwEA+3CBrNCGQ32trfiYjCG1/Myo8bf4P8evR5ArnLXsng0LIirqBhC
         U7LtzXxduFo5SHvw9nUDGUAbY1UjBBgYnDdJM08DXpaU7qZgXbkEmzMCKeOdVlZdFiie
         qedPkll4ExYJV820JsedtLX/b6SllMd2li71pu8tWtj1EFeRKiXNwoJGusdQlCSAqXBp
         hk3g==
X-Forwarded-Encrypted: i=1; AJvYcCUKtd6jI7dk3ZxwkCe9VsLrVhjZ6d2kdVqvgY8+jY6n/sLf4hYF05pobS6YUvWfcPOfLnlk84WfLtVJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxEULDw7zR4GdQVtmsWEkhMIfSgJErMqHxX+HM7322rQVgJ4pFE
	hA4QIcibBYkP9ZN/NuK35GngdUcmrZbbf2Q9qhytQvd8bletHZME3gMz9nBkcVQ08nA1cqgKe8a
	y+9K23UjZYfzWY6vnSrIOi3h7VXfMI1ij/zpVJfrOyN+JJOLpmGz7z9jeYDHYMz6zqQLgrnir2d
	t64jUhRGA9CzVo6a7AfvNOfXEriZeu/3elhZRWMN9mqbkE1n2C3nEgzEdh6JNR2I5Jg7gNqly9n
	uv/JMJgL6fKbgGKUgnURw==
X-Gm-Gg: ASbGncsJ+UVS4f9hL50m+ACeugDsKxu+OCjr/c+br4K8BgwoXQWJUgLQZouJBrkTbDC
	q4x4CX3vmeFEjgdfBEfXY3RB2SoBN7tFTF1BPISNGl2RDOnK0wc2pSWbXhdo6kGRG+fC2vUlbAF
	0iPKAc3Vuo+VmgxGD5D1YiWRrMyeG3p4ROjsP6EdHnHWnVEfRjdn4dcu1EZ1swMJZzvjgGp5SFh
	OzG+wUyRAC2dsFFWygF0b4o2+hJ7OSW3fhrxHbXIjiPtI6vJeKYzFbTWuE+ZqoOGP5+IWaLe1BX
	YcMRQiY4eB8KChxaZhkIpv1MpzKkmXESEHefQuQLkE62fFTWlOW73IGARIHFaUPF9TIfZulWQ3j
	uZl427FbRlB/ryZfdPtoKWEo9MRZ86h02ejCf0TO9D7xn82XRikmHGa+JLtVcwQO19SoVAUvwMY
	Y/OHa0urbfODXJ
X-Google-Smtp-Source: AGHT+IEEA7iwtLOcSSmqh6fUEiT6GuMFUfhxloEXyoytOz/MTsU66/nbmfEeIyIPGNYBdtb3mg0JncrKksVS
X-Received: by 2002:a05:690c:c15:b0:775:c1ef:cffc with SMTP id 00721157ae682-77f94630b77mr41483847b3.28.1759511534438;
        Fri, 03 Oct 2025 10:12:14 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-126.dlp.protect.broadcom.com. [144.49.247.126])
        by smtp-relay.gmail.com with ESMTPS id 00721157ae682-77f81c07d02sm2886557b3.1.2025.10.03.10.12.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Oct 2025 10:12:14 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-28a5b8b12bbso50456965ad.2
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 10:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759511533; x=1760116333; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Z+rEM9+wzhaFVPN9JNs7nDiRdjo8ZbQobpK1PNdub44=;
        b=NYINhqs+6dDF1OLfX75bQPD7k3YogbGvBygDhXYak8GJGSzPJ79GRnBGhTlqMvkJqN
         69tEOhf8e9wm0pWMYIjk9aYWiFiY3RnyL2f08uZIXTQqAMBxzEfcHCc5r0fhBO5mpdV2
         1PSMx3GaMdyV0A4x9q8QYUxtCMkvtp25y4fSo=
X-Forwarded-Encrypted: i=1; AJvYcCVPeXNICTOAxcY6KO8AAoHCETvMCJsivogmkWFp9C2RAJJAPn+yJRhAyPvDqEgamb/v3MtsvsxwoCiM@vger.kernel.org
X-Received: by 2002:a17:903:2f04:b0:26f:7db2:3e1e with SMTP id d9443c01a7336-28e9a67faadmr48169915ad.47.1759511532916;
        Fri, 03 Oct 2025 10:12:12 -0700 (PDT)
X-Received: by 2002:a17:903:2f04:b0:26f:7db2:3e1e with SMTP id d9443c01a7336-28e9a67faadmr48169525ad.47.1759511532505;
        Fri, 03 Oct 2025 10:12:12 -0700 (PDT)
Received: from [192.168.1.3] (ip68-4-215-93.oc.oc.cox.net. [68.4.215.93])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1ba1e3sm55227475ad.75.2025.10.03.10.12.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Oct 2025 10:12:11 -0700 (PDT)
Message-ID: <196ccd66-18fc-4e0b-9672-7adaec550449@broadcom.com>
Date: Fri, 3 Oct 2025 10:12:10 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] mmc: brcmstb: save and restore registers during PM
To: Kamal Dasu <kamal.dasu@broadcom.com>, andersson@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 ulf.hansson@linaro.org, adrian.hunter@intel.com
Cc: bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org
References: <20251002210426.2490368-1-kamal.dasu@broadcom.com>
 <20251002210426.2490368-4-kamal.dasu@broadcom.com>
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
In-Reply-To: <20251002210426.2490368-4-kamal.dasu@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e



On 10/2/2025 2:04 PM, Kamal Dasu wrote:
> Added support to save and restore registers that are critical
> during PM.
> 
> Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


