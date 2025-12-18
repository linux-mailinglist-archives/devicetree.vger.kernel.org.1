Return-Path: <devicetree+bounces-247988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAC5CCD5B0
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 20:13:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4394930A35D4
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 19:11:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D1F6330B18;
	Thu, 18 Dec 2025 19:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="X9Mgrshr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f227.google.com (mail-pl1-f227.google.com [209.85.214.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3472F361E
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 19:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766085070; cv=none; b=L2B8dKan4YctK9YdtfzsLeF5U52/n7we45pKhz9/7Liw0gV+JvnFEGNnsj2Gmgtr/9EuEFw8saRk151/S/25mvI1bjS0QIQrIOCikBQyxoQkaP4qUr1exJ/QhQ8PcP7pMy3dt6pJUY7AWH56V4mc8aMk7/hRwQ9UzFNZ09xpPnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766085070; c=relaxed/simple;
	bh=p0YLcfND9aeEvVSGNQWJ61Mv9bRnHc4na+4XfL559f8=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=UNzXDNgmHovrNk+F8ih85zMh+9jCFt1tLDnR6IYnU6KC7n0VPuCvms7of7w3DtpPR3szuft8q4bnNmLm0DicnqW5aKfZh3WRznf0jk2qrh2daUGZECXrfpnnv1lgRbh2Xmv8mHJ26eSXVIIDvl1LOphl135jUESw6yLOahsBPxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=X9Mgrshr; arc=none smtp.client-ip=209.85.214.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f227.google.com with SMTP id d9443c01a7336-29f2676bb21so12117545ad.0
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 11:11:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766085067; x=1766689867;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2lZIhicnPF5MBd0IyD7v1HJ7vxFXx8XMZHv9zGSx26g=;
        b=b3l6vDdyMjHaSv/vSik8OxzNXPXWSxAGOXqWPKw+rFjmiRKKqKqEH4IKw+7zcAj5gR
         UxJQo/vqWrQGceLKUzE+idHyGR+47vrQ8jw6LDGcrq3WhrnKKIN66C1CxblG0sWkRvaX
         E7kSLvtRLr9By+orQi1Mbwu4fAiNVvdU23qI/yKGtbBp3md1hfC8NQIJQR2rkWh+H2fN
         bd/RCl5r+ERRAP2pwF1izqvzQM5bP2if73/wGblx6TYFfNS9waOvF6O2bOdX64RkbWhB
         huPezyUV5DPCBhMsbZ/oEXy7if8eWWvOJCXYLPAWBy5dXxNPn+vo93yS7QZLhAjYi3w6
         kmqQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxOIXmgpVlhbcdJ2dg6XFbpRdtM0RudyWmqO/h22te5iCjN4Qb/Rj6s/cp0Cv5ft2gNoPwUeE6VR6r@vger.kernel.org
X-Gm-Message-State: AOJu0YxeID16Vl4QIED/JaJrJ1PV6EpAuz0e9Ph/Luk1J3DBgEv35k5J
	nZDRiw9lObsDd0vEU0y3vtq/tEwWAbcM9UD3fdRq+zEvXJ0mqxWVd1j4/Wn7TdkVRjN6w/96trN
	CKUc1KUx+t8aMPLrv3e5G9r1vb9lqpzQ3BN3Sy9IxvtMz3e5JygFHCmKDCFPW8PuoXu6hJ4eb/J
	087HwllnSLfifMqWnLjOQJZwaDSlBA3yS8nDuMKHlYnWmmKpIchdwRcJXfq1WwgwNOHxkUsHTSP
	8/2+nHdEpRY5t7RJgmbpg==
X-Gm-Gg: AY/fxX7k8rQEzgLvk76pLy3cLZOyjLtODRxY/12npixvfqV/d7jcXmt+cR1oKb3q4gm
	+azA1KKTZNJfTNxxsjRttmRjBFP8e6Lfff0V5SPFk2x20dkmhZ6qvuFEnljeKzyMot3lF2G42I9
	NadjlGEy0/aYX0RJL28o4j+a87jqwYxEnxIk7pygRNtNa7s49IEjHJH1Ai3VL7aADR2IOUZoL/K
	wEgIoN7Vb0kudbS8oYGeIdqBHlA1m7TVJLMB0d8j/o6fM4bW8n2PhycW45jkaEKI66uEEZAnEYN
	wjiTxLo4Sxvj/ax8QZpluulIowIRF8uMFcZn4+t1s/pZjF9ir5+WzA1H1i/mWJOv/JxMq5rfHDy
	LnLw6Q4t/ffxX/Sd0uOQA4Ab+ycoSViGEtie63H2iveryqpBVX3n3UzErmTPApo1iO0y6jL5uyj
	iYcD15mAguwAqC6NuStDmjVT2eZuu1Biaw/tFbqxQCadOh4cgoLA==
X-Google-Smtp-Source: AGHT+IHF6YUS6X+0YBgmoGNvFTniYvX0Rx3HILBKGUKU/OmVgs8LlWdgOKrlZiY+tb6WEWL7aDQb6s9qxrQR
X-Received: by 2002:a17:90b:2f87:b0:32e:7bbc:bf13 with SMTP id 98e67ed59e1d1-34e921ec331mr322030a91.34.1766085066782;
        Thu, 18 Dec 2025 11:11:06 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-19.dlp.protect.broadcom.com. [144.49.247.19])
        by smtp-relay.gmail.com with ESMTPS id 98e67ed59e1d1-34e76ee4e67sm35557a91.1.2025.12.18.11.11.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Dec 2025 11:11:06 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f1d7ac8339so27504141cf.2
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 11:11:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1766085065; x=1766689865; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=2lZIhicnPF5MBd0IyD7v1HJ7vxFXx8XMZHv9zGSx26g=;
        b=X9MgrshrDYHBmhJ0TlqCFYne9xi314HhJ7oETqqw/0Ft5B1S80aXlKCmRdPhplzlgn
         MrMMcV3npMho/dhIw5keciMsxCfLvHcaiLBX2XcFybW/VxH3CM12YEmfsDg8UOHjSMax
         qnJcpCz7NJYyGasd+iXFYm9NCLS0QWD1SfmnM=
X-Forwarded-Encrypted: i=1; AJvYcCWqbyZvFW1l1Yn6jEcTR1rpp5IJebiXDJGaW2jVj3nNjXDC7tuDXjZVFG3VcOouBV7aOzu0DPgckApB@vger.kernel.org
X-Received: by 2002:a05:622a:4c0f:b0:4ee:2312:6059 with SMTP id d75a77b69052e-4f4abcd267cmr4668081cf.19.1766085065158;
        Thu, 18 Dec 2025 11:11:05 -0800 (PST)
X-Received: by 2002:a05:622a:4c0f:b0:4ee:2312:6059 with SMTP id d75a77b69052e-4f4abcd267cmr4667571cf.19.1766085064645;
        Thu, 18 Dec 2025 11:11:04 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c09678393bsm10407785a.6.2025.12.18.11.11.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Dec 2025 11:11:04 -0800 (PST)
Message-ID: <8cbf63d2-1510-4d58-b2ca-0fd23a476539@broadcom.com>
Date: Thu, 18 Dec 2025 11:11:00 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Fix RP1 DeviceTree hierarchy and drop overlay support
To: Andrea della Porta <andrea.porta@suse.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Bjorn Helgaas
 <bhelgaas@google.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 iivanov@suse.de, svarbanov@suse.de, mbrugger@suse.com,
 Phil Elwell <phil@raspberrypi.com>
References: <cover.1766077285.git.andrea.porta@suse.com>
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
In-Reply-To: <cover.1766077285.git.andrea.porta@suse.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 12/18/25 11:09, Andrea della Porta wrote:
> The current RP1 implementation is plagued by several issues, as follows:
> 
> - the node name for RP1 is too specific and should be generic instead
>    (see [1]).
> 
> - the fully defined DTS has its PCI hierarchy wrongly described. There
>    should be a PCI root port between the root complex and the endpoint
>    (see [1]).
> 
> - since CONFIG_PCI_DYNAMIC_OF_NODES can be dropped in the future
>    becoming an automatically enabled feature, it would be wise to not
>    depend on it (see [2]).
> 
> - overlay support has led to a lot of confusion. It's not really usable
>    right now and users are not even used to it (see [3]).
> 
> This patch aims at solving the aforementioned problems by amending the
> PCI topology as follows:
> 
>    ...
>    pcie@1000120000 {
>      ...
> 
>      pci@0,0 {
>        device_type = "pci";
>        reg = <0x00 0x00 0x00 0x00 0x00>;
>        ...
> 
>        dev@0,0 {
>          compatible = "pci1de4,1";
>          reg = <0x10000 0x00 0x00 0x00 0x00>;
>          ...
> 
>          pci-ep-bus@1 {
>            compatible = "simple-bus";
>            ...
> 
>            /* peripherals child nodes */
>          };
>        };
>      };
>    };
> 
> The reg property is important since it permits the binding the OF
> device_node structure to the pci_dev, encoding the BDF in the upper
> portion of the address.
> 
> This patch also drops the overlay support in favor of the fully
> described DT while streamlining it as a result.

Timing could not have been better as I was just going to apply Rob's patch:

https://lore.kernel.org/all/20251211193854.1778221-1-robh@kernel.org

Yours is definitively more complete. Rob, Krzysztof, can you review this 
series and I will fast track it today.

Thanks!
-- 
Florian

