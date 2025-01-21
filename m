Return-Path: <devicetree+bounces-140092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA4FA18529
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 19:28:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 820E53A5A37
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 18:28:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 815421F5413;
	Tue, 21 Jan 2025 18:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="D5TO41D3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3941C1741
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 18:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737484132; cv=none; b=otabm3WjYFKZvlNcl9OzjxSEIjG7kuoyh4ruEWHRSGqMZ00j3IkvnZUEWUCWwKiGohQICwL/K8am62Gg0KGDjl5wyCd3NoDxnjJAskbmuJDohzB8r1sSIbB7Mb9ZCal1feGY62vQ1RGWD/F1M1KNV5wJ73VZVqd7wCmhsFdk2Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737484132; c=relaxed/simple;
	bh=opj286XvflPtVIldgEc6dWabAfSqs4zUeq2+7xMq0Xw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lU3/2jqulS6dszspFzCqDfhh8yRiAXoheYUl00z4o6Twy8nugpxP3CJH+rkawK4EU2LE7yR1MqP/A/+TK/ZENqJpsOox7GkstDGMA8+zoStNPkAT6CsM/Mn2HTIb7tEG121VmHqbUAV9aq3mCZ+FVCBOsmMSvD1oA4eF1UrTv3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=D5TO41D3; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3eb7ca55c3bso3439534b6e.3
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 10:28:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1737484130; x=1738088930; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=nPmI6P1yce0Rt1cYrZm/UVilLYiBEgksr3ZYl6OBta0=;
        b=D5TO41D3XJzCl4RSUYq3BxXR9j+v84nYQXV9MP0mox4/3M6q5A7/L9oudlJ1475Ui7
         tJB7z6SjLLtcS91obhvk0fw7WTXU99kcz4CXP+JmKGBJCResKvKWakUQNPBV3A2G0Iy8
         eA4gGBvdxsJf4zy7IDii44AiIObyShibHJn1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737484130; x=1738088930;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nPmI6P1yce0Rt1cYrZm/UVilLYiBEgksr3ZYl6OBta0=;
        b=WOVKtJmiM61AbsOY56ghULxD1z7TXynKy0wD07TpLz18YnjJmpGhYz2IRbqwZ50n18
         2+o/k3H0rLV5rZSACjE2qOt82Mw1C5uPyCNyYvDycBF/ipw2FRhDiZfSWpqK/wEFsvkx
         6p9MIgZyTq/D5rs497xAaBk0LbVvBWJCvB4hrPqRwzZ+m3o4mqVVs98aFx/YuTxyT7Nq
         QwlRR5kVb44bWB0kEytH6GMG003VZQ786htmY2luJ4bNMoawoD1gKbbqm7gjxxku0s5y
         Z9v8byp+jy8OYOlnj05zU8KoovcsHV4k+4GHiTqLiReC9+3lnDB2j5r68tj/lHrpzo0+
         ii6g==
X-Forwarded-Encrypted: i=1; AJvYcCWKYx1Sa4A+2bm41CefKNEeWZn/hbLrsmKeNM7BZ6FKtn30DNkrZKoLfYP1ZEy/i91h3B2rExJ6gVCA@vger.kernel.org
X-Gm-Message-State: AOJu0Yxub7tRanbkBBArUz3XGOMu7m+uqfpwb2TQx3yDWhyj7Ikp4LWL
	MvFJT0PEZI45MHDJ3vshj11Rl5kLrcee/8xtcBxD3Bh0kEzoKV/zRmMf4r/l9A==
X-Gm-Gg: ASbGncsReiqfrie/gShBNomVx/tffruA3Erd5Ec2z6WPm+muKUbsxPtmK3QHnhzf/jh
	FGjHahUD5JhqG9q6yAvCUkcmDC8O5UAaX7nbR37EjN6KC1AvOrmfXneg68S+rgAGzENrIQGz+Bk
	1W5QWGwyAalu1dWKq34NYyKLb/oufLyTVHHunYBMicEaPlDbqDR+/rhK9FGtDp18zpxzlhEIt1Y
	uv1cnBVcIeJahM21iC3NCUpnpi+pHckCWWKjRYIfolAWhn224ikPMFuMrtOmWEiGY589KdL3m2w
	rhGkQ1r9agPgQImNJvAQwDJE2CZ3uo4ZuQ==
X-Google-Smtp-Source: AGHT+IFjKKl0hAzIld/Bp9CKfd2qa5nPK0PXiRU/GqnggYe1x1c7HhQHt6C0F2hBru2e35XfOzkNaA==
X-Received: by 2002:a05:6871:5317:b0:29e:d36:6e39 with SMTP id 586e51a60fabf-2b1c08c6401mr12423250fac.10.1737484129843;
        Tue, 21 Jan 2025 10:28:49 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b1b9011b66sm3833108fac.44.2025.01.21.10.28.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2025 10:28:48 -0800 (PST)
Message-ID: <641c46a0-6cd9-4d2e-8576-69900948029b@broadcom.com>
Date: Tue, 21 Jan 2025 10:28:46 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 -next 02/11] dt-bindings: PCI: brcmstb: Update bindings
 for PCIe on bcm2712
To: Stanimir Varbanov <svarbanov@suse.de>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jim Quinlan <jim2101024@gmail.com>,
 Nicolas Saenz Julienne <nsaenz@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>, kw@linux.com,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Andrea della Porta <andrea.porta@suse.com>,
 Phil Elwell <phil@raspberrypi.com>, Jonathan Bell
 <jonathan@raspberrypi.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>
References: <20250120130119.671119-1-svarbanov@suse.de>
 <20250120130119.671119-3-svarbanov@suse.de>
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
In-Reply-To: <20250120130119.671119-3-svarbanov@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/20/25 05:01, Stanimir Varbanov wrote:
> Update brcmstb PCIe controller bindings with bcm2712 compatible.
> 
> Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

