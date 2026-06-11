Return-Path: <devicetree+bounces-310349-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +v43AmaQKmresQMAu9opvQ
	(envelope-from <devicetree+bounces-310349-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:39:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 674D5670E8F
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:39:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MY6febmp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310349-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310349-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 73BC5301BED0
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:39:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 428103CE0A3;
	Thu, 11 Jun 2026 10:39:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F902EA154;
	Thu, 11 Jun 2026 10:39:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781174370; cv=none; b=AynGPq+uKGAEgCmrSch2OziVfMvu3QqmEPNuw57TlYwDjGVgV0ez9h1jF4oGqsXA6qd7sGXxmpnZFEvpdRSn79dSt7Vi6EypHvwTHN3Q/2YLxA+4HJyjV6Ie2AmyACkwCvJvxxOsT/IU9p90esubFSCHaz9YKWwnLV3FgqBS4G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781174370; c=relaxed/simple;
	bh=WltHJUfd0xr3v0RsOZDFLxauT/NJfdf3oq82Oh1X/EI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PL5g/8MSHn4hDPJXV6pOy/78Xi51J91YHpak9K+nwIwTNM7FMIdEh6BL6obbmcyBxXGvD85/UXf8+h6hjWCssLilIGw70/0QninOnVnRPhqEP1xIFtMZlBlgAl+SSE/h8/BAln5R/wEGsmovfTzpTORiYOwarNNuO2Hqq4N5228=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MY6febmp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 589B21F00893;
	Thu, 11 Jun 2026 10:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781174369;
	bh=hIfuSrctBzrlRdhYCXK7h/WnxikqtQHpoiE+oxwzsr4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=MY6febmpsry/al3XEKzqKYMuzgxuePM+9nJyS4i9WZ45kZSlL8HrLJM3R4WoBNmQH
	 D1T5Wz2sepTzcqeAq0os00hsnuUMpVbIDGOHUMNLlIVsySaiC+DIwob50VAZ8aroOY
	 hQr2qRdQRJuH5XBTR7lVe7cS3tF61DfxzC5XohTNBFmDaF0HdDS8Ge6xlQTZm58st1
	 X7VCo+uDXqtmVw+OpaRiA3jlmMhuynr5jadc7WldV8IChUIwEHVFjTSHFhmjX9SGtY
	 FMJdHGRMLEmM0JeLNEtAIMKdCMtFQZyipnZIIN8zP8nbPxLGFGfvM/cu3auimEVzEF
	 koYBtLsp+P6YA==
Date: Thu, 11 Jun 2026 12:39:26 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Amit Barzilai <amit.barzilai22@gmail.com>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, javierm@redhat.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: Add Solomon SSD1351 OLED
 controller
Message-ID: <20260611-psychedelic-funky-foxhound-a8e39d@quoll>
References: <20260610164428.180091-1-amit.barzilai22@gmail.com>
 <20260610164428.180091-2-amit.barzilai22@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260610164428.180091-2-amit.barzilai22@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:amit.barzilai22@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:javierm@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:amitbarzilai22@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-310349-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,redhat.com,lists.freedesktop.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 674D5670E8F

> +properties:
> +  compatible:
> +    enum:
> +      - solomon,ssd1351
> +
> +  solomon,width:
> +    default: 128
> +
> +  solomon,height:
> +    default: 128

Drop both - deducible from the compatible.

> +
> +  rotation: true

Either drop or reference panel-common (if this is a panel) or at least
reference that property:
$ref: /schemas/display/panel/panel-common.yaml#/properties/rotation

> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        oled@0 {
> +            compatible = "solomon,ssd1351";
> +            reg = <0x0>;
> +            reset-gpios = <&gpio2 7>;
> +            dc-gpios = <&gpio2 8>;

Use proper defines for GPIO flags

Best regards,
Krzysztof


