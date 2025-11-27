Return-Path: <devicetree+bounces-242807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA61C8F5A8
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 16:53:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 44B054E3F15
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 15:52:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 799862BFC70;
	Thu, 27 Nov 2025 15:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="JpJlc8NR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38275283FDD
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 15:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764258774; cv=none; b=tZhUdq1zZSWUMEgSSwn+PMMH/MJfLQ9Um1Yhsmvf2tz3tfjFjNGcRwo2Xczo+ERZMSbUEya+L6vfr48W4d/hCpsm+loaktx+qLeVAmPkHmIMz/xRumcY0BTddowisBGK/AdIRkUuw03zNRXD2C2yy0hbr5JkPo7qp+d/Ueeqh2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764258774; c=relaxed/simple;
	bh=I3zM+W3ylLfRAzY+xNJKxjq/Rnpi2uWSQLy2AYd9VEc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Cqr/os6sNM+ZNqXuLQKjEGHDx5Xdd5w9k3EiQxWpKT/0yWLAq2QnoUs4CfJ9SeDSFRlW58bCEKa2CMf6raKHQjLag4w4vyFXUocFbxCcDnqemfpCg7zTeexMWI0HUHkLyq9O513wU+F9lXfR3DaNE6s1VUQTKSai7hROUAwqImY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=JpJlc8NR; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 0ADD640F18
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 15:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1764258767;
	bh=7YwSquvmhmm6ufwqm2v8LP2/Ib5+ORpnGFBYFfFEi6Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=JpJlc8NRR2TbD2qSjiXs8mK7sZ0+D7aixW2wfIaGydNn+c3Rmocalf7CgYo0L7T4B
	 v6MzfgoIy2JoGOQHzJL++aHwJh0xzUt582s9MMSMsBW8j2QFpxXJexECRU+lpMNfxl
	 rZhPhuyHE6r1BmkpiHdtaPdPGXPLeME1E19BYI5aIEzffNDZKDv4FaNovKquWI329H
	 HmuQ8bho6qeQjA/wsF5I99dP8q/L+v5l7K3WlnxYhFzMetMzy4U+/hpXhHBZljOgEG
	 xNmicZ0/ilyQPtudRZvQfnM6ZE3oHj9DOXvD7vW6uZmlILNAflN3blBduhQkLoX+NS
	 L2kB1LWr9t0fcgKKfc2ynTYZvdXxtylNHxbS+FNwgwDzRXKTx+4Yd702CR2Xhlg3Yn
	 i1SuGEaxfD67i+T/JC7NDOKH9mXjhPCXJQLlOheQSce+AEZXRvLNmhvzZs00kPvmYn
	 VaH8NYnPZ5MqDXN26Ds0g1m7oYLXcztQx5CS5oOpK1MINfRxDY94tbZIW27Z4EUdcj
	 lV/Go6PCPkUoiYWPv0ecCeQAH7slr3kIj+rPPa6UP9qSKgTloEw8yeE6wI8zVKoZbT
	 ZSesNLRqcoJkW+4mUc3/7+C5U0td5KAMrVNYaQ3/WAlsp2JwxfdFacE/1Iq6KlRT/5
	 JcFqhwfgHG6QNn3oJxkNyD5k=
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-4776b0ada3dso13189405e9.0
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 07:52:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764258766; x=1764863566;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7YwSquvmhmm6ufwqm2v8LP2/Ib5+ORpnGFBYFfFEi6Y=;
        b=ATN2l1iMC8U4I2yatOGuMFVdiUedye1SYzriVVNc5G4MA91eA/Riv2YDTrMOdXOSWz
         badl7PQw9Q/rUwITypyI2v0mne/vn/PNu+gYJ/hi8YxvU5d6u3bGdF/oe19LDtsjmnIN
         fFbxOwa77SfJZOoVgiV19S92wa4n9jckILOXv4ho3OcjtLdEiolKXjo7oOsq78P5GgZs
         8bZkIoh6BycFfq7zRWgUyf7OJD0+WaMe0scC8uIfpjgHtRLjDUfqr20SBEDnqOMjuLk3
         yzU93ra319nH2TTkUzSSFZtPUOtA/oEUoDfymHbm/zjjAWr9XTncDIBcyH3se7ArXFmV
         OHtw==
X-Forwarded-Encrypted: i=1; AJvYcCWwyqxBUzKjcrfIJJ8I7fkAlBc1dTjp9LAcUTRQufo9usKMbThNSRYK1GhukSE5JHhTBMASIOSl2wcE@vger.kernel.org
X-Gm-Message-State: AOJu0YyWATm4dDLmfuSjbiWCu7k/KaEBKl3C0qOi7hvp1+lwUFoZgJA/
	TOwPJtEpGjiW4OcIiyHNDiuzeGUWYnCvLM+9leSwsMdYN+oWmM/za6/Fa7leZqqYc2kNinG81EM
	Ao9XC8Yx1BXjeauawiz99FkIEv7NYVP/foX5YHi2gkXhhyL1HUzapGdW+yMtZ/3R7FzUhUimHVO
	8fdfo=
X-Gm-Gg: ASbGncueGL3Ev8nHLhkviiuHQhEnan2wBPJB2bidrasxH37R+1yQhyqIZJ/wBgVK4Tg
	6a5e9QPB0romRXeXJdiW9hzkZIKdRMTW/A9+Y2bXRS8KhZO/i377dTjQTuy86AlQJuc80EPUCr1
	a98DVEGa1hF2xHZQP+AgKB0jEd8RWcFEgQS7/TuZPkwEzCfySj9ufftlW4HvQC5fOaGSIq/5cjU
	tuFCznTyouwQOI2cb0c3g+Q8GJkPhOAu66Q2Iat1bn5h8Q/UW3hA3alUIDoXQXgyK0ryNnMAa9N
	qtD38lLFWaVT8sWuWKnH47jW1t/gaism84GAEk4KfILrhFtHcsL3w/Vu78BQYYWMRXwS/pdGB6k
	9Ytv7F73GqVZCRjZDiguke9k75sha23xvZgiX4R66tHz52Jrvo5biJSU7e3XUcTGHs9QHt7HsFj
	E/
X-Received: by 2002:a05:600c:6d52:b0:475:dadd:c474 with SMTP id 5b1f17b1804b1-477b9ee479dmr174427675e9.10.1764258766361;
        Thu, 27 Nov 2025 07:52:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEhvJmXv4OEoT29/EJo9o8QGCSRXDm1sI+3moy9VScmLoc1+QzReBPmK7lGblaQxdCtRpMOwA==
X-Received: by 2002:a05:600c:6d52:b0:475:dadd:c474 with SMTP id 5b1f17b1804b1-477b9ee479dmr174427525e9.10.1764258765965;
        Thu, 27 Nov 2025 07:52:45 -0800 (PST)
Received: from ?IPV6:2a02:3035:6e0:95a4:4529:9906:9f64:f864? ([2a02:3035:6e0:95a4:4529:9906:9f64:f864])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47913870b38sm8453535e9.15.2025.11.27.07.52.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 07:52:45 -0800 (PST)
Message-ID: <87d6ce91-b2c5-4e96-8103-31df9802786c@canonical.com>
Date: Thu, 27 Nov 2025 16:52:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix audio-supply for ROCK Pi 4
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 knaerzche@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Quentin Schulz
 <quentin.schulz@cherry.de>, Jonas Karlman <jonas@kwiboo.se>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 U-Boot Mailing List <u-boot@lists.denx.de>
References: <20251027005220.22298-1-naoki@radxa.com>
Content-Language: en-US
From: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <20251027005220.22298-1-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/27/25 01:52, FUKAUMI Naoki wrote:
> This reverts commit 8240e87f16d17 ("arm64: dts: rockchip: fix
> audio-supply for Rock Pi 4").
> 
> Fix the APIO5_VDD power supply to vcc_3v0 as per the schematics[1][2]
> [3][4][5].
> 
> This fixes the SPI-NOR flash probe failure when the blue LED is on[6],
> and the garbled serial console output on Linux.
> 
> The ES8316 headphone and microphone are confirmed to work correctly
> after this fix.
> 
> [1] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4a/ROCK_4A_V1.52_SCH.pdf p.14
> [2] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4ap/radxa_rock_4ap_v1730_schematic.pdf p.14
> [3] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4b/ROCK_4B_v1.52_SCH.pdf p.14
> [4] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4bp/radxa_rock_4bp_v1730_schematic.pdf p.14
> [5] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/ROCK-4-SE-V1.53-SCH.pdf p.14
> 
> [6]
> => led blue:status off
> => sf probe
> SF: Detected w25q128 with page size 256 Bytes, erase size 4 KiB, total 16 MiB
> => led blue:status on
> => sf probe
> jedec_spi_nor flash@0: unrecognized JEDEC id bytes: ff, ff, ff
> Failed to initialize SPI flash at 1:0 (error -2)
> 
> Fixes: 7ebfd4f6b52a6 ("arm64: dts: rockchip: add LED for ROCK Pi 4A/B/C/A+/B+")
> Fixes: 8240e87f16d17 ("arm64: dts: rockchip: fix audio-supply for Rock Pi 4")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> index 046dbe3290178..fda7ea87e4efc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> @@ -516,7 +516,7 @@ &i2s2 {
>   };
>   
>   &io_domains {
> -	audio-supply = <&vcca1v8_codec>;
> +	audio-supply = <&vcc_3v0>;
>   	bt656-supply = <&vcc_3v0>;
>   	gpio1830-supply = <&vcc_3v0>;
>   	sdmmc-supply = <&vcc_sdio>;


U-Boot uses the same device-tree as Linux. I applied the change in 
U-Boot and it fixes the following problems in U-Boot for me:

* The serial console is not usable after the supply voltages are set.
* Early initialization of the video output fails.

Tested-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>

