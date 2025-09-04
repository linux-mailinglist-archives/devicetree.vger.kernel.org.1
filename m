Return-Path: <devicetree+bounces-212987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED7EB44565
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 20:28:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3A5351C87292
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 18:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF1B9343D9D;
	Thu,  4 Sep 2025 18:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="DIORHLdp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f227.google.com (mail-il1-f227.google.com [209.85.166.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA7B343D7D
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 18:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757010522; cv=none; b=KOTWoNdkqRFmz/xmYW/TpLy429ZOsWWfG6GUKtd2Em2GdYNSJGgpza/yZV7mm1ALlJoV9VT8FfOIde6bi7ERpMTXII64qAJrAG2flXf5ZoOENxW4DwOi87iUQOI9pq3smPbBzm0PM3jUHQraLsUZM74rbkgd1eTaJuGNGb12ofM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757010522; c=relaxed/simple;
	bh=q8yl9UAC+xlFQzwRViDxyj79HGQ8dK/5g+KGtqUhusA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=DgryMJVrPQEBo37418E/KGcT1gSH/HHS6c9Ixr4WjShqOXmxfbR3d5N0nstErjaTtCBy39wTfg3qbSUgnsLtN13xu1LNnoMTe6OkDsmuHeh8bBs+kAL/72/MVUheUshc1Slo1dlz1GsGmBX23A4kD2HFkJLIV8I00GrazwH7Oyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=DIORHLdp; arc=none smtp.client-ip=209.85.166.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-il1-f227.google.com with SMTP id e9e14a558f8ab-3f65d600d35so12546005ab.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 11:28:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757010520; x=1757615320;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:dkim-signature:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cqK97eCKaUkliEvZf9Ytd8do9pTcU9xExLvP6WCAzkE=;
        b=shgkSlD6MQmEQAgjQYylcb+kHUuhNsDc6LCYtWrhXlaIBIYNcAkuPSiZ5ryIP9WKr+
         3giiOiQazAZFoszG5noYmqEsNMXc03NSPDgQTGAY0A/tcKo8/gLbIg/hgKbZtBA75o8N
         IdbRYspR8nWXIKLQjThBk/wy2tw6ZDhTbSFXAym8GBAec/Gs4bN392RekLHo4xjHtju8
         YafF57Ex5Ie2F7xaKNRdFRusFzEYNKaR06vmOa7FK9a5tGunHc5i3b4kDUg7JV4dtHLb
         hN/PLL/v+d4k/6K0Lb2KzGlTWINeCRA2+p+PEAX41/w+OUSRdTzqTAQQUFR/wRMpMYXt
         DwQw==
X-Forwarded-Encrypted: i=1; AJvYcCVH692426NBve99HhMwFWWY1N6Y2ppFysRT8kRfqlVdrxxDcCYwbPV6BvW8qeMorsx3SZzfD9hnjIFN@vger.kernel.org
X-Gm-Message-State: AOJu0Yzld3UA6C8G8SLa3kss8zDM/hiPp4JoOM9tmvl4965UCupH/izK
	xUBfsZuzW85D69yfsOMCC6Mrjou0RPngrh502e663ZEL+QZNSpWQ7LbJc0GFcGqZbjP85lQjNWb
	UYp1T1DkgHKOYXJ9TPtah7+r1OzB+7d3SmW+BUUwXPe5cMf6pOLJc0uzCqiMlDpxmOZZaARweNO
	osZznE8pWEkHVRqq1cIVUYAUh2dE5qDw5JZxRI1yVmRYTon2vO8ijHl+VPlN1UkeKvtCCHSknQ2
	jMmzcZPOh0NgaAY8ohMHg==
X-Gm-Gg: ASbGnctlp+1436qF2WqpU8hOyIg0C1wf/Ub98phNfqxbVek/FO2GK1RDNbF37N9w780
	+nvs3EGhNQdxK3RyUeJ7yoQhbgNpvOyd/ZVwpiIEA5WOhuTJO4m32noRPD/9VUJUB3ng++KetwG
	GKewVhX2M9890xLuw8P6M8TDaz+gGNyZtg7ZFZfqV34rTBSOuJAuGg141bqc/zZSSPhH/iTq33Z
	AjX8uNJ4J5XxzQyl2IT2BXST4ZZPIijKe70+CnHogzX2awiNtSo0049EglWlsnrn+ajtIo4OHmb
	rEB8r9tYRxAld0pYxOiluT6o+2b2LKLcaVH7HgYqYwfUmNfYbyUI3eUza7Jl4oZUIpw/jEjUskK
	nFXPbMvIs9aU/JL5rBIA80VYy54z2
X-Google-Smtp-Source: AGHT+IHHeeOnBzGfqrKzLiWByqeQ/kgP73yZCeE/64UNAH/4TssNkfQzQ/wAd/7luRZr22062n09igILrneg
X-Received: by 2002:a05:6e02:216b:b0:3f1:7907:5fb9 with SMTP id e9e14a558f8ab-3f3ffda5d39mr371546075ab.6.1757010520174;
        Thu, 04 Sep 2025 11:28:40 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com ([144.49.247.127])
        by smtp-relay.gmail.com with ESMTPS id 8926c6da1cb9f-510247ce96esm507293173.3.2025.09.04.11.28.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Sep 2025 11:28:40 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e8704e0264so280725985a.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 11:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1757010519; x=1757615319; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=cqK97eCKaUkliEvZf9Ytd8do9pTcU9xExLvP6WCAzkE=;
        b=DIORHLdp/EqOZ0P5Qkl/kXd90YWjjSXRaqwmRhJqAzj4YVI7EPh2UR/V19EA45JlBg
         P6r76Ga4pcV6L8iw9YYDabV9PQ2rhtzmZcE1Heno+EJWNC5A37clW9A+qHF6teW3lBpv
         7glolW5kWzqQpHMa+L3gSoqW/PEz3GI/wtEwA=
X-Forwarded-Encrypted: i=1; AJvYcCXnAb26r+cXIpUHlsqiRnqMfVhkB7AyyQFtgyHhS4TAzSfUdCQqi6gqVOD+PdGoZBxX5Ztmzlg+8usJ@vger.kernel.org
X-Received: by 2002:a05:620a:4145:b0:7fd:6709:f091 with SMTP id af79cd13be357-7ff27b20401mr2095666785a.20.1757010519041;
        Thu, 04 Sep 2025 11:28:39 -0700 (PDT)
X-Received: by 2002:a05:620a:4145:b0:7fd:6709:f091 with SMTP id af79cd13be357-7ff27b20401mr2095663485a.20.1757010518465;
        Thu, 04 Sep 2025 11:28:38 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-80aa62c789esm322292485a.11.2025.09.04.11.28.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 11:28:37 -0700 (PDT)
Message-ID: <d36c5597-e26e-4ddc-93b3-222d8b40dab7@broadcom.com>
Date: Thu, 4 Sep 2025 11:28:34 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
From: Florian Fainelli <florian.fainelli@broadcom.com>
Subject: Re: [PATCH RESEND v6 0/9] clk: bcm: kona: Add bus clock support, bus
 clocks for BCM21664/BCM281xx
To: Artur Weber <aweber.kernel@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Alex Elder <elder@kernel.org>, Stanislav Jakubek
 <stano.jakubek@gmail.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht, linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alex Elder <elder@riscstar.com>
References: <20250901-kona-bus-clock-v6-0-c3ac8215bd4d@gmail.com>
Content-Language: en-US
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
In-Reply-To: <20250901-kona-bus-clock-v6-0-c3ac8215bd4d@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 9/1/25 10:07, Artur Weber wrote:
> This patchset does the following:
> 
> - Introduce support for bus clocks. These are fairly similar to
>    peripheral clocks, but only implement policy, gate and hyst.
> 
> - Add matching bus clocks for BCM21664 and BCM281xx peripheral clocks
>    and update device tree bindings to match.
> 
> Signed-off-by: Artur Weber <aweber.kernel@gmail.com>

Stephen, are you OK with taking all of those patches through the clock 
tree? Patches #8 and #9 have a dependency on patches #2 and #3.

Thanks!
-- 
Florian

