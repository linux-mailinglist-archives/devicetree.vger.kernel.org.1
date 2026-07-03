Return-Path: <devicetree+bounces-319975-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tkGzA52ER2rqZwAAu9opvQ
	(envelope-from <devicetree+bounces-319975-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 11:45:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C62700C6D
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 11:45:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=V5sADztt;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319975-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319975-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 70BA13004D06
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 09:38:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 095E635028C;
	Fri,  3 Jul 2026 09:38:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013C5331EB8;
	Fri,  3 Jul 2026 09:38:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783071513; cv=none; b=Xjh+vbCvYcVMxPTTq9Cl2y8G9OijcpDiRad9Z4dB20ANC6UMr771924puTp3YYb6knA6t0L7ht0/MNuBVaJ94I9TUgxkrShVB9MgpEjiA1714Xr+82/QZ3RdK28ZVD7PW5wdjrrNIa+PZnBZI+mC89u9aravq6YTVaDPmAmsrcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783071513; c=relaxed/simple;
	bh=i0JE+T722MAfA7xotPFAi/yb5FcddKIOVMi64gztP3M=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=rarv8+2veU8GsDhF+fulZBpnhGHdjj9XFkGk28AdCnAmupXabMltLvBj6PEEDROErVOKn/jAVQ9EZHA+8lccyzW/DcM9SNik93Wm/XN5AudG7Tg4Da0cT+AlEdnNxJaofWORVay0nndET/l4A4q9KIsoYJW2URaOVWpjrCp2R+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5sADztt; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFAE51F000E9;
	Fri,  3 Jul 2026 09:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783071512;
	bh=bJTS5PDPF8NDG1VWlohx4or2YBIEU55X6gzvY3jUMks=;
	h=From:To:In-Reply-To:References:Subject:Date;
	b=V5sADztto1y8b4Afi65GO9Z1xZcWFpn+Y1HbPH41M1cyBvBbQfS6rGQXj1WaaRL/3
	 VVpGuy0nIlx/qa+fZMpoatP/gmlglou4tJinn031NMfWhT/eA/cPFgrYdPxUqJ5SCF
	 cGygDPS4WjDA+DSxtRnBd+Kk8y87gmd1OOyN38cs5DUHt+luBkryRp11YZyptOnPML
	 shV3JvjrPZU9EX2FY7pLQLdXWQegKyquJ6uZlP0uaysbRMFo8NSagL+S4PLP2oWeZr
	 BBGM1rIibbYlbef6/T5m91eCHUxksIwhw+6Jnbi+ChHir698RLtrbBJpQRzziRjMdH
	 zWz9+dUOaOAeA==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: daniel.baluta@nxp.com, simona.toaca@nxp.com, goledhruva@gmail.com, 
 m-chawdhry@ti.com, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Eduard Bostina <egbostina@gmail.com>
In-Reply-To: <20260630124826.2992529-1-egbostina@gmail.com>
References: <20260630124826.2992529-1-egbostina@gmail.com>
Subject: Re: [PATCH] dt-bindings: w1: Convert HDQ One Wire to DT schema
Message-Id: <178307150846.56818.812573560088964261.b4-ty@b4>
Date: Fri, 03 Jul 2026 11:38:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[nxp.com,gmail.com,ti.com,kernel.org,vger.kernel.org];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:daniel.baluta@nxp.com,m:simona.toaca@nxp.com,m:goledhruva@gmail.com,m:m-chawdhry@ti.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:egbostina@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319975-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 15C62700C6D


On Tue, 30 Jun 2026 12:48:25 +0000, Eduard Bostina wrote:
> Convert the Texas Instruments OMAP HDQ One Wire bindings to DT schema.
> 
> During the conversion, several updates were made to reflect actual hardware
> usage and resolve dtbs_check warnings:
> - 'ti,hwmods' has been made optional.
> - Added 'clocks' and 'clock-names' properties as they are used in actual
>   device trees (e.g., am437x-l4.dtsi).
> - Added a second example for the AM4372 HDQ controller to demonstrate
>   the clock and interrupt configuration.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: w1: Convert HDQ One Wire to DT schema
      https://git.kernel.org/krzk/linux-w1/c/e89bccb295a8880493693e69e091a3668dc0c279

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>


