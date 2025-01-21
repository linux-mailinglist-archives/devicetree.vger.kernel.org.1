Return-Path: <devicetree+bounces-140093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0DAA1852C
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 19:29:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05FD23AA6EC
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 18:29:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 575971F5413;
	Tue, 21 Jan 2025 18:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="MNhkCG75"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABDAE185920
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 18:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737484142; cv=none; b=piUSJpEfGEKBZnbgK/hrVNY9MDK/9iE1p7bg9Ni//Y6IhErBWJ4Khe1gkNqlQZ0FM9H28h7AWd91z3ncy+w6+mO/SRHL7aaWetYQh030H0xY4jpHJxutNdiXdVxYooz9B9AOu1L1W+i3gobY+eKEfGkQb/y3h/mkoFBI4BmJXnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737484142; c=relaxed/simple;
	bh=h4E0VFpKCg1na7/lhIoFpPlkzTp4AxH8aWKRNN0cAzM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rrqLsOgIfeNgSiidJp2tJfdhdLQevlu+zUiOxbVfr37XUr82ijVnZ6Uwmqflqa8aQ6Dc5c7BqltoI3uDxsH/4dbaGvHwYV7RQABSZCs+Nsl/9eEYaT9Evono10wHpyIW4dbVBKd8Bvcbw0C7UHQj9GmMp7H12A65kzkUCgW62o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=MNhkCG75; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3eb8559b6b0so3355929b6e.1
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 10:29:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1737484140; x=1738088940; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=lphuxEBOTKwaeIsn4ZxAyXhOMS7H5NX6cm7O5tAhiPY=;
        b=MNhkCG753eaJ7duA7HDBn/uSOtbFnpJ0JYmrpOzUImjKxHH//4cyU1Ng9ddkRgG928
         0cdZuqsDRXSoqqp4SXepEFwWn0GTvIM8qiTkK+Oj/Qq+w76mqyMubQZCqk6dAwfrnj2G
         fKKNGsxbqCWAOG3I9EFAAtdyhJmofYJ8ynxyc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737484140; x=1738088940;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lphuxEBOTKwaeIsn4ZxAyXhOMS7H5NX6cm7O5tAhiPY=;
        b=MdHXWBikxq0iOCg0hRW7pEWZ0RztvnH8g7rNi6H5hgysgiTuQ6QYzFRsPbuHrlhuQF
         OhDP+pB9fK4g5J0hKx9upIFJcd9hE/ooIXc+844W4vhRKdOGNnA+UGUW7WmVUIxSlcDk
         VW/BaNffB1L5fqrTKQ1UA5YanzH487wdBIVI7jhtUGbmSAtOipEu/Dleq4kwhtoZNvqM
         aCNOthHjit6qbZWmU+XvIoafOCjxl/rF9fA7PP1qteyzYxjWpKVawwg3ZCqaGbvuSnWh
         AbWgB3CLJNj5TQfqpg15vTDgozJYuYsvwa9npKNJUYdmMU3aRoxAiQYnMo88trefpL6A
         ql3w==
X-Forwarded-Encrypted: i=1; AJvYcCWMpDQGB5i0yha5bJ+/qqkLwE7CUbRLxQ8iLE4HWSFa3eSd6yIQ5loNVtYEUvMSGe/QkNZC6U9ghbUg@vger.kernel.org
X-Gm-Message-State: AOJu0YyPIwwzb30yNIoRrQxgwM5ipePO605minVkmNsflLqNFNC/rXqe
	6SpxHSBujfysFh8xWW+bw1LbdmwYPtdzhNM8kMswg2tjSXM4kOsXNGp7eML+Yuxe6biMB/Ctm9g
	=
X-Gm-Gg: ASbGncum3Xk+8NCkKtVmKM83RDKELAZ6Nx6XmPcuIRdL77H74qwFp5TT8ua1gspvahW
	QBk4H2c8ejIPlx75175EOx4o2i3sodg3Eq7FYhVJJ68/bqytsIJEDBPXaw1miadciqYYOR4A1+8
	wg3nqBVMy8xRBUJJbphERf2Rc8spr/YUdCQlelMMQuYbmBRWUBj/39KIJkswh+1wJDA2hhW0Axm
	u3OD4qaxGwa5MbS8dLV5a/JJOkbxS6QwYbo/Bg8tN5M9yyVKVfbR6r4NgfOE2kYA59jkE5U+xlh
	Aed1POyPEvPsnOZAiERLaA9i+OSj3pmWbQ==
X-Google-Smtp-Source: AGHT+IEMDQQA7uXEUvvs2Yxi9Rw/8/nVfXYv+l+nzcRAMtxy6O0OkHj5qGEgblrUmVLbE6CdOhZ2xQ==
X-Received: by 2002:a05:6870:9e49:b0:29e:18cc:276f with SMTP id 586e51a60fabf-2b1c0a24a1cmr10758963fac.11.1737484139842;
        Tue, 21 Jan 2025 10:28:59 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b1b900ec2fsm3814393fac.46.2025.01.21.10.28.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2025 10:28:59 -0800 (PST)
Message-ID: <7e42c339-aa12-47b1-a5a7-5d445459a489@broadcom.com>
Date: Tue, 21 Jan 2025 10:28:56 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 -next 01/11] dt-bindings: interrupt-controller: Add
 bcm2712 MSI-X DT bindings
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
 <20250120130119.671119-2-svarbanov@suse.de>
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
In-Reply-To: <20250120130119.671119-2-svarbanov@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/20/25 05:01, Stanimir Varbanov wrote:
> Adds DT bindings for bcm2712 MSI-X interrupt peripheral controller.
> 
> Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

