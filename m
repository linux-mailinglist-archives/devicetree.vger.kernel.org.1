Return-Path: <devicetree+bounces-93055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE84C94F8E2
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 23:19:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F91B1C21785
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 21:19:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DACA18E051;
	Mon, 12 Aug 2024 21:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="WB6MC5rM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42FA1581EB
	for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 21:19:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723497589; cv=none; b=V+IL8IFm/FUrNM+e6s+5mFukDIPu5WnEWacH8ZvZRtNmAmGz5EhST8lEsczfmUocEqAD8EXfREaSjza3KigvTFvyRBmZxveA3wnCrjRAQ6faxwFK3APBbWa3kbdyU/z3h+RIIfvQggaCKAHplfKBQeHGqUOy5ga9dj7ouq+0S1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723497589; c=relaxed/simple;
	bh=KTddbIwXLt/9a0Mp+/ANviIvt3frisiUUFyQzQnIpIo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NgkqK1B7mB5+Af8YV0EheVvBYqZC94Ktf+qcKSN0EsDMOW5I91SULMmOd8BDR3vIEIfstv6EagDegkmcon3VKND/cbkGr5V9gJ6IiBBFcwwyr/xcRkt5keMB+PIkSuSUTz3Z6jEoQ9ECco9QK1Lyf5bmMG9RD1vAB09PgSIpADM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=WB6MC5rM; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-70d316f0060so3701311b3a.1
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 14:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1723497587; x=1724102387; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=l/Cg2+ikcC9Q5RAxiBZox1zk3Cb/v3239tm0JRBaSzs=;
        b=WB6MC5rM/WJ4f+eth80s9U1+ekaUe3Unhp/B8ybJaa3qGVx+V4VBxayt98Av0l6/t4
         1XDooHr2yCQUbF1wFNPzx56UABCRBLyWFWdcmeYuOB1nVIYL13m2FqBI7Hvf4EOpuhHU
         fiRlsgMp9Ap/e+4S19lIXlTRV/BqPU6mjqMfs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723497587; x=1724102387;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l/Cg2+ikcC9Q5RAxiBZox1zk3Cb/v3239tm0JRBaSzs=;
        b=NFXgYX9uSjx9Xfp9a/8E20YtgSgXcBDyRDXrNJyzRUfEsbS0ZrDZqSdqzCebBnW5Ly
         nARMQBbltkfW8eoCKQwDUK6d15haNgXzMWX7tnIR5QXhhBB5sdONgkOLom0ErpwLS1bV
         phg+J1o0dCsO2RbcMjtrUPHgGHvdt+X2XEJe6wZ/Ti8/3h0EghlX3wK/+93dJkhjBPrB
         /TBSlmDLQkvOP9cuFL3TiF2xUjoJfMBXwdTknQx3YxaYwAiTBug6128o/Dx2hUd/DaqX
         3rymWt61yyszVlTeBEyNJE0xtOz1BDmEAYzLAF3kRRhSvX8MRQ7gPdb2tw5N7A9cZZDe
         bJjw==
X-Forwarded-Encrypted: i=1; AJvYcCVB9m0N5qTQRFa81ZsrjdgEBSK1fqwtpQ0wWn3VcqTH06gbuSl6Ax2S7QeL49QTEBeSHLIi6TAlyCfiecuDi0LDhC8AaQELvrq+XQ==
X-Gm-Message-State: AOJu0Ywi3gRXpXqt8Ys5omK1sVbhsNZOX86T0aV8eN8HtR3tWYr547f7
	Cc3rU8vJPQkfbyScNb45IjfzThMmG+9BjzCSwZgaGuD082w9C8vi1lz7/3nIqQ==
X-Google-Smtp-Source: AGHT+IGzNQT8Q8hoOKaFCVtSHp0qdnqRkcgtiAtdIxBD1A683Mbm8MdDmT6Ntz3HXPas33Ou3DvOYg==
X-Received: by 2002:a05:6a21:7747:b0:1c4:77ea:601a with SMTP id adf61e73a8af0-1c8da1fb034mr1403306637.15.1723497587164;
        Mon, 12 Aug 2024 14:19:47 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7c6979edc3bsm136400a12.36.2024.08.12.14.19.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Aug 2024 14:19:46 -0700 (PDT)
Message-ID: <d61451de-b6d9-405f-88e9-4a13e8972393@broadcom.com>
Date: Mon, 12 Aug 2024 14:19:44 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] firmware: arm_scmi: Support 'reg-io-width' property
 for shared memory
To: Cristian Marussi <cristian.marussi@arm.com>
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 arm-scmi@vger.kernel.org, james.quinlan@broadcom.com,
 justin.chen@broadcom.com, kapil.hali@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com
References: <20240810214621.14417-1-florian.fainelli@broadcom.com>
 <20240810214621.14417-3-florian.fainelli@broadcom.com>
 <ZrpD9rEyw37DV1J1@pluto> <40cd771e-5dab-498b-b77d-e0de4281fce9@broadcom.com>
 <ZrpNy67GEFpF4p5l@pluto>
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
In-Reply-To: <ZrpNy67GEFpF4p5l@pluto>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/12/24 11:01, Cristian Marussi wrote:
>> OK, I will think about more about what needs to be done here, but in
>> general, do you agree this is an acceptable approach to support "odd" SRAMs?
> 
> Yes, but one question comes up in my mind upfront (maybe similar to Rob remarks):
> is this not, in theory, something general that should be somehow addressed transparently
> by the core SRAM code when dealing with such odd SRAM, since SCMI is
> indeed only onne of the possible users ?
> (not saying to do this in this series that deals with SCMI related issues....)
> 
> Anyway, I'll have a though too about the SCMI core transport possible changes that I
> mentiond above, soon-ish... (I tried something already today, hoping to solve it quickly
> ...with poor results :D)

What do you think about keeping the status quo with the scmi_shared_mem 
singleton and instead introduce a per-shmem scmi_shared_mem_io_ops which 
would contain function pointers to read from/write to the shared memory?

This would keep the scmi_shared_mem read-only and a singleton and the 
transport would be responsible for storing and passing that set of 
function pointers around, post setup_iomap() where the determination 
would have been done.
-- 
Florian


