Return-Path: <devicetree+bounces-231173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 88510C0B1D0
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 21:17:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E3B58189C473
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 20:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B11C52561AA;
	Sun, 26 Oct 2025 20:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="WBSxHODl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f100.google.com (mail-oo1-f100.google.com [209.85.161.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E071D90DF
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 20:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761509808; cv=none; b=WB4EEMpSCGDrxp67mUyPvT0rSVfe6VKpAUJlZpNogyO7a9kgk+S0AAYQ78S/R6ZOyKiCNViSSr2bwpjTHrKfkvqryxZu3p+1wCCqZaA+trR/Y2sgxRy+apvRzl/iWdPqXm5RBSvqA8XjKOk9otALE7VOybfy4utGqMrhs0AkMQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761509808; c=relaxed/simple;
	bh=D1w93OIYrBq11QB4TX80HocFtZ6iK3JjI3GpcGSyjww=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uzhUoL9vznIO8PT498q0BSotImKW5zMHN+ynIZzS2w6bH57zA863GNNxh3yUn1VsJUlrh5oB1GU5OSpGfOYyzhng5SeNzUKtLud4J7/aNzMEprEbw4SyXTl7bOJ2doqyN3cGGoWGLXfsF+XtBW8QQOUg9L921KXxkLqWujwqe7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=WBSxHODl; arc=none smtp.client-ip=209.85.161.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oo1-f100.google.com with SMTP id 006d021491bc7-654fbeb645bso196187eaf.2
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 13:16:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761509805; x=1762114605;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aX98xM5uLTwNgSn/07WIOBdC4l1s/Q8i8XO2+Sj+EJg=;
        b=nWiuzlCD7k9kLpPeckKh1X4/2vzfH0XKsHUTxgBFGsepXYZl10Gl9A1M5R8zD50gO1
         a66KFbNvPDM47Z8jCEaYwl1K/Vb+G3UMATSjXHDwxOM/TKbGZLhAg+O3nCahHUnOtXJY
         VVfyXR1anzbQ1TvTR4M8VBrw+T2d7Du5VtbO//O3m/mf1uaQuiWBukSCYycNz8urwuYK
         m+/GjDjex354Uv+adqGR6AiVp97GIBDSXXXuNixBNYv4yvT1nQN743grajLjGg6LUptU
         YqrZ3bTIIozKRi3hYx6YdtA69NnKDYyoYbCYw8qh4+BQ0+JbinwU5dlIViVLLb49/H6r
         eoxA==
X-Forwarded-Encrypted: i=1; AJvYcCUVUJLT+t///7BXXTMPh/m3ak5sTGAmtOGU2jQXK28MhMrPsNO4DP7G4yWHM+fF1vhFwogxAkmO4TTx@vger.kernel.org
X-Gm-Message-State: AOJu0Yx66nbH5hJnGxkvM7+ju0wa+yja4k95HbK7yrFle1qp0w72NlFm
	VAIpzmjulDoIJEtcGEO5tWvO5J01se72zaWtmTzrCheimszPK3t1NImehgjoUwxLttL/ymH1nIg
	pNCpureOHsbuR7Z+Y/FxU+X2Jc1MXMNDl9dEGckTEF/Cug8Sc2zmh5qRP9KoAtzS5N0qExPWugK
	weLY4f8OpcMfPcoraSi+b5VD/GCrxwREiyUL34BAsNzBeB5gAqA+TxohE4goyYuLPUP2x7bXzh2
	TLHGosG84SQYgvB0djH5A==
X-Gm-Gg: ASbGncuLaF/QSegR9q3FefgMhMNyXdLwsGxgZTQHP/R6i9ouCcP6o1v8QC0EFAMmnTh
	yxg6JWabqHiYbpBNqI98ACTcJv/wHVOx2VQlbLgkTYax2Gxww6vQKX8vcTdX/3DZHf7t+nsdJDC
	c7q1HJHYMFuygDdscs6ZxMLa7qwjWUAtv3RoEuFHGSgoTairqa29Qe2SjzCRKJfajyRH2RFvS1g
	B6kKbdMFSeqV7EkgbH9ZSGEpAz78JHWvXdGu9LiKgkK4YSiU6nm1eZu5iwjKwG/almx2UhmSqje
	/wiplleurg8V0rR3vwhn472RrvlGV+LioPE2aMnD32i51zlu/51Z9Up3KQ/MDMlgU+ouU+LiJiZ
	b8GPIaji6I2bG4iqG0AM9FKHHRNREAviJJSi6LfzVkwqkhnELp6iO78mLuO0mXLQ=
X-Google-Smtp-Source: AGHT+IEEseSgo+mND5B2ZAMSnBO/K1vqWx8wBRaS4Qfm1C3WphawM0tX8q7FIbpK6PMKyRdnXw4u39jTO+dp
X-Received: by 2002:a05:6820:308f:b0:654:f130:24af with SMTP id 006d021491bc7-654f1302554mr1987726eaf.1.1761509805209;
        Sun, 26 Oct 2025 13:16:45 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com ([144.49.247.127])
        by smtp-relay.gmail.com with ESMTPS id 006d021491bc7-654ef28d6e8sm82677eaf.4.2025.10.26.13.16.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Oct 2025 13:16:45 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7a26c0c057eso3480830b3a.2
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 13:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1761509803; x=1762114603; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=aX98xM5uLTwNgSn/07WIOBdC4l1s/Q8i8XO2+Sj+EJg=;
        b=WBSxHODldrxDYV3jKxrAzjOirm5651f+sane+bPQkD1QKjl3mQlMTAcamgYShE/RmV
         UeHoDHNxkf+gg824Vhj0d1zlhvrmP6RXdcch7i5DQ4PJHvj7/MNJqbu5RnhDfqNSJY5h
         lKtDdWsTYS4Wyw+HXXdombUDKi9bI3kyNDiks=
X-Forwarded-Encrypted: i=1; AJvYcCWI6mRXZ2d4/sG+oGYq6JBlsM9/wzLByy/4ICMDhMgoBaWGtl9jfp26WJWk1SlkxrYVEXm32pKMBWVB@vger.kernel.org
X-Received: by 2002:a05:6a00:1916:b0:77f:2f7c:b709 with SMTP id d2e1a72fcca58-7a220a083f7mr40308902b3a.5.1761509803526;
        Sun, 26 Oct 2025 13:16:43 -0700 (PDT)
X-Received: by 2002:a05:6a00:1916:b0:77f:2f7c:b709 with SMTP id d2e1a72fcca58-7a220a083f7mr40308882b3a.5.1761509803117;
        Sun, 26 Oct 2025 13:16:43 -0700 (PDT)
Received: from [192.168.1.3] (ip68-4-215-93.oc.oc.cox.net. [68.4.215.93])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a414032c71sm5754054b3a.25.2025.10.26.13.16.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Oct 2025 13:16:41 -0700 (PDT)
Message-ID: <20ca3d0e-a935-4296-8678-5903310b3712@broadcom.com>
Date: Sun, 26 Oct 2025 13:16:35 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] pmdomain: bcm: bcm2835-power: Prepare to support
 BCM2712
To: Stanimir Varbanov <svarbanov@suse.de>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, linux-pm@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Lee Jones <lee@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Willow Cunningham <willow.e.cunningham@gmail.com>,
 Stefan Wahren <wahrenst@gmx.net>, Saenz Julienne <nsaenz@kernel.org>,
 Andrea della Porta <andrea.porta@suse.com>,
 Phil Elwell <phil@raspberrypi.com>, Jonathan Bell
 <jonathan@raspberrypi.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>
References: <20250917063233.1270-1-svarbanov@suse.de>
 <20250917063233.1270-2-svarbanov@suse.de>
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
In-Reply-To: <20250917063233.1270-2-svarbanov@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e



On 9/16/2025 11:32 PM, Stanimir Varbanov wrote:
> BCM2712 has a PM block but lacks asb and rpivid_asb register
> spaces. To avoid unwanted results add a check for asb existence
> during probe and also add a new register offset for bcm2712 to
> control grafx_v3d power domain. The decision to use the new
> register is implicit - if asb register base is null then the
> driver is probed for bcm2712 (the other supported SoCs have
> asb register space).
> 
> Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


