Return-Path: <devicetree+bounces-259504-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OlPJN9ud2m8gAEAu9opvQ
	(envelope-from <devicetree+bounces-259504-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:40:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF6B88FE8
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:40:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DCB813007B80
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:38:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BE3A33A6E2;
	Mon, 26 Jan 2026 13:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="EU291TDr";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="EU291TDr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE26033A00C;
	Mon, 26 Jan 2026 13:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769434697; cv=none; b=rn2jGwhhtKu80ANTv9Ijt9ro6QiAbxnc7FqEnr+ikYimhu2GWWN3wRg2RU2GY1ynwhUhkWPe18eSOuK1YEqP1ov6Ku4mwnTPWTULmaupFO9uuLAluTGIpeSnt/sFF2P1jXUKq7NeuI2rekK1SBUUapYCdA1j6tqhtzZB2gr5vTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769434697; c=relaxed/simple;
	bh=Ca8hKdtqSqFJcD6ZZaghIfawRr1/U2btyIxFE5ClHTs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LfQDDleBeqO7OxiD0PvVJUxq1pMmEtxL7FXyol38D6SQMaVrpDDKkWfdwCZU3CJHGqaacbH84wiP7YHWARDmTZcYYVTSe45JhRp6vi1iVl/BWiO0czO7Q1D5M4Zlt+J6RbG4bwegGY9iBHmIdjKdSyZlcmATdPNiFbxA7KUjWsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=EU291TDr; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=EU291TDr; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1769434134; bh=Ca8hKdtqSqFJcD6ZZaghIfawRr1/U2btyIxFE5ClHTs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=EU291TDrTXmNcCXAh8e/jT5rgoRTNZIIeaTC1UNOgsiooVXyHJ8Jyl+O6qSGD/r/i
	 Yw/oHjGSBqKvvIAGLoHIRGihdzVb7iGgRvZFyOip3nJCplGZ994ZCMl/1S/UsGglIA
	 DiI8DU0DXcBt63d1TikG4erSjL4Y6/cq66CHpKUxGDhy9O0Rphmu3507hhUDpdcK1+
	 kOt7DR7soxhcUzs7sIIqkqnyA1alHc8LvioWhg8h63Ply/Oc4hkiHHXarOZ21LsC0O
	 ij9dakyH0I6gZpgNZl/3Jfhc/HormSlCa8oJERm2Bc37h7512CGAsWxO8bNW7Ajo10
	 PGz9Y/uEMXDCA==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id A0F983EF8DA;
	Mon, 26 Jan 2026 13:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1769434134; bh=Ca8hKdtqSqFJcD6ZZaghIfawRr1/U2btyIxFE5ClHTs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=EU291TDrTXmNcCXAh8e/jT5rgoRTNZIIeaTC1UNOgsiooVXyHJ8Jyl+O6qSGD/r/i
	 Yw/oHjGSBqKvvIAGLoHIRGihdzVb7iGgRvZFyOip3nJCplGZ994ZCMl/1S/UsGglIA
	 DiI8DU0DXcBt63d1TikG4erSjL4Y6/cq66CHpKUxGDhy9O0Rphmu3507hhUDpdcK1+
	 kOt7DR7soxhcUzs7sIIqkqnyA1alHc8LvioWhg8h63Ply/Oc4hkiHHXarOZ21LsC0O
	 ij9dakyH0I6gZpgNZl/3Jfhc/HormSlCa8oJERm2Bc37h7512CGAsWxO8bNW7Ajo10
	 PGz9Y/uEMXDCA==
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi [91.159.24.186])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mleia.com (Postfix) with ESMTPSA id 323D73EF7DF;
	Mon, 26 Jan 2026 13:28:54 +0000 (UTC)
Message-ID: <0ff7932a-c210-4d7a-9405-a77db0f349e7@mleia.com>
Date: Mon, 26 Jan 2026 15:28:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: nvmem: nxp,lpc1850-otp: convert to DT schema
To: Akhila YS <akhilayalmati@gmail.com>,
 Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260123-lpc1850-otp-v1-1-8bd957dd9c98@gmail.com>
From: Vladimir Zapolskiy <vz@mleia.com>
In-Reply-To: <20260123-lpc1850-otp-v1-1-8bd957dd9c98@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20260126_132854_675082_6F7C85FC 
X-CRM114-Status: GOOD (  21.44  )
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[mleia.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mleia.com:+];
	TAGGED_FROM(0.00)[bounces-259504-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[mleia.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vz@mleia.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mleia.com:mid,mleia.com:dkim,devicetree.org:url,2.99.9.200:email]
X-Rspamd-Queue-Id: 3FF6B88FE8
X-Rspamd-Action: no action

Hello Akhila.

On 1/23/26 17:19, Akhila YS wrote:
> Convert NXP LPC18xx OTP memory controller binding to YAML format.
> 
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
>   .../devicetree/bindings/nvmem/lpc1850-otp.txt      | 20 ---------
>   .../devicetree/bindings/nvmem/nxp,lpc1850-otp.yaml | 51 ++++++++++++++++++++++
>   2 files changed, 51 insertions(+), 20 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/lpc1850-otp.txt b/Documentation/devicetree/bindings/nvmem/lpc1850-otp.txt
> deleted file mode 100644
> index 853b6a754644..000000000000
> --- a/Documentation/devicetree/bindings/nvmem/lpc1850-otp.txt
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -* NXP LPC18xx OTP memory
> -
> -Internal OTP (One Time Programmable) memory for NXP LPC18xx/43xx devices.
> -
> -Required properties:
> -  - compatible: Should be "nxp,lpc1850-otp"
> -  - reg: Must contain an entry with the physical base address and length
> -    for each entry in reg-names.
> -  - address-cells: must be set to 1.
> -  - size-cells: must be set to 1.
> -
> -See nvmem.txt for more information.
> -
> -Example:
> -  otp: otp@40045000 {
> -    compatible = "nxp,lpc1850-otp";
> -    reg = <0x40045000 0x1000>;
> -    #address-cells = <1>;
> -    #size-cells = <1>;
> -  };
> diff --git a/Documentation/devicetree/bindings/nvmem/nxp,lpc1850-otp.yaml b/Documentation/devicetree/bindings/nvmem/nxp,lpc1850-otp.yaml
> new file mode 100644
> index 000000000000..d37e928e7a35
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/nxp,lpc1850-otp.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/nxp,lpc1850-otp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP LPC18xx / LPC43xx One-Time Programmable (OTP) memory
> +
> +maintainers:
> +  - Srinivas Kandagatla <srini@kernel.org>

You may add me as a maintainer, the change is not catched by the "lpc18xx"
file name pattern from a record in the MAINTAINERS file, but essentially
it's an NXP LPC18xx/LPC43xx related change.

> +
> +description:
> +  The internal OTP memory in NXP LPC18xx and LPC43xx microcontrollers
> +  provides a dedicated non-volatile storage area designed for permanent,
> +  one-time configuration and data storage.The OTP controller manages write

Please remove all info after the first sentence.

> +  protection, programming sequencing, and error detection mechanisms to
> +  guarantee reliable and safe permanent programming under software control.

What is the source of the information above? I don't quite understand what
is "error detection mechanisms" here etc. OTP controller functions are
defined in SoC ROM, and it is unrelated to the described OTP memory region.

> +
> +allOf:
> +  - $ref: nvmem.yaml#
> +
> +properties:
> +  compatible:
> +    const: nxp,lpc1850-otp
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 1

This comes from nvmem.yaml

> +
> +required:
> +  - compatible
> +  - reg
> +  - "#address-cells"
> +  - "#size-cells"

Please drop #address-cells/#size-cells from the list of the required
properties.

So far there is no user of this device tree node, and "nvmem-layout"
mechanism may be preferred in future.

> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    otp@40045000 {
> +        compatible = "nxp,lpc1850-otp";
> +        reg = <0x40045000 0x1000>;
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +    };
> +...
> 

-- 
Best wishes,
Vladimir

