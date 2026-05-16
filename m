Return-Path: <devicetree+bounces-298667-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJqvH69gCGoAlwMAu9opvQ
	(envelope-from <devicetree+bounces-298667-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 14:18:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D62B755BB37
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 14:18:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ED915300CBD8
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 12:18:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3900E3D0C03;
	Sat, 16 May 2026 12:18:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="SpMt1Lus"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D461326158B
	for <devicetree@vger.kernel.org>; Sat, 16 May 2026 12:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778933932; cv=none; b=iJucSy2sYOl/tuoONmZHwCDhyqGbdLcxHC2bcMcwxAhHCoqgAkK3V4ol5XNH0aUoCXKummFcKjFy9PNme0+mAcmxyTMQ1p8NMy8SD8KrG/kvIvED8NCp0SWSkrrmgRaLmEUWPqJwFfoQ8mLyErL9IWTs7pVu25ZmHtzVgX/zneU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778933932; c=relaxed/simple;
	bh=uH3tX2aOgeksoZKI5T9mrhYnSwNsOXdomeEkea5UM/U=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=L9IgSu9eZ1nR2RXZM3W5z5ffFU7sJhL9CxcdG3dqLlDzgUeQ1LQEsEuM0Hofb5nUu74CltSGNKRFAVW/jRHoNFOEqNQw9wOl1Ne6ygAf5aMv8hJrCQXiGLhWUlAgeVMGfqF0mFihgEwRC9MNMsc2Htlho0v/h/tMPCwvl+YumIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=SpMt1Lus; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 083F726FA4;
	Sat, 16 May 2026 14:18:47 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rjl6SQpE4vCd; Sat, 16 May 2026 14:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1778933926; bh=uH3tX2aOgeksoZKI5T9mrhYnSwNsOXdomeEkea5UM/U=;
	h=Date:Cc:Subject:From:To:References:In-Reply-To;
	b=SpMt1LusNwGnImPND9PuWPtvJEMnuos8nbjBSzLrM2VyWKoidYVbKX57NEW3cBd6I
	 bk0symmi8OQtCjMAz7yXfI+HsFp1ukz7THab9SmTO9z2VJd9EPrt3tVMr5q/7eckKf
	 wTZ8PVDt3AlXTNgCovb42sS02wzaExn48MgpEqNy7lRhEFP2683TRHwswMGqpFDF3D
	 lUyagHUYGUai0JQtTV0ZNq4PPPI/WTD/NdYOGzS7WgabRvjvLyiP+QtDVDI+m/cEUQ
	 wVhGdp9VDzzEFOlkbcjW4W235Olsh5225uduu0F1w3UwHkVeN0KUxyM4IezB5mDYrL
	 4x61b55SMaQsA==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sat, 16 May 2026 17:48:39 +0530
Message-Id: <DIK3G0RETBVZ.OCTQ0HEYDQYA@disroot.org>
Cc: <krzk+dt@kernel.org>, <devicetree@vger.kernel.org>, <robh@kernel.org>,
 <conor+dt@kernel.org>
Subject: Re: [PATCH v7 05/10] mfd: sec: set DMA coherent mask
From: "Kaustabh Chakraborty" <kauschluss@disroot.org>
To: <sashiko-reviews@lists.linux.dev>, "Kaustabh Chakraborty"
 <kauschluss@disroot.org>
References: <20260516-s2mu005-pmic-v7-5-73f9702fb461@disroot.org>
 <20260515222400.CDDB7C2BCB0@smtp.kernel.org>
In-Reply-To: <20260515222400.CDDB7C2BCB0@smtp.kernel.org>
X-Rspamd-Queue-Id: D62B755BB37
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[disroot.org,reject];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-298667-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[disroot.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kauschluss@disroot.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,disroot.org:email,disroot.org:mid,disroot.org:dkim]
X-Rspamd-Action: no action

On 2026-05-15 22:24 +00:00, sashiko-bot wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issu=
e(s) to consider:
> - [Medium] Shared dma_mask pointer across MFD child devices causes a data=
 race and violates DMA API contracts.
> --
>
> commit cc615ed9ba9013f030c19361a7a4d79aad2e467d
> Author: Kaustabh Chakraborty <kauschluss@disroot.org>
>
> mfd: sec: set DMA coherent mask
>
> This commit manually sets the coherent DMA mask to 0 and points the devic=
e's
> dma_mask to it. This is intended to suppress "DMA mask not set" warnings
> for sub-devices, as the device does not use DMA for communication.
>
>> diff --git a/drivers/mfd/sec-common.c b/drivers/mfd/sec-common.c
>> index 22f6c74eb6c0e..fe92bc4a3dd26 100644
>> --- a/drivers/mfd/sec-common.c
>> +++ b/drivers/mfd/sec-common.c
>> @@ -221,6 +221,9 @@ int sec_pmic_probe(struct device *dev, int device_ty=
pe, unsigned int irq,
>>  	if (IS_ERR(irq_data))
>>  		return PTR_ERR(irq_data);
>> =20
>> +	dev->coherent_dma_mask =3D 0;
>> +	dev->dma_mask =3D &dev->coherent_dma_mask;
>
> When the MFD core adds child devices via mfd_add_device(), it copies the
> parent's dma_mask pointer to the child devices:
>
>     pdev->dev.dma_mask =3D parent->dma_mask;
>
> Because sub-devices for this PMIC probe asynchronously, they can concurre=
ntly
> execute platform_dma_configure(), which eventually calls of_dma_configure=
_id()
> and performs a lockless read-modify-write:
>
>     *dev->dma_mask &=3D mask;
>
> Since all child devices share the same dma_mask pointer referencing the
> parent's coherent_dma_mask, does this cause an unsynchronized data race o=
n
> the parent's memory?
>
> Additionally, sharing a single dma_mask pointer across multiple devices b=
reaks
> the driver model. If any child device were to legitimately call dma_set_m=
ask(),
> wouldn't it silently overwrite the DMA mask for all sibling devices?
>
> Finally, manually modifying device structures to fake an invalid mask of =
0
> bypasses DMA subsystem validation. Helpers like dma_coerce_mask_and_coher=
ent()
> explicitly reject a mask of 0. Is manually assigning 0 here the recommend=
ed way
> to suppress the warning?

Note that change follows the same reasoning as in commit 0b7cbe811ca5
("mfd: cpcap: Fix cpcap dmamask not set warnings").

>> +
>>  	pm_runtime_set_active(sec_pmic->dev);
>> =20
>>  	switch (sec_pmic->device_type) {


