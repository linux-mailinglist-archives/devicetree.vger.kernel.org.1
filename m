Return-Path: <devicetree+bounces-296201-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OU4Id0XA2p10QEAu9opvQ
	(envelope-from <devicetree+bounces-296201-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 14:06:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CDE51FC80
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 14:06:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 489F5301BA48
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 12:06:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 402984D2EF5;
	Tue, 12 May 2026 12:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DM8NY+B8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DC34C77D9;
	Tue, 12 May 2026 12:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778587592; cv=none; b=aVosN/eiOdJP26jpNXiczpdhYUH9GENhAgRAXFAP7QSjboaQgJh7B4mMpNZEj+qYWMfN6Prkkr/VycjLf0eSRvxoWmwS3LikOWdLlSJmxvC7z3k8MPwEQDmScpU+ly/WWmnOJLriN44xwES2iNl8TR+amX5X/02P2RUh17vxxoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778587592; c=relaxed/simple;
	bh=drLM0BAX3WIAuXVnD/2fUpgJp4pFKEOucdQPoRM/WBw=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=M2eZ35OGLL/8fTX7vMSwFjkgO5P3ZeemYLzeDAtxk9k4gSu88Xi+NGnnAqxfa0kqPTotCZRoZ/azNbn5JRHNYG8vhoDRvl7XVbmWfv9WvskbNxlqGBbVnoIw4/hJW8swlOiPZrxB2tnBlsqa3mMXsPkQKwIBYIpqzbcowmfzm9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DM8NY+B8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58CB0C2BCB0;
	Tue, 12 May 2026 12:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778587591;
	bh=drLM0BAX3WIAuXVnD/2fUpgJp4pFKEOucdQPoRM/WBw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=DM8NY+B8PoMUgExJSzDboO3N5/14EPr+5mRZW3VKxQlUmqBx8+hywKdk6GmYBAB5f
	 8nulResCLYBto6VQs3hRYA4KETuKTELxNR8KTD0A8SHHaZq0+MZW5cuqzMxVvjF3Ar
	 mm0WBZkP37qou44s62yfo1pjSUpXR7yARv+ZtF84vj7sPRtDvtjuKaq8UdZly7jo8N
	 kydX+PiGds244j0Y6LXSItvI6x6ENINOrypn3TCV22aKWNiqshhxd7dIJ6fK3WSYgJ
	 XqzugwqQSrg3k3Id1oXkJJlsfvp//uxyD5TkhF5mIYAxN7wX19pyFjWbMaVPRgWeun
	 17bX/s/lKW9Jg==
Date: Tue, 12 May 2026 13:06:22 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: ak@it-klinger.de, andriy.shevchenko@linux.intel.com,
 dlechner@baylibre.com, nuno.sa@analog.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 v8 02/11] dt-bindings: iio: adc: hx711: add VSUP
 supply property
Message-ID: <20260512130622.1f3f4d08@jic23-huawei>
In-Reply-To: <20260511174342.123820-3-piyushpatle228@gmail.com>
References: <20260511174342.123820-1-piyushpatle228@gmail.com>
	<20260511174342.123820-3-piyushpatle228@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: F2CDE51FC80
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296201-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,intel.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Mon, 11 May 2026 23:13:27 +0530
Piyush Patle <piyushpatle228@gmail.com> wrote:

> Document the optional VSUP supply used by the HX711 on-chip regulator.
> 
> Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---

I got curious given the driver doesn't yet turn this on and wanted
to just sanity check it via a datasheet.

Why are we including this one but not dvdd-supply?  The suggested
wiring does connect them to the same supply but it's external to the
chip so in theory they might not be.  Curiously dvdd supply is allowed
to be 0.1 V lower than vsup-supply.

>  Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> index 1ea60dff98d5..a8eaa1f18de5 100644
> --- a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> @@ -33,6 +33,10 @@ properties:
>      description:
>        Analog supply voltage (AVDD).
>  
> +  vsup-supply:
> +    description:
> +      Supply voltage for the on-chip regulator (VSUP).
> +
>    clock-frequency:
>      description:
>        Controls the SCK bit-bang timing. The value is used to derive the


