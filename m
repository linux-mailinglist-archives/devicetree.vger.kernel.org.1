Return-Path: <devicetree+bounces-324837-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8PhgEz1oUmqvPQMAu9opvQ
	(envelope-from <devicetree+bounces-324837-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 17:58:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 814127420FE
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 17:58:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=N+H+ibS5;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324837-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324837-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F30D30142A5
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 15:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80A793A9DA9;
	Sat, 11 Jul 2026 15:58:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B74175A98;
	Sat, 11 Jul 2026 15:58:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783785530; cv=none; b=LNYQ22jmxjpvDqvOqo9puPR0+T0HMH9YkLumjL/NLFpy63sIm24zbdWoNn4AS38N/2+kzJMTZIy+OucfybYDU9jZKD1JEc6rccEHZHZ79ghVQOWdDoqUxbxdS6q54+jnrTPwL3p9FnUGGTSsYTVvf/Sx9nFWDxwlDZm+avoGNiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783785530; c=relaxed/simple;
	bh=/WJaGtcKeCgiWBjOf5FdEK6cigCyzJkYJ+OQPDfIeXk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=usZSPr+Bs3DINxt1knNJ9We5WPObPv2//Z//3eQOYDSCmYTZ6z/hWBDJ0s1TIyTUQ1MmTxTWmrE1AbCUXTB3sN50JRt9lvbEL7swbN5Ps/X4LkTvJN2g77XbDCIagP5sUCXprFGtN5ElT0rnyGXJJjaQlQ7ES0HLNSdfqiXstW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+H+ibS5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AC2C1F000E9;
	Sat, 11 Jul 2026 15:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783785528;
	bh=cqHC99aJIwl7vQN1I11jd3PmgBWGZRgmYFcHBY+LQDw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=N+H+ibS5/7/8Jq6qJ0PCZussMDDA/t9HL4cdEzpglrOXP2yl+hdKn/1u6+B+AolYs
	 hzpHU1PCx298mc6huNw+RoGwbMlXLd+s/zURCRtK8BJPcPNQ0TaYlQl3ggUObhy55o
	 aQcWHCWvjld+LIf/bCUCuvMSRrE/9dfpxMNl/om11XDemE+mzfKB3s0ukOAFgWJiFT
	 NJEP+AJFatENo6iytw1daX+j64q/5V7qNucA31mbUiuxnE/4JUbhPUpHAFu9Pz6zzH
	 M3k3fm5l/S+9BtF/xXHYIGNBI0ggsrT0QDWE5nqaUFz4zRGNl6Pv/B37AkHiLiKI/5
	 NuTIFhaT8vl9A==
Date: Sat, 11 Jul 2026 17:58:45 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Eduard Bostina <egbostina@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, daniel.baluta@nxp.com, simona.toaca@nxp.com, 
	goledhruva@gmail.com, m-chawdhry@ti.com
Subject: Re: [PATCH v3 1/2] dt-bindings: soc: ti: Convert DSP to DT schema
Message-ID: <20260711-leopard-of-unexpected-vastness-870f10@quoll>
References: <20260708111914.1706800-1-egbostina@gmail.com>
 <20260708111914.1706800-2-egbostina@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260708111914.1706800-2-egbostina@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324837-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:egbostina@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:broonie@kernel.org,m:robh@kernel.org,m:daniel.baluta@nxp.com,m:simona.toaca@nxp.com,m:goledhruva@gmail.com,m:m-chawdhry@ti.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,nxp.com,gmail.com,ti.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,quoll:mid,bootlin.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 814127420FE

On Wed, Jul 08, 2026 at 11:19:13AM +0000, Eduard Bostina wrote:
> Convert the Texas Instruments DSP bindings to DT schema.
> 
> During the conversion, the following updates were made:
> - Moved the binding to bindings/soc/ti/
> - Make the 'ti,hwmods' property optional to resolve dtbs_check
>   warnings, as several in-tree device trees currently omit it.
>   A review of the ti-sysc driver (drivers/bus/ti-sysc.c)
>   shows that the property is not strictly required for probing.
>   The driver only reads it to populate the 'ddata->legacy_mode'
>   flag. If the property is absent, the probe sequence continues
>   normally without error.

Text feels early wrapped, please fix your editor for any future commits.
No need to resend just for that.

https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


