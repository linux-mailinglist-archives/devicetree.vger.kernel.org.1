Return-Path: <devicetree+bounces-274994-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MDhqMnDKs2kqawAAu9opvQ
	(envelope-from <devicetree+bounces-274994-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:27:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E87F27FA0E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:27:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 444DC3050A1B
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2D5B37881F;
	Fri, 13 Mar 2026 08:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f4mcPNYP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED2136C9EE
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773390297; cv=none; b=D0qA15yJpcqV376FVuNbCA9BN6BBJrj/YWxXbPaYWUbnjp/onRjo4JbZ3Xb+WH1Vp/v7qdC8RUIoVZYQLIAzf7SLHbgPLWOAKOypeGqPhR8nhVzSYuLoIzs4gjHmQ+/Q+1C1AEwLfrnHX9FyeffpiydBsqsHdOFXnwe5GrOVjMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773390297; c=relaxed/simple;
	bh=Kz2uYE/5b4RvAtR78O5uSHk+fVEOXBZ4m1wmdq/HOn4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EGSdhlNIM39ixUUlJfmJ3S2yR1iq47/RMBvWcKdXgAsC/4axb2hcfqusUL5YUJR8Rp67FET+d3ObS5dRfkAfsNZp5WyH9eXKgpJI5luKifOfPbixOg4sJ2hzOmNMEdIMZUW5oz3GaFcxdxJtw6jsbmwsKUIX0KmJhlu8jKASzyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f4mcPNYP; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4852f8ac7e9so21388425e9.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773390294; x=1773995094; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hAFGGUj97wUgKBI4E0D3p+1miO3lf4NeLxQAlqvBWVs=;
        b=f4mcPNYPMdMzAG/osFlHDQESgJKjEJtpCNApsIoxyvMjFblQQTIdxAb+eC0BhH1nAB
         ABXaeKuqb6yMVs0rKhA9DNz/5Mvu42/SLK7PQGr/13+nLPzssEZX/f3yRXwHqngJBwaQ
         igIcjQmaI0Iw71noXpgQps2AngcXVEoTO0ZTFhcvIr/YttC0F8nZIFYVF9wKY91TpaOx
         chJ6vaVDon8URiUGEDBVeuDjN/a6XawmX/LPPIBcoE8axp4AAoIgbSqCD5cWDBZAPgl5
         ApNQsNiaEz9jH+yHrJ8aH9AI/VTA6tys82U7SFWPF6RLg/mYkqgmkcZOFRWsNYoIIWzq
         qLjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773390294; x=1773995094;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hAFGGUj97wUgKBI4E0D3p+1miO3lf4NeLxQAlqvBWVs=;
        b=OISClFMk0IdiQ4F0M1NPyNqgBvLogk15UQiM36kQL7ol7b2uvmn/6+R42Tv6xXHVTL
         rHbaQaCotSIEFdfCYSotqPIKqqw21Iw1GaOKoJ2BWtry5xBCkZDYIuJwxWc2zAw46K+n
         S5pbGsm+TFf1u1oNsy8d1Gu/lYGZ4RPBJCVKZhM/ri1pvPHOnejkJg6jhPAmFr5qMRZJ
         f/KEOgLXd5X5TmZPJ3jsAEyiUAmh2kKHHF5YBke5Xjun/BbX+1MxlFYmQ4geMALW44ur
         ZhiJaL5LbCOyWEcl2JCwGHSftNVKCs56OuKRrunCduZgiPVjmIV6xt/n2vynlhosgDIG
         QYdA==
X-Forwarded-Encrypted: i=1; AJvYcCXhdagY7+7kAr4GrM1aK1NKcNtBuv6L71tvmieGxP11fO43DzitKAF8Lt2ju3LMUb3uzqi4u5h8Rb1n@vger.kernel.org
X-Gm-Message-State: AOJu0Yyld1wyPgTkqLB74xsd3tsvMn3S7qySo/fWXmYIN24j8oIf97Uz
	il3yXbECByd48M9JxivxHzfx2Y2UR3oCChTGnRx0gH4mi0zcwOoJgmye
X-Gm-Gg: ATEYQzw00gJCmyKWLNwkf7vHDuKy7jZCZZYAUZv57IAXD65AqPF60yKji6nXrgQRAHG
	543EyM3+Otaf7biNaLDzJeXqkMsGiJkK7hSKga8Kp6e1IOGUkyflGALd2m260XjSFTZxqrrvWck
	HWQ/GVHz9GiJTsdJsYvwEkPPC5OdTaskz9AtnVtyX2sUJTfuAvD/RBQVRkEBpjL2AYYwByTq1fC
	v63Qp0VG3mZOdSxCNaP3ccqqEMgjVMx/2G5ybgy3A73RGNfjm5kySWKN15lg7aZyrlzcsKkcl5J
	O8t9DRZoMouNIA3bj8xbo15m1yZ0qEDGRPXit2gYQgxGeiGGzbCL+wbmXguNgNAJc6MGuGE3wv2
	JFGK6IZiq8A/rap82dPi8WqMx1sErz9tXOy5ipQXGzlgBqa8rY1nevj/8wtNxvrI3RBk1Uo/0dC
	qbqpmOK6PFQjJtBVC/syhz5xFWgQPqZQO1jNOniDVt1AAlxN3fD+hCDmNuG2ObxDdXQ6sA6oRFl
	Q7adm0WeE1UbFBYDTol4lb8YDcctg8kEdqQzXJBGA3JShBD5NldLOx5W6MiRyYiXqCdvA==
X-Received: by 2002:a05:600c:3492:b0:483:c3f3:1dad with SMTP id 5b1f17b1804b1-48556713589mr34343685e9.34.1773390294105;
        Fri, 13 Mar 2026 01:24:54 -0700 (PDT)
Received: from ?IPV6:2a01:cb08:91f5:5e00:f7a6:cd23:3f76:a7e? (2a01cb0891f55e00f7a6cd233f760a7e.ipv6.abo.wanadoo.fr. [2a01:cb08:91f5:5e00:f7a6:cd23:3f76:a7e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b65fd3dsm194645545e9.10.2026.03.13.01.24.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 01:24:53 -0700 (PDT)
Message-ID: <7d1c36ba-2699-4b33-8343-8e0c74fcfe59@gmail.com>
Date: Fri, 13 Mar 2026 09:24:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 0/3] Register the STM32MP25 RCC driver as an access
 controller.
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Gabriel Fernandez <gabriel.fernandez@foss.st.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
References: <20260210-b4-rcc-upstream-v9-0-17ca1db7613f@gmail.com>
Content-Language: en-US, fr
From: =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
In-Reply-To: <20260210-b4-rcc-upstream-v9-0-17ca1db7613f@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274994-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[baylibre.com,kernel.org,gmail.com,foss.st.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[legofficclement@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2E87F27FA0E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello,

On 2/10/26 8:32 PM, Clément Le Goffic wrote:
> The STM32MP25 RCC peripheral as an access controller is allowed to know
> whether the clocks are secured or not.
> The STM32MP25 RCC peripheral knows about the clock secure configuration
> of all non RIF-aware peripheral.
> In parallel all the RIF-aware peripheral configuration information
> are known by the RIFSC peripheral which is already an access
> controller.
> 
> Changes in v9:
> - Rebase on v6.19.0
> - Add Gabriel Fernandez's Reviewed-by
> - Link to v8: https://lore.kernel.org/r/20250924-b4-rcc-upstream-v8-0-b32d46f71a38@gmail.com
> 
> Changes in v8:
> - Use uppercase for peripheral name in commit message
> - Add the '#access-controller-cells' property to the RCC in
>    stm32mp231.dtsi
> - Link to v7: https://lore.kernel.org/r/20250922-b4-rcc-upstream-v7-0-2dfc4e018f40@gmail.com
> 
> The v7 is a subset of the v6 and other prior versions, split to simplify
> the review and merging process.
> 
> Changes in v7:
> - None
> - Link to v6: https://lore.kernel.org/all/20250909-b4-ddrperfm-upstream-v6-2-ce082cc801b5@gmail.com/
> 
> Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
> ---
> Clément Le Goffic (3):
>        dt-bindings: stm32: stm32mp25: add `#access-controller-cells` property
>        clk: stm32mp25: add firewall grant_access ops
>        arm64: dts: st: set RCC as an access-controller
> 
>   .../bindings/clock/st,stm32mp25-rcc.yaml           |  7 ++++
>   arch/arm64/boot/dts/st/stm32mp231.dtsi             |  1 +
>   arch/arm64/boot/dts/st/stm32mp251.dtsi             |  1 +
>   drivers/clk/stm32/clk-stm32mp25.c                  | 40 +++++++++++++++++++++-
>   4 files changed, 48 insertions(+), 1 deletion(-)
> ---
> base-commit: 05f7e89ab9731565d8a62e3b5d1ec206485eeb0b
> change-id: 20250916-b4-rcc-upstream-8a8ea3af6a0d
> prerequisite-change-id: 20250916-b4-firewall-upstream-dfe8588a21f8:v8
> prerequisite-patch-id: e4a708d9c6df5725c9598fbd2169636e4e7dc46b
> 
> Best regards,
> --
> Clément Le Goffic <legoffic.clement@gmail.com>
> 

Everything seems fine here, does anyone is able to take it ?

Best regards,
Clément

