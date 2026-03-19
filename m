Return-Path: <devicetree+bounces-277643-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGuCFsPCu2n1ngIAu9opvQ
	(envelope-from <devicetree+bounces-277643-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:32:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B1C2C8B7A
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:32:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B33D73329A0E
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:15:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A6C43B27DB;
	Thu, 19 Mar 2026 09:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNf9FwGV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2013B3A872E;
	Thu, 19 Mar 2026 09:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773911609; cv=none; b=jz5wW2rN4FcxkHuYN54C9BbidNq3ID/8wFTTIf5SWxOM8cFXN9wm+v8rS9n61MWM0G0+s7/wPOb5zf9r4Ft4xfuyRjByGEa3Sj0vY3i/ie4bqX8GKGFH9tvgPn8qR0VuKBfZF/iG2sAfbxMj3gIN5kol4G2wW+Aatjty0PhlssU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773911609; c=relaxed/simple;
	bh=O/jJa9mMfpdugNujuvLwaJf5rcslyp9qMz1bzi5jvrM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j9CZE04dYSxXuL26vNF1evJ1Y5P5BtFMOr4AGB2GdXXLCo74OpktrNi29bOcu2XJJsK+b+1NZv6j9033rWiDZcOVM4ZO5GdeVSdLkvVOgqnlvYZb9+Z/LJoGpH4cREJ6C1eQYNlLsw6IrdSS8YTv8b/0anWa5rPhtGyHPWTNIpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNf9FwGV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12757C19424;
	Thu, 19 Mar 2026 09:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773911608;
	bh=O/jJa9mMfpdugNujuvLwaJf5rcslyp9qMz1bzi5jvrM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vNf9FwGVqs8IrcKXynUZ/rWIyi9Fh9FG1K8ZV7+GOHsg5jsyhyh3+SWiW6J9grAFp
	 G7WFcqAB21blEUgvriaiZ7fprhs1nHeQKVC+1zDZCKZ/tONsV0Y1vzvJgoslRkGRt0
	 PskOIwcbyABAqZzOEm8vbTbLd2vtg0phU79feGPifOF99YCBx46ceprUXpMkLAZtKT
	 nixnTR8A6CNQxtETpFOPlD0u3wVbiJMfspVxogvoFpFI4YSfkYO5IlFho+AJCWhk6C
	 2U79tPKzPvdShcUztq0mpT7ycONPHDhEnt56YMHXWkuCeE/O5HsfmT2DaeIAveAeXK
	 VYfXhW/hwu+4g==
Date: Thu, 19 Mar 2026 10:13:26 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chaitanya Sabnis <chaitanya.msabnis@gmail.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] ASoC: dt-bindings: hisilicon: Convert hi6210 I2S to
 dt-schema
Message-ID: <20260319-didactic-placid-toucan-afea91@quoll>
References: <20260319032112.5251-1-chaitanya.msabnis@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260319032112.5251-1-chaitanya.msabnis@gmail.com>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277643-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A4B1C2C8B7A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 19, 2026 at 08:51:12AM +0530, Chaitanya Sabnis wrote:
> Convert the Hisilicon hi6210 I2S controller hardware binding from
> legacy plain text to modern YAML dt-schema format.

You need to document here the differences done during conversion with
explanation. You changed the order of DMA entries.

> 
> Signed-off-by: Chaitanya Sabnis  <chaitanya.msabnis@gmail.com>
> ---
>  .../bindings/sound/hisilicon,hi6210-i2s.txt   | 42 ----------
>  .../bindings/sound/hisilicon,hi6210-i2s.yaml  | 80 +++++++++++++++++++
>  2 files changed, 80 insertions(+), 42 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/hisilicon,hi6210-i2s.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/hisilicon,hi6210-i2s.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/hisilicon,hi6210-i2s.txt b/Documentation/devicetree/bindings/sound/hisilicon,hi6210-i2s.txt
> deleted file mode 100644
> index 7a296784eb37..000000000000
> --- a/Documentation/devicetree/bindings/sound/hisilicon,hi6210-i2s.txt
> +++ /dev/null
> @@ -1,42 +0,0 @@
> -* Hisilicon 6210 i2s controller
> -
> -Required properties:
> -
> -- compatible: should be one of the following:
> -   - "hisilicon,hi6210-i2s"
> -- reg: physical base address of the i2s controller unit and length of
> -   memory mapped region.
> -- interrupts: should contain the i2s interrupt.
> -- clocks: a list of phandle + clock-specifier pairs, one for each entry
> -  in clock-names.
> -- clock-names: should contain following:
> -   - "dacodec"
> -   - "i2s-base"
> -- dmas: DMA specifiers for tx dma. See the DMA client binding,
> -  Documentation/devicetree/bindings/dma/dma.txt
> -- dma-names: should be "tx" and "rx"

...


> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: HiSilicon hi6210 I2S controller
> +
> +maintainers:
> +  - Chaitanya Sabnis <chaitanya.msabnis@gmail.com>

This should be someone with datasheet or hardware, e.g.: device driver
maintainer or platform maintainer. Unless you have datasheet or
hardware?

> +
> +allOf:
> +  - $ref: dai-common.yaml#

Best regards,
Krzysztof


