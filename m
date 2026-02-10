Return-Path: <devicetree+bounces-264234-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kG0hHTzHimk+NwAAu9opvQ
	(envelope-from <devicetree+bounces-264234-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 06:50:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5741172E8
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 06:50:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3CE5E300A325
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 05:50:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32C4021257F;
	Tue, 10 Feb 2026 05:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="xKmyqxOK"
X-Original-To: devicetree@vger.kernel.org
Received: from out-180.mta1.migadu.com (out-180.mta1.migadu.com [95.215.58.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585EE2AD0C
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 05:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770702650; cv=none; b=Y8uRKOm7KUA7R66jtRCw5+Aa+fy7whWC76m9LFMZNTzRBj5AdkPor5YoG8XgF24xOMnWhK7xzPzKFFMV4bkmNpF216g6gq8iENs46xdGVwZVEQ+eWYC9WGipsCLE65R5yDsWzyGWnd2pOF+yTyQaQXj9KGGKfrW+xaFY26pdaFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770702650; c=relaxed/simple;
	bh=JFqUNAJPbfntakYgXlVmPUWBmjS6ZT274Op0DauQgpg=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=TXMdQhBNcEvoeGn5+EzXaSoU3U8Yig2e0Gv0mqBvjQimg6YwfCxVjjBaYI/zyXyVO3joZ/T8SLhxxOQay3af5aR7BNRcFTw8QO7IwXhF2hOvZYvDC4rRKkBniLos3InChQTrm8rJAZ2mI9+lMFcnCRNoIPyh2Kw1/E4mIGqR2pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=xKmyqxOK; arc=none smtp.client-ip=95.215.58.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1770702646;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JFqUNAJPbfntakYgXlVmPUWBmjS6ZT274Op0DauQgpg=;
	b=xKmyqxOKd8/xaTlxkb/W4z+DNBVpe10MC+GteYSStR81VuLNbYcB6DflytOpkoJuxjQ2Xs
	hFJylvG0GlZX+PsWuqAFBimHqkTKy4nDG2A4ekGUXZwZM8x2CM6bK61Dq9rQOgHuUQvk6v
	LaWj+8VwT1xRY8X7PeIl3xiSEy19iOs=
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 10 Feb 2026 13:50:32 +0800
Message-Id: <DGB1P3K6I14J.1QCMDY84ZR7ZH@linux.dev>
Cc: <broonie@kernel.org>, <conor+dt@kernel.org>,
 <devicetree@vger.kernel.org>, <dlan@kernel.org>, <huang.ze@linux.dev>,
 <krzk+dt@kernel.org>, <lgirdwood@gmail.com>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-riscv@lists.infradead.org>, <neil.armstrong@linaro.org>,
 <robh@kernel.org>, <spacemit@lists.linux.dev>, <vkoul@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: phy: spacemit: add regulator support
 to K1 USB2 PHY
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Ze Huang" <huang.ze@linux.dev>
To: "Chukun Pan" <amadeus@jmu.edu.cn>, <krzk@kernel.org>
References: <8c3835c4-3602-4cee-9631-0551b0341918@kernel.org>
 <20260209064016.1176056-1-amadeus@jmu.edu.cn>
In-Reply-To: <20260209064016.1176056-1-amadeus@jmu.edu.cn>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264234-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,linux.dev,gmail.com,lists.infradead.org,linaro.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[huang.ze@linux.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linux.dev:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:mid,linux.dev:dkim]
X-Rspamd-Queue-Id: EB5741172E8
X-Rspamd-Action: no action

On Mon Feb 9, 2026 at 2:40 PM CST, Chukun Pan wrote:
> Hi,
>
>> Plus, if this was a vbus regulator it would not be called "phy"...
>> Even more confusing.
>
> Sorry, I didn't consider that this naming is confusing. Other
> platforms, such as Rockchip's inno-usb2phy driver, use the
> "phy-supply" property. I continued with this bad naming.
>
>> Bindings are supposed to be complete regardless what driver does
>> (or does not).
>>
>> You must list all supplies with proper names.
>>
>> If this regulator was missing, then what else?
>
> (...)
>
>> Please start describing in the bindings your complete hardware, not
>> your drivers.
>
> It appears Ze Huang described the vbus-supply property in
> spacemit.k1-dwc3.yaml.
>

> So I should enable the regulator in the dwc3-generic-plat driver.

No, we will enable regulator at port level.

>
> Sorry for the noise.
>
> Thanks,
> Chukun


