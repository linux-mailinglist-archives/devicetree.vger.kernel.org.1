Return-Path: <devicetree+bounces-322514-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id t1VLK7XtTWrpAAIAu9opvQ
	(envelope-from <devicetree+bounces-322514-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 08:27:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2257222A9
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 08:27:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="b4mszy6/";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322514-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-322514-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 39391300F56A
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 06:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82CF03C09E4;
	Wed,  8 Jul 2026 06:26:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F23E3AFCE3;
	Wed,  8 Jul 2026 06:26:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783492019; cv=none; b=R6WeCgx8cM0LN40+8Y1uZPLYGHcyJ5td3MMnz/lnnreT5vcxzRmlvfy2cYZ4aTCbgJ62T8pZz1vqmTPf0E3rkQT3j9h8YAgF/SnJiAFqGx5WTi2cYV94Pay4BUtyW0B1TyXoHrNE62lmQzv4rp0N2w8oSU/VZLrgKFocuiVDlus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783492019; c=relaxed/simple;
	bh=g1bIRNb2Vgs58B+cR0vd9mmO4+hWlIE3qlYnoTXWekg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=My5pS48OCSzQoIzs8wBMr8rGWzjg16GgJx1W4fYy7Ah/M3c0fNpZi1Oi8+lqqUk9Y5xoqZe7zkorRRjp9bY+7U1AtSZvSOEO6cLWEiPDjDMIjGLUoz/jQdTTwWPItj60nsPEeYiAaOidiF6Xw0pztXsh0nrPd/MwGdLoA4HF/zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4mszy6/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78EB31F000E9;
	Wed,  8 Jul 2026 06:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783492017;
	bh=XUX5fNGb9p/sKnXZvoH0YUFq5YvSZDAWFlItMh23DxM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=b4mszy6/LGLX0yRC8mBdvdhwe2RoWLljOryuDDpsfSMh3fs6sareUNkslRxIyRpBX
	 eMFUvFxYj8RmqPP9JG9BoaB4xxAHG6my2GOF2b7UPgCE8eHaROt89q+dsrbu8uQqWK
	 qpimjkp/Ov6/TN4XccjfzOu13BRiCy+gCIxhRyB9bSfaQC54zqJ/ELKZ9+0NdjCu80
	 0udTWS5XfOE+5kljc9runueRbC1Jri/LU5ZkiEv2HeSMj68ZOug0pgiMG5jwT6bmID
	 U51/S2Lobok2RD/znqfp4AAl+ChWr+fdcWvVPH20K1KiBr6FotFcLEeD+KQDnwOo6i
	 bod0Nv87aV24w==
Date: Wed, 8 Jul 2026 08:26:51 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Md Shofiqul Islam <shofiqtest@gmail.com>
Cc: linux-iio@vger.kernel.org, jic23@kernel.org, nuno.sa@analog.com, 
	Michael.Hennerich@analog.com, dlechner@baylibre.com, andy@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	linux@analog.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 1/2] dt-bindings: iio: health: add adi,max86150
Message-ID: <20260708-relaxed-loud-seriema-ab11e6@quoll>
References: <20260707104234.1957104-2-shofiqtest@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260707104234.1957104-2-shofiqtest@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:shofiqtest@gmail.com,m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:nuno.sa@analog.com,m:Michael.Hennerich@analog.com,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux@analog.com,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-322514-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2D2257222A9

On Tue, Jul 07, 2026 at 01:42:33PM +0300, Md Shofiqul Islam wrote:
> Add Device Tree binding schema for the Analog Devices MAX86150
> integrated ECG and PPG biosensor.
> 
> The device exposes two PPG channels (Red LED and IR LED) and one ECG
> channel over I2C, with a 32-entry hardware FIFO and an active-low
> interrupt.
> 
> Signed-off-by: Md Shofiqul Islam <shofiqtest@gmail.com>
> ---
>  .../bindings/iio/health/adi,max86150.yaml     | 65 +++++++++++++++++++
>  1 file changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/health/adi,max86150.yaml
>

I don't get where is the user of this... but you posted several
patchsets, several versions, so mayybe this is just some old posting. It
popped up in my Patchwork review queue, so no clue really. Dropping
this.

Best regards,
Krzysztof


