Return-Path: <devicetree+bounces-303526-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBdeGkErF2o37wcAu9opvQ
	(envelope-from <devicetree+bounces-303526-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 19:34:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F81E5E85A4
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 19:34:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8066A3018318
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 17:34:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61D3C43E4BE;
	Wed, 27 May 2026 17:34:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ie9xyXh/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F738F4A;
	Wed, 27 May 2026 17:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779903292; cv=none; b=LrxKTKStl8peIj2hwqkZ0jPsd1Fbsc2FuF6gRV0eX2q4kV8EuOhI9Sfo3gV2m+HgvXcFxRmCX3sG1sk6i9kiSBabn14JocwRbZykABuPdYnLUPhEo5JCgwMiKjxzbPCETlgEkbJktucUDr3dI9g6v/gpvyZ8ZaB9ms8tSX+/SI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779903292; c=relaxed/simple;
	bh=LWmtmkaZDD76w3VR0GRbBpLjfE5KsPcK2kBUj5emgV8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fyfp0FylAqvZBVpK/f3uz7B7kgxEDZvSHTC+kmRAGoTntrMHotzw02SIYpheJ20bk1DaCy7wAD4gz5AxyemUvKowjOkq4UKTpTAIgru9hyo3O4Ckr8LhavjOZn/eDU81I3/2L4Ib6dB/6kTWMJrRqN9GWUpgT/CcnpmcX1pjreE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ie9xyXh/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A51511F000E9;
	Wed, 27 May 2026 17:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779903290;
	bh=vM1+PttVKtPHmfuS8RkSEz+rxIK/6C3brodgeRllBPA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=Ie9xyXh/oyy8rw44adDkeKJLUlhlA2TOKWBHHaoF75c86pYCBmRQStJ6TXUT+gTlK
	 DZENIHgNxQinyX8s/qWocelp/Ek0g1YVRinhaknvjFhmbh5TO3R3Fn5rCAHIHwzgrX
	 oG2c0DwRg5F2ztcU78Q0KBQsQx9hrsou3fJWCVjIgx5QRUcJVKthslKRDqmVOmeuCI
	 d+llCkjne7XstYj8C0VIMvWEHpU/79I+RKyAAPxI7p3kl4FkgFF/OlWZfpuAYD2b7o
	 MaFu6KMpzaAVy25LH+5+Dxx1xjMHnQfr12eb/+sudFd33HMQJkQCaxEk39Yl4jqubT
	 kCHUIs7j5Awow==
Date: Wed, 27 May 2026 18:34:41 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ak@it-klinger.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andy@kernel.org,
 nuno.sa@analog.com, dlechner@baylibre.com
Subject: Re: [PATCH v10 02/11] dt-bindings: iio: adc: hx711: add VSUP supply
 property
Message-ID: <20260527183441.4854e597@jic23-huawei>
In-Reply-To: <20260525105127.180156-3-piyushpatle228@gmail.com>
References: <20260525105127.180156-1-piyushpatle228@gmail.com>
	<20260525105127.180156-3-piyushpatle228@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
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
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303526-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,intel.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 5F81E5E85A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 25 May 2026 16:21:18 +0530
Piyush Patle <piyushpatle228@gmail.com> wrote:

> Document the optional VSUP supply used by the HX711 on-chip regulator.

Commit message and patch title are out of sync with the patch.
Update them appropriately.
> 
> Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../devicetree/bindings/iio/adc/avia-hx711.yaml     | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> index 1ea60dff98d5..0baf620e9057 100644
> --- a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> @@ -33,6 +33,19 @@ properties:
>      description:
>        Analog supply voltage (AVDD).
>  
> +  vsup-supply:
> +    description:
> +      Supply voltage for the on-chip regulator (VSUP).
> +
> +  dvdd-supply:
> +    description:
> +      Digital supply voltage (DVDD). On the HX711, DVDD is a
> +      board-supplied digital rail; it was missing from the original
> +      binding. On the HX710B, DVDD must be greater than or equal to
> +      AVDD; when DVDD is a battery rail and AVDD is a regulated supply,
> +      one channel monitors the DVDD-AVDD difference for battery level
> +      detection.
> +
>    clock-frequency:
>      description:
>        Controls the SCK bit-bang timing. The value is used to derive the


