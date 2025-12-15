Return-Path: <devicetree+bounces-246807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E95BCBFF7F
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 22:38:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 50BCD3020141
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:37:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B3F6326D44;
	Mon, 15 Dec 2025 21:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Mv++GbDr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f97.google.com (mail-qv1-f97.google.com [209.85.219.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D72E31ED84
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 21:37:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.97
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765834670; cv=none; b=fUwpQGqp8renHgaE+EZMDLqP9iDczf8PqUYZ0iqxW2evTPPO0+L1b8v4Q2zXtzLqvO/hPbZTX7ZNfLxmJ05PzYE26n9K6eVRNivCKLIM4fjuarF7z0KxZbMaxAFgENM2pClD2PDt5Ro+fQN2pQBQXeDU3WSUZHoVtfwa9HULxrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765834670; c=relaxed/simple;
	bh=bnB5y473pCBpjDo3xg7lOcCbOSzgy8Gp2Sr2N4f4mk0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SPCxldWat4LwnKVlfeT+NaBPH/ysb/B1ldi8d7nswmxFGshZ7V6vQbYdDbtXNmgXhzFJRPhStA/w7OBwCuVVG7L+r1DliAMB5MamaPsh0Idxc1CZg+juJPsJW0l/PnfWyvbrp03go2DEVo+qfrJIQr1HBTi4k0300YDp9uL/BQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Mv++GbDr; arc=none smtp.client-ip=209.85.219.97
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qv1-f97.google.com with SMTP id 6a1803df08f44-88a367a1db0so23049386d6.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 13:37:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765834665; x=1766439465;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pyRcpH/2tl4cd7cvu3CnMf+/x/OF7RCGrUbAhUcQeOQ=;
        b=MTXPHrR3x2V2ItKn9M1YUYuP4G9cO8+eVi/HTJcUMjgdoM4RMfo54e8DGYYsmLcanB
         0F8DnMSthmlQgxz2W/ifo3eLEws/3cvGiOyl7lPX3pH0cfVXoc8qf1qkUhizb4db2Zwj
         SjiLtODOWHoAsnUIiianTXp3rQW+pfMdpxTfgBuSv9pzEqJbTjflm8GGuxbTu2cKxqAy
         74cXUqkthu2ZvsopCyjxJZJ8PR6MuGvbfxV0vKcSocElJjTo/zn6H+yTPEg9//xFMlC6
         moNcEEw9bV5aeryybpqXDKbwsAyWwSHJtqKf0pn8ta1TDpLp7eNq1MUJ6FyFMeNhJFUK
         1c1Q==
X-Forwarded-Encrypted: i=1; AJvYcCULT0GTaqMGyhzLCJXwuHecSWylR0SRbjNJbgsQJWwfU+KMzZ6kiXBNPj9jKdTzuo4eXo/SJfP8lFHw@vger.kernel.org
X-Gm-Message-State: AOJu0YyXie/auo4FV4g9aeRFF4eVSHLB3WhDeoyl7emOcfLna3jdjKkJ
	Qzvvi53JO4y7XfYAaCmOGaGUWJyI276hGFtp4mj58WYN/jB4fboMr49ntwU7275efAGfAEDOfj1
	KtFyk/2PZdt28t/6pP9k5hZrldQCpWQEutbwG36CeOO1pfvwWw/LnluS86HPWbK6wzBAAI5+lFQ
	54L46uW1meMWd6SN9Wxe8tHd3MSQR/WMQLaX5JhlGl/BRtIRD3ddqloCyvZvntCbCmBVPBIzAI6
	yskhGkKXNI+OFZLJsgtjA==
X-Gm-Gg: AY/fxX6QAOpsl/IbcozRscKdAIaDtK9JRU1ToS+aIZ1WqpEg21Pu6ix80j0A4B+kWbW
	bu/g3XU1iUhzwMlYqMfKDXJYCIgJGHNFP6dxmLIa8l4LZ7nl1RdbYL0nLErXNhgcgW/PtILGBBy
	rIKLMvEB+2Om4GqxMXH9k69miP8tcKqK+J6wY1KTWdr9xpxEPtZp9IC/YJCRtjK1FwniF7OfsfL
	Hszl37iB+22dYTVMtk2JmDwLlIw8n71lo5bTrNzwqbJPJ+eZemFV4On8B6OlpfvW5jZwphD93JO
	hoDxubAIYfm6gqKCuYuQteH32BBRLz6QMXu/xfrzrKfVJ8ltO5DYVhny1M+JPrsYNRaZMLZKccQ
	iI4DYnrDedi6T06kT5s97kOxM8Xo4CDdmEhiQFty72wHM+LhVpzLjoBFGNtTbiJEkNIaw6GlxWx
	+ZNDFCbUFNj+ytitCIMtu0WZLwGU36Man4hNaW3F7RihslbKA=
X-Google-Smtp-Source: AGHT+IEScfrZFrD+pd9U3G6mEGjtneaKviOtdmkRR+WF9fFymOSkvG4BimvJ7qXyYwagq6IIOS2dnOe9QtWL
X-Received: by 2002:a05:6214:5c03:b0:880:55e4:dde with SMTP id 6a1803df08f44-8887e16df64mr176789986d6.63.1765834665461;
        Mon, 15 Dec 2025 13:37:45 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-2.dlp.protect.broadcom.com. [144.49.247.2])
        by smtp-relay.gmail.com with ESMTPS id 6a1803df08f44-88993b2e46dsm14601956d6.8.2025.12.15.13.37.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Dec 2025 13:37:45 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b2e41884a0so1069788085a.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 13:37:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1765834664; x=1766439464; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=pyRcpH/2tl4cd7cvu3CnMf+/x/OF7RCGrUbAhUcQeOQ=;
        b=Mv++GbDr/XFmBs6OK0/kWrUIfBjsBKvHIRxCDS2+My0ImbdVqqhKHe5FfX0rIppTDw
         vAfjxznZw3yW07wiDsJKVvXaN3/qjVP3ORhAwOqpXd1Mu7mVozTonyodGGLWG5W+UlEW
         JTzWWL0Fz2vMp8EtE0shELC09wADw45VZLev0=
X-Forwarded-Encrypted: i=1; AJvYcCUKzp2uqplAwZECdBo05tlHkCkMJMtaKANSbk8dTE3uMrT9VSR6RSZnQZ2gF2POCdD9I/KMckwZHrLh@vger.kernel.org
X-Received: by 2002:a05:620a:710a:b0:89f:7109:185f with SMTP id af79cd13be357-8bb39dc3e95mr1812351085a.31.1765834664536;
        Mon, 15 Dec 2025 13:37:44 -0800 (PST)
X-Received: by 2002:a05:620a:710a:b0:89f:7109:185f with SMTP id af79cd13be357-8bb39dc3e95mr1812348685a.31.1765834664146;
        Mon, 15 Dec 2025 13:37:44 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8be304dea8esm40611385a.8.2025.12.15.13.37.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 13:37:43 -0800 (PST)
Message-ID: <30d6512d-9705-414f-b2ee-3e9283968348@broadcom.com>
Date: Mon, 15 Dec 2025 13:37:37 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mmc: brcm,iproc-sdhci: Allow "dma-coherent"
 and "iommus" properties
To: "Rob Herring (Arm)" <robh@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Saenz Julienne <nsaenz@kernel.org>
Cc: Ray Jui <ray.jui@broadcom.com>, Scott Branden
 <scott.branden@broadcom.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20251215212736.3321550-1-robh@kernel.org>
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
In-Reply-To: <20251215212736.3321550-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 12/15/25 13:27, 'Rob Herring (Arm)' via BCM-KERNEL-FEEDBACK-LIST,PDL 
wrote:
> The Broadcom iProc SDHCI controller is DMA coherent and/or behind an IOMMU
> on some Broadcom SoCs, so allow the dma-coherent and iommus properties.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

