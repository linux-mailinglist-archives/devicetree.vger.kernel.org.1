Return-Path: <devicetree+bounces-260635-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KIbeNpx6emka7AEAu9opvQ
	(envelope-from <devicetree+bounces-260635-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 22:07:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82849A8F0F
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 22:07:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E9D513006830
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 21:07:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5FE137416C;
	Wed, 28 Jan 2026 21:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="IBd/j4Ni"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f226.google.com (mail-pf1-f226.google.com [209.85.210.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A612377546
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 21:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769634458; cv=none; b=KAeGVhZUgj5jWR0Su12AdzrWeY+ss/Gz3yD6MmuBWrYCbtImbG+aals3R1PL92dC1V6S7Up9Y3wmd9C3Daz28TejQPPoX0C2UnIBJOQNBVZw+5eOxlAZQWW99Lb/8IhrTtt24B92rDgYRAUGRnSYXyOSrHWbEhWXGOM20eIBH9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769634458; c=relaxed/simple;
	bh=WPCC2/nPfE3keby/nQIU0U/NbD9BDat86wyAm2pkZGM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oeMljaKkrexD4JkXGvrXemb8GD31A5vaFMFN4PjZvQjqrk9S+53ELlQS3QW/PnrlIxZuzVAN+xRuK2Xj2Uvn1tnjgFNPp3NS6oGozzbXCPQ9kjnp78KkqNtO32KzN7gAofV82i7glt5/xNqOU87ORCdjPDlyA0A+4+ilyJpwnuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=IBd/j4Ni; arc=none smtp.client-ip=209.85.210.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f226.google.com with SMTP id d2e1a72fcca58-823210d1d8eso123716b3a.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 13:07:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769634457; x=1770239257;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yDDLJdqPk1Zlja9ZPS9PNMGzgyrH9rkUy74PKjqCyw4=;
        b=ZenL3OvtpTICTYzYqgw6iRt+DzJsmPPh/bfaREWyRaAk9tTmnJGWFt22XzLnPAHIIK
         nfwk7r1L7sdqr+U8BH7lBLbYNSC9jCtqxdLID7ka09KO+UQGH3ZX3NNg5dA+XrC1h8em
         pFwrINKn9SeBxLsQGGHjtG/hFZguoU2zj25OLjmESa8QG/YeyzzE3QvtKVoquf1Syjce
         86+u4+mfa3VTshUH//rT+REq/ee02pjY1OgK72HWbwFh7gbM+M8HcPNU9++zXbnL00Ar
         UElK0ZbJt4Wb0FnQKZJLBfk9mphyGxffcwilldAw8vZXYjAnGtjw82F19QInUumeQxTD
         G6aQ==
X-Forwarded-Encrypted: i=1; AJvYcCX1NoQqV6CuvtvejVarbM4qAr2c7yfOBrht9JaIs0MwSsipEJA2D4+enldrBM2vl2hoUwlQKrVt01BL@vger.kernel.org
X-Gm-Message-State: AOJu0YzeHSpfwp+C9Q0nwq3qQs0XCrzKQiN9HJybIbZaCYz45aOKjXlB
	DlciZolAgHIh5TzYCx7tgsy0ggKhpJuKiPeekMzBAMxITf72dD3mXwJODdypHwIQjEoyYIw0hBK
	Qe/L2MJz/PDFrGIa1TP9rk7AMR5K5BvuYOOLlpY9gPLZTMF2oUpYV/pr1kgVz2saQ9QxUKEqTJP
	U12vxi14cqm7sKZMREo/9S7tHhdkG9mUX5BExD50igjh7RkuG4Sh7j8wJGy3jkE/NZxcbT7hlhb
	vjahBAVEqMHUTtEDcRvUg==
X-Gm-Gg: AZuq6aJShyXITMgEzjR13NCJvistz6Nl65SnuhbtUqA2Lc5vZ0dWjLAuyz41OwGCl6J
	60sUaMY9sXN8IEqxUiadw1+yrIVsKP7Bkku2RHiChoAhLAtZDqe60BUNrUFQetF0wIdEpAye1On
	NVx7BpWzvJypSe6OqWrUSI70RUFT4QCC07iscBbQdadErNIdyTWWbw80lB+fC7RhvzALU+hxox3
	XQ3xdPjM7hB48UaCwfWqa26SYoapVwBU9dfLvl7unmiRIrvIa0kz27wchOVxGRj+V4NkRzND792
	tookJqo6No+AefwaD5o4YCUU641v5RbsHSXkOon4TxRVTWZ8o2iGzGdnGmKq0AF4Ir5soc8XQ2S
	0oxjlB2TNFliy8XVwnWz8XOG0wm94fF+mIcJK8pBJhVASxH740ynHLIFBiYqnYJ3Z/yPVD/ghxw
	XBrWAuO6nCttvErcEkSbzfkiCX+HdcyG9caSJVM4ukzcONS4IxrA==
X-Received: by 2002:a05:6a00:ad0f:b0:81b:c599:7593 with SMTP id d2e1a72fcca58-823692eddb0mr5792984b3a.60.1769634456664;
        Wed, 28 Jan 2026 13:07:36 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-20.dlp.protect.broadcom.com. [144.49.247.20])
        by smtp-relay.gmail.com with ESMTPS id d2e1a72fcca58-82379b191fcsm391546b3a.2.2026.01.28.13.07.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Jan 2026 13:07:36 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-12339eea50bso1504826c88.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 13:07:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1769634455; x=1770239255; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=yDDLJdqPk1Zlja9ZPS9PNMGzgyrH9rkUy74PKjqCyw4=;
        b=IBd/j4NidZpqvAb+bGGLSJEje3zC2zPW5RW+4iVnh3T9HV3JC0TiH/4+tCG1N7leuj
         eNUsSI9DoVnzC1ayxPTI65tnDFYsI1Wj+m/dQ5HH7xIysUHLqo8GhqibK7tfzG402L27
         v5/QgdLLQjZkdIPTP4ZX2Q9sWrLJMyF0Kh2hU=
X-Forwarded-Encrypted: i=1; AJvYcCWQRV7UoYAHaVx7A3NHW4vUqlLi7b5paiJLr1wr7T5vZx+ipoRpwQgBrrrrHoURnO9MNnh+RyAEzxrV@vger.kernel.org
X-Received: by 2002:a05:7022:791:b0:124:9faf:4dd with SMTP id a92af1059eb24-124a012b15fmr3536821c88.47.1769634454876;
        Wed, 28 Jan 2026 13:07:34 -0800 (PST)
X-Received: by 2002:a05:7022:791:b0:124:9faf:4dd with SMTP id a92af1059eb24-124a012b15fmr3536799c88.47.1769634454395;
        Wed, 28 Jan 2026 13:07:34 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-124a9d7f789sm3869245c88.6.2026.01.28.13.07.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 13:07:33 -0800 (PST)
Message-ID: <ad644270-4236-4a71-b301-b912b0cd49f3@broadcom.com>
Date: Wed, 28 Jan 2026 13:07:31 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: broadcom: ns2-svk: fix AT25 EEPROM node and
 properties
To: Lee Yongjun <jun85566@gmail.com>, rjui@broadcom.com,
 sbranden@broadcom.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Cc: bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260122161823.105404-1-jun85566@gmail.com>
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
In-Reply-To: <20260122161823.105404-1-jun85566@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,broadcom.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-260635-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[broadcom.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[florian.fainelli@broadcom.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 82849A8F0F
X-Rspamd-Action: no action

On 1/22/26 08:18, Lee Yongjun wrote:
> The AT25 EEPROM node on the Northstar 2 SVK board used legacy vendor
> properties and a non-standard node name, which triggers dtbs_check
> warnings.
> 
> Update the node to follow the dt-schema by:
> - Renaming the node from at25@0 to eeprom@0.
> - Replacing deprecated "at25,byte-len" with "size".
> - Replacing deprecated "at25,page-size" with "pagesize".
> - Replacing deprecated "at25,addr-mode" with "address-width".
> 
> For "address-width", the legacy value <2> corresponds to the EE_ADDR2
> flag in the driver (include/linux/spi/eeprom.h), which is explicitly
> defined as 16-bit addressing. Therefore, <16> is the technically
> accurate value that preserves the existing hardware behavior while
> satisfying the at25.yaml schema requirements.
> 
> Signed-off-by: Lee Yongjun <jun85566@gmail.com>

Thanks for your patch, however I have something from Rob already queued up:

https://lore.kernel.org/r/20260106-dt-dtbs-broadcom-fixes-v1-9-ba45874e4553@kernel.org

You could re-submit the portion of your patch that renames the node?
-- 
Florian

