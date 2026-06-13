Return-Path: <devicetree+bounces-311252-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oxyFBwsQLWp9aQQAu9opvQ
	(envelope-from <devicetree+bounces-311252-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 10:08:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5F367E120
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 10:08:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bsPffsTn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311252-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311252-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C26AF3049664
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 08:08:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F2573A9D94;
	Sat, 13 Jun 2026 08:08:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F2D2C21D8;
	Sat, 13 Jun 2026 08:08:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781338106; cv=none; b=CwTem6xeF0CMb09ak1wrk+JueFOe1DD6IB3dw0X6xujeOBhT0IeFdTBrFflsOzsf9Oed/88+kjvFHayu4RT7fLpaz/fis5R9mSNEfAPZ9FPrG2x8tByfCsKtFkZF0/lA4N+AdmE4SnHxII48gtb3Egv6ZUkO/BtbCdeRfu2UmWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781338106; c=relaxed/simple;
	bh=VE4+T4N7WOnhry3IAw9l1qq7n7sftm0pSjpqaPa9VeU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L3oTULwNAsx82bsGQU/vAQLPGVE2ZcIAKyqnNaHZouEBoMN4+zM7QvcI7S9nB9d93fHmz9VNOx7m8u9eVlidRhGTUP39IGT0NuVbsrH/NgIk6CtiF+aOHVrv2HnCHmbMp56BN55270kZbwb5CviMAZV+yuIjO/z9N71Mfcc/oRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsPffsTn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 617DF1F000E9;
	Sat, 13 Jun 2026 08:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781338105;
	bh=VE4+T4N7WOnhry3IAw9l1qq7n7sftm0pSjpqaPa9VeU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bsPffsTnIS61pVOUg3dr0cUrTGr44RNykTvXFaBVuivyAtBOd+IsPMfzMLUNJrum3
	 RsIoVf7cyUd+rTJEtw4TnCdrenUa8c4CWpDHGXlX7DmZEhLtM3rdLJKDsp7o/W3NuD
	 XFqu41UYOgjO3HuhZ5/jP9hVKBW67EOwSGt3JedQ29zHKKopHNVt6ZC8yuxtjXLPV7
	 4fMuaONurreDqoYwHaxNUF+Y8KLJlW0UCTxe68Nrg75shu4s3SM9gCnBGoxVcNe21R
	 q3qgk4nWZ07CI2ZtIj3A5M6oUcdyIam7RWl0bbaIHW4wgxY9i556d/eF/ac53dTL00
	 yA3s0i2nkkG1A==
Date: Sat, 13 Jun 2026 10:08:22 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH v3] dt-bindings: pinctrl: qcom,pmic-gpio: Add Qualcomm
 PMK7750
Message-ID: <20260613-cyber-basilisk-of-agility-e254cf@quoll>
References: <20260612090426.23403-2-krzysztof.kozlowski@oss.qualcomm.com>
 <20260612091614.E963C1F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260612091614.E963C1F00A3A@smtp.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311252-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:krzysztof.kozlowski@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
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
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9D5F367E120

On Fri, Jun 12, 2026 at 09:16:14AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> - [Low] Missing Compatible String in Conditional Block for 'qcom,pmk7750-gpio'

False positive.

> - [Low] Missing PMK7750 PMIC parent node in MFD bindings

False positive, sent separately already.

Best regards,
Krzysztof


