Return-Path: <devicetree+bounces-266513-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBO+JjsQlmk8ZgIAu9opvQ
	(envelope-from <devicetree+bounces-266513-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 20:17:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 00054158F86
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 20:17:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1AC553013A5F
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:17:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F27E6346783;
	Wed, 18 Feb 2026 19:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTrjwQYg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF37B3093DE;
	Wed, 18 Feb 2026 19:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771442231; cv=none; b=qNsjAV0kIpzEQNi6LN7IW34odxpOMYLWYfedHLZRaGdUdnk9UH+xqiLd4+i8az3tEZDAlyMYmamN2cDu4Z0PyJ5Mts5YFGF64EOsCothnes3IWsXB5v77kILB+f45sLvnKoQSDHbI1vHpOyuzphTSsOkLbZd0ORmwRFrp7/cBHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771442231; c=relaxed/simple;
	bh=fKuevwwhI2xp7pWreOA8JHIqo5Rd4VvkNUM2yNkN1No=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q5flZrQE6lvNXsbswoZyCh1j1xd2gwFIyXUrS7Ge7F4I6rjGkhrGnipq++Qh7sGZeGraCC54kyC418mMZBls/9lKjb5sxbYW5ffgaZMRMWCl8k6C/4nqm53knwvmPCge18FCskcHOe1lG0wGEXXjl0YlAa7chkSsBfoaeytNFb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTrjwQYg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BF54C19422;
	Wed, 18 Feb 2026 19:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771442231;
	bh=fKuevwwhI2xp7pWreOA8JHIqo5Rd4VvkNUM2yNkN1No=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qTrjwQYg+ZVVc+NwK3ZafRxbm/+56bYgKydGiu/2L+bAy44MJ3AF3wvSDMyAhW6d+
	 bvlSQg3IPFLZtDn74XtTB1lnH6XXDMVMp6NoG/rjRDcvL5u9y+sxHE8Im2zmkGtmb9
	 ENA/ja76dNgxc0/wTom4NezGKWwQnwIoqt5mjx2fgRWiy/4YXD7aUEZBPWvAnaWAW9
	 nJpw9dFQdmOYPnK4b+DxlzgQnYaygwPj3PlepgrqOjBQXGzAo6EbLpSbwc8QrOFVt/
	 s8be85RZaJ9w3nKE1AUNFp0Dm9UlzwikvLPDjC8ssviQATV+oMd6dhQR4ZW0xXLBvp
	 hB9y31xpEFwpw==
Message-ID: <54bac6b7-46b5-4a1e-beb0-e8a64bd16d3f@kernel.org>
Date: Wed, 18 Feb 2026 20:17:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: nuvoton: drop unused syscon property from
 watchdog node
To: Tomer Maimon <tmaimon77@gmail.com>, andrew@codeconstruct.com.au
Cc: avifishman70@gmail.com, tali.perry1@gmail.com, venture@google.com,
 yuenn@google.com, benjaminfair@google.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, openbmc@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260218184800.2261674-1-tmaimon77@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <20260218184800.2261674-1-tmaimon77@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266513-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,codeconstruct.com.au];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,google.com,kernel.org,lists.ozlabs.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,901c:email,qualcomm.com:email,a01c:email,801c:email]
X-Rspamd-Queue-Id: 00054158F86
X-Rspamd-Action: no action

On 18/02/2026 19:48, Tomer Maimon wrote:
> The NPCM8XX DTSI currently includes a 'syscon' phandle in the watchdog
> node, but this property is not used by any upstream driver and is not
> documented in the NPCM watchdog binding. Since it was never reviewed and
> does not form part of the DT ABI, it can be safely removed.

"Safely" is not certain or not true, because other users might rely on
that, but that's acceptable impact of undocumented ABI.

However such wording should be avoided, because it creates impression
that it is safe which later might be used by other developers ("but I
saw patch saying it is safe...").

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

> 
> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
> ---
>  arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
> index 24133528b8e9..c781190b42c5 100644
> --- a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
> +++ b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
> @@ -145,7 +145,6 @@ watchdog0: watchdog@801c {
>  				reg = <0x801c 0x4>;
>  				status = "disabled";
>  				clocks = <&refclk>;
> -				syscon = <&gcr>;
>  			};
>  
>  			watchdog1: watchdog@901c {
> @@ -154,7 +153,6 @@ watchdog1: watchdog@901c {
>  				reg = <0x901c 0x4>;
>  				status = "disabled";
>  				clocks = <&refclk>;
> -				syscon = <&gcr>;
>  			};
>  
>  			watchdog2: watchdog@a01c {
> @@ -163,7 +161,6 @@ watchdog2: watchdog@a01c {
>  				reg = <0xa01c 0x4>;
>  				status = "disabled";
>  				clocks = <&refclk>;
> -				syscon = <&gcr>;
>  			};
>  		};
>  	};


Best regards,
Krzysztof

