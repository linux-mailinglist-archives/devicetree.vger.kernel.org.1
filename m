Return-Path: <devicetree+bounces-162077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E86ABA76C51
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 18:56:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9458716B7E5
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 16:56:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 948372135DE;
	Mon, 31 Mar 2025 16:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="NqINv1vG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB75F155725
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 16:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743440198; cv=none; b=Nwt0PkbfOSfCyhvcDnTwRHyfDB20Ziggct12Ve54O1Xo+riF4s9sReW3s6G+s6VsF0RV+JksoytMUgAbhwXI0IBldvoen78yDp4/VIWfVI+n0wC7M3Hos4wnPDytmFu3FzLsVCK+Mebgb3jM0RLbBbH0hffW04HuuHHCfnivAJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743440198; c=relaxed/simple;
	bh=A7wQrNAC7JMn08BWpwEnXaFDJk+12aL9SrLmrT8Fb0w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ofqujaP1dOmCPGOJcxNKJxijsB0+22B4A3PrQcNkis0cG0o73MCSfpqJvvmxAzuS9BU3OEOVYqd8G66GLHo4oK54cvtgkyXFPAVTVGrhsYXSuqouo25f9eX8j4UbRWVUeM0Nm/hKFHg+5qsNgj9uH7yKLm8Gn7o07CSdnS7Y3HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=NqINv1vG; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-72c16e658f4so1309283a34.1
        for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 09:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743440196; x=1744044996; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ax2M9a/XgoXAPcO3sZ17+WnZpkQpX1cgkPlcAGReZKM=;
        b=NqINv1vGtedpJ8aBQME7JQ5M/otklNejFGbcn2w8FtSdbZ+R/jGtpA/02o/EOW5dPC
         QZRPhWyIJcxeiMtDWejkqDCz342CjSkf/MMhnLMEUAe+sk886rnRqXGxlErtG0K0nvq2
         i+J9gF7Jt1+C+IZdrWtMoMfJ0cqoixK9S0y20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743440196; x=1744044996;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ax2M9a/XgoXAPcO3sZ17+WnZpkQpX1cgkPlcAGReZKM=;
        b=mswM8lmT2sXfLIMfIFkCWkr+wZs2tm7LH4XF7AnCH1tSxWsw7FFHUlPBWuePuvvYxY
         TSoC1M1Cjf1XWYqh1mNho6GNXglLZhktk6n8X4+4+55PGYqIrUH5gKhrglCwM8oedPyP
         GVEhGXKNL9UOBiOYV2hMD4g+Ym8CitT9ZIUZlUaIg538e8gIfzvN8DQWJqQDo7+wW9Dm
         78ujl1y8jiCdmiahNTdt8tl7ICtalDjq5utqC4ZmFK06ZqaYtjBpDOYiMWh66H5RLznY
         HV4wDJK2p4qdZnaMPx/i3BxsfjS1fOfO0ltZepGlQE+/1ORk/08PNqT3Hv7ACes8gpHa
         HXPw==
X-Forwarded-Encrypted: i=1; AJvYcCUHYQNycZkQYbLCXdnuwZvO6T3zY2nHMP1oaawDa/O4rPpY72gpt8ki5fje3oixMKuQNT7gN2GXWm30@vger.kernel.org
X-Gm-Message-State: AOJu0YyRidUzSPQnOExIl+GWu4yx8eEZX2IawJ9kjECUP2kjBv1AB4ZK
	9mZhY2SwYI9zzGJGOvaXdK9z1/yHu9GHNKYpSEPuABK5yN3wGzciqPFcE/CKbA==
X-Gm-Gg: ASbGncsul76RxzMSgnjYFSHiyyGpg3AONLPsVFdgO6WX4yFvVhGSe24f/9WgT8uhWj1
	xMUJ3iG+n27xnW0gdoW/+6PDmGCU1UnXupYH9f50PA2NRB03EXAlg3ON80iehlL/tt9RbErc2UY
	ZBUcYkjedj/dMr+7bxkuFA9Ik3tzbYY+6+bdoresLIXBEOK+skG3uRC6RClhCxYzbAPk9dQRwjP
	S3XIFKqnRh3TjxhbO2wju2hkYSgUsgCyr6zUEuU6IN+/m43Yx6hjPfKuGIOXkfCaqJRz4tjJ1EF
	8Qr9+evJ5V6OsJGYQw8AOrQ3erV4nRZfzclAalmQqFeLbS/ejQECJhxHQUAZ2oGvFhS+KX9MmIp
	CDTpcT57i
X-Google-Smtp-Source: AGHT+IFAXomCN+VvRG68JDNdUluvh2lXj3AcWbjX/p6QC4V6FBCZPeEeCGZxgPSF1rNpZnEYJMMlow==
X-Received: by 2002:a05:6830:6f0e:b0:72b:a6a9:8465 with SMTP id 46e09a7af769-72c6383aa8dmr6039333a34.23.1743440195881;
        Mon, 31 Mar 2025 09:56:35 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72c5828b3a4sm1535795a34.66.2025.03.31.09.56.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Mar 2025 09:56:35 -0700 (PDT)
Message-ID: <b07f19f2-be84-4d72-9d3f-d7828ec48e9a@broadcom.com>
Date: Mon, 31 Mar 2025 09:56:33 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] phy: usb: add support for bcm74110
To: justin.chen@broadcom.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Cc: rafal@milecki.pl, alcooperx@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, kishon@kernel.org, vkoul@kernel.org
References: <20250327185623.3047893-1-justin.chen@broadcom.com>
 <20250327185623.3047893-2-justin.chen@broadcom.com>
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
In-Reply-To: <20250327185623.3047893-2-justin.chen@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/27/25 11:56, justin.chen@broadcom.com wrote:
> From: Justin Chen <justin.chen@broadcom.com>
> 
> bcm74110 adds a freerun utmi/ref clock that saves further power during
> suspend states. A tune is also necessary to pass USB compliance test.
> 
> Signed-off-by: Justin Chen <justin.chen@broadcom.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

