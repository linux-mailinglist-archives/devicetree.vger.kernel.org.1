Return-Path: <devicetree+bounces-315517-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2mRFKm/ePGpTtggAu9opvQ
	(envelope-from <devicetree+bounces-315517-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 09:53:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 014C76C3817
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 09:53:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Z1PMiipR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315517-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315517-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 639A8302EE92
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 07:51:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2649373BE6;
	Thu, 25 Jun 2026 07:51:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A520D37106A;
	Thu, 25 Jun 2026 07:51:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782373895; cv=none; b=iK4UTbUq/QKhqG+nDHQzJRlwka/I07UiQburUr52Klo5LWDYzlA8OqfwxLrbU9y+IKWUEhG723+9SVUsjnj8Tts/hOi7bo9LJKulLavnJHVb0r4yqKLMFSbzParZNzItJht5PgrPhuKy1CL1LXvgkSS/WphgnuvAIC7KGYxs2YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782373895; c=relaxed/simple;
	bh=orzaKisUnjpXe7zF990QoN7/ppPz95eLvHY2LbX1Br0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cztAdsuFl0YQimmyXFFV0UtICanBhn2fnX0bNbaSsOBLyWN2fGc+n9ZT4A+323N+Tz5rW57KYPmUxijG3v4ts0gQgYUs+3GKi2XNwxwhOq3sBHwKD4IArplEOBc+7yQmUShxegqWFYjZegM2AF3SE3gHRhYPJVpQ3MLgKNIHZ+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1PMiipR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 554561F000E9;
	Thu, 25 Jun 2026 07:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782373894;
	bh=N6av/h+22Y5C0CsgbTSVpHRmTlyTXAkoJakqSuQu5Hw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Z1PMiipRVoh6SIadxsYDgIeP9v+jyFl1D88Ut6/Dqn4PhMKaytQnMXbgI0X/mJiAF
	 8o6eiGmy41edYeG7PvVy2yX4ZbRt78OOjm79jvngQyZCkBA62mqMenOLLBKeeQ/CcR
	 FNf9ddJwLllAMMQjoPHwakTTHJB6PfI0C+Z+PKvSb8q9ihYtvGOiNFUxSyofY6suez
	 UE3KsMHolf06IcsUZIsGPN6ruXBROATm+yMMOjG3votO9X93DD5vqfEPTTxto4AxC7
	 BvhL+kAjS2UXasWrROUANJTBIIcvBZfTKEP0RfZxfIqzUp/JnCiNsLT4Mt+MzVhb/n
	 obEjArSD3B1xw==
Date: Thu, 25 Jun 2026 09:51:30 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Joey Lu <a0987203069@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>, 
	Jacky Huang <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>, 
	Hui-Ping Chen <hpchen0nvt@gmail.com>, Joey Lu <yclu4@nuvoton.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: reset: nuvoton,ma35d1-reset: add
 simple-mfd and child node support
Message-ID: <20260625-striped-demonic-jerboa-502afb@quoll>
References: <20260625023958.569299-1-a0987203069@gmail.com>
 <20260625023958.569299-2-a0987203069@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260625023958.569299-2-a0987203069@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-315517-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:a0987203069@gmail.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:arnd@arndb.de,m:catalin.marinas@arm.com,m:ychuang3@nuvoton.com,m:schung@nuvoton.com,m:hpchen0nvt@gmail.com,m:yclu4@nuvoton.com,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,arndb.de,arm.com,nuvoton.com,gmail.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 014C76C3817

On Thu, Jun 25, 2026 at 10:39:55AM +0800, Joey Lu wrote:
> The MA35D1 system-management syscon node hosts the USB PHY register
> block at offset 0x60.  To model usb-phy@60 as a DT child of the syscon
> node the binding must allow:

Explain why do you need child node. If you have fixed device @0x60, you do
not need DT child node at all. Compatible implies that child existence.


> 
>   - simple-mfd as an optional third compatible so the MFD core can
>     instantiate child platform devices.
> 
>   - #address-cells and #size-cells (each const: 1) so child nodes can
>     carry a reg property.
> 
>   - An open child-node pattern (patternProperties "^.*@[0-9a-f]+$")
>     to pass dt-schema validation.

No. Do not explain what you did - we can read the diff. You must explain
WHY you are doing that.

> 
> Signed-off-by: Joey Lu <a0987203069@gmail.com>
> ---
>  .../bindings/reset/nuvoton,ma35d1-reset.yaml        | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml b/Documentation/devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml
> index 3ce7dcecd87a..1fda7e8f4b5d 100644
> --- a/Documentation/devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml
> +++ b/Documentation/devicetree/bindings/reset/nuvoton,ma35d1-reset.yaml
> @@ -19,6 +19,8 @@ properties:
>      items:
>        - const: nuvoton,ma35d1-reset
>        - const: syscon
> +      - const: simple-mfd
> +    minItems: 2
>  
>    reg:
>      maxItems: 1
> @@ -26,6 +28,16 @@ properties:
>    '#reset-cells':
>      const: 1
>  
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 1
> +
> +patternProperties:
> +  "^.*@[0-9a-f]+$":

This must be specific.

> +    type: object

Missing ref and additionalProps. Please look at other simple-mfd.

> +
>  required:
>    - compatible
>    - reg
> @@ -43,4 +55,3 @@ examples:
>          #reset-cells = <1>;
>      };
>  ...
> -
> -- 
> 2.43.0
> 

