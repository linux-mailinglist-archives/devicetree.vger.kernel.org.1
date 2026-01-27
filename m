Return-Path: <devicetree+bounces-259676-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8L2aG4cAeGnHnAEAu9opvQ
	(envelope-from <devicetree+bounces-259676-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 01:02:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C50058E5F7
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 01:02:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 338C1301702A
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:02:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDEA04A0C;
	Tue, 27 Jan 2026 00:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="rh8jsIf3";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="rh8jsIf3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8EC3C2D;
	Tue, 27 Jan 2026 00:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769472132; cv=none; b=aJdwZqL8Fe0xmycOeYdfNoRKNSizoi/EvPu5d4301StEAGsdMNDBrrLQte+0F6WA9Pi9zmrUsXbejDyNzXb7hdIVuwnOck5HtKe02ftOE4pTHr9XyzoNKI8LgNQ8vXnP5XrWCYWDZKpTMDsbsqGkZGxnw+TzHfN3bfcuOatobyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769472132; c=relaxed/simple;
	bh=b4IkstFUGdWT5anhTj3DKAt+fiIig8eVa0QwPPMDKpk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c8B+jhaWxap9eIhtUB8UNDYe4h8Q4AOen7pZl8z0ooIYRH9bRy+tfj7dUsJOmBp0LClLTwU38A4cwoBNK6Xaqg+sneGvRMD7Wpj7GbESL79t8dcTMQsm19oG6M34vGm1vpyNCc3hp9h7AjMwipGBKG78F586ve3IUJ2O4rye8Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=rh8jsIf3; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=rh8jsIf3; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1769472129; bh=b4IkstFUGdWT5anhTj3DKAt+fiIig8eVa0QwPPMDKpk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=rh8jsIf3mb5o9N9VthgklUrIff5nKRrJZ0fLAiPYTLnt7fgDO9r1HSqjMv/4bsZpZ
	 4NAieZG7xCjDJvGOt2IOMJpAPKIVt8MVKyB2LqKAbSGt10EzKxpu0ITWneU7xAS0T2
	 uzkakNwKSpDws/P6OKGYHpuzMi0RXqW7RV6Cc8NdswC1vCW3FVzl7NqrS2gXSTCx5D
	 KH5CX2lmIhU7t6HYf6pQOhAEGI+AqvFOPBIIaJjN7WgYpFbHzyDlByMx4Sz4fSebG4
	 aiM8Qx1uw6pjtszSfH234ODiBAS4wh0ppqcQdv6TfxuMIyffmu9MUTBUioxzn5efck
	 XeLbRkw4TC4EA==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id 5FE0B3EFAAF;
	Tue, 27 Jan 2026 00:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1769472129; bh=b4IkstFUGdWT5anhTj3DKAt+fiIig8eVa0QwPPMDKpk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=rh8jsIf3mb5o9N9VthgklUrIff5nKRrJZ0fLAiPYTLnt7fgDO9r1HSqjMv/4bsZpZ
	 4NAieZG7xCjDJvGOt2IOMJpAPKIVt8MVKyB2LqKAbSGt10EzKxpu0ITWneU7xAS0T2
	 uzkakNwKSpDws/P6OKGYHpuzMi0RXqW7RV6Cc8NdswC1vCW3FVzl7NqrS2gXSTCx5D
	 KH5CX2lmIhU7t6HYf6pQOhAEGI+AqvFOPBIIaJjN7WgYpFbHzyDlByMx4Sz4fSebG4
	 aiM8Qx1uw6pjtszSfH234ODiBAS4wh0ppqcQdv6TfxuMIyffmu9MUTBUioxzn5efck
	 XeLbRkw4TC4EA==
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi [91.159.24.186])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mleia.com (Postfix) with ESMTPSA id DE9EB3EF9F4;
	Tue, 27 Jan 2026 00:02:08 +0000 (UTC)
Message-ID: <7918a3eb-90de-467a-8dcc-9c2eb44dcb66@mleia.com>
Date: Tue, 27 Jan 2026 02:02:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: nvmem: nxp,lpc1850-otp: convert to DT
 schema
To: Akhila YS <akhilayalmati@gmail.com>,
 Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260126-lpc1850-otp-v2-1-bdcf08901d9d@gmail.com>
From: Vladimir Zapolskiy <vz@mleia.com>
In-Reply-To: <20260126-lpc1850-otp-v2-1-bdcf08901d9d@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20260127_000209_414764_6AFD7EFE 
X-CRM114-Status: GOOD (  19.58  )
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[mleia.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mleia.com:+];
	TAGGED_FROM(0.00)[bounces-259676-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,2.99.9.200:email]
X-Rspamd-Queue-Id: C50058E5F7
X-Rspamd-Action: no action

Hi Akhila.

On 1/26/26 16:53, Akhila YS wrote:
> Convert NXP LPC18xx OTP memory controller binding to YAML format.
> 
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
> Changes in v2:
> - Add "Vladimir Zapolskiy" as maintainer.
> - Remove unnecessary description for the yaml.
> - Remove "#size-cells" and "#address-cells" from the properties and required.
> - Link to v1: https://lore.kernel.org/r/20260123-lpc1850-otp-v1-1-8bd957dd9c98@gmail.com
> ---
>   .../devicetree/bindings/nvmem/lpc1850-otp.txt      | 20 -----------
>   .../devicetree/bindings/nvmem/nxp,lpc1850-otp.yaml | 41 ++++++++++++++++++++++
>   2 files changed, 41 insertions(+), 20 deletions(-)
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
> index 000000000000..a0cdf083267d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/nxp,lpc1850-otp.yaml
> @@ -0,0 +1,41 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/nxp,lpc1850-otp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP LPC18xx / LPC43xx One-Time Programmable (OTP) memory
> +
> +maintainers:
> +  - Vladimir Zapolskiy <vz@mleia.com>
> +
> +description:
> +  The internal OTP memory in NXP LPC18xx and LPC43xx microcontrollers
> +  provides a dedicated non-volatile storage area designed for permanent,
> +  one-time configuration and data storage.
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
> +required:
> +  - compatible
> +  - reg
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

Nitpick, #address-cells and #size-cells properties could/should be removed
from the example.

> +    };
> +...
> 

Anyway, the change looks good, thank you for the contribution.

Reviewed-by: Vladimir Zapolskiy <vz@mleia.com>

-- 
Best wishes,
Vladimir

