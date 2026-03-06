Return-Path: <devicetree+bounces-271766-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id B1LwOKoaqmmFLQEAu9opvQ
	(envelope-from <devicetree+bounces-271766-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 01:07:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E709A219AFD
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 01:07:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id ACDB230055E6
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 00:07:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4909920B810;
	Fri,  6 Mar 2026 00:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="ehEdaKrJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f226.google.com (mail-pl1-f226.google.com [209.85.214.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE7114A8E
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 00:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772755619; cv=none; b=GsAInmQ6Lvid+EkVNs5ouyr7dvnigVX6viOwis1ZCEWOOU+cj8luHQybNyocEdwAHFwzqJJZwQ+f8Q/zZSVrJhu16kdFZPfEc/sYutSFBcRs251OAz5Xa+QcLlEUFLFN1mBRPVlCqxIGcJTEo1Be7Hz2fLOp32HD8IATAAftVSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772755619; c=relaxed/simple;
	bh=JxRomFxd9hv3/gLGPTurxi21vnURD9r8HgTYeDAO4G8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ff7q/830WMMr/S+V9xhH4/A3bvm1mien70bcqLx0bVY8mvwK9sCZ2WWaxjI+75lAHlVq0hIDr91AQRkqrRNJJAyaASdv6u19Q8roQouduljZUuQb5RuaHqZ55RSwE5Y6VVVi0eUtK4x8/b8hLHzJBogeup39X9xE9rVIA22toI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=ehEdaKrJ; arc=none smtp.client-ip=209.85.214.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f226.google.com with SMTP id d9443c01a7336-2a7a9b8ed69so97294955ad.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 16:06:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772755617; x=1773360417;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=srEQihf2AwIrKjTWa4x/q2bFgNIgWcLV50aWleEKnus=;
        b=wKjnL0P/I80FepbZDC4nwa7lxCqAk/Hs/WvjborX4dAo3BU7NdKGk3kyJHsPpXVrKJ
         v7TQk0KkiEmGAUqxQ5K+tEWvTmKVRMyB99us3+katvm7e5UvkMRvyP4/5YknCPaDklgL
         j6UsEEn4w/opzOjZTRigH5LpFGJfd3q8zK3Nrm68Hg8QgvbBJsTzk+KQQSpeQMQ0HaY/
         yMa/h7PjJFJdSMx4KPfoQDQ9h2GkCD+O0ueXf3sqhRxuAA051euF/h5NtuFZqA1wa3az
         uOS/zLlu3veOxpvRVjM09Fq+YSmD1LK1OsEw+NKImujK9HMBBjSthMPfb2fN3FSKewAg
         8JLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVGFiML32OJXFQ+6jlTvkfe3nuy/67z5DNH7yJtK2CNuJdvCb2D09Rh7LE02AtP7kX+Nv3k2TD9hFE7@vger.kernel.org
X-Gm-Message-State: AOJu0Ywr5vPWp9MrgipjNAT1Ba5NXRAHDzFctiW59mXVWQgQiqVVCrrq
	HrqS/MYmZo3AiaFRR2k9Em0RHhu2wpCgQD0i9Xfb9ojmhiF+fSpZMXFn8McE0dQGMSMwH6YRdQM
	9OhTuUuvTuG/KT4DYkBDu8AzpIeVjU9z0eTj6bIry3i/4SBrsvGLAGP1wfa9E5YcivsGk4djN9k
	ncFbp5cv44wO+Z7lFhAZJ/0AIfRo9PfqzlMr/HL8roUyogPDompPMq34JrwLhc7hlqJAckhhvXV
	V1uB9S8KJ8uAzlIovZamg==
X-Gm-Gg: ATEYQzyXi05HDYnmDsf9bcH8hmIr5K+hX3+axHssWk3KO19DrevkLmE18eK7lRGqYfX
	U5wV0S4sM0eb0OJlHGcBo5RHM48yVVR0BnisGYTgGoLfAy4e/IMR83vjO2LCOgvXHB2oWYAv3fz
	yHzZkpOw5lmxR41weDeSq99OvLZO6r/jcIK1Uls2+QFG+6PeYl3nnnj1Qfw0fXhe5Uv1Uho/nNj
	SNCQlhPFc4HDC7wtK3DFbukPeYQ9ScLe+73BK6BpXIa3hFaFjBrbA5auJBAAKmYRHTWN3qiKj9Z
	1/v9PRtJXsHeG0QR+QZPxkqAVmYacInMRlKZSj+lKGoifDhwgNabCRkgb712jpGafp+80s7NmvT
	naR/qN8N8wWTj0fUTwIhIr8AXU5GOAjojLVcPxWi2yCM2DaHdM3fPeuRiltOzp3MDNAl9l5nuaB
	d7Y7Y7o/3FS+V0KwwrYmi2xV0TsZX94xjw4J575jbpPy5G40iRe4UFeqfZ/AnMiiLt
X-Received: by 2002:a17:903:19e5:b0:2ae:61bb:425c with SMTP id d9443c01a7336-2ae8242cfa9mr3464175ad.35.1772755617464;
        Thu, 05 Mar 2026 16:06:57 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-102.dlp.protect.broadcom.com. [144.49.247.102])
        by smtp-relay.gmail.com with ESMTPS id d9443c01a7336-2adfb5dd592sm30208095ad.29.2026.03.05.16.06.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2026 16:06:57 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-124a95b6f61so107978333c88.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 16:06:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1772755615; x=1773360415; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=srEQihf2AwIrKjTWa4x/q2bFgNIgWcLV50aWleEKnus=;
        b=ehEdaKrJ/0cEeh+97wnac3k7a4VV4fa6W6v5qFOMCwKSlqPJhNc38t12ENgKfFqoPi
         ISz63WasCxA/tC4Hk+Bwq7cLHPAoJgvoH/rHw+KC8UVdOeFBNCym2q+xD0HSQMCJJ/rK
         bEQ7EBrA7xKVYLtXzDEVkj1wq9g8I3ncNKKOg=
X-Forwarded-Encrypted: i=1; AJvYcCVgCYf3kyB/zfo9i6jc+PaYy7zBTJd2eltH1+lS1QcOPibB0TDCY2q9pXH32zDA7vNxdWs3MvkTuOWS@vger.kernel.org
X-Received: by 2002:a05:7022:b8c:b0:123:3461:99be with SMTP id a92af1059eb24-128c2e7fc6cmr125915c88.21.1772755615665;
        Thu, 05 Mar 2026 16:06:55 -0800 (PST)
X-Received: by 2002:a05:7022:b8c:b0:123:3461:99be with SMTP id a92af1059eb24-128c2e7fc6cmr125902c88.21.1772755615073;
        Thu, 05 Mar 2026 16:06:55 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12789a43a18sm28026987c88.13.2026.03.05.16.06.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 16:06:54 -0800 (PST)
Message-ID: <13fd194d-dbf7-46f5-907e-f1b64177ed14@broadcom.com>
Date: Thu, 5 Mar 2026 16:06:52 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mmc: brcm,iproc-sdhci: allow dma-coherent
 property
To: Lee Yongjun <jun85566@gmail.com>, ulf.hansson@linaro.org, robh@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, rjui@broadcom.com,
 sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 nsaenz@kernel.org, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260305234703.38490-1-jun85566@gmail.com>
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
In-Reply-To: <20260305234703.38490-1-jun85566@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-Rspamd-Queue-Id: E709A219AFD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271766-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[3.245.125.32:email,broadcom.com:dkim,broadcom.com:email,broadcom.com:mid,3.245.164.48:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[broadcom.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[florian.fainelli@broadcom.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/5/26 15:47, Lee Yongjun wrote:
> The Broadcom iProc SDHCI controller supports DMA, but its binding
> schema does not allow the 'dma-coherent' property.
> 
> As a result, dtbs_check reports the following validation errors
> on the Northstar2 SoC:
> 
>    mmc@66420000 (brcm,sdhci-iproc-cygnus): Unevaluated properties
>    are not allowed ('dma-coherent' was unexpected)
>    mmc@66430000 (brcm,sdhci-iproc-cygnus): Unevaluated properties
>    are not allowed ('dma-coherent' was unexpected)
> 
> Allow the 'dma-coherent' property in the schema to fix the validation
> errors and accurately reflect the hardware capability.
> 
> Signed-off-by: Lee Yongjun <jun85566@gmail.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


