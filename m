Return-Path: <devicetree+bounces-276867-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KUIyF4q4uWn6MgIAu9opvQ
	(envelope-from <devicetree+bounces-276867-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 21:24:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5672B2381
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 21:24:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1E2413003833
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:24:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DACD386C29;
	Tue, 17 Mar 2026 20:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CX7O+no4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC0A3859FA
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 20:24:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773779074; cv=none; b=dUqaJYiM12AuGUUqo6Rru8X2JV33UUuXG4UsltuYdMlIPCSvWmApaPC5AexnbhNDdR0DRdqGKMHHV9YitrApqGKIGINuA8fmmsG6JiIDXCV1AuVV5UXNy2xH0sCKzuDF4+07Cp2QkJBLBGrYU8TIfds8yr7byxyoaJxuxeHqQME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773779074; c=relaxed/simple;
	bh=/pSmMN7yBxcw33FZy6ItYc1Bekt1gKAsnKnNQIrvxNA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sKdkfHJNDbgf6p9LY0boew1aVtt2BNIecCioawRXSd6DGWQGWVRnT6aohrupYdGpF+uS+spec7zcrRtiqcmZwoCQ1Etjp/bstg1uaRXyTPUq5JTqvAbbXUYABqVmPK7n6sQ3nmgeqiG8DJNJQLxp39L1HKUv8N05eFwX77YDAQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CX7O+no4; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-50912a097b0so36643831cf.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 13:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773779072; x=1774383872; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mH049RaW0O4+GDFr4LRnFBkAFDmCy+4RM4isbdlqWYE=;
        b=CX7O+no4hHfZxqJhLPBuffMKgjOGtBQB0MhDK5Kf7S/RNP4wnVE+fwsxoZHLfLE8GP
         s1BGjwqIX4z7bp9NCvjaURdf1eWBuvgXpLAVBnHAhnV/Vp15K+EPEO9NaPPFUxRtghfH
         hznb/ig0Dp69oNUl5r3N0A2Ze+yxaS1JTgKE9cvXczkXGodcVgGpHwx4a1QwiWZcCfys
         FaDqWO6C1q/rW3YZT4bBO7pB5h2G0fbO9nF/M+HANhrkaGodprkIzW7tMyPhLrNo7clI
         Zc29CCobr4yFHWK2wwDcYV9SFR+FEDNXXwk0dPxgE8FiY/x/OrhyffPGo/Ms4xloPoNu
         4irw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773779072; x=1774383872;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mH049RaW0O4+GDFr4LRnFBkAFDmCy+4RM4isbdlqWYE=;
        b=WpOCweMkKQOzOOgST2UtfOX6rtZMmGgUWClcFrGrhj6IouFFSbx3KPGNitaHvUw4O2
         tLmZogQai6u0ID12Io7ImZhRPgDP8WdTmRx+RtRImZv47ZekaNPQZ8VSp3N7xd2rz0zS
         TI3nFBe37X4NUVmzqXLtBfVoQ/GgP5lrJ1RUO+5EL7RPK3w14uLkF1CMNm+24WBEI5E+
         VAq2Zwxmv0g3yEalSUzIKEMRhhja44eGriL0rG1835up0hE24OacWgvAbX3TBOfqWu8Q
         ciUEF9w6cUN40QYs4CCJY2tpd3xdD6YaC6C4cJrqnKI7iFaL4TLu5cY5l/AmsG/dsPCe
         44Ng==
X-Forwarded-Encrypted: i=1; AJvYcCXGU5JPaE8yJbO7RzGIIEXogNH7J8Toy6bZCTNNZ8HgXWqeISlTFTvOlao58cu4YnCePEpOn9lsMaCt@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd32wV34aVv3xjKSVe9W+pp3o900z/JkR84zQldPIm4F/yJTkl
	SDN4p941bvrovUU6yPet5xxgzKgIyymErBXuOC2ZYpEx1oEvMJc/VWOYB0CKiy0Q9dY=
X-Gm-Gg: ATEYQzyuVM+ppNySaKgqvgEfzXDgJ4ERyeB0WAlDMX/I7EHFVgG4XEkVrSJRXro/1bc
	+tX1wJIY+xFKjGSmyImJoEXBW/Mn9Y0W91kXVhqT0m5hjrGDxWY+BeDvT0i1KJlguhPmfIS/FeY
	s0p4zbEXuk2wxkQ7RCRnsC0Rvd8KDd+F6sp7ypzb9a5xdHCqvGaoQD65sua2HPXD8bXsXicmmgX
	YCXhRkEwr9z2kRb7pivpsYgMtNIEwVoKJZHcmg0NzzpD+WLWdUFaX0P2a2m8umsRUiX/Kc1eX0J
	EzcswtuP9q160Ok/PNT+cq8zhmQScX0mDT+DbzNK6vOxkbHBjn7gB+4iTc92NMqZu/tkcIvfSwt
	MnVcRCCRL44DBfsivjRiXyjkApaaEkXKTXmlZprOpbqw7nSN3BdW0Z4qp6cvoyxolRHIRwI8r3k
	HGbKHxTZT/TIp4JdGyXQ+KYG/wiZFXPnwFD8R3RLBlL1RZ5tD2G7+AAiVIf/pfyJaz4Eh7ix3nO
	0Xh
X-Received: by 2002:a05:622a:41:b0:509:372e:35f5 with SMTP id d75a77b69052e-50b14887949mr8987231cf.55.1773779071676;
        Tue, 17 Mar 2026 13:24:31 -0700 (PDT)
Received: from ?IPV6:2001:1970:3847:e000:4c82:63a9:39e9:5c17? ([2001:1970:3847:e000:4c82:63a9:39e9:5c17])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50b135b7e50sm6479901cf.22.2026.03.17.13.24.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 13:24:31 -0700 (PDT)
Message-ID: <6635a48f-e7b6-4f5d-8285-cb1149754cd1@baylibre.com>
Date: Tue, 17 Mar 2026 16:24:29 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/7] riscv: dts: spacemit: k1-orangepi-rv2: add PMIC
 and power infrastructure
To: Iker Pedrosa <ikerpedrosam@gmail.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 Yixun Lan <dlan@kernel.org>
Cc: Michael Opdenacker <michael.opdenacker@rootcommit.com>,
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org,
 Anand Moon <linux.amoon@gmail.com>
References: <20260316-orangepi-sd-card-uhs-v3-0-aefd3b7832df@gmail.com>
 <20260316-orangepi-sd-card-uhs-v3-5-aefd3b7832df@gmail.com>
Content-Language: en-US
From: Trevor Gamblin <tgamblin@baylibre.com>
In-Reply-To: <20260316-orangepi-sd-card-uhs-v3-5-aefd3b7832df@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276867-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,kernel.org,intel.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,baylibre.com:mid,0.0.0.41:email,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 2F5672B2381
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 2026-03-16 10:03, Iker Pedrosa wrote:
> Add Spacemit P1 PMIC configuration and board power infrastructure for
> voltage regulation support.
>
> - Add board power regulators (12V input, 4V rail)
> - Enable I2C8 for PMIC communication
> - Configure PMIC with buck4 (vmmc) and aldo1 (vqmmc) regulators
> - Set up regulator constraints for SD card operation
>
> Tested-by: Anand Moon <linux.amoon@gmail.com>
> Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
> ---
>   arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts | 48 ++++++++++++++++++++++++
>   1 file changed, 48 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> index 7b7331cb3c726f11d597f81917f3a3f5fc21e1b9..f1533c99881dbf38e16cff5e91e33253cfa7a56d 100644
> --- a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> +++ b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> @@ -19,6 +19,25 @@ aliases {
>   		ethernet1 = &eth1;
>   	};
>   
> +	reg_dc_in: dc-in-12v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "dc_in_12v";
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};

Hi,

This still shows 12V instead of the 5V connector listed in the board's spec.

I was able to test it without issue, but this should be fixed up.

> +
> +	reg_vcc_4v: vcc-4v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_4v";
> +		regulator-min-microvolt = <4000000>;
> +		regulator-max-microvolt = <4000000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +		vin-supply = <&reg_dc_in>;
> +	};
> +
>   	chosen {
>   		stdout-path = "serial0";
>   	};
> @@ -92,3 +111,32 @@ &uart0 {
>   	pinctrl-0 = <&uart0_2_cfg>;
>   	status = "okay";
>   };
> +
> +&i2c8 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c8_cfg>;
> +	status = "okay";
> +
> +	pmic@41 {
> +		compatible = "spacemit,p1";
> +		reg = <0x41>;
> +		interrupts = <64>;
> +		vin-supply = <&reg_vcc_4v>;
> +
> +		regulators {
> +			buck4: buck4 {
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-ramp-delay = <5000>;
> +				regulator-always-on;
> +			};
> +
> +			aldo1: aldo1 {
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <3400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +		};
> +	};
> +};
>

