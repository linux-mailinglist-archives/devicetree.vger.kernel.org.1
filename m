Return-Path: <devicetree+bounces-223552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F642BB7A96
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 19:09:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 339D0427664
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 17:09:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B74902D8391;
	Fri,  3 Oct 2025 17:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Az4vYIaL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f97.google.com (mail-pj1-f97.google.com [209.85.216.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D212D838E
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 17:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.97
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759511386; cv=none; b=gFJYyu7GHdU+MOpTBNIxAg+Ue8+xQT2enzPDdeeD5voiGGE9qr3ofwhzxLmtC3dz1y4GIUKD5nOPds2x57leNgmBstVOsX5fAYwZWNU+QlwfXH7WursZbCEmL9bQj7/SZNfvZ13kLr3EQhbHBzGXCzMN6EZJpXi9af2Eqh7LLmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759511386; c=relaxed/simple;
	bh=5Z1/gl8Vildjdb9LI4vL05a94ASK0LMfvbSWas9aGg8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mi0HuKscAx/10LL3DfFccqCFfb/sYFNpDqc8sjkUhe9qvIddOPhQ/YWzgkNEGwdVyynQSRBylF4Wx/jw/Mjk/ggnNXDa9y7NPNhD/EpNwe0eV3/A7jWZsdIpgTLGmc5SoOS71izvl8WcVVLFX1mxnOsENsizFYB6xXTP5AU3T1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Az4vYIaL; arc=none smtp.client-ip=209.85.216.97
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pj1-f97.google.com with SMTP id 98e67ed59e1d1-33274fcf5c1so2662437a91.1
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 10:09:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759511384; x=1760116184;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rhq5Xd4Igc9fjcR+TCYBH/u4+ukG5nbOgfFURkP/fuM=;
        b=aScip8opoC1rlvlMLrbw0Xsm6mVogKng09YICwPU/QCs19dWtzYO7AfaWpNlVFKiF1
         k6dO3KY247lt1mXWH6yQMIpElKsC3BdAb2OXq0yOImMKT17O/O4AuQz8wz+iNBCHC6UO
         rwmoBQSFr87xh0GYRwE/BxRJT5UjGutJdn4drcXRKfB5x31c2zquVEbJdAOdJermHEMp
         wfyZ0uFcLEUGH8NEnvzBwOg6iFn+8+51lnb1KIKkI0MpOZEz5VAYVIhf85KVsCAc+QWJ
         I4469MjUJUocYrrUeHXW62P8a1CE+H+mgrqp+y58o3rnFtTpKLV+Cn7a19xz4n4ngoW7
         VSkg==
X-Forwarded-Encrypted: i=1; AJvYcCXVL2N2P39V1CQAiHglT/2vlEw7hKzbx0LF7va8VgmTKatJPrXgVqEkCpJQYc4GSrbwgjqwgCqpK5Ne@vger.kernel.org
X-Gm-Message-State: AOJu0YyaLrx84+dnBSV5OaOpaxYjR5W/t1p5b+uLgOuIg2YYEpGNT122
	L/Uzu8Thcol9M6OHYmg+Xy8yoIOtdsV0fIJZzCblRNydmS9XRbtJyxz/9DJgsJj0rcqVFiphvNN
	QxShwnzp8z1oGj1x4x93d/RAyYflTXzH7w2M+970vfbSzhtcUyEoEBOvUf6Je9Z9yiEx3daBuGk
	OUT4e/QS1NlGgyQg9X7CopBWfE1d8J3iYzTMvgn/I2LDUP6NHgA1UH/JfYzCSOAzJAtli0gxbzi
	pgnHmrqqFfWdjZDn0g+Kw==
X-Gm-Gg: ASbGncvgSE8KQlZ5upZjsr64bQTaNaPDREKvNUlXpiP8ywihFayq18zmCQJ8ImlvgxF
	M3Bz6kJOWfy9NToppbmBgyeKyWCtpFI/zQ83IlR8lDIJT/pyFNigM557aOstM2TaiCWbzvhaNk2
	6vQ1Fwj4MVhWU6ZlQc5+vk4PKQJEWzQpQyxFa3e5PL5RMyVePkDQD2IPlMsO7zKtoREZcd01WO9
	XdouTfdtOTZJKBkGwq1X6pTicDtpj++JrbOuzZpAZwU0gpujz63YJdaxfLwv9o7mmhZaFdyJt/V
	6b4LTMlCNo/EcoZjLJUjnm2zJw3zfZaUbCRDR7dVDKOdQKJzCYKrMspiuq2iCn41bG7g3QqCKdo
	lZcjVK1uU6cq7O0G8IGj4hmiiicAkoka6WEumN01c7ILywD0mjNSKiEZjn08NSC+2EXZ8E7Y/ZP
	PJyCrXeVlR/NXH
X-Google-Smtp-Source: AGHT+IGugMn57ULfku/7PoLfVS94zB4eAAyCUrzCnAtIBRP5afzn5Uya557yoOr7gwgDWd6h+J/mNPmUkLtE
X-Received: by 2002:a17:90b:1d92:b0:32e:389b:8762 with SMTP id 98e67ed59e1d1-339c264f452mr4565791a91.0.1759511384557;
        Fri, 03 Oct 2025 10:09:44 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-119.dlp.protect.broadcom.com. [144.49.247.119])
        by smtp-relay.gmail.com with ESMTPS id 41be03b00d2f7-b60999d4172sm268656a12.8.2025.10.03.10.09.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Oct 2025 10:09:44 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32eddb7e714so2039354a91.1
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 10:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759511383; x=1760116183; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Rhq5Xd4Igc9fjcR+TCYBH/u4+ukG5nbOgfFURkP/fuM=;
        b=Az4vYIaLPQENxx7lbM5z/Mj5zGy5rE59RvI1fK1IjUVV7VQZDHnedP6TP6pXO8ZXYp
         RZBQaFBeOS7rP61UekccNfzQhBIhCW9HBiPTAFp/ZGbxEducMnjdRCjBWgbEQ0FHutQf
         TGoA14N6i6Tpb3nbK5TSy6imaQg+KMnCzdSBU=
X-Forwarded-Encrypted: i=1; AJvYcCUOsbKwSvzf20DjjRcdQ6sEVtXSDG1glYIcoKMN1wqjqnc3IGj5Pm3bMeiQPuDi3vLWW8HQ9DEnRoj1@vger.kernel.org
X-Received: by 2002:a17:90b:33d1:b0:336:b563:993f with SMTP id 98e67ed59e1d1-339c27b9360mr4610184a91.34.1759511382734;
        Fri, 03 Oct 2025 10:09:42 -0700 (PDT)
X-Received: by 2002:a17:90b:33d1:b0:336:b563:993f with SMTP id 98e67ed59e1d1-339c27b9360mr4610148a91.34.1759511382294;
        Fri, 03 Oct 2025 10:09:42 -0700 (PDT)
Received: from [192.168.1.3] (ip68-4-215-93.oc.oc.cox.net. [68.4.215.93])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339c4a1a19csm2669228a91.7.2025.10.03.10.09.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Oct 2025 10:09:40 -0700 (PDT)
Message-ID: <72d1e09d-f30a-4f8e-95c3-b9a40e1e1b73@broadcom.com>
Date: Fri, 3 Oct 2025 10:09:37 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: mmc: Add support for BCM72116 and
 BCM74371 SD host controller
To: Kamal Dasu <kamal.dasu@broadcom.com>, andersson@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 ulf.hansson@linaro.org, adrian.hunter@intel.com
Cc: bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org
References: <20251002210426.2490368-1-kamal.dasu@broadcom.com>
 <20251002210426.2490368-2-kamal.dasu@broadcom.com>
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
In-Reply-To: <20251002210426.2490368-2-kamal.dasu@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e



On 10/2/2025 2:04 PM, Kamal Dasu wrote:
> Updating compatibility to support BCM72116 and BCM74371 SD host controller
> similar to other settop SoCs.
> 
> Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


