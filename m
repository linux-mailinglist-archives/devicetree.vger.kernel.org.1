Return-Path: <devicetree+bounces-213073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F4DB44816
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 23:07:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 38C6C1C82C83
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 21:08:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36984298987;
	Thu,  4 Sep 2025 21:07:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Xtng+lnX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f97.google.com (mail-ot1-f97.google.com [209.85.210.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD9528643B
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 21:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.97
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757020065; cv=none; b=YZpqF/SVFyLRH+9lsqbJX8RmPEXvv6gd2olM5/eYF7O+DyJrn+voNW6+dJJ3O47VU+M8D3VN2sSnjh+Ch/nOTX22reJuOEIfr+rsQcVABfbrmYYe9YKh0/N/n1oOTUiZRvsf2IikjdxnpWFAa56iTa7UPJziOQFqKRR/ivx3Cow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757020065; c=relaxed/simple;
	bh=L4hVOmcud+TACfKx+N1gr2mDrKeV80TY7/5nxXaQ2zc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OQVdLBeanZZqpNuH1s6pbwuEQMjMoTBeNKQ2VbiC6dHyAZMs+FbjajnDo6fu6baQABNOmdB22AJsQIXSnpjNYboGoIsDCcgwmgvhrQMp0zZOGreau0rMJKxIfY8q25WteTs7ZMzzeL17vF81PahOm2c0tkV9VTGkjTM0Ihk4oFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Xtng+lnX; arc=none smtp.client-ip=209.85.210.97
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-ot1-f97.google.com with SMTP id 46e09a7af769-7438175d42aso1045239a34.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 14:07:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757020063; x=1757624863;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ByPLAhnppoP8CNiz/fVGR4JNCX8K97yEjrDCLtVL03I=;
        b=T30qKtladsFI4To1bWf4VFtZmmqGuvc/E+HRbm+Obn18rmSvB13+Bv6h2J3gkPHmcP
         y7JHdW2AYkPo6Utc3LjTJtXn8X7JfE1q+uKb3mNjqtHaK1U8ChZzWyTwAmfAxjoYD3Cf
         T09SdaajKa7LzCL/89nqWT4K2SqAHYyM+XOjjy6Pjai8DD7hO1pFREZmajK4761t2Qje
         /4rfmgHgxUuC1Dx/sqEarf0HG/4wy/08zj8T372fSqf/g5fUmyFwpx0feV6FEyTNNm2x
         YFyShBL473jRWG1JOBWTybUpFhSsEw4+NP6bB3DdmdfHYDLsXpC2t1h83Ap+/Gu6bqit
         U63w==
X-Forwarded-Encrypted: i=1; AJvYcCUvXFeWm5HK0rVayuul+QywifIIfMm9gci/CSfgrA41fGRHl9cgkotePyxFfEguA8SrldG+qQmGC4zf@vger.kernel.org
X-Gm-Message-State: AOJu0YxnwdmPGIZKtxx5ZXGte8AKOc2KYm/uo2+C9VL68qcR93ITNX02
	HvI6N+VLkCFZ7Wmua+Gdlyb6U677uLNI9GfmjLkaw+2kBuQ+Lf9bY8bXEZFBMXj1e7XeuJ3Y7qm
	DMJC9dsYnsDV4qGg497+2Xl2Puy/7xyXDoNS1tdzRXnSpwYAIYfKzGpjh1QWyn3nT+8oLbkc+J0
	AZinR26P9QKdR651Cvy32E+vNBsiv7gBx77KqKRzm3SdOOKJN0mLTdV4Y/MG/PoDUSAOUOy9fod
	CUFzGHRZDEQsJtcuMld0A==
X-Gm-Gg: ASbGncttEAIa+15/kT1HX2GBjFunYOO4P5D2NPUlMQzxZRJ7fh3fAqP2xMmPwXAQRz3
	jd/hc+g84tzjS/IxbIDlJjBI+COswgKpgt96ZsShK/cH4O9IYyCYblXz74NFeMXIJrOzGMp3rXH
	8njTtedbXjLCjstAkKyTEFLPUfBhbsjRm82gBAOf2VQzt7nxe3KGLwSCzFbZXECXwCvdqmK/aKl
	rK4P1OD5RG62+er8Voy24yG5ecNKhVKnsSzHCMuyRhvc5ggKUlRZaWcWGg1emEJAnNmWqvrDH4v
	YAnf9wGCTy6R0ZGLAvrHqbEZxb36ekNk3Jl3ZxI++5ONjMWSBaelMIwLmvkHkorZOvbNXqs/2XO
	02/Nep6s20knWHRsH95nbaWx49chizDfIQCB9VRn9KCYO6iVaShdhu9CG8r9Jlmo+zioWxrduur
	DFkxB5
X-Google-Smtp-Source: AGHT+IGjtc/FwMDfWS07YUDCp2c+I5pBlxr/4UFSHJYJL9oknycxKBikFO/aMpIpBcIl4zAvz60r9iqVii5z
X-Received: by 2002:a05:6830:700a:b0:745:9ba6:d33a with SMTP id 46e09a7af769-746d92c1d97mr637145a34.16.1757020062703;
        Thu, 04 Sep 2025 14:07:42 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-16.dlp.protect.broadcom.com. [144.49.247.16])
        by smtp-relay.gmail.com with ESMTPS id 46e09a7af769-7457433699csm1024689a34.3.2025.09.04.14.07.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Sep 2025 14:07:42 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7224cb09e84so24154696d6.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 14:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1757020062; x=1757624862; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ByPLAhnppoP8CNiz/fVGR4JNCX8K97yEjrDCLtVL03I=;
        b=Xtng+lnXKU2dXjM1wv6KtQNdNT0OEZp/sGJkJ4pvDXAtqOpJpFx3MWtd7HaB73goGE
         Pbtf8sC360OBJCGBSCo01XWbHqPU4Np4Sn1CDRSJdV1/sV1AuB/Tp5rNI2WdZjxCJLRx
         hVMfxnKDKmSCTG/ROMr5Fv+w6psJFqWDHxdfI=
X-Forwarded-Encrypted: i=1; AJvYcCU/E3olVriWwbWGZ2u+ra2Mz2VtpLaXKik/2+SCKreNuR0WqJw5+KlAbWwN8EXouiVQ1iGhDiwn1YHD@vger.kernel.org
X-Received: by 2002:ad4:5cee:0:b0:72a:54bf:1f04 with SMTP id 6a1803df08f44-72bbdfc8ff7mr15622026d6.7.1757020061617;
        Thu, 04 Sep 2025 14:07:41 -0700 (PDT)
X-Received: by 2002:ad4:5cee:0:b0:72a:54bf:1f04 with SMTP id 6a1803df08f44-72bbdfc8ff7mr15621476d6.7.1757020060999;
        Thu, 04 Sep 2025 14:07:40 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7220f78b9bfsm43245116d6.64.2025.09.04.14.07.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 14:07:40 -0700 (PDT)
Message-ID: <06017779-f03b-4006-8902-f0eb66a1b1a1@broadcom.com>
Date: Thu, 4 Sep 2025 14:07:36 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH v2 0/5] dd ethernet support for RPi5
To: Stanimir Varbanov <svarbanov@suse.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Andrea della Porta <andrea.porta@suse.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, Phil Elwell
 <phil@raspberrypi.com>, Jonathan Bell <jonathan@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>
References: <20250822093440.53941-1-svarbanov@suse.de>
Content-Language: en-US, fr-FR
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
In-Reply-To: <20250822093440.53941-1-svarbanov@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 8/22/25 02:34, Stanimir Varbanov wrote:
> Hello,
> 
> Changes in v2:
>   - In 1/5 updates according to review comments (Nicolas)
>   - In 1/5 added Fixes tag (Nicolas)
>   - Added Reviewed-by and Acked-by tags.
> 
> v1 can found at [1].
> 
> Comments are welcome!

netdev maintainers, I took patches 4 and 5 through the Broadcom ARM SoC 
tree, please take patches 1 through 3 inclusive, or let me know if I 
should take patch 2 as well.

Thanks!

-- 
Florian

