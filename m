Return-Path: <devicetree+bounces-306953-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9haxMHGkIWoFKgEAu9opvQ
	(envelope-from <devicetree+bounces-306953-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 18:14:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E534641BD8
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 18:14:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306953-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306953-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=collabora.com (policy=none);
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 970433026A89
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 16:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCC763E0C78;
	Thu,  4 Jun 2026 16:05:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBFEB3ACA6E;
	Thu,  4 Jun 2026 16:05:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780589157; cv=none; b=J0EvfyhXT3O1rxiII1DNDmSgzUpPZIfxPWy7vEh+9e3OKhzPOKKFWwDKYfqq+YQ7WyDC7nvABhq3G+UKxTK0cyIff6KkgfWMRKFlAnyseKhakEnRdZbByzEC5jnCNVHAe9UQwPrN5OMj9mHJo2yYyUWVOa6pKY2RAo5zKsyTCjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780589157; c=relaxed/simple;
	bh=GwkbEHH7aEYOncu2D6n2F9/P5LqzvyyDOt+VBohz2ik=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=YdiqhDt/Sc1Y/qRiSbpYDqXaRrVADTWAV1+iiTKUVFTqNtbs96nupD+Gw3vU6a3zRSLV8Z5TdkCirf7dhdFSEMVTRudOo86aa4GHRvxxZ78S8GhsGeS2COuG7vo1q37YuYLwSzJChG3VnDRQ72rE/e0VNn/hBzFjvN4E+DtZNaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6023B1F00898;
	Thu,  4 Jun 2026 16:05:56 +0000 (UTC)
Received: by venus (Postfix, from userid 1000)
	id 2642F181D82; Thu, 04 Jun 2026 18:05:54 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sebastian Reichel <sre@kernel.org>, 
 =?utf-8?q?Jonas_Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>, 
 Svyatoslav Ryhel <clamor95@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org
In-Reply-To: <20260507134608.76222-1-clamor95@gmail.com>
References: <20260507134608.76222-1-clamor95@gmail.com>
Subject: Re: [PATCH v4 0/2] power: supply: Add support for Surface RT
 battery and charger
Message-Id: <178058915412.2707129.13808686364711300875.b4-ty@collabora.com>
Date: Thu, 04 Jun 2026 18:05:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306953-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:sre@kernel.org,m:jonasschwoebel@yahoo.de,m:clamor95@gmail.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-pm@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,yahoo.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:mid,collabora.com:from_mime,collabora.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4E534641BD8


On Thu, 07 May 2026 16:46:05 +0300, Svyatoslav Ryhel wrote:
> Add support for Embedded Controller found in the Microsoft Surface RT and
> used to monitor battery cell and charger input status and properties.
> Controller works both for UEFI and APX booting.
> 

Applied, thanks!

[1/2] dt-bindings: embedded-controller: Document Surface RT EC
      commit: de296b53775cd1ccb6b448b4cc8d843c8858e1df
[2/2] power: supply: Add support for Surface RT battery and charger
      commit: 3d6529b837de49294cea0d4600144353f5f084dd

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>


