Return-Path: <devicetree+bounces-314933-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8ZM1CpnFOmrTGQgAu9opvQ
	(envelope-from <devicetree+bounces-314933-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 19:42:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C416B92AB
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 19:42:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=cknow-tech.com header.s=key1 header.b=Q0PuAcog;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314933-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314933-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=cknow-tech.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D4A73028B45
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 17:42:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B05838C42B;
	Tue, 23 Jun 2026 17:42:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-177.mta0.migadu.com (out-177.mta0.migadu.com [91.218.175.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DE6E388E59
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 17:42:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782236558; cv=none; b=bXvbWqDGQty2JzRZh6SC5x+qP9f65EuMpE4ADi5yxLhIryb/oOQLRZYMe8Is2bF8XYeMM7Nh+JzjMNtyop+jN8pMVaESmKN0pRc9ZUoAiDndNmWpXHuGvRJwElUxzeLFJcgb+0KCRLxoGZljkoxRunC+aa/ngd3MOUPUsapZ0Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782236558; c=relaxed/simple;
	bh=W9uBPlyCQ3blz+hUhtuOZkmZRvfPPuyJHIh4Q5xPYNg=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=qA6E9x1iq+vzdy1uFAUN0yz8T+DVvfM1bwjvF1fE8U4qERD8YZwa4Bk8EmON1yYSVdkwYRBBP88VeFmGG1xmLq+vcfu59FHfEgXeb1Wto86ia7yXs/B5kHWTClG8U0pmM7vOzIej3tX5XsJn9kKyc5Cw8T9ZtG3qFdKhHBCFTVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=Q0PuAcog; arc=none smtp.client-ip=91.218.175.177
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1782236541;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=anXIIGzRFZpi+NzeuxQSLJlrJLRMzvd+LQ042QGuIHg=;
	b=Q0PuAcogSHo6YqMF4M1DObl2CwZSvYOyKWh+wwqNkirzKwnMAErvazQZfpaMcSimyE/T96
	z2P+bFMPWUq2gwjGpNIOlhuTiQjY1YWkU9UMwx2Zuei/ej8hLDnJ2LN3q9V1clcej9nQ+L
	LPI1TkXrJmqztjqKwvSpyE4IxKcB2B+1SBBLm7jr7hBR4vSi/s39On7sBuyr097z8ctoJQ
	xDstumeVTZHvoD6X/qAcNF33W7BBHzE4wWHuwHvObc/pi7YoOIHKvO8VxiLGwv9Mhnoc06
	HX4qLDz44CuDFsesX9JCU7B0X5595CwII/0iV2DAUA7cgt4cWSE2o9k0pejSrg==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 23 Jun 2026 19:42:05 +0200
Message-Id: <DJGM4D19H31O.4I5N79CG5Z8C@cknow-tech.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Daniele Briguglio" <hello@superkali.me>, "Diederik de Haas"
 <diederik@cknow-tech.com>, "Heiko Stuebner" <heiko@sntech.de>, "Michael
 Turquette" <mturquette@baylibre.com>, "Stephen Boyd" <sboyd@kernel.org>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
Cc: "Nicolas Frattaroli" <nicolas.frattaroli@collabora.com>,
 <linux-clk@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Ricardo Pardini" <ricardo@pardini.net>
Subject: Re: [PATCH v4 5/5] clk: rockchip: rk3588: add GATE_GRF clocks for
 I2S MCLK output to IO
References: <20260419-rk3588-mclk-gate-grf-v4-0-513a42dd1dcc@superkali.me>
 <20260419-rk3588-mclk-gate-grf-v4-5-513a42dd1dcc@superkali.me>
 <DJGDSS875DDO.22TYPVYK5X8KZ@cknow-tech.com> <2100447.PIDvDuAF1L@diego>
 <20260623123316.4111002-1-hello@superkali.me>
 <DJGG8DEAKSPK.1GJ8FARAHXPXM@cknow-tech.com>
 <20260623132351.4144457-1-hello@superkali.me>
 <DJGH34DVKL0W.3T6UB4G4WYYUJ@cknow-tech.com>
 <20260623140958.4181297-1-hello@superkali.me>
In-Reply-To: <20260623140958.4181297-1-hello@superkali.me>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[cknow-tech.com,quarantine];
	R_DKIM_ALLOW(-0.20)[cknow-tech.com:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314933-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:hello@superkali.me,m:diederik@cknow-tech.com,m:heiko@sntech.de,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nicolas.frattaroli@collabora.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:ricardo@pardini.net,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[cknow-tech.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cknow-tech.com:dkim,cknow-tech.com:mid,cknow-tech.com:from_mime,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 79C416B92AB

Hi,

On Tue Jun 23, 2026 at 4:10 PM CEST, Daniele Briguglio wrote:
>> So IIUC that means I'd be testing both variants.
>
> Right, that covers both: the mux path and the consumer path. Looking
> forward to the results.

Analog audio works on both. Plus with _TO_IO and LTS without in their
respective DTS's. So I guess CLK_IGNORE_UNUSED works.=20
Whether it's a good/right fix, I'll leave up to others.

Cheers,
  Diederik

