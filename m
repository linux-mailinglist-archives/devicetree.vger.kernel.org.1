Return-Path: <devicetree+bounces-319461-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jto8EPKKRmr5YAsAu9opvQ
	(envelope-from <devicetree+bounces-319461-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 17:59:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E996F9D2B
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 17:59:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319461-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-319461-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D52E3304B051
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 15:54:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 637CC37A844;
	Thu,  2 Jul 2026 15:53:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.white.stw.pengutronix.de (mx1.white.stw.pengutronix.de [185.203.200.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 887AB198E91;
	Thu,  2 Jul 2026 15:53:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783007621; cv=none; b=fM+vJ2V6W560E7TnsqswCX9lQQ/TB5fWhFH3UXJacjPAIL0cWlzmQUoRD4hgQTpIyrxaPPc4gKTFqD05eAcGT0DiPvWNWlGFtlTz3lMVDyLAHxeY/hyYxAgagICIjpGbFkLXuu177NbrAa/U1JAV+O6JsnrgXSRfZa0YLhc9ctY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783007621; c=relaxed/simple;
	bh=OJGQRm4rWfHSZvN5f8CXJf4j9YIZeFBu9juZOs/ZXdY=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=OOKJGUM//SeoLBoO2zT+I8B6nyNZcCUR1//eebmRLd8IA0duOW+Wbdxo6SbeXjuFbxMkiUM5grFbNO3JRDg5wYyQBrpUEg6/OFHMrpp2oKfsc5Jp2Xt0QQW4xSKcWYzps9hRwjzmIzZdFXNQPKKqhFPIBGF6feQCTj+s4T3f64A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.200.13
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 895D3201105;
	Thu, 02 Jul 2026 17:53:37 +0200 (CEST)
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wfJjN-005lg5-1X;
	Thu, 02 Jul 2026 17:53:37 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wfJjN-00000000FeO-1fC0;
	Thu, 02 Jul 2026 17:53:37 +0200
Message-ID: <d7e1b03fa31a8c15415ab4382b893c9437fa8133.camel@pengutronix.de>
Subject: Re: (subset) [PATCH v2 1/9] dt-bindings: reset: altr: add
 COMBOPHY_RESET for Agilex5
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Tanmay Kathpalia <tanmay.kathpalia@altera.com>, linux-mmc@vger.kernel.org
Cc: ulf.hansson@linaro.org, Conor Dooley <conor.dooley@microchip.com>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley	 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Thu, 02 Jul 2026 17:53:37 +0200
In-Reply-To: <20260627201457.12318-2-tanmay.kathpalia@altera.com>
References: <20260627201457.12318-1-tanmay.kathpalia@altera.com>
	 <20260627201457.12318-2-tanmay.kathpalia@altera.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319461-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:tanmay.kathpalia@altera.com,m:linux-mmc@vger.kernel.org,m:ulf.hansson@linaro.org,m:conor.dooley@microchip.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C2E996F9D2B

On Sa, 2026-06-27 at 13:14 -0700, Tanmay Kathpalia wrote:
> Add COMBOPHY_RESET definition at index 38 for the combo PHY reset
> control on Altera Agilex5 SoCs. This reset is used by peripherals
> such as the SD/eMMC controller that share the combo PHY.
[...]

Applied to reset/fixes, thanks!

[1/9] dt-bindings: reset: altr: add COMBOPHY_RESET for Agilex5
      https://git.kernel.org/pub/scm/linux/kernel/git/pza/linux.git/commit/=
?id=3Dab45ecfab540

regards
Philipp

