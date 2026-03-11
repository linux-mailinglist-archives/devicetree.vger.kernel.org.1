Return-Path: <devicetree+bounces-274082-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJHaLrFpsWnsugIAu9opvQ
	(envelope-from <devicetree+bounces-274082-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:10:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C302642DC
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:10:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 49C853237B0F
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:03:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC8152BDC0E;
	Wed, 11 Mar 2026 13:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LeVzIeSF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99DE016132A;
	Wed, 11 Mar 2026 13:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773234238; cv=none; b=euYRIkLkk2pDWgrnUD3uq7MQd82pLP+CDrfVyi8OHjqiwuFoKr/ZuveFmGmMOj07O4wcCFOWVaOGxvtwHxauAnQrlizu2t0vqXFkOL8R5S0aP2OwM+HBk22wS473PyjKbbcz42AtdmxdPtoQtWVAbRnB2RFJmkrhRetQjhfkgYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773234238; c=relaxed/simple;
	bh=02BWGCyBwEVGccAXuN3PhsDOGLBtLKmhhtdNxECuvRg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iXpnYaIC1+NkwH9LJllMN22k5HA9Bi4k0O3QqGJjn+LnW9pL9oPWnQVSUbC3u+b+jLNAa0+VzpZVXkQg10bpTZTtaMd8Wd6/ye70ZKrLVt1kCpA/+x3VAQfIH00ezWrHpS8CqenKIts2uWvvMKf8v5kpUVTNOBLYi2q00KzqpkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LeVzIeSF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A92C5C19425;
	Wed, 11 Mar 2026 13:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773234238;
	bh=02BWGCyBwEVGccAXuN3PhsDOGLBtLKmhhtdNxECuvRg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LeVzIeSFhnCa2b8BDIkpG1xraS+PIEHmtPipxkxgPOq7fTbu0HdDn5UcocvF5fpSs
	 kGRQx5YV0rRIS1bE6U2MIWXBE0PZMDV+LZBGUJxid5mqPphUDfNHmr3zRYhWq713Zh
	 2ZytrYhNxXJTYOYbZW0q3HR3Ws4yWGhZVrNVuz9fzV5HSuYMrnLP65hn9LEcnOCOjv
	 zBrhXNOSx9oyXhV8TAWLUROIZLhuEFl4telRYm7AhXUXUh+2GvsVFr7RzjRzzfXjlB
	 LqErI4osotkZSMmYJtThassB3VjIZO+TRxgLJferk3M5cZdGvZTKv9AXWeiWCafYWL
	 pPNU1Uri0JPXg==
Date: Wed, 11 Mar 2026 14:03:55 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: David =?utf-8?Q?Marinovi=C4=87?= <david.marinovic@pupin.rs>
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com, 
	andy@kernel.org, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	michael.hennerich@analog.com, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: iio: dac: ltc2632: add LTC2654
 compatible strings
Message-ID: <20260311-warping-ruby-marmoset-3d494a@quoll>
References: <5d4fb8998d9634c3e5a8ed17b80dae07@pupin.rs>
 <4915e1023c72d2681b0c4ae028ec609e@pupin.rs>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <4915e1023c72d2681b0c4ae028ec609e@pupin.rs>
X-Rspamd-Queue-Id: 25C302642DC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274082-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,analog.com:url,analog.com:email,pupin.rs:email]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 04:32:05PM +0100, David Marinovi=C4=87 wrote:
> Add DT compatible strings for the LTC2654 DAC family variants
> supported by the ltc2632 driver.

Describe hardware, not driver.

>=20
> Signed-off-by: David Marinovic <david.marinovic@pupin.rs>
> ---
>  .../devicetree/bindings/iio/dac/lltc,ltc2632.yaml        | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/iio/dac/lltc,ltc2632.yaml
> b/Documentation/devicetree/bindings/iio/dac/lltc,ltc2632.yaml
> index 733edc7d6d17..7ec663beec1a 100644
> --- a/Documentation/devicetree/bindings/iio/dac/lltc,ltc2632.yaml
> +++ b/Documentation/devicetree/bindings/iio/dac/lltc,ltc2632.yaml
> @@ -4,14 +4,15 @@
>  $id: http://devicetree.org/schemas/iio/dac/lltc,ltc2632.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>=20
> -title: Linear Technology LTC263x 12-/10-/8-Bit Rail-to-Rail DAC
> +title: Linear Technology LTC263x 12-/10-/8-Bit, LTC2654 16-/12-Bit,
> Rail-to-Rail DAC

There are multiple patch errors here. This is unmergeable.

>=20
>  maintainers:
>    - Michael Hennerich <michael.hennerich@analog.com>
>=20
>  description: |
> -  Bindings for the Linear Technology LTC2632/2634/2636 DAC
> +  Bindings for the Linear Technology LTC2632/2634/2636/2654 DAC
>    Datasheet can be found here: https://www.analog.com/media/en/technical=
-documentation/data-sheets/LTC263[246].pdf
> +  Datasheet can be found here:
> https://www.analog.com/media/en/technical-documentation/data-sheets/2654f=
=2Epdf
>=20
>  properties:
>    compatible:
> @@ -34,6 +35,10 @@ properties:
>        - lltc,ltc2636-h12
>        - lltc,ltc2636-h10
>        - lltc,ltc2636-h8
> +      - lltc,ltc2654-l16
> +      - lltc,ltc2654-l12
> +      - lltc,ltc2654-h16
> +      - lltc,ltc2654-h12

Several look compatible to me, so express it with fallback and drop
unneeded entries in the driver.

>=20
>    reg:
>      maxItems: 1
> --
> 2.50.1
>=20
>=20
>=20
>=20
> -------- Original Message --------
> Subject: [PATCH 0/2] iio: dac: ltc2632: add support for LTC2654 DAC family
> Date: 10.03.2026 16:27
> From: David Marinovi=C4=87 <david.marinovic@pupin.rs>
> To: jic23@kernel.org
>=20
> This patch series adds support for the Linear Technology LTC2654
> quad DAC family to the existing ltc2632 driver.
>=20
> The LTC2654 shares the same 24-bit SPI protocol as the existing
> LTC2632/2634/2636 devices, requiring minimal additions to the
> driver.
>=20
> The LTC2654L-16 variant has been tested on a Phytec phyCORE-STM32MP1
> board with the DAC connected via SPI1. The driver probes successfully
> and all 4 channels are accessible via the IIO sysfs interface.
>=20
> Patch 1 adds the driver support.
> Patch 2 updates the DT bindings documentation.
>=20
> David Marinovic (2):
>   iio: dac: ltc2632: add support for LTC2654 DAC family
>   dt-bindings: iio: dac: ltc2632: add LTC2654 compatible strings
>=20
> Signed-off-by: David Marinovic <david.marinovic@pupin.rs>

What is this?


