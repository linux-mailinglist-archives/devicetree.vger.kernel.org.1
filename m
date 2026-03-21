Return-Path: <devicetree+bounces-278580-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLbKOFWSvmmBTQMAu9opvQ
	(envelope-from <devicetree+bounces-278580-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 13:43:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 617E12E5523
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 13:43:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3542B3014675
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 12:42:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7F0C366077;
	Sat, 21 Mar 2026 12:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7ipOjvg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9412D6401;
	Sat, 21 Mar 2026 12:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774096965; cv=none; b=O37KfKHGf4oNL9nomfU/wESLpjmVLKofjjhUedvuYRhJ4KXQx6J9xkqakFFoKNHdwo4WB/pSRbJlrcdHXnSEwmpR27Cs50vdG4QnoBJvIfQKdUtk3TKk7TT5HWzpY1tHdNGO4/7xxMf7URYQtx36Dtj9ohK72dvcl4EsJCMTfi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774096965; c=relaxed/simple;
	bh=MjYkdz9+L0pyMEt2KrtErEE8PXR6dETfF3AbkkP3hG0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VL6u9KdM70mxAd9GHW5W2nwbtHXo7v27sDed9O+L0jC/SiIU5+Clgp8pbdHlFKOi66TqKrJ8pgRo11vSJarvmcmEqmQh0RfWTOM0SWLeUrJhyrxokVex3/cRaUp/AyPU9+XJM1DmlOn7wq4WnSvJcfQPp3wPI1rkQoNyxJ3ejYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7ipOjvg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03A1BC19421;
	Sat, 21 Mar 2026 12:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774096965;
	bh=MjYkdz9+L0pyMEt2KrtErEE8PXR6dETfF3AbkkP3hG0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=i7ipOjvgSojBhyyQqFGUVKqo+FjYzHwF0TFIW5V+Wk2gTo85vTsLXCIjtTI9eDx4p
	 ZYpbMgBAWf1eFANJ8Ngy7a8iPkRtkoHDQyOyN69enJXQo4+rtAjQ0723PYTYducVf0
	 A29FpB4iZm+YL8iKb5/2o960t/mFyE8ukAklHkSdTrhCaLnuGL2ql40bzWiAYTowAP
	 vd2AK+Sex0Mtu6gezG5bAp/DkUxFSW77SYgEAALPd4i65qwZz/jguxtAQAnxz6JSn8
	 cXrjUTXtgrZC7k3+zNuOkV6C2dKbFf1gqAYXn63aJzqqIvDmRJXrByy2vzX0kiU1D0
	 M2VyVOMD6v/XA==
Date: Sat, 21 Mar 2026 12:42:35 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Erikas Bitovtas <xerikasxx@gmail.com>
Cc: David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
Subject: Re: [PATCH v6 1/8] dt-bindings: iio: light: vcnl4000: add
 regulators
Message-ID: <20260321124235.1d07d486@jic23-huawei>
In-Reply-To: <20260320-vcnl4000-regulators-v6-1-0d24d20b1a5b@gmail.com>
References: <20260320-vcnl4000-regulators-v6-0-0d24d20b1a5b@gmail.com>
	<20260320-vcnl4000-regulators-v6-1-0d24d20b1a5b@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278580-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 617E12E5523
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 20 Mar 2026 18:45:36 +0200
Erikas Bitovtas <xerikasxx@gmail.com> wrote:

> These sensors can accept 2 supplies - one for the sensor and one for IR
> LED [1]. Add supply properties for the sensor - 2 for the sensors and
> one external, for their open drain interrupt line, to ensure the sensor
> is powered on before proceeding with setup.
> 
> [1] https://www.vishay.com/docs/84274/vcnl4040.pdf
> 
> Reviewed-by: David Lechner <dlechner@baylibre.com>
> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
> ---
>  .../devicetree/bindings/iio/light/vishay,vcnl4000.yaml     | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
> index 2ba4d5de4ec4..516afef7a545 100644
> --- a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
> +++ b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
> @@ -33,6 +33,17 @@ properties:
>    interrupts:
>      maxItems: 1
>  
> +  vdd-supply:
> +    description: Regulator providing power to the "VDD" pin.
> +
> +  vio-supply:
> +    description: Regulator providing power for pull-up of the I/O lines.
> +      Does not connect to the sensor directly, but is needed for the
> +      correct operation of the I2C and interrupt lines.

It's optional so I guess it doesn't matter, but whether this supply is
needed of not is down to whether the SoC allows for pull up on the
interrupt and I2C lines.  Some SoCs provide this (though it's been
a while since I used one that did.).

In other cases an external pull up is needed. It would feel
odd to provide a supply for the pull up it was all hidden in the SoC.

Anyhow, optional so we aren't forcing this anyway.

Jonathan


> +
> +  vled-supply:
> +    description: Regulator providing power to the IR anode pin.
> +
>    reg:
>      maxItems: 1
>  
> @@ -54,6 +65,9 @@ examples:
>              compatible = "vishay,vcnl4200";
>              reg = <0x51>;
>              proximity-near-level = <220>;
> +            vdd-supply = <&reg_vdd>;
> +            vio-supply = <&reg_vio>;
> +            vled-supply = <&reg_vled>;
>          };
>      };
>  ...
> 


