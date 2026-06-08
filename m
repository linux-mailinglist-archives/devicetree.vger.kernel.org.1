Return-Path: <devicetree+bounces-308444-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id P9P1OW78JmrupAIAu9opvQ
	(envelope-from <devicetree+bounces-308444-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 19:31:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E959C659430
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 19:31:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=h0syz3yB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308444-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308444-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C55E03016DA5
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 17:23:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C4A43D6CC4;
	Mon,  8 Jun 2026 17:23:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396073D092F;
	Mon,  8 Jun 2026 17:23:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780939382; cv=none; b=sUQKBc8+sIBSAQ2CX2O/L8Ky0MZmCZpLAWbMXbc2scxoFKfxKwNFp9oC1LOq6rpO/HVMw3Yhs8uKm5JovLHjs7jotNW/97Hjg92BU8fsNo6s9zQk1ObpTkcpHWbiE1OJ5+xN594cxp3KxwhC5+RgG7EpkJAk62EfrzHlm+fYtZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780939382; c=relaxed/simple;
	bh=r8PLd85HwRlTzpotvIRlIjfgapnRH2jIMjEIwy0p9fc=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=Cl9FSQ5S600p0eJEL/APlZQ1lfSZazvkXd7KuDTBWHt3B7EPzX44U6AarbY5XQouJ6qlduBJNAHojoYGDqiX7H3gKIcV2j3A/tnCHQAWGiv8vV3WjAlfG5V+e8Y/JCOIHdvdN3+SWXsFyEK7ASSwf2i7w3R4uEf96bsXDjJgc4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0syz3yB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 984721F00893;
	Mon,  8 Jun 2026 17:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780939380;
	bh=dl0TTg40vxY5UuFHrTwr6GQCkMLyDCNTJHl0ADHTdio=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=h0syz3yBljdTEvHlRSXMXEpJOwJUN6PlpR1PyRT4vP/fZg8cAuhNqa0Qz+ZwHdkm0
	 PHL5SqrrBHvNNVZKO4qU3f52TJArveUfn+WrxInYyGQsGzZ+oS5YFGR/Jn7OXUu3KT
	 PmvS7pN+sCp+oFj1dWOg694wM+Zjt6szbYX8pKJUNllNP45gZgnXG/+xv73pfdw/zq
	 Jny8idftVnx2aEU6tZ/mxDaoswT+DxSrJYcdTAkQyb5e3/1Lfbsq81uNxRVkI/qjJl
	 5AU6KmAf7lASSkfv6Tlt0zjePir5oq/v5DILoQkBxWmk8nGRa3kOSw2gCve7wGtI4M
	 0PoI1XExW0qCA==
Date: Mon, 08 Jun 2026 12:22:59 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-iio@vger.kernel.org, David Lechner <dlechner@baylibre.com>, 
 Wil Stark <wil_stark@keysight.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 Jonathan Cameron <jic23@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Andy Shevchenko <andy@kernel.org>, Puranjay Mohan <puranjay@kernel.org>, 
 devicetree@vger.kernel.org
To: Romain Gantois <romain.gantois@bootlin.com>
In-Reply-To: <20260608-tmp119-v2-1-30c3537d5097@bootlin.com>
References: <20260608-tmp119-v2-0-30c3537d5097@bootlin.com>
 <20260608-tmp119-v2-1-30c3537d5097@bootlin.com>
Message-Id: <178093937961.3012439.17414115705796427951.robh@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: ti,tmp117: add binding for
 the TMP119
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308444-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:linux-iio@vger.kernel.org,m:dlechner@baylibre.com,m:wil_stark@keysight.com,m:nuno.sa@analog.com,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:jic23@kernel.org,m:conor+dt@kernel.org,m:thomas.petazzoni@bootlin.com,m:andy@kernel.org,m:puranjay@kernel.org,m:devicetree@vger.kernel.org,m:romain.gantois@bootlin.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,bootlin.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E959C659430


On Mon, 08 Jun 2026 18:00:24 +0200, Romain Gantois wrote:
> The TMP119 has the same register layout as the TMP117, and a better local
> sensor accuracy. Add a compatible for it.
> 
> Use ti,tmp117 as a fallback compatible for ti,tmp119.
> 
> Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
> ---
>  .../devicetree/bindings/iio/temperature/ti,tmp117.yaml   | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml:23:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
./Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml:26:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
./Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml:27:11: [warning] wrong indentation: expected 12 but found 10 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260608-tmp119-v2-1-30c3537d5097@bootlin.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


