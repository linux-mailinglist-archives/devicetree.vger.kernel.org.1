Return-Path: <devicetree+bounces-300491-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIArM4CIDWrBygUAu9opvQ
	(envelope-from <devicetree+bounces-300491-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 12:10:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7944958B67B
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 12:10:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 34B29303CBE5
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 10:10:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58FB83D45E9;
	Wed, 20 May 2026 10:09:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nkf1hj+G"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093B83D093B;
	Wed, 20 May 2026 10:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779271798; cv=none; b=m6nzLATGKsg4lCDtzHyAKkO61TcXhWsQ9wBbKFWRdy7su48NvcmjbdlxTKx/p+9vFXFrXt6M402z/n5QnxhFSoxq7CHVnM8vFd4O7P/CYl8z8xoOsWNEGsh+y9Y8TzN5SoEAGT2738FegStRCaMNEMPDB7oQ5PfQ2edkRcS5O0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779271798; c=relaxed/simple;
	bh=1ppgeAFDo1cmwkY1CpueAD6t9/svUfEAWa5+bdroJTc=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=doQYpasqoRIjVIzbjXXxKLY6MbPWCf2alk79GTW6vjOIg9WMZ3K0DheMS2+2SkBWvQ1urWxihfTiSWeiynBRwXPPsDQ5gTP+qWtYMP+djMXZU0G6/PEXQKhBfFzC3EQI6BP9GP/1YTzU1xqActdS7eBsjhDvJ6s5271pEumYsnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nkf1hj+G; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05D8F1F000E9;
	Wed, 20 May 2026 10:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779271796;
	bh=t9eA5JJdzPuY3YBlUchbJdm0CwMkj433FnoppyW6ysA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=Nkf1hj+G86Z9L7YVCs48ElEEhd3IXiORAD+Gq81TfLl7tsHrYwC4CzpQfO6inaBI3
	 KZXV7ITkOaFR9SvBQ6Oiw2c8VpSDTJEUIfmX4OB0dpnVzrloXAHPt6fwIrTDnZeNtV
	 CyIOM0UPN3WbDlvspn2a8kOeVL/TAs1DvKQjP32qTZZgBjBsz0OrEqNkyBA5HtBNYG
	 Ouv8E9vq4Y7FbTuFmbXeOja7CGLi5A0n77pq0BUb3yUy/TRHu2TDrNr4x0UoeEHx4f
	 vS1P1JJVlAC9L0zSnJ0JX3IJBIJgx/ZGQHVHRrDcOxTg+Td9v722FyUpTth0leEZUv
	 cY72gnDV2GoAQ==
Date: Wed, 20 May 2026 11:09:48 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Andreas Klinger <ak@it-klinger.de>, Andy
 Shevchenko <andy@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v9 02/11] dt-bindings: iio: adc: hx711: add VSUP supply
 property
Message-ID: <20260520110948.167c8e14@jic23-huawei>
In-Reply-To: <20260518220228.63322-3-piyushpatle228@gmail.com>
References: <20260518220228.63322-1-piyushpatle228@gmail.com>
	<20260518220228.63322-3-piyushpatle228@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-300491-lists,devicetree=lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,microchip.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 7944958B67B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 19 May 2026 03:32:18 +0530
Piyush Patle <piyushpatle228@gmail.com> wrote:

> Document the optional VSUP supply used by the HX711 on-chip regulator.
> 
> Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
See my reply to v8 around dvdd needing (I think) to be in this patch
for the hx711 not later in the series.

> ---
> No change from v8. Already applied to iio.git testing branch.
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


