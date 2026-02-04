Return-Path: <devicetree+bounces-262732-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EAh3LzR3g2mFmwMAu9opvQ
	(envelope-from <devicetree+bounces-262732-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 17:43:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 20189EA685
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 17:43:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1D1FB305D2B1
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 16:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 102DB3126A8;
	Wed,  4 Feb 2026 16:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="PjILk1Gx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD0182F49F6
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 16:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770223141; cv=none; b=ny/VSPPHnSYZaUmtsKJvLdZ/ZryXIAwV882FeOZSkFbP+p3s7h57R/opJWZWqHrWpLKtP2SwUIO7E26KgXxtR/VGUopSS005t6fwaPx3F90CF6mBPsZU9z+cc21jl/pU/LYk78gUkoZpGc/6m6/+wMHhrlalLDsgeOAq0KNtimE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770223141; c=relaxed/simple;
	bh=F853b0KXSPGAcQ9VwtxlP4kGSJnL/qktYMbKK6xPExY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OeAqPVSbpcqXQiUBuF5Vq+x94hrfeFvHjH37Bq9ySML6Fer/9/sO92rbf0Lszf1w9PgGRQGTxUzA+0FLquHykTG8Gf2/un69xkVLaJlLsUnnJk2pYr7DsdEAinZwuqiEFnnfM7tDvJfsTcmvCplRSF6iygQhRkcfy/PNpu4W6qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=PjILk1Gx; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id F2E1240651
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 16:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1770223138;
	bh=Rp00X+xKKqyCYdahSrblPa7LJgKvIx3gSCIrSAbBoco=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=PjILk1GxyLsxRWx5rgqvKy7WuU8PaDWNIKoIJChCRHNRCUAnW93hXANof4d+eF2tt
	 1mG4LyHX4u4+ooevRoqbanNFkXQE4EWTzadoAdOsTQz7b4O/RXeMMJMD1+7JOodSTx
	 jkrV4EJOqjDCN5+AA0DsuxajJRMbqEjVxMIeMOURsCSykbPc/N3TuXWed8h4CHqG6Z
	 xzHTMAIthKhoRKiJ57l1U/JD/Jw6nxtCESK81mB0BsGHRmi9WG518ua69FftvzIK/W
	 ZmMhPaFu9DPmJ0dh71N5jwSn6sDk4kYMoxbQbY5DxBBrpgi4D7fsDvvAqU3dw8XdSt
	 Hv07eOMscx96cb4lWV8xLx8s0oArLOvIl1Xe/oGh7xiRokCf2fGB7AoplrKBEY0Bsd
	 A4A5n6BUhLO1zzhmxY3n6MwCdKR9NwWf3dtzxuY5jMVhPoibKHjR/3jq5SrsBv1v9x
	 LK0BzjscBXc6au0rJUVP07iZOl8p8xkf203ylJps7B08jZmbajT20QqmQ5XoPdyM28
	 ausvhLQpp7VGLTQxzWViVFaaD4BxyiCH3w3uMZ8oBJu511ybFFCQxrFfUHwBeg3D+i
	 ng8NmmGC0osZDUKvq+G4855xjRRR/9w/HiJmrcFKReE7YNYEv6/CJoOjoDtm9IKD1d
	 UXvBAQ33+0uPY00Tcju1Ea/Q=
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-42fd46385c0so35257f8f.0
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 08:38:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770223137; x=1770827937;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rp00X+xKKqyCYdahSrblPa7LJgKvIx3gSCIrSAbBoco=;
        b=uebIV00EyVcXJzFtb4tj0kzGMlZIvHvoZGpa+vH9fYjv1SuaQhfJMCYuTftPRFP3a9
         Wxpl9x2UW5rvQKmn0gUxdG2w4gvCdnhzr5U74ZT2D5cQzglIu3t5ZdJmJmexIaEykWvK
         3ki+9rkXcQ+q2pMapvywkWqDucOZm+CqMHry8PwMHG2yVFZNQquYK0B56lXXTbSAIWeS
         9PenRENo4R9BpyPif15Q7Cylg4kabjGnhWYurxeubFSLtoeAuf46vYRgzPA2ZVI+qojE
         2Es2renparpva7Xp3pTsjxguMsSH8KEg9/9qlmpPOsVETXISMt3eGZ4e33dLw/q1lblR
         VJMg==
X-Forwarded-Encrypted: i=1; AJvYcCUapO0UW4cA8t0lHBhVWfRW3zrrg6imjtWtSkbRuKhQwbtjfacVt1mL9P3Riw9yARscel41LD/jQwY2@vger.kernel.org
X-Gm-Message-State: AOJu0Ywt+REKwfI6CYMqfLPY0w03VC/fEAsdow4byRIHU0yM+aK+IwV9
	/rOx+qP6dEBU83K3N4/uL9NOsRhPF+4B8VKe2X6blwo/bm3IRBeXMSkakLbeOJpGjqgPsxpcluN
	lAFBYbpzOgbmImLI+i4gpRfL2nMTJJHR2+fnNDPOyonVXQLrVJ+wLxFz9207fleCpFJSN4fyuc/
	Olltc=
X-Gm-Gg: AZuq6aJrjYH7AEZhZFtSaaGQZwgfy/MR4hpf3QkytxAZ2uu0ZvzNC32intMJ8KW2q/E
	9kA7zYDjlcErLfJv20dU2/8vJlYzW0gQShMsMsNA+xlJ48uAfUL/A7v93x9n3XR7AT90n6fcq5n
	jBs1VscxFcNKsgEdoe2Og1O5zIOk8OiZn2xTsFwOEJSt7/T/0Z5JDJA+4CT030yjolUn33ku878
	u0CnbeED3UyIA5zyDY8Tv3QOpTubB1OHJ6CNS3BLCEKMOuu+KzDrDsaGNVpFTtJ8UsR8fpJGC8d
	qvECDy/N6b0G7N5l4lOg1DMDdAGHIgZrPjohjJ1jqtIBs7ZWifJk5q+qW4NPAhLKG3yeFmf++Dn
	oEkj72vBN2WwM1ADv5+ZkFgzEQlwkvB6l4o3aDKpTvGlFonREXW8QefaqjAi7jWoy4KLtWwKyyN
	SCVbBsaPY=
X-Received: by 2002:a5d:5d0d:0:b0:435:e3bd:5838 with SMTP id ffacd0b85a97d-43617e3c9bemr3476205f8f.25.1770223137434;
        Wed, 04 Feb 2026 08:38:57 -0800 (PST)
X-Received: by 2002:a5d:5d0d:0:b0:435:e3bd:5838 with SMTP id ffacd0b85a97d-43617e3c9bemr3476162f8f.25.1770223136979;
        Wed, 04 Feb 2026 08:38:56 -0800 (PST)
Received: from [192.168.103.128] (ip-005-147-080-091.um06.pools.vodafone-ip.de. [5.147.80.91])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43618057f9esm6385227f8f.28.2026.02.04.08.38.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 08:38:56 -0800 (PST)
Message-ID: <46d5d249-8cf2-46d1-a90c-1f2c5f146e15@canonical.com>
Date: Wed, 4 Feb 2026 17:38:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] riscv: dts: starfive: Milk-V Mars CM Lite broken-cd
To: Emil Renner Berthing <kernel@esmil.dk>, Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 E Shattow <e@freeshell.de>, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260204101602.30184-1-heinrich.schuchardt@canonical.com>
Content-Language: en-US
From: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <20260204101602.30184-1-heinrich.schuchardt@canonical.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[canonical.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[canonical.com:s=20251003];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262732-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[canonical.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heinrich.schuchardt@canonical.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,raspberrypi.com:url,waveshare.com:url,canonical.com:email,canonical.com:dkim,canonical.com:mid]
X-Rspamd-Queue-Id: 20189EA685
X-Rspamd-Action: no action

On 2/4/26 11:16, Heinrich Schuchardt wrote:
> The card detect GPIO depends on support by the base board.
> 
> Detecting an SD-card did not work for me with a Milk-V Mars CM Lite
> mounted on an Waveshare CM4-IO-BASE-A board.

The schematic of the Waveshare CM4-IO-BASE-A board is available at
https://files.waveshare.com/upload/a/aa/CM4-IO-BASE-A_V4_SchDoc.pdf
showing pin 76 is not connected.

In https://forums.raspberrypi.com/viewtopic.php?t=291041 the Raspberry 
Foundation explicitly wrote that pin 76 should not be connected when 
using a compute module socket.

E. Shattow pointed me to a board
https://github.com/NabuCasa/yellow/releases/download/v1.3c/Yellow_v1.3c_Schematic_git.8957b440adda.pdf
that actually disregarded this advice and uses pin 76 actually as 
cd-gpio. This usage of GPIO 41 is a property of the specific base board 
and not of the Milk-V Mars CM and should be described in a device-tree 
overlay if needed.

Best regards

Heinrich

> 
> According to [1] SD_SDIO0_CD_GPIO41 is connected to pin 76 reserved.
> The Raspberry Pi Compute Module 4 IO Board documentation marks that pin as
> reserved. The Raspberry Pi Compute Module 5 IO Board documentation
> marks the pin as VBAT.
> 
> Remove the cd-gpios definition and add broken-cd.
> 
> [1]  https://github.com/milkv-mars/mars-files/blob/main/Mars-CM_Hardware_Schematices/Milk-V_Mars-CM_SCH_V1.0-2023-0905_Lite.pdf
> 
> Signed-off-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
> ---
>   arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts b/arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts
> index 63aa94d65ab55..566b0bdc2800d 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts
> +++ b/arch/riscv/boot/dts/starfive/jh7110-milkv-marscm-lite.dts
> @@ -13,7 +13,7 @@ / {
>   
>   &mmc0 {
>   	bus-width = <4>;
> -	cd-gpios = <&sysgpio 41 GPIO_ACTIVE_LOW>;
> +	broken-cd;
>   	disable-wp;
>   };
>   




