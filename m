Return-Path: <devicetree+bounces-276749-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NE7Nqp0uWm8EgIAu9opvQ
	(envelope-from <devicetree+bounces-276749-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:35:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F862AD1E9
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:35:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6410D301912B
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:32:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 061583D6661;
	Tue, 17 Mar 2026 15:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="VfaB9n5K"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9F5D1A8F84
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 15:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773761549; cv=none; b=YFCLFoPjQfOD48J+UACL4gtLq1pJFArrftzyIqux1xoD/PBF5bf6WyQUdu4J1FRWjZx2fkBmT3UMu+RGfiDzd+Hbny/cf9KN0uHcC21YOqlUDyEolHHIMUHc6d/dPDTcx68oTvbtrSDkAJ2ns9q+rYaEoO+0/MIxFxG1GAOyurU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773761549; c=relaxed/simple;
	bh=dB5xlhv0AK8726vApRjjf7WxxwLj9XH/7EBSZ5F8wFU=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:To:From:Subject:
	 References:In-Reply-To; b=FDIUn0q5RoEyoNdgJWuWjfJmluwwTdorcSL1ezJJSnqwJjRNfrokd5gb4FSvHOdziIq2P+llO8QYs9cH1RoWw4fmNsFjRRFyNtrsWyxz0Zn8KEseSKEj/Hcocx3nNHuhoTnbId/Y/Mi9e9JVnsNlC6HBgnBYC0sdi9ArA10dwF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=VfaB9n5K; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 5E9A31A2DF3;
	Tue, 17 Mar 2026 15:32:27 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 2E2715FC9A;
	Tue, 17 Mar 2026 15:32:27 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 255331045061A;
	Tue, 17 Mar 2026 16:32:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773761546; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=9/oN1sDc0ufWvDNWTMdGmLevclcivf0GDYvT6kTHMY8=;
	b=VfaB9n5KmeBybFfomLE3xUwaa/H1/AiyGm3thS8N8hpeZrhW647TsPwykSpVQFprdq49LL
	W/nT5TaiFOfJ9xwYU9/MfYYKD7DfET62UD5PeCNAfNQ7vRaOHzD9Y5/+D8bVEU4CCWfb+U
	18wfggiV2AqLZIq09jmMOGLyoci/ZB22mhQau4yNV9YQ86iL9XPFw7dh4eEuLeDBNW7+pq
	3deJm7lXnnKDAVtzwOs+wLCw/YHsVEjt3iUBZsO1vBF0Zts5HClTwdzf9jifbeZ96S3YHU
	SsKeSEZ7djDTzirJcKoiTRKq9RgsOLGMdl2m6JezMwTrW0qX9Ax7CEx+ZSx8aA==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 17 Mar 2026 16:32:23 +0100
Message-Id: <DH55ZO0TJKBD.1K8FXCOY1PRWG@bootlin.com>
Cc: "Simon Horman" <horms@kernel.org>, "Andrew Lunn"
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, "Jakub Kicinski" <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Nicolas Ferre" <nicolas.ferre@microchip.com>, "Claudiu Beznea"
 <claudiu.beznea@tuxon.dev>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
To: "Charles Perry" <charles.perry@microchip.com>, <netdev@vger.kernel.org>
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Subject: Re: [PATCH net-next v3 3/3] net: macb: add support for Microchip
 pic64hpsc ethernet endpoint
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260313140610.3681752-1-charles.perry@microchip.com>
 <20260313140610.3681752-4-charles.perry@microchip.com>
In-Reply-To: <20260313140610.3681752-4-charles.perry@microchip.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276749-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[theo.lebrun@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:mid,bootlin.com:email,bootlin.com:url,microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 59F862AD1E9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri Mar 13, 2026 at 3:06 PM CET, Charles Perry wrote:
> pic64hpsc doesn't have the USRIO register so MACB_CAPS_USRIO_DISABLED is
> used.
>
> pic64hpsc does support PTP and has the timestamping unit so
> MACB_CAPS_GEM_HAS_PTP is used.
>
> jumbo_max_len is set to 16383 (0x3FFF) as reported by the DCFG2 register
> bits 0..13. The JML register also has a default value of 0x3FFF.
>
> dma_burst_length is set to 16 because that's what most other platforms
> use and it worked for me so far. There is one other mode where bursts of
> up to 256 are allowed but this might impact negatively other masters on
> the NOC.  The register default value is 4 (bursts up to 4).
>
> Signed-off-by: Charles Perry <charles.perry@microchip.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
>  drivers/net/ethernet/cadence/macb_main.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

Reviewed-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Thanks,

--
Th=C3=A9o Lebrun, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


