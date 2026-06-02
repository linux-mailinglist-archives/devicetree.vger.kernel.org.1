Return-Path: <devicetree+bounces-305756-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FrLYG7kIH2qkdwAAu9opvQ
	(envelope-from <devicetree+bounces-305756-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 18:45:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EC194630562
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 18:45:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="HiadBLa/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305756-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-305756-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3BD0C3025C5A
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 16:38:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E34F368D52;
	Tue,  2 Jun 2026 16:38:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBA236F42B;
	Tue,  2 Jun 2026 16:38:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780418303; cv=none; b=SwRrYKWx3oDiOatMbW1UlzCDGET7FriFSB8rfAma3/H3TKhOddVByDQQ9uWD+uOum48aEavp/tQWStaUJHlqsQohYnea104nSaf60I/AQ0k3PYvDM/Dgl3L2OcG2mOh4W54ZxG0Vm7KmZE1XWHL994oUmIcN2Gde5vg105Q4ibI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780418303; c=relaxed/simple;
	bh=lHu0TpGq3/jU8FS/W2Pz8bvT5ZnOWU6+vWAH3B7YbPo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bG2ig05IxyX/p/lnY5ZakMywZaJ0yrqiYQk7TQYeJN+3YOXHjGe2XScH41AHQUkG9EDHqUV1l5fOzsTU4j8jr2LbTTCz6b83HSX7XNF8vDENRuFH1/wJ3h7GUvWOxhXi7XBuVMyQL7h/fbUiy6z1deN48iX/8ll3Tx58mz/7r78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HiadBLa/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E6B61F00893;
	Tue,  2 Jun 2026 16:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780418301;
	bh=Zs4cdke05EVfkqMGjWx9MxeR85QMJRd9IoXX4EBzIBY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HiadBLa/MDEXKxVuEGCIHFRUMf6UdZUA+mIuQbg8lrlsJQayNJgnlXbgSmf69BzQD
	 UgoGOIsWrSJT3zRHmFHq39NmVY7fMlVxCpDCwtZNKs99jTovsPNunXZ4dPAzhaSA/f
	 FLysjOFdGQyqs3Bzd5ANjBdPhOMbex5HE8s1xXjHOjh7/ee3IOGoxnpmbaTxLmbJRA
	 KgC0rA/6ChbY1tdHX/ELxPJEaAtVAdS/vWSNQPGQj+V+fbjyBj8c/OjI5g0iF1AzQJ
	 c7PnebAGttK9J+l6zGQCfhP0P2z5ycdYhWRgitdaJmFpaB4tjK9aIKQWUhI6oXWqjn
	 htXImV4k8ZJow==
Date: Tue, 2 Jun 2026 11:38:21 -0500
From: Rob Herring <robh@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>, devicetree@vger.kernel.org,
	conor+dt@kernel.org
Subject: Re: [PATCH v2 14/24] arm64: dts: qcom: sm4450: Reduce OS PDC DRV
 span to 0x10000
Message-ID: <20260602163821.GA464439-robh@kernel.org>
References: <20260527094333.2311731-15-mukesh.ojha@oss.qualcomm.com>
 <20260527095343.9192E1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260527095343.9192E1F000E9@smtp.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-305756-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:mukesh.ojha@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EC194630562

On Wed, May 27, 2026 at 09:53:42AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] Reducing the `reg` span to 0x10000 in the device tree is futile without an accompanying driver change and will intentionally trigger a boot warning.
> --
> 
> commit befb5e3c3aa5e0f54a7fff3d0f4a5e96013f4a7e
> Author: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> 
> arm64: dts: qcom: sm4450: Reduce OS PDC DRV span to 0x10000
> 
> The OS PDC DRV register window on sm4450 spans 0x10000 bytes, so this
> commit reduces the size of the first reg entry from 0x30000 to 0x10000.
> 
> > diff --git a/arch/arm64/boot/dts/qcom/sm4450.dtsi b/arch/arm64/boot/dts/qcom/sm4450.dtsi
> > --- a/arch/arm64/boot/dts/qcom/sm4450.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm4450.dtsi
> > @@ -464,7 +464,7 @@ dispcc: clock-controller@af00000 {
> >  
> >  		pdc: interrupt-controller@b220000 {
> >  			compatible = "qcom,sm4450-pdc", "qcom,pdc";
> > -			reg = <0 0x0b220000 0 0x30000>, <0 0x174000f0 0 0x64>;
> > +			reg = <0 0x0b220000 0 0x10000>, <0 0x174000f0 0 0x64>;
> 
> [Severity: Medium]
> Will this change cause a boot warning and fail to actually reduce the mapping
> size?
> 
> Looking at the qcom-pdc driver in drivers/irqchip/qcom-pdc.c, it enforces a
> minimum mapping size of QCOM_PDC_SIZE (0x30000) for all devices to maintain
> backward compatibility. In qcom_pdc_probe(), it calculates the size as:
> 
> 	res_size = max_t(resource_size_t, resource_size(&res), QCOM_PDC_SIZE);
> 
> If the device tree provides a size smaller than 0x30000 (like 0x10000), the
> driver automatically expands the mapping back to 0x30000 and logs a warning:
> "%pOF: invalid reg size, please fix DT".
> 
> Since there are no accompanying driver changes to gracefully accept the smaller
> size for newer compatibles like "qcom,sm4450-pdc", does this patch introduce a
> spurious warning on every boot without achieving the intended mapping
> reduction?

Seems valid to me. Even if you did change the driver, it would be an ABI 
break (though if only introducing a spurious warning for existing OS).

Please reply to sashiko reports because the maintainers are not going to 
analyze them for you.

Rob

