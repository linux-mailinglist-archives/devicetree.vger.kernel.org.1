Return-Path: <devicetree+bounces-307532-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ihTnAVg0I2qMkQEAu9opvQ
	(envelope-from <devicetree+bounces-307532-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 22:40:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D4064B306
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 22:40:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oleN0gex;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307532-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307532-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4DEAB3031CC3
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 20:34:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6A8F3B7769;
	Fri,  5 Jun 2026 20:34:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03F5381AEC;
	Fri,  5 Jun 2026 20:34:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780691666; cv=none; b=jw9czfAe2wturq+nYpGRelvfNrsgX/NVqpb5nd7c7pU8b6sQ7rcQ7+n2b8/AVKqzB15OPQPRhrU5WZmXGBHwW1OwizDlAxeryjBoMu726Vb43i7nWZ+P98QGgck2fZdl+Mutc702hSKzq1ReVSOMNdMW3z24CvrcI6dP17hI4QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780691666; c=relaxed/simple;
	bh=LTLvrA1702ai8byuMVwbeBZzr3n0xf9QfJZGIo7h1OI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AboXWbUmITiK9Hlm7I/OwWVSC/Oo7bP+azZsNAlPOAudq01ZtEYP9n9S11fXbhDCTDS5ho5e7N5Lx9orJcacp/7QeIxXQgajRKKwqUl5JBfMlSYyjL7SW2iKqg0i9b5Nm3GYNdNeeHBEn9pzJmQ1a7wWnQKoLrw6mhH3ewZ14ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oleN0gex; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B8391F00893;
	Fri,  5 Jun 2026 20:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780691665;
	bh=YNfbGUO5ItJDzuMh4Ts46vs/pQsPUXiXEk4AWlPS+Yg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=oleN0gexVfJ3SSw51Hp5xyIqf96iZbc8s6017eb1nNNQowdEEvASAFZFJRguML1ej
	 fZd/vJLkj+SkSCao8kIJqiOk7DlxFSgZjudezHvOliR3+QYz8yAvsZu1D284hlHmuI
	 Xtc1EOz06/eGj233ELLJJ8FMcgm1UTt8c3K2RGwoPZ5PF0YWXJtj4C2cq5Bbzs2a9g
	 by44q4oVFxW2yJz+irqOetgCIydjiWS3ltEOzb8V8f7s6u8jI55m1OKz3R1IXIc80i
	 txp5vsuHV+ui10ZiJb2nKEsefwOBqLUxRfJv8jftEgBcC44t8kBLjMPSnDZZ47Ndlu
	 MWM4bDSPuazYQ==
Date: Fri, 5 Jun 2026 15:34:24 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Bhargav Joshi <j.bhargav.u@gmail.com>
Cc: goledhruva@gmail.com, m-chawdhry@ti.com, simona.toaca@nxp.com,
	daniel.baluta@gmail.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: soc: ti,omap-dmm: Convert to DT schema
Message-ID: <178069166164.108403.8115777817916312957.robh@kernel.org>
References: <20260605-ti-omap-dmm-v2-1-1b460742ec83@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260605-ti-omap-dmm-v2-1-1b460742ec83@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,ti.com,nxp.com,vger.kernel.org,kernel.org];
	TAGGED_FROM(0.00)[bounces-307532-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:j.bhargav.u@gmail.com,m:goledhruva@gmail.com,m:m-chawdhry@ti.com,m:simona.toaca@nxp.com,m:daniel.baluta@gmail.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jbhargavu@gmail.com,m:danielbaluta@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 73D4064B306


On Fri, 05 Jun 2026 09:07:26 +0530, Bhargav Joshi wrote:
> Convert the TI OMAP Dynamic Memory Manager (DMM) dt binding
> from text format to DT schema.
> 
> During conversion following changes were made:
> - Move file from /bindings/arm/omap to /bindings/soc/ti/
> - Make the 'ti,hwmods' property optional and mark it deprecated as it is
>   no longer used, it is kept to support legacy dtbs.
> - Add the missing required property 'interrupts' to example node.
> 
> Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
> ---
> Changes in v2:
> - Move the binding from /bindings/arm/omap to /bindings/soc/ti/
> - Link to v1: https://patch.msgid.link/20260603-ti-omap-dmm-v1-1-ef491c4699d9@gmail.com
> ---
>  Documentation/devicetree/bindings/arm/omap/dmm.txt | 22 ---------
>  .../devicetree/bindings/soc/ti/ti,omap-dmm.yaml    | 53 ++++++++++++++++++++++
>  2 files changed, 53 insertions(+), 22 deletions(-)
> 

Applied, thanks!


