Return-Path: <devicetree+bounces-246809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CADDCBFFFD
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 22:44:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AFD4830572FE
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:38:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BCB9322B83;
	Mon, 15 Dec 2025 21:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="NkV4WCtW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f228.google.com (mail-yw1-f228.google.com [209.85.128.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63893090E2
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 21:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765834699; cv=none; b=CkqIGmBtq2CuJzUjg30t47qaNTQRUYsPkTsygFiytnyyQzpZll7Fdj2YWvd6mjLl8D0A8jyD4nAcIXaYRgX4e/ci13lt4TOGzmiaMEkJ9M81vNk9Ku7C1SQZONlUj2Q1dduPbQE0DKXohEX06pWk8Wxg/VSY9ahT3SwjLHVPvlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765834699; c=relaxed/simple;
	bh=QgbdFkTQrCM+SjuD74b1Txu5Xq8JkTTQAIUVnKQIryI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GIlj5Nvhh4zwtS/ufp2Ot/T6zAf9IZcBoCcUDNTzz7xHPgBF25YZE0YGx/zZuoAppoWyAeE1W0QU87OOKbzhpyJw5Rt7OD8CHYTwx5N9hIZnXFSoEoEjexas15KTdxfA1RRTHAyCPP8q/TvSCDcPtDHyT2kOKl8CNmzNbvMJDWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=NkV4WCtW; arc=none smtp.client-ip=209.85.128.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-yw1-f228.google.com with SMTP id 00721157ae682-78d6a3c3b77so42070127b3.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 13:38:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765834697; x=1766439497;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nAzhZfnq+Y+umpS+zHh9k29x4I1swYKfU58uwPItIqk=;
        b=f9L8fPhBSmuD0m+wtKh+3N38VXh+SswX4HyMlqenwAFmj2bJ+rEsBWcbF5ZXL1VGQC
         4hjMlhkEDmYITrai4ViXhBvH1ht3Hdha+hvhJ1o9vmTvOu2M7Nmk7jdY9WGo3kBud1lE
         VNUCGCZiKc9HEJLW9lhPhZEyis7jfb8DBbyvVMceXbBfd+WiQfbbFak/NHhLOrdxkAMO
         Y9GN4qee4iCAIrBvcg9nkvWYJpEKF9RPGudahJrZhj0MHwDFt1n4UQY+lnGUu0/A9Ycs
         Sa3MMobndrsEJkQaeiB9d0NYLzL9to3vUM7rUKZubsC1zf53/9QPwV748H18RdGeFHy5
         8onw==
X-Gm-Message-State: AOJu0YwewcX6adkHa5RpvWLDCynQd+Rt3yZP+7AMKFsJ+292A8Ak/JG4
	MIYajsKNXiZNE70fkxOtIB7SOIGPUnnO9qWfd+fip7lkVewvej4NfOO577wsMDfvqGGkAWFN+Ly
	6VA2PuqQjcy9wMxx7eZrDGEbObzgClvV9IIHLGELeW/KFtRzrW36HvHHXvaBJwKHQ6IV3I/EURw
	A1C+N66++WycdnPfejFRJYMCtPsQG8UGf9Dz8VGmC6fYOxWf/JtsfJvujfuLEfJXnT+XTziQnPB
	uqhggJ5PTy+H41AUoHIFg==
X-Gm-Gg: AY/fxX7WOSW2mSethY0JhNOi6WIqKihoAqNnbHzYFniHuGqqTjIu7q4XJTZg97mE8b/
	h3PvOpcQx+Qw9EZ3OuSwnkt00htAXtcHKJpTkRGUxtxiGACmQIS1tMBllpOUa0SE5xH5TGGjXf7
	98ibU5Z/zykGXoy9f+4eA4Me/oO0V79O+9w/SvqeTZ6PTbeNV/v9GscoDh3o8OG6OwIhvMZprJX
	fye0qd4eur27Ymj8eg3ALM258gq2Tqk54hBeZlM97kSWlziL8wCzc9m/rdaeh+pLYZ4ce8vtE9e
	mCfwpcCgvHK3TMmgSg4xEdtk9sF3TWIBNj1AoJdH3wSaGHor8Yo/Op9CVCZ6hj9wuEndhR4QyqK
	XZ8F8D2cc6AQ2yLcuK7ZY6XnMTvXP9mYSg6S1IL8r3dbbP3YW2Dciri+9mcCLJP4xtMw1PxzOOj
	qVvVMjKzvLq0v8rE8BfCdOIgSVoCPbRL8j3w2iqqmJnuwrLN43nQ==
X-Google-Smtp-Source: AGHT+IGidbtpwmX3tJBp+gScUjfNJkfpzfWG1332nwKCqnaqqljQbf/0tpfmHVpVS48YWR8GnSsFNwKJt3x5
X-Received: by 2002:a05:690e:1283:b0:646:5127:a024 with SMTP id 956f58d0204a3-6465127c78emr128996d50.7.1765834696752;
        Mon, 15 Dec 2025 13:38:16 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-19.dlp.protect.broadcom.com. [144.49.247.19])
        by smtp-relay.gmail.com with ESMTPS id 956f58d0204a3-64477d34ad9sm1632731d50.3.2025.12.15.13.38.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Dec 2025 13:38:16 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee0488e746so87466721cf.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 13:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1765834696; x=1766439496; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=nAzhZfnq+Y+umpS+zHh9k29x4I1swYKfU58uwPItIqk=;
        b=NkV4WCtW+XLjrJ+D7FGn8co65E8KyLZ9yqH349uVipSQVIajmI9Ah8Jrjo3wVLtrJ4
         F2dwG7zpD/ElTEKN8DhCpdemA0gvqPaFGyW0vozhWymMfexYWUl3J1i41fPr92aBWQ4J
         Sz24jfUWCNxivECGK223x1mknF861oQL7LJ6E=
X-Received: by 2002:ac8:5f06:0:b0:4ed:ae94:5f5b with SMTP id d75a77b69052e-4f1bfb9be98mr222583411cf.8.1765834696100;
        Mon, 15 Dec 2025 13:38:16 -0800 (PST)
X-Received: by 2002:ac8:5f06:0:b0:4ed:ae94:5f5b with SMTP id d75a77b69052e-4f1bfb9be98mr222583101cf.8.1765834695659;
        Mon, 15 Dec 2025 13:38:15 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f345902748sm3725431cf.0.2025.12.15.13.38.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 13:38:14 -0800 (PST)
Message-ID: <f14247e3-3c9c-47b9-b912-6eb4a4d34412@broadcom.com>
Date: Mon, 15 Dec 2025 13:38:11 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: raspberrypi,bcm2835-firmware: Add 'power'
 and gpio-hog nodes
To: "Rob Herring (Arm)" <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Eric Anholt <eric@anholt.net>,
 Stefan Wahren <wahrenst@gmx.net>
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251215212554.3319105-1-robh@kernel.org>
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
In-Reply-To: <20251215212554.3319105-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 12/15/25 13:25, Rob Herring (Arm) wrote:
> Add missing child nodes for the RaspberryPi firmware. The firmware
> implements a power domain provider in a 'power' node. GPIO hog nodes are
> also supported, but the node name pattern was wrong and failed to match
> them.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

