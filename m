Return-Path: <devicetree+bounces-269962-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sB+yHkZ8pWm6CAYAu9opvQ
	(envelope-from <devicetree+bounces-269962-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 13:02:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 130D91D801A
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 13:02:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 76B4C3028353
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 12:02:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF3D9363C68;
	Mon,  2 Mar 2026 12:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="jIC4VcS6"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDA342DC79F;
	Mon,  2 Mar 2026 12:02:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772452923; cv=none; b=UERy1LWwIJbWaPiY8ZKyoLQbsZr5NHrfWO372odlX0SLlmLHuGSIvEtUC2RCOoFgMdZUMkA1WRe1mdfcsfApi0hh5ZlVRE2N49JBcLTDo9ZLPShA3HLJw6OvhP9UfTBJmI7dqnBSkw82GS6MxA47ZnPTs1C9STkdG7IHL3qGoag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772452923; c=relaxed/simple;
	bh=xzgE2dy6h92Ku6TppARxUqQObTm1N2T5eDIFIwu5fc0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WP+qIKFadfPsL4NlAaxizIbKwlOMqdG80Wtmd2Ehul0f9gVlBabEk2MQQN+hDFzVgnDN4RvFgxKCOY6KKgXdrs4fOhbOfoGB0IOszZWdOweBXqXZ5hBqQbXD960B91xMHrfLX2meg4r2MzEJ0MnNXVqA/bo6fcPqAp71WPTHwMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=jIC4VcS6; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=xzgE2dy6h92Ku6TppARxUqQObTm1N2T5eDIFIwu5fc0=; b=jIC4VcS67TJVEaF7+mGeSVWak4
	7HYaZRR+Ar3D8UT5qeLfgIK6YNyYXQCOfY7fBDDMc89XC5jCy6FF1RG7uRdh1vUSvfvsa6CNTw5PX
	uSkklaz8oaG7nH2AKXONcqiDP74DJ8PBivT4g6x5X3pKSWucKSe2CiAaqMAF2LQi65/dXDv0vlef6
	IGpeY0+EsWqiLutxgtkfeQVv/ZmiULEsTizPrYOPbDyrbDvTOY8BDMW+TMFsMWTMxTur8mTNIfMzt
	9WdjUr+9Mun8yu//A7wGtrYqRB++KbmqTPmTWVnOmg89zHaIL7VYTnpgjq8AwHMWFJTJCqSStaGoE
	L9/bkYsQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-clk@vger.kernel.org, jonas@kwiboo.se,
 devicetree@vger.kernel.org, Fabio Estevam <festevam@nabladev.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject:
 Re: [PATCH v3 1/2] dt-bindings: clock: rockchip: Add RV1103B CRU support
Date: Mon, 02 Mar 2026 13:01:56 +0100
Message-ID: <1850487.VLH7GnMWUR@phil>
In-Reply-To:
 <CAOMZO5AvymrELSnaHQ+cThcSDdPbayLPGwx-5YB18=0zm+oJ_w@mail.gmail.com>
References:
 <20260210022620.172570-1-festevam@gmail.com> <32347982.43St1lv6Oq@diego>
 <CAOMZO5AvymrELSnaHQ+cThcSDdPbayLPGwx-5YB18=0zm+oJ_w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269962-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sntech.de:email,sntech.de:dkim]
X-Rspamd-Queue-Id: 130D91D801A
X-Rspamd-Action: no action

Hey Fabio,

Am Montag, 2. M=C3=A4rz 2026, 12:46:25 Mitteleurop=C3=A4ische Normalzeit sc=
hrieb Fabio Estevam:
> On Mon, Feb 23, 2026 at 11:21=E2=80=AFAM Heiko St=C3=BCbner <heiko@sntech=
=2Ede> wrote:
>=20
> > I generally pick up Rockchip clock changes anyway and then
> > send PRs to the clock maintainers, so that'll work as always :-) .
>=20
> Please let me know if you are OK with the RV1103B clock and dts series.

just didn't get that in the list yet, but applied now :-)

Heiko



