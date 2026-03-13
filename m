Return-Path: <devicetree+bounces-275461-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKUWN9JFtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275461-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:13:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 81403287EB3
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:13:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 60AAC3016EC6
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:08:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BC483C552B;
	Fri, 13 Mar 2026 17:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="WzdSk1mR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BD7E35F5FD
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773421715; cv=none; b=NcWYHllogg4StKf590qW0ukL0xWSc0EN98M8g7vtvZeCUYDRVCEY7wxmhDx+uH2h8hvDWYu7vGtK9nT+FfRAWj9CD0Zdd3iartT5QQD36L/t29cCpDYbUWlWD8lg5NDhaQn00S6wzT82N0dOZPZWjU12CiGERw8x1PWI8igN62M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773421715; c=relaxed/simple;
	bh=na5aIQmd51a6vTVSTeVTzISuG98aQ2mjt0ZNjgjSa4M=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=pzayXr04xfwBWRCG8x3SkeYkfOZ6yTc89bFvnADcQBcek2NI65jVSFTSoxPbxROA8Rqnf4eKYGmtcRWlyz2CjmkexNffiaj0426X4tCiKriZaPWyIgxcePlVBdmINcFF6K+crNW3OtcQC05bVyyVTy2adcWvfVoRhFFerRIqpG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=WzdSk1mR; arc=none smtp.client-ip=209.85.222.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-8cd78a4ce8dso321445885a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773421712; x=1774026512; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=q2wUEHO95agDl9HgpTnHWh4fawNLMxRmnfJlPuyaoJY=;
        b=WzdSk1mRSe4L1cDGWT8I7i8ZnAHVbDgiDCtkOsUbizgieDi/uHO8Dyb1XIdczqlaJg
         m0pD9LIJ4Zg9onbtQdH49fv5Y4WLgre/e7Z9xU9rLPwkUUY3XpDD9h1f4sOWcCbBoV7V
         V3wJTLCW5Xy7Yc3LACf8lDYXmvtDIcXVfk4OvW2+LNH9QKssMWW1th1FnXqUILQu3M8+
         ZrqWpwN1XLxtJ/e8a5WgZzYcJJBFgfV+haZG2FLckxGStVisoZ7Sw5vDpkfO4pd2yIv9
         Tntnw347t7xwzaIxArnuKbFn0nBZxV6YIp+Voxsl1OoiYepJhCN9yGHwPeRWgO93mZDB
         TDNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773421712; x=1774026512;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q2wUEHO95agDl9HgpTnHWh4fawNLMxRmnfJlPuyaoJY=;
        b=gM4HjlWKcf4Lm7r+P7YfdBBTj8r+ZGb4hEdW9gAym2fU8qayTJz9xaAn/VByacYWhn
         O/vJn4Vp7y6diyOjfsZsrkb/gfOo56RWC0bDEazyPTITOvVyLHeOVUUG+EqfnKmXcfe5
         OqwuWXETMqa7Z+sOP4rWD5kpKkMUFFk79FmcY/LlBlNYNeQPbgIhZ7u5cQp/DoYgj58k
         qUoPz08MXkKSio+rkGix5kc/iBOMZTZiIxHvJCo63eW+c/zXnRoyP2gDalzJWllIbvNy
         61L3a9yCuRg13680xWiXLQSqMAEEa3ofUbWaKgjsFhndU22siK9LtWWTF6TQ/VK9sxpu
         tEOw==
X-Forwarded-Encrypted: i=1; AJvYcCUzDlnc8dj0GEKoA3zpoi6O4lj+YuodNz180B9p3TlJxTTCz3y5nxijm/qUlDO2znpXyBahxjaKPuVb@vger.kernel.org
X-Gm-Message-State: AOJu0YyYn9mPqyIDLRGrujUxCQXzcN/O6VQXVeR7yLXvOyI/niLEYIGW
	2iBkJRjkDcTC+jqQmxKKEgnzDWsICT/Av2q+n/05ic6Fbl5UtL8TxgshtJ0Nh6p8C70=
X-Gm-Gg: ATEYQzz8tZmmGHuWonW9mud6TT0dWSeE2TcRffznupWpvG4O81jwsA6MBsezk/3Tb56
	W0vQaGE4vj/8WAmmBvBAoMBSDxyt+HdFcbRLbnffK9d0nWlDgycSDfWKeqIzVAeMKpyKM9+h665
	DHO1u5VnO5yU1uRCvu9JV6YPi0UqjChIF+VGax8c/Gfj+4OtjVCjrComx+OBGxnX6G+l1q1EdH5
	1Q7zL9s+urJ7AGWLnFAeOlP2RuSYgFNsNDm9MRUD5ZkCbaMW6dF5fYSetBb9AD/jHSZ7fjt21y7
	Ips1d+juG03TD1J46d9Ap+L/hnPKkVNi5PN0ELtUG1oE5owVsO3fQDuA9GTJap18qQ7AU2A/eq8
	wh9u/mUjzO1zilgamuijxHTgXM6r99yLCi4jOR3gvLqZJuT8kXJzVY0zLHTulDnMsg068iJ1JtV
	aemUpruI4JSh/b15SfmwbyWvDtXjhTNImu9sqWW2U1HhPNM8/NPJ/Q7Q8WQ3tg0945rRBtulZgS
	VbE
X-Received: by 2002:a05:620a:1a19:b0:8cd:90d5:92c with SMTP id af79cd13be357-8cdb59fe41amr594805385a.12.1773421712407;
        Fri, 13 Mar 2026 10:08:32 -0700 (PDT)
Received: from ?IPV6:2001:1970:3847:e000:4c82:63a9:39e9:5c17? ([2001:1970:3847:e000:4c82:63a9:39e9:5c17])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cda1fda2c6sm583719685a.13.2026.03.13.10.08.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 10:08:31 -0700 (PDT)
Message-ID: <b3fa0aef-8efc-4c5a-8c9e-ee319b3cb0e2@baylibre.com>
Date: Fri, 13 Mar 2026 13:08:29 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Trevor Gamblin <tgamblin@baylibre.com>
Subject: Re: [PATCH v2 7/7] riscv: dts: spacemit: k1-orangepi-rv2: add SD card
 support with UHS modes
To: Anand Moon <linux.amoon@gmail.com>
Cc: Iker Pedrosa <ikerpedrosam@gmail.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 Yixun Lan <dlan@kernel.org>,
 Michael Opdenacker <michael.opdenacker@rootcommit.com>,
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com>
 <20260309-orangepi-sd-card-uhs-v2-7-5bb2b574df5d@gmail.com>
 <f2eeddcb-712f-4a67-9687-e217f46f9ea8@baylibre.com>
 <CANAwSgSjsn46p13LokjYZBLdOrUBTFsmDNf80TG=nvkqHWNkfQ@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CANAwSgSjsn46p13LokjYZBLdOrUBTFsmDNf80TG=nvkqHWNkfQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275461-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,linaro.org,kernel.org,intel.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tgamblin@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:email,baylibre.com:mid]
X-Rspamd-Queue-Id: 81403287EB3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 2026-03-13 10:42, Anand Moon wrote:
> Hi Trevor,
>
> On Fri, 13 Mar 2026 at 19:26, Trevor Gamblin<tgamblin@baylibre.com> wrote:
>> On 2026-03-09 07:40, Iker Pedrosa wrote:
>>> Add complete SD card controller support with UHS high-speed modes.
>>>
>>> - Enable sdhci0 controller with 4-bit bus width
>>> - Configure card detect GPIO with inversion
>>> - Connect vmmc-supply to buck4 for 3.3V card power
>>> - Connect vqmmc-supply to aldo1 for 1.8V/3.3V I/O switching
>>> - Add dual pinctrl states for voltage-dependent pin configuration
>>> - Support UHS-I SDR25, SDR50, and SDR104 modes
>>>
>>> This enables full SD card functionality including high-speed UHS modes
>>> for improved performance.
>>>
>>> Signed-off-by: Iker Pedrosa<ikerpedrosam@gmail.com>
>>> ---
>>>    arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts | 19 +++++++++++++++++++
>>>    1 file changed, 19 insertions(+)
>>>
>>> diff --git a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
>>> index 414b03f5e6480f05f5d7eeaaa0afb4e86425ae36..361135269801f436703b6f1d768c91325a52f07f 100644
>>> --- a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
>>> +++ b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
>>> @@ -140,3 +140,22 @@ sd_vqmmc: aldo1 {
>>>                };
>>>        };
>>>    };
>>> +
>>> +&sdhci0 {
>>> +     pinctrl-names = "default", "state_uhs";
>>> +     pinctrl-0 = <&mmc1_cfg>;
>>> +     pinctrl-1 = <&mmc1_uhs_cfg>;
>>> +     bus-width = <4>;
>>> +     cd-gpios = <&gpio K1_GPIO(80) GPIO_ACTIVE_HIGH>;
>>> +     cd-inverted;
>>> +     no-mmc;
>>> +     no-sdio;
>>> +     disable-wp;
>>> +     cap-sd-highspeed;
>>> +     vmmc-supply = <&sd_vmmc>;
>>> +     vqmmc-supply = <&sd_vqmmc>;
>>> +     sd-uhs-sdr25;
>>> +     sd-uhs-sdr50;
>>> +     sd-uhs-sdr104;
>>> +     status = "okay";
>>> +};
>>>
>> Hello again,
>>
>> Thanks for doing this work. My colleagues and I have been testing this
>> on an OrangePi RV2, and also a Muse Pi Pro board (making a similar tweak
>> to this patch in k1-musepi-pro.dts). To do the testing on my end, I'm
>> applying the patch series on top of 6.19 in a Yocto BSP.
>>
>> I've been finding that I see issues with the UHS support on my side
>> (this log comes from an image built and flashed to an SD card):
>>
>>
>> [ 1.072417] sdhci-spacemit d4280000.mmc: Got CD GPIO
>> [ 1.109741] mmc0: SDHCI controller on d4280000.mmc [d4280000.mmc] using
>> ADMA
>> [ 1.114589] clk: Disabling unused clocks
>> [ 1.118421] PM: genpd: Disabling unused power domains
>> [ 1.123249] ALSA device list:
>> [ 1.126[ 1.129949] check access for rdinit=/init failed: -2, ignoring
>> [ 1.133284] Waiting for root device
>> PARTUUID=e94bfdd7-a36f-4315-a480-476e2a12403d...
>> [ 1.176569] mmc0: new UHS-I speed DDR50 SDHC card at address aaaa
>> [ 1.180732] mmcblk0: mmc0:aaaa SS16G 14.8 GiB
>> [ 1.276268] mmcblk0: recovery failed!
>> [ 1.277351] I/O error, dev mmcblk0, sector 0 op 0x0:(READ) flags
>> 0x800000 phys_seg 1 prio class 2
>> [ 1.286346] Buffer I/O error on dev mmcblk0, logical block 0, async page
>> read
>> [ 1.293891] mmcblk0: recovery failed!
>> [ 1.297289] I/O error, dev mmcblk0, sector 0 op 0x0:(READ) flags
>> 0x800000 phys_seg 1 prio class 2
>> [ 1.306269] Buffer I/O error on dev mmcblk0, logical block 0, async page
>> read
>> [ 1.313522] mmcblk0: unable to read partition table
>>
>>
>> At first I wondered if maybe there was an issue with the card itself,
>> but by changing the sdhci0 section to this, I'm able to read the SD just
>> fine:
>>
> I used the same example on the K1-OrangePi-RV2 DTS,
> But it’s slightly different from the one you’re working with.
> I tested on the latest  7.0-rc3.
>
>> &sdhci0 {
>>            pinctrl-names = "default";
>>            pinctrl-0 = <&mmc1_cfg>;
>>            bus-width = <4>;
>>            cd-gpios = <&gpio K1_GPIO(80) GPIO_ACTIVE_HIGH>;
>>            cd-inverted;
>>            no-mmc;
>>            no-sdio;
>>            disable-wp;
>>            vmmc-supply = <&sd_vmmc>;
>>            vqmmc-supply = <&sd_vqmmc>;
>>            no-1-8-v;
>>            status = "okay";
>> };
>>
> +
> +&sdhci0 {
> +       pinctrl-names = "default", "state_uhs";
> +       pinctrl-0 = <&mmc1_cfg>;
> +       pinctrl-1 = <&mmc1_uhs_cfg>;
> +       bus-width = <4>;
> +       cd-gpios = <&gpio K1_GPIO(80) GPIO_ACTIVE_HIGH>;
> +       cd-inverted;
> +       no-mmc;
> +       no-sdio;
> +       disable-wp;
> +       cap-sd-highspeed;
> +       vmmc-supply = <&sd_vmmc>;
> +       vqmmc-supply = <&sd_vqmmc>;
> +       sd-uhs-sdr25;
> +       sd-uhs-sdr50;
> +       sd-uhs-sdr104;
> +       status = "okay";
> +};
>
> Thanks
> -Anand
Yes, my mistake - with 7.0-rc3 it works for me:

[    1.071767] sdhci-spacemit d4280000.mmc: Got CD GPIO
[    1.110368] mmc0: SDHCI controller on d4280000.mmc [d4280000.mmc] using ADMA
[    1.115231] clk: Disabling unused clocks
[    1.119072] PM: genpd: Disabling unused power domains
[    1.123875] ALSA device list:
[    1.1268[    1.130718] Waiting for root device PARTUUID=e94bfdd7-a36f-4315-a480-476e2a12403d...
[    1.181158] mmc0: new UHS-I speed DDR50 SDHC card at address aaaa
[    1.185341] mmcblk0: mmc0:aaaa SS16G 14.8 GiB
[    1.198009] GPT:Primary header thinks Alt. header is not at the end of the disk.
[    1.202874] GPT:1134331 != 31116287
[    1.206388] GPT:Alternate GPT header not at the end of the disk.
[    1.212468] GPT:1134331 != 31116287
[    1.215993] GPT: Use GNU Parted to correct GPT errors.
[    1.221230]  mmcblk0: p1 p2 p3
[    1.529978] EXT4-fs (mmcblk0p3): mounted filesystem dbc76877-092e-4f8a-9f06-bf286309d8de r/w with ordered data mode. Quota mode: disabled.
[    1.540069] VFS: Mounted root (ext4 filesystem) on device 179:3.


In which case:

Tested-by: Trevor Gamblin <tgamblin@baylibre.com>

