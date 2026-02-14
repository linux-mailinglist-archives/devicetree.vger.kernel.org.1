Return-Path: <devicetree+bounces-265594-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2YHJMoLkkGnDdgEAu9opvQ
	(envelope-from <devicetree+bounces-265594-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 22:09:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E32213D40A
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 22:09:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CF33E3007964
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 21:09:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 780F829ACCD;
	Sat, 14 Feb 2026 21:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="wSB7pnif"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-244123.protonmail.ch (mail-244123.protonmail.ch [109.224.244.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4DDF946C
	for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 21:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771103357; cv=none; b=rMPIJ6XmtqY84g0E2SaqDogJSWFHAH+Nb5D3Xkl1nvo55k//XngKVqo+m1SvBLefeVLZwbmD5nLLON4snZgE7SS5Q9LfcphNBBBBtZJzgxe521/TXKCGyJ39deXKMC7wQIzphFp/Xe1db+YVnIWsXXIU7VQbT/tCHZkevazR7g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771103357; c=relaxed/simple;
	bh=g8nYWPMUBY7CgMskSO+8CU3KVwxKo6X7Bsl8D5taTOQ=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MxjU7KVhfp0nbNsXwaVohiD+J5bdv/GC//rtLjjnezZ7fiJgBiHgf243HriZ0OAe2exOa/QdS2FrGLq9suivBVDK16IRiJJ8zMhV530yrkuM6ymgE5PnrMGMspMbq2UkeKVadv012uyBha1MIOyIRE45wWnVeQTOkCf1/VCIHXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=wSB7pnif; arc=none smtp.client-ip=109.224.244.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1771103353; x=1771362553;
	bh=eGKJib+0WITKdpI220IMwglgT6GjONiYD8yYH1MaSFg=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=wSB7pnifFw7d637dCE6Oe2YIk+00Zdug8aP0uY805FsknyxLwXqipP774M/qiKgDc
	 JcE/14B0Vz0eF8x4bmC8rCt0qZTEP6oaO8LxfYmgVoc3BdZ57MGUHeHrRPHiKCRYHx
	 C9GmHoeMMvWyHXRCsbrdmzWZqP6ky9Vql0CEGFqiPu1rnOrZr2Yc8WwK0kg+eQE1HY
	 mhkcHaoQ5Tb4h7fo582W8NpvOwXtZmAPE5NmzCESXXG44z3lzjQFYHA5sLOlg/oueK
	 3AVc+WysGFur4NzCA+XpmwgrbBKz9E7xN+JruFvP9u5E7A2IvQgiCdSRMhL7kCRhn6
	 r9Gfn4Wnpd9gA==
Date: Sat, 14 Feb 2026 21:09:09 +0000
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Harry Austen <hpausten@protonmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Michal Simek <michal.simek@amd.com>, Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 1/2] dt-bindings: clock: xilinx: add description of user monitor interrupt
Message-ID: <2QWRaIfoa_z-SIFIhFu37bcpZtK9jYlmk-mziAtaZMAFazmFi_7nloNxIroQ0B8gMhm_FmgptlYexUgHVQQkU6PEcmFi_6DvwwQXDycQESA=@protonmail.com>
In-Reply-To: <223c900f-e509-4c22-a3ea-3e2051ca6975@kernel.org>
References: <20260214180933.42143-1-hpausten@protonmail.com> <20260214180933.42143-2-hpausten@protonmail.com> <20260214-daffy-roadrunner-of-inquire-babdce@quoll> <NptKiK70heOFOIj9x6tz-gtS1m7ueBoa3SNCijidv1yeFPpt9OAPd-LTgBUbrEfAA2u3DTJHzlUDjv17fuddIPZ4m2YEZ1dTaMQuiXDGkD0=@protonmail.com> <223c900f-e509-4c22-a3ea-3e2051ca6975@kernel.org>
Feedback-ID: 53116287:user:proton
X-Pm-Message-ID: cf7a540bc2054d661460ecfcb69c6bac455ed3f1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[protonmail.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	R_DKIM_ALLOW(-0.20)[protonmail.com:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265594-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[protonmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hpausten@protonmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[protonmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,protonmail.com:mid,protonmail.com:dkim]
X-Rspamd-Queue-Id: 3E32213D40A
X-Rspamd-Action: no action

On Saturday, 14 February 2026 at 20:59, Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:

> On 14/02/2026 21:57, Harry Austen wrote:
> >>>
> >>> +  interrupts:
> >>> +    items:
> >>> +      - description: user clock monitor interrupt
> >>> +
> >>> +  interrupt-names:
> >>> +    items:
> >>> +      - const: monitor
> >>> +
> >>>    xlnx,static-config:
> >>>      $ref: /schemas/types.yaml#/definitions/flag
> >>>      description:
> >>> @@ -66,12 +74,24 @@ required:
> >>>    - xlnx,speed-grade
> >>>    - xlnx,nr-outputs
> >>>
> >>> +if:
> >>
> >> Why isn't this in allOf? Code is fine, but why changing it?
> >
> > There is only a single if condition, so the allOf is not required. Remo=
ved
> > for simplicity and reduced indentation.
> >
>=20
> Heh, you might need to add it soon re-indenting everything on adding
> just one more if, so for me that was wrong choice. And you got a review :=
/

Very fair points. Agreed, it was definitely the wrong thing to do. Not sure
what I was thinking. Do you think it is okay as is, or would you like me to
add the allOf back again?

>=20
> Best regards,
> Krzysztof
>=20

Thanks again,
Harry

