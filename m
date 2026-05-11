Return-Path: <devicetree+bounces-295538-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cDFkOwfJAWoRjwEAu9opvQ
	(envelope-from <devicetree+bounces-295538-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 14:18:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A70E50D7F9
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 14:18:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42B203018BF1
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 12:10:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABF5837BE7F;
	Mon, 11 May 2026 12:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1odb3bb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 885F437B018;
	Mon, 11 May 2026 12:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778501408; cv=none; b=kzpEYqDECzT8PVuvTI+sHZCcNKnhDKI1aV1ko/zDwCm/p5FyRCXeHB8JV9T8dwNOErtkvvkDwIJqPaXUfzXB/6gCj0R21hz0D76eKE0AqnaKkq4CfKsLGNy74sLNRJ2qDJn3ySbbmrssPH6/RGY5wYtOBz2EOnM6b6kIkCvHtqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778501408; c=relaxed/simple;
	bh=dX4Fwrp5R4K4S+ZxjluBf9NA6ZE5GdMBh5wRFpOpCM8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cBMqQBTq43J0LU74AvyR1sRf6zEANzpKa7IsqfkaNzI7U3D+jTazyUJbcCS2pTONuIJVsvvdO7yJIJYfiLn/VlKN+Y6NF2ugwfmdJJKVUfmkE4YXJ8PDYOujiuIY3zKxs7rUSv7J2k5ZiCt01HM/a7XuPaDSi0ajC0KrXMpWz58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1odb3bb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C19BFC2BCB0;
	Mon, 11 May 2026 12:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778501408;
	bh=dX4Fwrp5R4K4S+ZxjluBf9NA6ZE5GdMBh5wRFpOpCM8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=B1odb3bb5tglO/K3QZhUPbF5gMsWiSmsb7rAa2sWkdHC6pyMtWXJkWmfRjgW7WR5k
	 E3B8Xlnp3raL4UKepNfVJXOhlbE0bUs8ADKJL0jvkiFmSURg3j4CAhG6YApQ7DZg/O
	 ar7kbYniXSUBWluPcuLWsG7fivgjl8m62VAsBEekOFCTflNe/UMSTgMUqwOEhlfWsm
	 ZUodkCsBUYoDIxSnj/4Cb8+JL3dtWvwYbB/2KmjFNekvzGQEcOjqR2ds62Qs32Q2/K
	 Ld4Bcn3iIlF8los2LYPsPy0Rbllr3TSIMl2yD/BvwYFAk5rg0rfQNCwGmaKTlZNQOC
	 3fHnA0+3MfaDg==
Date: Mon, 11 May 2026 13:09:59 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Maxwell Doose <m32285159@gmail.com>
Cc: tomasz.duszynski@octakon.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, David Lechner <dlechner@baylibre.com>, Nuno
 =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 linux-iio@vger.kernel.org (open list:IIO SUBSYSTEM AND DRIVERS),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: Re: [PATCH] dt-bindings: iio: chemical: sensiron,scd30: Update
 maintainers field
Message-ID: <20260511130959.7cea81ff@jic23-huawei>
In-Reply-To: <20260510020758.233721-1-m32285159@gmail.com>
References: <20260510020758.233721-1-m32285159@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 4A70E50D7F9
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
	TAGGED_FROM(0.00)[bounces-295538-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,octakon.com:email,devicetree.org:url]
X-Rspamd-Action: no action

On Sat,  9 May 2026 21:07:58 -0500
Maxwell Doose <m32285159@gmail.com> wrote:

> Tomasz Duszynski is no longer the maintainer of the SCD30 driver.
> Replace his entry with mine.
> 
> Link: https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git/commit/?h=togreg

That link is not stable given it's whatever is head of my tree rather than
what I suspect you were aiming for.  Use a link to the email on lore instead.

> Signed-off-by: Maxwell Doose <m32285159@gmail.com>
> ---
>  .../devicetree/bindings/iio/chemical/sensirion,scd30.yaml       | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/chemical/sensirion,scd30.yaml b/Documentation/devicetree/bindings/iio/chemical/sensirion,scd30.yaml
> index 40d87346ff4c..a5b0debe85b1 100644
> --- a/Documentation/devicetree/bindings/iio/chemical/sensirion,scd30.yaml
> +++ b/Documentation/devicetree/bindings/iio/chemical/sensirion,scd30.yaml
> @@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: Sensirion SCD30 carbon dioxide sensor
>  
>  maintainers:
> -  - Tomasz Duszynski <tomasz.duszynski@octakon.com>
> +  - Maxwell Doose <m32285159@gmail.com>
>  
>  description: |
>    Air quality sensor capable of measuring co2 concentration, temperature


