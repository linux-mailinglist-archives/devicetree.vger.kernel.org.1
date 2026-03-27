Return-Path: <devicetree+bounces-281481-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uA2CDV0zxmnzHQUAu9opvQ
	(envelope-from <devicetree+bounces-281481-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 08:35:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB0F3407F3
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 08:35:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7EB0C3051AB9
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 07:33:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B05C43D3B3;
	Fri, 27 Mar 2026 07:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIlzZg0R"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033143C73E5;
	Fri, 27 Mar 2026 07:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774596765; cv=none; b=BVaquPSR32tqUUWojWYBKR1I9k14890162RTO3fBJnttVQWem8n7C9Q12bPP7a4yzx6F46n7krjpgRAITOZuEJ0a/8d1Vklf12wu2k2RTe3y/UIhhVbRSlG0Wz91SIPhdrs48dupwCsvJ3kWNgA3MhdlcCjedwd4lSWJ4KLbTVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774596765; c=relaxed/simple;
	bh=+uvtuxXc0i6F2vDJY+q5MLuJNAJcBaMO/vcnKh4HY3M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZmWYHPErvHi9K3OGQ/Dx/TVh6p/TZfd6TQN+SeHTX+0xwz71A2gmQ0VdLBMgknY6XEN/MVOU/23dtgN1cn+yxydPJASqq/vRjU1g6bkL9qNTxtBIQVGOIMGnFf5x4V/J2k50/4l6djCPdrNFQQAwufAmRX0w3LCyL1AEDDtfEUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIlzZg0R; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A13D6C19423;
	Fri, 27 Mar 2026 07:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774596764;
	bh=+uvtuxXc0i6F2vDJY+q5MLuJNAJcBaMO/vcnKh4HY3M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YIlzZg0RXLsN0vdcy8aRCAR0bT8Z/ODrpLghzd3ZVjfSfh9AZuc0mg0+JJ6PsvqiL
	 9Vy5mG7T3X5bdiBWMSa/RTrx2IEHGN+GBNP5SGGjle94HSd4q+DEZNRZ8OAVXuDSVo
	 WHlSjXAYq6Z4vgoNvvzmNbZPCclURTwp/Cj4Ymcm+au5DZemeWpDLM/vWhl+PQdlqb
	 bxXA5Mycbk2fckWNj+3uo20H4R3sIP01b+j+PAtTM90Gc+o2g/xhKRAExIGPu1mW1k
	 R6Nmkz4d9fMRL1EzF9UJpwb2jbshB46Y2nthNS8nrxNwmTci6PMIekXeRr8uIxhlHD
	 kf5+rhLWWNBjw==
Date: Fri, 27 Mar 2026 08:32:41 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Padmashree S S <padmashreess2006@gmail.com>
Cc: k.marinushkin@gmail.com, lgirdwood@gmail.com, broonie@kernel.org, 
	robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: sound: Convert pcm3060 to DT schema
Message-ID: <20260327-thoughtful-inquisitive-dragon-6d77ed@quoll>
References: <20260326183747.528754-1-padmashreess2006@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260326183747.528754-1-padmashreess2006@gmail.com>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-281481-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,0.0.0.46:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3AB0F3407F3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 27, 2026 at 12:07:47AM +0530, Padmashree S S wrote:
> Note:
> * This patch is part of the GSoC2026 application process for device tree bindings conversions
> * https://github.com/LinuxFoundationGSoC/ProjectIdeas/wiki/GSoC-2026-Device-Tree-Bindings

And this should go to commit log forever? Why?

No, this wasn't ever reviewed as requested by the GSoC process.


> 
> Signed-off-by: Padmashree S S <padmashreess2006@gmail.com>
> ---
>  .../devicetree/bindings/sound/pcm3060.txt     | 23 ----------
>  .../devicetree/bindings/sound/pcm3060.yaml    | 45 +++++++++++++++++++
>  2 files changed, 45 insertions(+), 23 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/pcm3060.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/pcm3060.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/pcm3060.txt b/Documentation/devicetree/bindings/sound/pcm3060.txt
> deleted file mode 100644
> index 97de66932d44..000000000000
> --- a/Documentation/devicetree/bindings/sound/pcm3060.txt
> +++ /dev/null
> @@ -1,23 +0,0 @@
> -PCM3060 audio CODEC
> -
> -This driver supports both I2C and SPI.
> -
> -Required properties:
> -
> -- compatible: "ti,pcm3060"
> -
> -- reg : the I2C address of the device for I2C, the chip select
> -        number for SPI.
> -
> -Optional properties:
> -
> -- ti,out-single-ended: "true" if output is single-ended;
> -                       "false" or not specified if output is differential.
> -
> -Examples:
> -
> -	pcm3060: pcm3060@46 {
> -		 compatible = "ti,pcm3060";
> -		 reg = <0x46>;
> -		 ti,out-single-ended = "true";
> -	};
> diff --git a/Documentation/devicetree/bindings/sound/pcm3060.yaml b/Documentation/devicetree/bindings/sound/pcm3060.yaml
> new file mode 100644
> index 000000000000..ceb6f044b196
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/pcm3060.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/pcm3060.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: PCM3060 audio CODEC
> +
> +maintainers:
> +  - Kirill Marinushkin <k.marinushkin@gmail.com>
> +
> +properties:
> +  compatible:
> +    const: ti,pcm3060
> +
> +  reg:
> +    maxItems: 1
> +    description: |
> +      The I2C address of the device
> +      or SPI chip select number.

Nah, wasn't reviewed.

Best regards,
Krzysztof


