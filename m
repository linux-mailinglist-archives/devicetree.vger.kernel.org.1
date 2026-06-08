Return-Path: <devicetree+bounces-308148-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Oy+7LsuMJmpiYgIAu9opvQ
	(envelope-from <devicetree+bounces-308148-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 11:35:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 154F9654A31
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 11:35:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Af5Tp8iL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308148-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308148-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 428B7302A6BB
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 09:29:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66C9A35295C;
	Mon,  8 Jun 2026 09:29:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702DC3B19CF;
	Mon,  8 Jun 2026 09:29:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780910958; cv=none; b=eKOqc4qtMBMHssSMi5/JnJ6KsaNv09opRDlJyqF7DWnimYspOvaMLmWg0jjBGBWG2fH/uAYxogOVkl8L9UOajEuVlFr3eeMGluKdUipupEWMNTGBKfz6kAH9sxv8ilQH3m+DDrrUdohBnl3ojrzRZLD4mCBUftQUtztdplgExSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780910958; c=relaxed/simple;
	bh=ZA6JMJo523NT2YgUlq0gebNajMvFIWfCAXYFl9xRnRw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gXEDTqw5vIk0tyXzq+GOpVzl1pzXnyHOp9DX7TQ47+k490dKmZu3P4td+YByVuHY6hUMwJTnMQChahmlG5UfIzbFlxeA3KBpab6FlMI77OZbdn08FkgiyaJlh2+D4XibNCrC45NXntaFAGAt5FVZ1Kb0t5TdKzWAXckDZchaKwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Af5Tp8iL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 394A11F00893;
	Mon,  8 Jun 2026 09:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780910957;
	bh=45n2A6qyQl1Jvq/S527jcZdIuZO0U+HcYCRAYqjGBug=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Af5Tp8iLuShsxL/rs/yDAjsQxog9in6RrGpw/flyw9wcDoMmJJEp0JSMcXm1MRRD8
	 HthcoC8QkmVQsqTj1Nix5LD8fjEjWLxHci+FyrmT3Dj+DAFy0ibOPJqAa7ckGe/kug
	 Sy+shmKuIxbJ2rGKuM4Q/lW4ZRS2TkcU0p70SyXxlK0UIXdhY7EiIZ/j7gxQj7RDMw
	 ntrY8R0BZcI5S3roVUyCsPTbtGZOvYM+Gy63vOGaD8yAayVKcTgNdSKKP6UJrucEYx
	 3GNArdyh3TdjxbHYAYVm1agYNlbe1XZjnroJmB+JoM9SjlIXTSlQpZVvrXTJ4+XBi5
	 rflrNM41LA+3w==
Date: Mon, 8 Jun 2026 11:29:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Alexander Koskovich <akoskovich@pm.me>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel: Document Raydium
 RM69220 DDIC
Message-ID: <20260608-strict-flashy-peccary-b2c5da@quoll>
References: <20260605-asteroids-panel-support-v2-0-44b96c6eca91@pm.me>
 <20260605-asteroids-panel-support-v2-1-44b96c6eca91@pm.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260605-asteroids-panel-support-v2-1-44b96c6eca91@pm.me>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308148-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:akoskovich@pm.me,m:neil.armstrong@linaro.org,m:jesszhan0024@gmail.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,quoll:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 154F9654A31

On Fri, Jun 05, 2026 at 06:27:28PM +0000, Alexander Koskovich wrote:
> +
> +  dvdd-supply:
> +    description: Digital voltage rail
> +
> +  vci-supply:
> +    description: Analog voltage rail
> +
> +  vddio-supply:
> +    description: I/O voltage rail
> +
> +required:
> +  - compatible
> +  - dvdd-supply
> +  - port
> +  - reg
> +  - reset-gpios

Keep the same order as in properties.

> +  - vci-supply
> +  - vddio-supply

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


