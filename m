Return-Path: <devicetree+bounces-278914-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGq8IJ/xwGkUOwQAu9opvQ
	(envelope-from <devicetree+bounces-278914-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 08:54:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3A52EDE47
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 08:54:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3F5CA300533E
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 07:53:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EAAD363C49;
	Mon, 23 Mar 2026 07:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpd7r5i3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BEAE362133;
	Mon, 23 Mar 2026 07:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774252420; cv=none; b=LLLQ3W+LkJ30MN+yxO0TQ2z/eRF2Qj8+8z3W6/sA/i7onJQswaaGJhOQEyj1nSgfSI4KlOLibPT+yuv5PVR6bh/Kiv+fqZwC1RrVMSdRXqaNubkvPAtF3wyRQRDFgvEcb22+0mdoLl2DboRvTnrV1SDSzhIX2iLyfv89Jeo9mAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774252420; c=relaxed/simple;
	bh=rKXtNU80tlF2bEc5y8Hf3EEwlFTdBjp+OHDgdQ+xW4M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gQIlj4eAYd6fh5OYwad2ea8HjcVNdS6ZAztpFaGQonNr9DNQ6eit+F9e/vUni0aKbhAgSWjspvnxCwIzCXrFx2jYJTX3MICkoGZD5eLP5YQYeE/PKvgHyOIXKOKvFqM5kKK3z95z4ILR/rXjRlH2LgDuOlha/Zn3h9+ExEhlIM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpd7r5i3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21BAAC4CEF7;
	Mon, 23 Mar 2026 07:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774252419;
	bh=rKXtNU80tlF2bEc5y8Hf3EEwlFTdBjp+OHDgdQ+xW4M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rpd7r5i3Hay5+CRrN9PuS0ZKpZiSE77pqaQ5052CwJjfxzfAU9TKjSb7cNc11mH6T
	 76NH1urRy28GGx7YoUV7A6j6UqICuhqPEzPADEoJAm1aMpm7YIJYP/mZbVTCD8YSJa
	 ogdsevIJRw23t9i3j1hkXA1Hg3WKF0Abx585kSbk5wQccUsVhocDQaXXupaOAwColI
	 R9FCu37yQCrI8FiMPwUrpUDDOe4l3cCHXNFaViga79LC/xRuDHZp5NMmCpf4Oq1rDq
	 P3hYybNi/PqiXvO+cwnD4YLquk3WTFm9SsoRpAKXGWmilDUwVagNLxIb3eiEuyDIfd
	 5Ho4WRVjZdI8Q==
Date: Mon, 23 Mar 2026 08:53:37 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nick Xie <nick@khadas.com>
Cc: neil.armstrong@linaro.org, khilman@baylibre.com, 
	martin.blumenstingl@googlemail.com, jbrunet@baylibre.com, jic23@kernel.org, dlechner@baylibre.com, 
	andy@kernel.org, krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, 
	linux-iio@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: iio: adc: amlogic,meson-saradc: add
 S4 compatible
Message-ID: <20260323-saffron-cobra-of-perfection-731c8d@quoll>
References: <20260323013408.429701-1-nick@khadas.com>
 <20260323013408.429701-2-nick@khadas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260323013408.429701-2-nick@khadas.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278914-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,baylibre.com,googlemail.com,kernel.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7A3A52EDE47
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 23, 2026 at 09:34:05AM +0800, Nick Xie wrote:
> Add the compatible string for the SARADC (Successive Approximation
> Register ADC) IP block found in the Amlogic Meson S4 SoC.
> 
> There are no known differences between the SARADC on S4 and the one
> on G12A. Therefore, it uses "amlogic,meson-g12a-saradc" as a proper
> specific fallback.

You should explain here why you are adding that comment.

> 
> Signed-off-by: Nick Xie <nick@khadas.com>
> ---
>  .../devicetree/bindings/iio/adc/amlogic,meson-saradc.yaml     | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/amlogic,meson-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/amlogic,meson-saradc.yaml
> index bb9825e7346dd..70ab4e140e71b 100644
> --- a/Documentation/devicetree/bindings/iio/adc/amlogic,meson-saradc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/amlogic,meson-saradc.yaml
> @@ -27,7 +27,11 @@ properties:
>                - amlogic,meson-gxm-saradc
>                - amlogic,meson-axg-saradc
>                - amlogic,meson-g12a-saradc
> +          # Usage of this generic fallback is not allowed for new devices

Best regards,
Krzysztof


