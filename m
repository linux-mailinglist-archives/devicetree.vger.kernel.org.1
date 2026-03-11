Return-Path: <devicetree+bounces-274285-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAmtJPy0sWnbEgAAu9opvQ
	(envelope-from <devicetree+bounces-274285-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:31:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 91246268A29
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:31:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3D82F320E41B
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 18:27:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BC14325704;
	Wed, 11 Mar 2026 18:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xCMrDUe/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4606E3E9F92
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 18:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773253672; cv=none; b=XSauwCFEGPzRcVH6GDarX5yhPEJKIJ+TUwNLhbljm4qPGO9N7/7DZIKvlxL/ERLBmkolrVgJ7Bg+4vz1cYrdLYZpzVi/KvaR0ho9QOlj+sSuE59Llx/dyaREtKbvOnc3c5Z3gDqYDPuO2nWdWrracSv7HAUrF+gTvrZfb8JLdQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773253672; c=relaxed/simple;
	bh=TjoT+QU7DQ256ZsGTZFZQrOx2kdA92zG7jdhyfIW6OQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Ci8UNmrvDt654eWzNUNsI4K4dhyLlh8Fl8dRjcq0Llc0tqjX2WyxOD+pU3E8vXUSAcmQr6SYr/SgUCJPsYZb3gy3LlKR9KbyDtUIHF4VGUM5sbGqjrWAp7R2DxGa0qGldzmnTgaY/v6kaCVgxc6zfRQkHbh85p6yoFA7G/VWohg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xCMrDUe/; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-50934b8ab60so13328351cf.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 11:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773253667; x=1773858467; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=C4T3EYxVrqjxWDRGqLWvtRoRBBjnZaG3jGkRoHcrE0E=;
        b=xCMrDUe/GlqKY2oy7N2xaj7BU8kOaKbUkpfvQRJ4hfViQ6idv8zms4HEAxM4CbcHkP
         z4hFP7ZAGov43fyKqvjw86Cq4zlJo/BPKYJQYE6o0wyJ2XRLi+SYV9I6qGVzQBPkQMXz
         9XOIVR37/4fIJIU95lRn3ePb5ldw9T7FbDg94MOl2kgVHBn3oHDgEpnkMcEVdG6rbv8V
         25s9j02RbwOeJ+4R/w/ZUG6a2kbEulIoOxqdhw2ODdpJ/FZrvJ/aZyfaXp/cPBYTXoAu
         +1SC9/URMxcD0X+Bvr5jGZbCHypQnS2V3R+nyYz/6D+yaBiuknGKL25/cIzKYpP8ErlN
         At8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773253667; x=1773858467;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C4T3EYxVrqjxWDRGqLWvtRoRBBjnZaG3jGkRoHcrE0E=;
        b=Ovp+1iQKX7tEzOFBjMcfFdpxvg6HELHJHy2TmgethoxuBDS4je7r44DOfOX0jOaGAb
         t+dT1ZNVkOfwxn9atzRC6InT+hvxIY8Z9Pwac+0HHkdCPd8K4Cblf0bXAH4D+xmVxT/K
         FRrX4MZp6JZaQ1/gA2T/DPmnyc0A2DPZlujeyZNYv/JgbhKK3Unw5WysnEjifSKY0usG
         IO9f/m0Vzp7UgN1i4i2FC4yBH4PL4LQlYpGUEkovefCmr85P4tSMC7eltJJ59c4qE28z
         wIJWPFFJvHo5DcKTQ3RzWbFvX614gkw5rCfQB2oQrVykhFkP2lQarqojYBX2cOWODLMI
         jycw==
X-Forwarded-Encrypted: i=1; AJvYcCXY9YkTUoaaQqzv1d3jCdTgSKpMAU+GE6kLt7axrDny2Zdq8Gv+67MFwb83QoH8wnsOwSiaLby/IvVg@vger.kernel.org
X-Gm-Message-State: AOJu0YwWk3jGOrxdgwrMp5qTPqfK72hYW3AJWscOTqgoXPd2WPYCILaa
	740CLHgChgTIj803w22Y4mDCFQEVMEsjfdC3GncYLm4QX+qs2N6+d39tf6gk5LTkUGU4bZap1qa
	iXd1Gsro=
X-Gm-Gg: ATEYQzyUvlGfkmMiaFEGGOHclABfjjkqwS1D68+A+Gbt847ByuWnFWSKPsGtlyC5tVO
	hCR5uSxVR4izQjKE2HAfR9CZxj0Pzjlob5kO9DTGaZbAhcZwTdJM7vrKylT4sTauzVyEFLFaR9z
	o8eGaPl7cCE5yVgYObLIaWBsH16uwy2WEM147IrQpu9ecMpeYX2leZqUBN8XYAANpSje/CMOLqI
	lqQKHP3t+ql3ufsQfhd/kDEjfOOGJsPxQB4vib//bG8Tto+qWVdwJb9nsltHJCQf+Z8/rOKPSvV
	z7c0bZnzMqlu6D3HINZ6qoBmyGIOqw6nnQYTlMEW8EYosvKvxgCeNATzGEjZ8o11wwivLbVIKiC
	vnmJH2/yVLmbtDLH/GcqKpjyD/Q0pYuJ+5ApKOugNoyNDoBfpDsYz86VmJAciX3AtjpzESL+VlO
	rjPnQhQpm6uxrOaisW5lhSQKxoG6S42wWelf3oIACamnFp0ajIdgMUvGb/EVfumApEskbNjC+ys
	lFt/+h7IDlHIFA=
X-Received: by 2002:ac8:7d91:0:b0:509:214a:e521 with SMTP id d75a77b69052e-509471aa41emr7984991cf.10.1773253667086;
        Wed, 11 Mar 2026 11:27:47 -0700 (PDT)
Received: from ?IPV6:2001:1970:3847:e000:4c82:63a9:39e9:5c17? ([2001:1970:3847:e000:4c82:63a9:39e9:5c17])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a65beb4b3sm19327296d6.14.2026.03.11.11.27.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 11:27:46 -0700 (PDT)
Message-ID: <8e91c86d-ea41-4535-a7cd-5b602c546cb7@baylibre.com>
Date: Wed, 11 Mar 2026 14:27:42 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Trevor Gamblin <tgamblin@baylibre.com>
Subject: Re: [PATCH v2 6/7] riscv: dts: spacemit: k1-orangepi-rv2: add PMIC
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
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com>
 <20260309-orangepi-sd-card-uhs-v2-6-5bb2b574df5d@gmail.com>
Content-Language: en-US
In-Reply-To: <20260309-orangepi-sd-card-uhs-v2-6-5bb2b574df5d@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274285-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,kernel.org,intel.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tgamblin@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.41:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid]
X-Rspamd-Queue-Id: 91246268A29
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On 2026-03-09 07:40, Iker Pedrosa wrote:
> Add Spacemit P1 PMIC configuration and board power infrastructure for
> voltage regulation support.
>
> - Add board power regulators (12V input, 4V rail)
> - Enable I2C8 for PMIC communication
> - Configure PMIC with buck4 (vmmc) and aldo1 (vqmmc) regulators
> - Set up regulator constraints for SD card operation
>
> Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
> ---
>   arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts | 48 ++++++++++++++++++++++++
>   1 file changed, 48 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts b/arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
> index 7b7331cb3c726f11d597f81917f3a3f5fc21e1b9..414b03f5e6480f05f5d7eeaaa0afb4e86425ae36 100644
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
> +
Is this the correct voltage? I don't see a 12V rail in the RV2's 
datasheet, and the board's specifications only indicate a 5V USB-C input.
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
> +			sd_vmmc: buck4 {
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-ramp-delay = <5000>;
> +				regulator-always-on;
> +			};
> +
> +			sd_vqmmc: aldo1 {
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <3400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +		};
> +	};
> +};
>


