Return-Path: <devicetree+bounces-286785-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBsrAMgj22kU9wgAu9opvQ
	(envelope-from <devicetree+bounces-286785-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 06:47:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 469D73E2B0F
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 06:47:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D6D0301544C
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 04:47:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79F5529A309;
	Sun, 12 Apr 2026 04:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="gMTUN5GM"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B95A14C6D;
	Sun, 12 Apr 2026 04:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775969220; cv=none; b=Qd5Xw5E020t2WVTYXV8Ot7Ti+ASr0tPoKSn5zF27vXcia1LYX5kzm8X2elQL862wyY/DW5BSxOZO96Fh/5GdBf5HZpAvtej+n2uhmzb22CC/nqzsEWcmBBrr32arBCzAbGlwj9tZM/BxfyKfun9C2pYElNuMN5L4LBWVS3Wo7t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775969220; c=relaxed/simple;
	bh=J1Uy+XTCCHtnU2DBis+72ykuQRFDb8ZB6oM9EqqvX4A=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=eoenXy2BjGujLBqjikSPtweXNUBIWX8AzBaYLA5Kmcgx04B2HIF06IilmEVHmcmAhU5zRA0AuIPymm55mTbCko0wuS4kD+2TK9siIGAUUmvLq6ZXbVAWmnPuG4UXWrr7Vpqbm36ym3zfU5u20W8hz1Wi/HZo5tw40ey1xUibV8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=gMTUN5GM; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 3927F2671D;
	Sun, 12 Apr 2026 06:46:57 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 323kQnMr6cLb; Sun, 12 Apr 2026 06:46:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1775969216; bh=J1Uy+XTCCHtnU2DBis+72ykuQRFDb8ZB6oM9EqqvX4A=;
	h=Date:Cc:Subject:From:To:References:In-Reply-To;
	b=gMTUN5GMC4aelGryLkEXPX0G1t/ZNuPlPSbb0jaz2LzY8eeQtQs5we+3Sl1Y1KCaX
	 Q2dUBzm89N/zpOQXVblIWaJhh8O8cz6OjR9S8U9bVkVpGwg/526hZjy9eA7oj1pcH3
	 KGA8KqXzl8X9N5nj4a+kntYVTnxfhbS9BBJHssoO/DECpN0NqoLuskgbk73H4t3MPR
	 i8efLuoOEHgtLGONSBWWOYPBMB3Jyb8d73ic/Z7znmFR1G2Fl+yJ2pRjuQQ/OIQo0E
	 AlBkzYUxmihd1gq8PJvdy6CVbI1ywZMYN1D6/LaFhY4eiUC2a5P/EG0cCVEhx6BuH2
	 yQ9xR1IXLAj7w==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 12 Apr 2026 10:16:50 +0530
Message-Id: <DHQWJJVGWU2A.2JE3O90VZK72Z@disroot.org>
Cc: <linux-mmc@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: dw-mshc-common: add option for
 configuring DMA threshold
From: "Kaustabh Chakraborty" <kauschluss@disroot.org>
To: "Kaustabh Chakraborty" <kauschluss@disroot.org>, "Krzysztof Kozlowski"
 <krzk@kernel.org>, "Ulf Hansson" <ulfh@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Jaehoon Chung" <jh80.chung@samsung.com>,
 "Shawn Lin" <shawn.lin@rock-chips.com>
References: <20260412-dwmmc-dma-thr-v1-0-75a2f658eee3@disroot.org>
 <20260412-dwmmc-dma-thr-v1-1-75a2f658eee3@disroot.org>
 <6d692d1f-ab67-463a-9135-520a36977d5d@kernel.org>
 <DHQW60ZTLODV.3C6OG2KUNVSBR@disroot.org>
In-Reply-To: <DHQW60ZTLODV.3C6OG2KUNVSBR@disroot.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[disroot.org,reject];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286785-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[disroot.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kauschluss@disroot.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 469D73E2B0F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-04-12 09:59 +05:30, Kaustabh Chakraborty wrote:
> On 2026-04-11 22:27 +02:00, Krzysztof Kozlowski wrote:
>> On 11/04/2026 21:43, Kaustabh Chakraborty wrote:
>>> Some controllers, such as certain Exynos SDIO ones, are unable to
>>> perform DMA transfers of small amount of bytes properly. Add a property
>>> to configure the DMA transfer threshold.
>>>=20
>>> Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
>>> ---
>>>  .../devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml          | 8 =
++++++++
>>>  1 file changed, 8 insertions(+)
>>>=20
>>> diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-com=
mon.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.ya=
ml
>>> index 6f11b2adf1036..1693277957a91 100644
>>> --- a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yam=
l
>>> +++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yam=
l
>>> @@ -57,6 +57,14 @@ properties:
>>>        force fifo watermark setting accordingly.
>>>      $ref: /schemas/types.yaml#/definitions/flag
>>> =20
>>> +  dma-threshold-bytes:
>>> +    description:
>>> +      DMA transfer takes place only if the transfer size is equal to o=
r greater
>>> +      than the number of bytes defined by the threshold value. Some co=
ntrollers are
>>> +      unable to perform the DMA transfer properly with small amounts o=
f data.
>>
>> Looks like controller specific, thus should be deducible from the
>> compatible.
>
> "samsung,dma-threshold-bytes"? So you also suggest I move it to the
> Samsung's schema? Okay.

Ahh, nevermind I get it. A separate controller compatible which sets a
higher threshold.

>
>>
>> Best regards,
>> Krzysztof


