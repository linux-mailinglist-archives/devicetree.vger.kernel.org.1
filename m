Return-Path: <devicetree+bounces-223553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DFFBB7AA2
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 19:11:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 331394ED639
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 17:11:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A249D2D8791;
	Fri,  3 Oct 2025 17:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="eBvNuTzh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f227.google.com (mail-pg1-f227.google.com [209.85.215.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504852D8783
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 17:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759511457; cv=none; b=i0SUoHN2ellbM9apFIHpXV8RMdYTS4isCcDfy6wbox2ANtQ3QQsk24FtSURLMq7V2DzEi/ndEO/j8jrK6wvX3Y0+WtQjeicY2yLp2OTSXIbK1O4MFTX2t3sYlZeYNDY6FhN2qyAYRLgtA41Wt42llXDsyeX5zGyDUgXB+gmmk8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759511457; c=relaxed/simple;
	bh=0Q5R+tGH6D7U8akAyRuu8yHM8SEXa/50GdWiqwiumDc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SLLUSvrdmrDwUFXYtDWpJOky6jpnaGWPmp1/EOvBzMopqQysKeKUnVO8MiI8iwdm0NCvO8n+ScrfWOhoZ5/7YRVSfOK1aeUxuLyN7P41b1VSsiCePY4FImucIt1r1xKtxTwZL7+DlBblNf3jvOPRq6hHvuJ9yddeuWwvUtEyje4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=eBvNuTzh; arc=none smtp.client-ip=209.85.215.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pg1-f227.google.com with SMTP id 41be03b00d2f7-b60971c17acso2225051a12.3
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 10:10:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759511454; x=1760116254;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2BRqPBk1106V9u0XllX+MkRivNo9y7LXj3s6j5aNCv8=;
        b=TrP6qhqtUQYXbbV+a/sRwEaWMofM5a7GR2SzDZ5HFd+UShlgD7GSTGbpgDZ1m/1gcw
         vLo1Zu9PCW7khr56l2W1LjU7wSgDDRypEEHlTM8q6JA8O6uab9Uf4L72+b/6Ot84E1mj
         IDv/pAzCtFXMXfyMRhS5rgNU0A+hTv/ceo669K9DC3yjPDCxKkwqS5hh+voRUK4CAF2M
         SP+QptWMORr6gGpkUm3Wa1EPfDeUM9xZgVAeg5RUZjSsGJ3biTzTuzU+j4KfreGjNf+5
         3NPXE9Fw9PBOcev+6T9Lpxdeo7Gv1TvtWs6RQrzX3oKtlM4PlF1xylStpGNyPcvAMMXy
         DibA==
X-Forwarded-Encrypted: i=1; AJvYcCUiOhprZE2haZw5TCcO8flsBC5REsIBoOUJf0UnWm73i2X9nei9XF24vznVmTcx8iNvx5sE7steByXo@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+d47dMeWZqbDx7wfrnLMPNpkUdbjR9EL0y2degX7b3g0sTmLh
	u2fas+/NTF6VMm/uX6LOIgYfYQJuyivp7kpTsWbFj3wBxYFJI/uQt7P/c/JNwxXHJceyH++y+yU
	CyQe0dwbAjTWK3JHcfEYYbpRbd06A4x374wri/pUP3UfrAtAVNJ6PBwMdSJbETG4bJ+7POZD+xG
	x9Ja8i15O2wzeEBt8c5HpkQgCcxa4iIzyP7pQ1Q9j6oqUu2ZtkxUohGCGPj5xKyDU4PG1l7p0X/
	HPCZ2b6SFipM3Av02Yi3g==
X-Gm-Gg: ASbGnctX5e1o9NHFRf8kUKU9SQaO4rbIAztLw2lR8Lo51QZ8shIQ3JjmNgBl7VuaZDR
	T9nhJWwPzYciRbDgepPoFl6QTKBujF5XnHFXEuOcxk8dFnO6DNR1tctFmRLif6A6qOaYXRJZ30v
	WLNKQ8qsvnbpg7lzySiTm3bvpHnNgeOiwUM7yPLhpF6MiADzypT12IMxpIH/hQhze4prnp1xzUG
	eoXxDMDPlomSpvc8vZJf0lo8RnWujPvtMoBpO1MILgZuxc8zxLvAeeXrjqoGDhow49lL3gr/Hki
	3cZETf2ybNu+Nen9q3r4tMn72n7CARKbWs2mRpnvbr7G7NuEzUEg1gkbhXnA+Oe3TGoEfKnin6I
	qqP30g4Sn2hbviSpXUeoIb+x48xBX8KP27FOtGafRoGBfxccu8T/ULto1AmKpilM6Kh78n0qRUS
	kUdwCtivcz1wKG
X-Google-Smtp-Source: AGHT+IHL+Jk9SUBr79KGtuzcaqZMhLR13KguUVfB8ORxInTzZYTKSR6HCf1WLWT8e+4ynDzt8S8jylnzI2Tn
X-Received: by 2002:a17:902:f642:b0:288:e2ec:edfd with SMTP id d9443c01a7336-28e9a5616ccmr38682255ad.10.1759511454530;
        Fri, 03 Oct 2025 10:10:54 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-126.dlp.protect.broadcom.com. [144.49.247.126])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-339a6f6d34bsm677164a91.5.2025.10.03.10.10.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Oct 2025 10:10:54 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-286a252bfbfso51168945ad.3
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 10:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759511453; x=1760116253; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=2BRqPBk1106V9u0XllX+MkRivNo9y7LXj3s6j5aNCv8=;
        b=eBvNuTzhneWHhjqPx3Nner4SJmW9r2Qi4vq2tmu2q/IVOc1+LQAr4jBvhYH+bd8RbM
         5ylAUTJ/XW8U8yP98BhEBLjcfxerfP4vcwF+A6+u6qfLkeV+HF8ZeTDBlVynKqZmu8yl
         R/Aiz//rL6tJi+4TEa40BtJisMHRHSVw9oiyQ=
X-Forwarded-Encrypted: i=1; AJvYcCXXrMd4eMxJ46IZqkPmQeOumcoEO/7xgN+GjnsahBOQPbotKfgv1h2Yny7kvcBVSMw/8hR/AMzYNtIW@vger.kernel.org
X-Received: by 2002:a17:903:1b24:b0:24c:7bc6:7ac7 with SMTP id d9443c01a7336-28e9a58b709mr42967655ad.18.1759511453105;
        Fri, 03 Oct 2025 10:10:53 -0700 (PDT)
X-Received: by 2002:a17:903:1b24:b0:24c:7bc6:7ac7 with SMTP id d9443c01a7336-28e9a58b709mr42967435ad.18.1759511452713;
        Fri, 03 Oct 2025 10:10:52 -0700 (PDT)
Received: from [192.168.1.3] (ip68-4-215-93.oc.oc.cox.net. [68.4.215.93])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1b87dcsm55356295ad.90.2025.10.03.10.10.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Oct 2025 10:10:51 -0700 (PDT)
Message-ID: <a0c3a056-0d5d-4201-ac97-4becc5c61d47@broadcom.com>
Date: Fri, 3 Oct 2025 10:10:49 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] mmc: sdhci-brcmstb: clear CFG_OP_DLY when using HS200
To: Kamal Dasu <kamal.dasu@broadcom.com>, andersson@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 ulf.hansson@linaro.org, adrian.hunter@intel.com
Cc: bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org
References: <20251002210426.2490368-1-kamal.dasu@broadcom.com>
 <20251002210426.2490368-3-kamal.dasu@broadcom.com>
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
In-Reply-To: <20251002210426.2490368-3-kamal.dasu@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e



On 10/2/2025 2:04 PM, Kamal Dasu wrote:
> Clear SDIO_1_CFG_OP_DLY register when using HS200 mode to be
> compliant with timing spec.  We only need this for on BCM72116
> SoCs.
> 
> Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


