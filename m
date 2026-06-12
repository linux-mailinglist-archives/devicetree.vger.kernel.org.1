Return-Path: <devicetree+bounces-311075-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4OshHHI2LGodNwQAu9opvQ
	(envelope-from <devicetree+bounces-311075-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:40:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D02967B024
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:40:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QA+fCtli;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311075-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-311075-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7CF0C3063B89
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:30:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1377E3E833F;
	Fri, 12 Jun 2026 16:30:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EF02331EBF;
	Fri, 12 Jun 2026 16:30:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781281823; cv=none; b=hdNtmQ9JPlxJdmnO82hS43d631w4yaid4MEpYvioFM/weOj5+SB5Dwu7O5KH9IzTV+pIJKcuAqDFmnurVEd53c7oARW/QT1XWk4TKySJ6EpPo0M675iypT7Apf5/d/wLEunmzJ9/+VXWwiGYo1EtYvmNzet35AzGk1ldjCBgSNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781281823; c=relaxed/simple;
	bh=eheKkHKXMzklCDKLpMcrXV1m1+X4pO1+oEgc8MJ4gKE=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=m+0V6MpMiV1nAA9eb0C5NTXg1t9ZQBzsOH6ElVY5aEmQ3WVkHHMozojfGHmILYl8PyIzzSNwlTKgs7rCvixEqRAOqJfGXKJIqeodMJ/QpsSEZmG8h5rvYHWHdUYSBty8Hz45KMP0Cuji11lHPHCG085BpcN1ZdmKIMFEI4kBMdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QA+fCtli; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56C141F00A3A;
	Fri, 12 Jun 2026 16:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781281818;
	bh=UZ9Iumb2g1TRxob6WsvtSWW84/17leWiNilXq74yt9Q=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=QA+fCtlizB2KYnlOw7dBoRWziA0zii8lLJjx1ObpjMVdFoHNF7f+Q3BXr5a6MKRi1
	 qCxc4CeW3mQ1xVF2ok+OFC+yj8vfxxO682lxoUZZn3XkqOK+vXowKcr8QUj5Wdqy9O
	 J/M8S5N1WJaloiMBy8j7Hg/FQAQTOwsSU7NoxEqCDx6kj/+R3aLbiTLLrWkuwrwm2O
	 xE3ikJexxfoXa2lYSKhNfgVafwgcqgkTRuAvnQjBOsPQhmJ2MSCLT81CCH0cpL8R/m
	 P8pX0slYIqeJdNJuGR9MoewD7QBhThAcV8i+4glN7ha8JOlvQfFnaPz6qZF//m7Mpv
	 07g7Y/OC9UryQ==
Date: Fri, 12 Jun 2026 17:30:13 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Siratul Islam <email@sirat.me>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: iio: magnetometer: add QST QMC5883L
 Sensor
Message-ID: <20260612173013.64f435ab@jic23-huawei>
In-Reply-To: <20260612124557.13750-3-email@sirat.me>
References: <20260612124557.13750-1-email@sirat.me>
	<20260612124557.13750-3-email@sirat.me>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
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
	TAGGED_FROM(0.00)[bounces-311075-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:email@sirat.me,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,devicetree.org:url,sirat.me:email,jic23-huawei:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5D02967B024

On Fri, 12 Jun 2026 18:45:26 +0600
Siratul Islam <email@sirat.me> wrote:

> Add devicetree binding for the QST QMC5883L 3-Axis Magnetic Sensor
> connected via i2c.
> Interrupt not implemented in driver but kept in the binding for future
> addition.
No need to mention that
> Used enum so that more driver could use this binding

More devices perhaps rather than drivers (binding has nothing
directly to do with drivers).

> 
> Signed-off-by: Siratul Islam <email@sirat.me>
> ---
>  .../iio/magnetometer/qstcorp,qmc5883l.yaml    | 48 +++++++++++++++++++
>  MAINTAINERS                                   |  6 +++
>  2 files changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/magnetometer/qstcorp,qmc5883l.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/magnetometer/qstcorp,qmc5883l.yaml b/Documentation/devicetree/bindings/iio/magnetometer/qstcorp,qmc5883l.yaml
> new file mode 100644
> index 000000000000..238cc7e22b89
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/magnetometer/qstcorp,qmc5883l.yaml
> @@ -0,0 +1,48 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/magnetometer/qstcorp,qmc5883l.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: QST QMC5883L 3-Axis Magnetic Sensor
> +
> +maintainers:
> +  - Siratul Islam <email@sirat.me>
It is a bit unusual to have to description section.  Maybe
just have a link to a datasheet if there is someone that seems
reasonable stable to link to.

> +
> +properties:
> +  compatible:

The rest looks good to  me.

Thanks,

Jonathan

