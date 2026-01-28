Return-Path: <devicetree+bounces-260426-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GtAKi4PemmS2AEAu9opvQ
	(envelope-from <devicetree+bounces-260426-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:29:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E78A2245
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:29:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 961D830254C7
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:29:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66057352FA7;
	Wed, 28 Jan 2026 13:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="NFCpgi5y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7599353ED5
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 13:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769606937; cv=none; b=U10rAltU4GQpiJSxEsZhazUcBrXivIFjJh1yi42oh1UZqXj2YB+QAdCGFjEb6Qlj89Qi4TUmgaORVAaO17ftj6qtbP1hmOkv1Q2E9qGbwA3SwAMEo6C53l2B/7X4uOJUvlK12lNDoPZmKCqxFUefsnJPthx1RrFHhgl6y1lp02k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769606937; c=relaxed/simple;
	bh=zmxOPeXvnOtchYfum5MfPM2ufP91Bp+oj32pDPeoclk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WYlQz1tlpp/et5Jmb9YKy9A1MsiemrqOLYkSt3VgDonYXLDbQto/T1kHNcfmh6W6X0wja5687LmWdp9jAMI64gFapsU34UlO3OyuuIiRkLlSh5Cqff+RjBw1Lv7WYKg7hSifpuIkYg8/awTVelw2KiD6C92dOLdeISL1x44hGvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=NFCpgi5y; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7cfdf7e7d19so5658226a34.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 05:28:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769606935; x=1770211735; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l7l6hZpxqhowIar9wP3g3p3H24Q2QksV27F6NMf90mY=;
        b=NFCpgi5yZgnPMtIJAjjco+CiEsHER5KIjfxc+A84u/q1ZZtWm3EUgM/XbT67ImhXvS
         caJp+27vsUYCjVq5oAbZXYQn5ZfmgCb4wiAtUl5hguNx/MztGnq0tLZ9eNLF3xHY63U5
         m7zBewIwaj8GrJLxeC/ET3qFa3/M9EWE1XLCwzEkcrTjpr7MgnjrnCWYTfYkHcIcLNW5
         WddOQO/gwLD4Z+FxB7jbt2NAx35jNBq3/pXQFTWye8b5mXCg7nJulqec9QBZKCTxDQ8M
         J3MbPPlee/F+BTEqhvshDOuK4K/4d1nVsJHkEfRLf2b1BAsPVrfgLQV1EHvcW8L6AMrm
         jGQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769606935; x=1770211735;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l7l6hZpxqhowIar9wP3g3p3H24Q2QksV27F6NMf90mY=;
        b=gj6HwM9NemsRaFHKKE69gxccwSbfOGQCqKcKU7Skel9qN9klU7yZa+fHLFPF9Tpag9
         YOVWwDA02P0wW3PXj8ZfGx8Je8BeKq5NoFY/BkfJop3gnXvNJj4EPVGosQtY0T7eWbjn
         iC/pPEHm0flh1AwYKUo42hpsxPWkZ9yCPGHMJ/dKgDmfoOHjK+9WGFakRgw+y8KnCSLK
         ZLDJIpSDjFfRwygHte8G+P2RVvAyuzg00AV3WEe1/KRMZBwVQljssVyLlCKvxmgoya3V
         wTlZj4uQPbdRrnGrTMCAaPjA9GbieL0zOOrmMJWOsoU15ilgRHxxB9nZveo5eRZuD+zE
         zkhQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWI88g8ffGJl7CpL1uULP8Zd9Y4sSVxQVNWEmNN8Ke5/GxJ+OBdGSu8ySk6dEv9lCbN2phbNVM9m3y@vger.kernel.org
X-Gm-Message-State: AOJu0YybtEPGkl4IIycLX+oHuitw2Bsrak5VYzwOFDvJFPNVQB/HO3iM
	WSksw90Vci/kgv999XVzE8KFKIWtt7To3CK2JGD3lnnW7TGDrdhaTQ10gaLUi4iVlDM=
X-Gm-Gg: AZuq6aJ30B7Jx201ZGV53FHs4yzvaEeTRkQfHjdoOUfGcGNwp7J2hgUdzrQO+SBUfuq
	sgp2MRAumvbRJd12WtShwObB+vbs/U1kA2tPulI8gxRNoyNDK20v1eklb/xWn92Dbuq3ClxOrye
	G2VyLjIvHIzvWmiN06VFSRbdNy2S8s43l1VZEPhQLDoxyORZGfPC/hPonIx9gA/JbBJqWPvNbGw
	hT6Vz7gljiZj9NJkk968WKZZjPe//KfPbiS4zToHQe60cZpIcS93JduFPedS2HK1Y1N7Jzot03N
	koXzAlvrbTNjnNA4Bwe5BEW3FQrPMg0Wxma3ljZFOMd8lKPzfCFgpzwTvgL/MSd7xDvPpEMSCRD
	g6mYjYD9o3bbgOT6A2/ilnhb4FYCwuRXXNpGAVn3gz7AtB1POYNuO1r2KRSR+dkkgIb1euihiPx
	LDg2F7J/tJqR2koaRre3mYG9pripa/1NpA0X5SofY731IlWBmFxUI=
X-Received: by 2002:a05:6820:134f:b0:662:ecc7:7193 with SMTP id 006d021491bc7-662f20d5753mr2863092eaf.54.1769606934872;
        Wed, 28 Jan 2026 05:28:54 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-662f994388fsm1374132eaf.4.2026.01.28.05.28.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 05:28:54 -0800 (PST)
Message-ID: <5a1825e3-3517-4d17-aa8f-b0261245d9bb@riscstar.com>
Date: Wed, 28 Jan 2026 07:28:53 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] dt-bindings: mfd: spacemit,p1: Add individual
 regulator supply properties
To: Guodong Xu <guodong@riscstar.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Yixun Lan <dlan@gentoo.org>,
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Troy Mitchell <troy.mitchell@linux.spacemit.com>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, devicetree@vger.kernel.org
References: <20260124-spacemit-p1-v2-0-2c86b06694ba@riscstar.com>
 <20260124-spacemit-p1-v2-2-2c86b06694ba@riscstar.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20260124-spacemit-p1-v2-2-2c86b06694ba@riscstar.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260426-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[riscstar.com,gmail.com,kernel.org,gentoo.org,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[riscstar-com.20230601.gappssmtp.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,riscstar.com:mid,riscstar.com:email]
X-Rspamd-Queue-Id: 31E78A2245
X-Rspamd-Action: no action

On 1/23/26 6:20 PM, Guodong Xu wrote:
> Add supply properties that match the P1 PMIC's actual hardware topology
> where each buck converter has its own VIN pin and LDO groups share
> common input pins. Supply names are defined according to the pinout
> names in the P1 datasheet.
> 
> This allows different boards to describe their actual power tree
> connections in devicetree rather than hardcoding supply relationships
> in the driver.
> 
> Signed-off-by: Guodong Xu <guodong@riscstar.com>

Your additions match what I see in the data sheet.
This looks good, thank you.

Reviewed-by: Alex Elder <elder@riscstar.com>

> ---
> v2: Remove providers from the dts example.
>      Pass the 'make dt_binding_check' test.
> ---
>   .../devicetree/bindings/mfd/spacemit,p1.yaml       | 49 +++++++++++++++++++++-
>   1 file changed, 47 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml b/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
> index c6593ac6ef6a..c67b1c6e4e4f 100644
> --- a/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
> +++ b/Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
> @@ -27,8 +27,41 @@ properties:
>     interrupts:
>       maxItems: 1
>   
> -  vin-supply:
> -    description: Input supply phandle.
> +  vin1-supply:
> +    description:
> +      Power supply for BUCK1. Required if BUCK1 is defined.
> +
> +  vin2-supply:
> +    description:
> +      Power supply for BUCK2. Required if BUCK2 is defined.
> +
> +  vin3-supply:
> +    description:
> +      Power supply for BUCK3. Required if BUCK3 is defined.
> +
> +  vin4-supply:
> +    description:
> +      Power supply for BUCK4. Required if BUCK4 is defined.
> +
> +  vin5-supply:
> +    description:
> +      Power supply for BUCK5. Required if BUCK5 is defined.
> +
> +  vin6-supply:
> +    description:
> +      Power supply for BUCK6. Required if BUCK6 is defined.
> +
> +  aldoin-supply:
> +    description:
> +      Power supply for ALDO1-4. Required if any are defined.
> +
> +  dldoin1-supply:
> +    description:
> +      Power supply for DLDO1-4. Required if any are defined.
> +
> +  dldoin2-supply:
> +    description:
> +      Power supply for DLDO5-7. Required if any are defined.
>   
>     regulators:
>       type: object
> @@ -58,6 +91,10 @@ examples:
>               compatible = "spacemit,p1";
>               reg = <0x41>;
>               interrupts = <64>;
> +            vin1-supply = <&reg_vcc_5v>;
> +            vin5-supply = <&reg_vcc_5v>;
> +            aldoin-supply = <&reg_vcc_5v>;
> +            dldoin1-supply = <&buck5>;
>   
>               regulators {
>                   buck1 {
> @@ -68,6 +105,14 @@ examples:
>                       regulator-always-on;
>                   };
>   
> +                buck5: buck5 {
> +                    regulator-name = "buck5";
> +                    regulator-min-microvolt = <500000>;
> +                    regulator-max-microvolt = <3450000>;
> +                    regulator-ramp-delay = <5000>;
> +                    regulator-always-on;
> +                };
> +
>                   aldo1 {
>                       regulator-name = "aldo1";
>                       regulator-min-microvolt = <500000>;
> 


