Return-Path: <devicetree+bounces-260662-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 1Y9BDRejemlS8wEAu9opvQ
	(envelope-from <devicetree+bounces-260662-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:00:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F47AA108
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:00:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 02BDD300679D
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 00:00:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B87D3C8EB;
	Thu, 29 Jan 2026 00:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="BUjYu9lY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f99.google.com (mail-oo1-f99.google.com [209.85.161.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B25C8462
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.99
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769644819; cv=none; b=ufwDYgDlaA9+rl/NJQqq8iOKEwDTsRr18FXcm5C4wA2wkCHx4AIIzPctlDcgS6Cl/c9GQ7HMIIo8bsVdA8f1sXlY0J0JSYeb/F9618NB9z7F1OPx89s1VRPgBZRPZkraJ8QOhZz7aAnLhHJgrbPTu0X39BVc5CCCbYxH411DioY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769644819; c=relaxed/simple;
	bh=KLWNP34QqaTiaZXyU5RpZQkmDF5E6RGxPdzm9+TMfPM=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=iOZdTBptM8uL72qATtGxquPdjHt/lypLhdP37OiiTjWNqLJZ02kaDGj8Ior6Tqmugn5zKZKLpTuk2VBzbIJZEleJxNkdfJc13Gx0JbV51no6IUvzfnsJATMmvNOdZTP7IGZl24kdp2/rxDcjHmAJfhYp1Ic1KLzjESK26bdmFG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=BUjYu9lY; arc=none smtp.client-ip=209.85.161.99
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oo1-f99.google.com with SMTP id 006d021491bc7-662f485e58aso227281eaf.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:00:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769644817; x=1770249617;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CM+wwJXObGbyyxl1sES3pJglJ/lxO2VMKG5c9djxeeM=;
        b=UvActYvUe0LHAD3ZitHvcXbYNBiDaMRblDbbOBZX3QchqxaXqd+f0roACYCoEaY8VZ
         8aKZX5DHU0CwroPtbKwNTZ/wdFi5KvV42LvnGLFESjNgiWWWdaAMtV+dB4UjOb16xUn6
         GqSJexSWEUkeadlfQZT+2D0vmm8LQoF66Nw6rV7LX2sUhECAdjqz5EwGjap4e0IYF8S+
         ki2h0lamCpACusMWoi+CjPMkGF3aXjQ9HVhR+n2JY4ZcYimKm/LaKZU4kOc01U4rMZxZ
         ZC1WW9sKJ+JHgdajNfhJXT0rWLQn9qZF69r0OyKOtq2rrhtUl/+hbrT+i0Tmyzf6fawz
         Rj6g==
X-Forwarded-Encrypted: i=1; AJvYcCVLKt04Ouehv040PyoqCDSntf9d4ughS3AH2tQSmy78Qvnv/tlWJhUHZ1oAQjEHwBuTsZsqL0LEXGZe@vger.kernel.org
X-Gm-Message-State: AOJu0YxEttCpHOC45YOt3qZi9crynjTQ+t4yMcmdYJ7snSROWjB1L/pA
	cpD8w6JvsJQIE5ZFWlbWUETRw2vqVlCNY3Q9O4sNxoKEKeCd2XO26yqHSVgz8k38cSfOq1PvEFT
	6U2kE8igB4cN0edykoSbpFQuIH1w7Rg9Q9trdTvko4Je7GmdDNZ5Xf7O1qK0JhsBWMOrRkjzx8B
	1sNHMnEK9ri4MIzxxbbCuW68QK+Rn6rWOvGalp6ptLFK9XJ04PASvPKTlKP+EHG8oDYlD74Nfej
	XEsqk8X8x2d8/AlB88xoA==
X-Gm-Gg: AZuq6aJsBzpajRe9pOK2aEjZYRw7vlBjB+Jg+eVwDIKVlQcOBhbZHzxkVEsoCXMVaTt
	Sw+U5VqzBz63ON3nV5nd4PmD3BeqpqgQLTW8MjyPtzeCy+x4yw1j7CfyyeJw8NwhMujavpNX6Sf
	1Zqh3FF4Vr9ioMQ8XHL1LGYUSVmiTXfpBQjurhaiFebCZkwcq+jKXkPBrQUsx4tcVw3n2qPGAJw
	piRN6RHhYh49e1eLimrStbWYFYgJEUxxmB4YhkyTG1vIJHRFcnQTVEOiKusSWJiGZndoWrahHn1
	50GYPh+ggylZMZY+EP37EvIHIOuWQYPnfDJWLNmGx4Sy/i1nybjU86yv8cAIcXKBBQxCYvrUTjc
	CCsGRZktMCX2Hhr537zB8cH8m0xGW5xJTCnq7mVmUA2i46Fh/byNjw8opkEy7MRje9GvKeJi2zj
	FNBaIYy5u5x4bpB9DoAnvcgAhJCTZ29NlTAhkjD4DlHYzMm9k=
X-Received: by 2002:a05:6820:f012:b0:65d:88b:c00d with SMTP id 006d021491bc7-662f20d44b8mr4156842eaf.66.1769644817035;
        Wed, 28 Jan 2026 16:00:17 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-0.dlp.protect.broadcom.com. [144.49.247.0])
        by smtp-relay.gmail.com with ESMTPS id 586e51a60fabf-4095719ac97sm391149fac.7.2026.01.28.16.00.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Jan 2026 16:00:17 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2b7155ca88cso481847eec.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:00:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1769644816; x=1770249616; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=CM+wwJXObGbyyxl1sES3pJglJ/lxO2VMKG5c9djxeeM=;
        b=BUjYu9lYmOPNKuUJDxAvc0AwdjtjwdhjPBNen/U+VECpkgyLUzRiN4ZbiOB1rqsP5s
         dgpuvV+M6ddgw0weAv+se2ZpXKIqgZzjk1cOJJlau36Q5STFZcQPRdG1gCS//MLrYAxD
         e04dJ5fjUjqxww0Vv4SGAbCviUfYwp1tEKGLc=
X-Forwarded-Encrypted: i=1; AJvYcCXzZtPKH0SyI1uPkpR1TWlOVC65qDf1x/nXzSwb/T5frp/CE1OW8o+uTFaiOENs4H63S/fha8BX7Y8l@vger.kernel.org
X-Received: by 2002:a05:7301:fa8b:b0:2b6:c617:f79d with SMTP id 5a478bee46e88-2b78d8a51admr4078320eec.13.1769644815327;
        Wed, 28 Jan 2026 16:00:15 -0800 (PST)
X-Received: by 2002:a05:7301:fa8b:b0:2b6:c617:f79d with SMTP id 5a478bee46e88-2b78d8a51admr4078297eec.13.1769644814660;
        Wed, 28 Jan 2026 16:00:14 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a17083dasm5897428eec.14.2026.01.28.16.00.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 16:00:14 -0800 (PST)
Message-ID: <31760619-f86a-4737-8191-198aecbc82de@broadcom.com>
Date: Wed, 28 Jan 2026 16:00:12 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: broadcom: bcm2712: Add V3D device node
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Stefan Wahren <wahrenst@gmx.net>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 kernel-dev@igalia.com
References: <20260114120610.82531-1-mcanal@igalia.com>
 <224913c8-52a6-4b3f-a375-e1b4fcc0c142@igalia.com>
 <eeb09ca3-bc8c-4747-a6f5-29f15335c149@broadcom.com>
Content-Language: en-US, fr-FR
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
In-Reply-To: <eeb09ca3-bc8c-4747-a6f5-29f15335c149@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[igalia.com,kernel.org,gmx.net,broadcom.com];
	TAGGED_FROM(0.00)[bounces-260662-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[broadcom.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,broadcom.com:mid,broadcom.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[florian.fainelli@broadcom.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C1F47AA108
X-Rspamd-Action: no action

On 1/28/26 14:27, Florian Fainelli wrote:
> On 1/28/26 02:39, Maíra Canal wrote:
>> Hi Florian,
>>
>> Just a quick ping on this patch. Did you get a chance to review it?
> 
> Your patch is based upon linux-next rather than the Broadcom SoC tree, 
> the devicetree-arm64/fixes branch is not merged into devicetree-arm64/ 
> next at the moment, therefore arch/arm64/boot/dts/broadcom/bcm2712- 
> rpi-5-b-base.dtsi does not exist in that branch.
> 
> Give me a few days to figure out how to best deal with that.

Rebased devicetree-arm64/next against v6.19-rc5 and took your patch, thanks!
-- 
Florian

