Return-Path: <devicetree+bounces-102115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 265A49758E7
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 19:00:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 595131C228DE
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 17:00:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83EE61AC8BD;
	Wed, 11 Sep 2024 17:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="UhJrDxdu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2EE1A38F3
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 17:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726074041; cv=none; b=bWHJI3wL/MZrFd4eBcMnOioCamfusDSmCn8682s+0SvbYlcYoDXjxTWbMzxcs6flj1SXq41Zrrfx4cjH8Vz2cyyXuAtYCNyDup+C6hWS5Qw20tdAoz9hPk6jzdSktJ8KowezK+010ZXKADFIqPrSR5CzAAx7lnarTniq7uFigKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726074041; c=relaxed/simple;
	bh=nAy4vTEaTjONPfC42bT4PYqBa+ytLB9Z2iSgpKg/vMU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gYf28S7xRm/SSiNgmThdi6LHHrc3q7YAi2hT92qHhNvvziN2JSIz8bJmJstGrcYeP/jb2Nw2YeuZQDLtLxklEdfQkpUqU5kBAd1iVgR5ZOOPJds5GWDhdCYhRw6oMjDnJw3R02Y5GQ8Qh9GWzbLrW0U9Yfrug8HiUHEUT6Hpp6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=UhJrDxdu; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2d88c5d76eeso13249a91.2
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 10:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1726074039; x=1726678839; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=kde7lrfaLJ1G5p7Foq7Jgy8FL9TkvJnbmwFVCz/tjrk=;
        b=UhJrDxduw6qqMx0akeJdBm6TZ1kYycUFWIyaOqvGzgW85MDMPidDiGR/d8VGDBIn2D
         OJoEnqhqHuTCkTrjojBur+TAcw4wyNkrnkRrkPmmIxEov05XSCmzp47ZjhTvRoQboJsO
         AdGTDa+qnmo6LKzu30A8DcShwMZv1s84GZU0Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726074039; x=1726678839;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kde7lrfaLJ1G5p7Foq7Jgy8FL9TkvJnbmwFVCz/tjrk=;
        b=SMNf5VuVHINsalavceVh3gz5rO/tTQEoVJqqj/Sj6Pc73U9k+PpqkT+0hM9+kr/2Gx
         Re/Z2rsRxlu6NoV5zem8iZUJDe751YjkFBbuR8kAMaaa7qRuq2d33eLB9zBk91jGCfvQ
         N/lx5Q1EKmwPEeu2kZ+J8gRTdgXvWcuw/uSd6VGtEyjl/JtlmbOQRrZ84LWQv6kfwQzw
         I40/7RC7lRt4uHmO2kHyQ8zmsZ+grdKGLruuB7NPdS/Y4ZKzP3zWtwNAr9IibIce1+K6
         UEiaQJ4qQV7XG3E7sEharJ3dJE5TQRXlY59I3YDb0yq08spjqRY8/K6XI0IJVClnyF/e
         Os+g==
X-Forwarded-Encrypted: i=1; AJvYcCWJExrpyTgleEnWwI/LGbnnN0wyaBiSfQgIRZ0JOJoIgpeRLKCEERVv+BLEUIbZpjbDIXz8H5fqyH9+@vger.kernel.org
X-Gm-Message-State: AOJu0YxC7g7vP2bkQHjt8NuEOlxrXkMZb/lwVz4fWPUOWuH1yC7b2dcX
	uCP4KGQ3cdZMNXZYxEKrzgddZBjm2qhpfcsPdsVqfTFesR5xnbtDN+0y4ooIoQ==
X-Google-Smtp-Source: AGHT+IGiWL1ANf0fG/GgLuTRoKRs77uXGxja6PvOCTgPjJ5EHw2046tMbeOSx/xvAWf567MiT3Q5mA==
X-Received: by 2002:a17:90b:1d92:b0:2d3:c9bb:9cd7 with SMTP id 98e67ed59e1d1-2dad513586dmr17605302a91.36.1726074039082;
        Wed, 11 Sep 2024 10:00:39 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2dadc12dfccsm10800548a91.47.2024.09.11.10.00.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2024 10:00:37 -0700 (PDT)
Message-ID: <72e47696-d52a-44ed-80fb-6b8d65b10229@broadcom.com>
Date: Wed, 11 Sep 2024 10:00:35 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 -next 02/11] dt-bindings: PCI: brcmstb: Update bindings
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
 Phil Elwell <phil@raspberrypi.com>, Jonathan Bell <jonathan@raspberrypi.com>
References: <20240910151845.17308-1-svarbanov@suse.de>
 <20240910151845.17308-3-svarbanov@suse.de>
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
In-Reply-To: <20240910151845.17308-3-svarbanov@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/10/24 08:18, Stanimir Varbanov wrote:
> Update brcmstb PCIe controller bindings with bcm2712 compatible
> and add new resets.
> 
> Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

