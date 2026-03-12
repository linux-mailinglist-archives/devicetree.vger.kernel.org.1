Return-Path: <devicetree+bounces-274525-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIVhKf6esmkOOQAAu9opvQ
	(envelope-from <devicetree+bounces-274525-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:09:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C15A270AA3
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:09:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DBA0C30488EB
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:09:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80A3539B973;
	Thu, 12 Mar 2026 11:09:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F44A34844C
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773313788; cv=none; b=ojjQz0jLSOmvZlL4i/68gSPHG8f2U8+hgyJ56whILx7WBNH0sHs2n/KUc8IxN9GDlcLBnshgOpw1x3XRbUapEYmVgu3kkN4Hd1aVbkL7FBcjaCKtBsJnwp3wq55MsznrW/Lw6xpnMtmyZ1zOQq0AQ4K7F1I91O+a8Pc7kLCaHwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773313788; c=relaxed/simple;
	bh=Op03+RD3/hCwiJOIL8EBSDbt1vK5Jph9lkPjxsOpkbE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=kGqBukfEqfMoA5Du5V6x0WtG82q/5DQ7k9sl4y4Egg5UYIvN+UD3XTh/5WW4hhy49vvJReNdJaO2PorTomAQvW37DiNbCDZDtXO3YLb/UFhOKVGKHtKCUlYyNzGQLPcTkRMt258W3KINCAHOIaf/0nme6pY6mOyhCq0C22NVSrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w0duk-0001vZ-TI; Thu, 12 Mar 2026 12:09:14 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w0dui-0050dj-2d;
	Thu, 12 Mar 2026 12:09:14 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w0duk-000000006H9-0JQn;
	Thu, 12 Mar 2026 12:09:14 +0100
Message-ID: <0abfd76f49e5cedf7bfc84eb4d9a0a1d7543f6f8.camel@pengutronix.de>
Subject: Re: [PATCH 1/2] dt-bindings: soc: spacemit: k3: Decouple composite
 reset lines
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Yixun Lan <dlan@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Junzhong Pan <junzhong.pan@spacemit.com>, Guodong Xu
 <guodong@riscstar.com>, 	devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, 	spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org
Date: Thu, 12 Mar 2026 12:09:13 +0100
In-Reply-To: <20260312-01-k3-reset-usb-pci-v1-1-022b24b7340f@kernel.org>
References: <20260312-01-k3-reset-usb-pci-v1-0-022b24b7340f@kernel.org>
	 <20260312-01-k3-reset-usb-pci-v1-1-022b24b7340f@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-274525-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.986];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pengutronix.de:mid]
X-Rspamd-Queue-Id: 2C15A270AA3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Do, 2026-03-12 at 10:34 +0000, Yixun Lan wrote:
> Instead of grouping several different reset lines into one composite
> reset, decouple them to individual ones which make it more aligned
> with underlying hardware.
>
> The DWC3 USB host controller in K3 SoC has three reset lines - AHB, VCC,
> PHY. The PCIe controller also has three reset lines - DBI, Slave, Master.
>=20
> Signed-off-by: Yixun Lan <dlan@kernel.org>
> ---
>  include/dt-bindings/reset/spacemit,k3-resets.h | 42 ++++++++++++++++++++=
------
>  1 file changed, 32 insertions(+), 10 deletions(-)
>=20
> diff --git a/include/dt-bindings/reset/spacemit,k3-resets.h b/include/dt-=
bindings/reset/spacemit,k3-resets.h
> index 79ac1c22b7b5..c12f8bd32047 100644
> --- a/include/dt-bindings/reset/spacemit,k3-resets.h
> +++ b/include/dt-bindings/reset/spacemit,k3-resets.h
> @@ -97,11 +97,7 @@
>  #define RESET_APMU_SDH0          13
>  #define RESET_APMU_SDH1          14
>  #define RESET_APMU_SDH2          15
> -#define RESET_APMU_USB2          16
> -#define RESET_APMU_USB3_PORTA    17
> -#define RESET_APMU_USB3_PORTB    18
> -#define RESET_APMU_USB3_PORTC    19
> -#define RESET_APMU_USB3_PORTD    20

This is backwards incompatible.
Are there any device trees using the APMU resets yet?
If not, I wonder if we should just renumber all APMU resets into a
contiguous range and try to get it into v7.0 as a fix.

Also, this breaks bisectability.
reset-spacemit-k3.c will fail to compile between patches 1 and 2.

regards
Philipp

