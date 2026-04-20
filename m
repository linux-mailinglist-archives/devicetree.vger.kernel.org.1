Return-Path: <devicetree+bounces-288730-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOh6KmRU5mkDuwEAu9opvQ
	(envelope-from <devicetree+bounces-288730-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 18:29:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DE042F884
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 18:29:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0A65935B3491
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 14:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD7673D412B;
	Mon, 20 Apr 2026 13:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/tFWdJR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE533D411A;
	Mon, 20 Apr 2026 13:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776692274; cv=none; b=mbmYHYx5wMXYCpLKvGAXgJWSGHNR0LBXEhgCzWARdLAuiCX26A3E70zOg57/frWayvmwe8/duHEkLPYLgs7h3S6UyQU4RsvZ0Wne7rXGK8q2C5E9Vqw9qqThl1M8dPTc2166X6Zq7JpBdXHQjgsqyT5bCZDgJ8BSAKkYnD6jhFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776692274; c=relaxed/simple;
	bh=VQKHomIJ8wUs6jjB1/NiO3QUKnCZu/i13ZYm5jdV80I=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PDIpbtHyMnBmtGxtP3+dxckvFQ8Els475Dhvt0k9vUZi7xGvktoLyUacC2B2+CiSEHdF/BY8sRQ38f2ldX4LpctMJbDc4tMaJpqfAcWXWlmuoYCe/kHFKmkhYi7wUN/VAI9SB3KCyKwIBtMcSZWg645s3FDImOtgXphFlci8wGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/tFWdJR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A425C19425;
	Mon, 20 Apr 2026 13:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776692274;
	bh=VQKHomIJ8wUs6jjB1/NiO3QUKnCZu/i13ZYm5jdV80I=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Z/tFWdJRawQJ/l0sW+p4YLYKmdoAldOFR9Xo8mheWYv3kuSIJXsPTRC/RX3IXrxpN
	 r1Vd5+B05slIJaHUePyQFXttXdJYhA+oBYe88OxnokJpWVoukZZ5cvToCBwg0n6x1D
	 gOWVQHy3D6nmoqUCDj6vkI856OVn5EoujPVU/tP+Ligw1vjpMVe0P3tylJL7wOkIPN
	 AojxfD6+6zdRgXzPaPqTSeQXjA4FLhrGs7G/QU9OO2JDbx93Sh3CvpShNlR7KVAxL0
	 7Z+l1AigzhmU4nhYazouZUbsbuf1YxefoiR8+MOXJv0se8k+KdPrriMn7NADiKuCJp
	 W16El2xOIq8Kw==
Date: Mon, 20 Apr 2026 14:37:42 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Hardik Phalet <hardik.phalet@pm.me>
Cc: gregkh@linuxfoundation.org, andy@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, dlechner@baylibre.com, krzk+dt@kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev, me@brighamcampbell.com, nuno.sa@analog.com,
 robh@kernel.org, skhan@linuxfoundation.org, Hardik Phalet
 <hardik.phalet@gmail.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: iio: magnetometer: QSTCORP QMC5883P
Message-ID: <20260420143742.1dfe8833@jic23-huawei>
In-Reply-To: <20260420-qmc5883p-driver-v3-2-da1e97088f8b@pm.me>
References: <20260420-qmc5883p-driver-v3-0-da1e97088f8b@pm.me>
	<20260420-qmc5883p-driver-v3-2-da1e97088f8b@pm.me>
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
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-288730-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linuxfoundation.org,kernel.org,vger.kernel.org,baylibre.com,lists.linux.dev,brighamcampbell.com,analog.com,gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,pm.me:email,2c:email]
X-Rspamd-Queue-Id: 09DE042F884
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, 19 Apr 2026 22:32:32 +0000
Hardik Phalet <hardik.phalet@pm.me> wrote:

> Add the device tree binding document for the QST QMC5883P, a 3-axis
> anisotropic magneto-resistive (AMR) sensor with a 16-bit ADC that
> communicates over I2C.
> 
> Add a MAINTAINERS entry for the QSTCORP QMC5883P devicetree binding.
> 
> Signed-off-by: Hardik Phalet <hardik.phalet@pm.me>

Google fed me a break out board for this that has a drdy pin?
If so include that as an interrupt as the binding should attempt
to be as complete as possible from the start.

> ---
>  .../iio/magnetometer/qstcorp,qmc5883p.yaml         | 48 ++++++++++++++++++++++
>  MAINTAINERS                                        |  6 +++
>  2 files changed, 54 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/magnetometer/qstcorp,qmc5883p.yaml b/Documentation/devicetree/bindings/iio/magnetometer/qstcorp,qmc5883p.yaml
> new file mode 100644
> index 000000000000..72cc3fef2226
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/magnetometer/qstcorp,qmc5883p.yaml
> @@ -0,0 +1,48 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/magnetometer/qstcorp,qmc5883p.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: QSTCORP QMC5883P 3-axis magnetometer
> +
> +maintainers:
> +  - Hardik Phalet <hardik.phalet@pm.me>
> +
> +description:
> +  The QMC5883P is a 3-axis anisotropic magneto-resistive (AMR) sensor with a
> +  16-bit ADC. It communicates over I2C (standard and fast modes) and is

If you are spinning again I'd drop the standard and fast modes thing.
It's rare that a device doesn't support those two.  High speed mode is another thing
entirely as that changes the protocol quite a bit (I think - it's been a while
since I spec dived on these).

> +  targeted at compass, navigation, and industrial applications.
> +
> +properties:
> +  compatible:
> +    const: qstcorp,qmc5883p
> +
> +  reg:
> +    maxItems: 1
> +    description: I2C address of the device; the default address is 0x2c
> +
> +  vdd-supply:
> +    description:
> +      VDD power supply (2.5 V to 3.6 V). Powers all internal analog and
> +      digital functional blocks.
> +
> +required:
> +  - compatible
> +  - reg
> +  - vdd-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        magnetometer@2c {
> +            compatible = "qstcorp,qmc5883p";
> +            reg = <0x2c>;
> +            vdd-supply = <&vdd_3v3>;
> +        };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 48fda1f8332e..d41f6b33d0e5 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -21554,6 +21554,12 @@ F:	Documentation/networking/device_drivers/ethernet/freescale/dpaa2/overview.rst
>  F:	drivers/bus/fsl-mc/
>  F:	include/uapi/linux/fsl_mc.h
>  
> +QSTCORP QMC5883P MAGNETOMETER DRIVER
> +M:	Hardik Phalet <hardik.phalet@pm.me>
> +L:	linux-iio@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/iio/magnetometer/qstcorp,qmc5883p.yaml
> +
>  QT1010 MEDIA DRIVER
>  L:	linux-media@vger.kernel.org
>  S:	Orphan
> 


