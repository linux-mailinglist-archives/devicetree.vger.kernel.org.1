Return-Path: <devicetree+bounces-263856-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GHXuEKOUiWlj/AQAu9opvQ
	(envelope-from <devicetree+bounces-263856-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 09:02:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B878710CB4A
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 09:02:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 284203009B03
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 08:01:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39A0633B94B;
	Mon,  9 Feb 2026 08:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlP+aSnU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CCF1FBEA6;
	Mon,  9 Feb 2026 08:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770624095; cv=none; b=FeDQF6SXGMBlcxHPqTtpZb2jRv6Rx4vJMjB1dxF/dn/qF9QpNN+xJ+VxZP5pH8RaEQXH7E7+2KMFdndLhpyXc7PIocyrSIfSOiDs+yvNOwcDZX6m+tVVbrpgX+43bdH9Ar33FbNf6CmyLDQYnoj/DppKc96xDzMI3hOwarFFSoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770624095; c=relaxed/simple;
	bh=KrsW+8sTbH6q4Uh/s11YLczQERcWDWXPa5eQyoXaVro=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kwoiiUFUhRItpMTxb/TCja6g+JHvj19BhLFjkOwd8f6lejwnKaL+Gc18yKWGSjRnGIYNaeau9P6y2ja/MjGoF2wvs0dRqqzR6qEo5u658Yrub+CvQa0L0pwgzyeeXZINfOUUvsa7D8D6UvO/qWQKlHYezrlwMKOv5vDW5OVPg6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlP+aSnU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29B80C116C6;
	Mon,  9 Feb 2026 08:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770624094;
	bh=KrsW+8sTbH6q4Uh/s11YLczQERcWDWXPa5eQyoXaVro=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rlP+aSnUfwDT1rzw7JyD4kP7dZeNvK7/zQeh2jZv9eRle35jtJqL3X0cWVDJMBVWY
	 D5JnmCDj+xTcZChUsgDfap4sNQVNGrm2kR+8NiRC3O+A6koNfpsuI+9nH7chJ9j4us
	 7NTrDOivEvssUP6jMme7PP/NWdf4njwDkSBZbQchIhQ9R5rVyHBdB4vk0IVxfbnjDF
	 v68FMwkJuEC+OOcOVMAC1uppXJTmwhAic8rMYgBpQc//IL73IZU91TJICLFBZLOLAZ
	 xhfOxKJyA91TGzihto+/eHhLTkP5sQFwWLYsVuLSVfwMW1ZtJZF07eb48d3hK29hkK
	 nxZ/lN5NQzEoA==
Date: Mon, 9 Feb 2026 09:01:32 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yasin Lee <yasin.lee.x@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com, 
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 4/5] dt-bindings: iio: proximity: hx9023s: support
 firmware-name property
Message-ID: <20260209-active-quetzal-of-prowess-47a4ae@quoll>
References: <20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com>
 <20260209-upstream-20260219-v1-4-2b4d74e309d1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260209-upstream-20260219-v1-4-2b4d74e309d1@gmail.com>
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
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263856-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,outlook.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B878710CB4A
X-Rspamd-Action: no action

On Mon, Feb 09, 2026 at 11:37:05AM +0800, Yasin Lee wrote:
> Allow specifying the firmware file name via device tree.

For what purpose? What's in the firmware?

> 
> Signed-off-by: Yasin Lee <yasin.lee.x@gmail.com>
> ---
>  Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml b/Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml
> index 64ce8bc8bd36..7e516fc011c6 100644
> --- a/Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml
> +++ b/Documentation/devicetree/bindings/iio/proximity/tyhx,hx9023s.yaml
> @@ -28,6 +28,12 @@ properties:
>  
>    vdd-supply: true
>  
> +  firmware-name:
> +    description:
> +      Name of the firmware file to be requested by the driver using
> +      the firmware loader interface.

Drop description, obvious. It cannot be anything else.

Best regards,
Krzysztof


