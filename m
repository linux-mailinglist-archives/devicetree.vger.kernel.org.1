Return-Path: <devicetree+bounces-321442-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aXnKEXz+S2opeQEAu9opvQ
	(envelope-from <devicetree+bounces-321442-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 21:14:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D187F714D98
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 21:14:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=proton.me header.s=protonmail header.b=Tmwz7SmH;
	dmarc=pass (policy=quarantine) header.from=proton.me;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321442-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-321442-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B65C830315EE
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 17:37:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E3933B19D8;
	Mon,  6 Jul 2026 17:37:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-24417.protonmail.ch (mail-24417.protonmail.ch [109.224.244.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FF52DF3F2
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 17:37:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783359462; cv=none; b=pufFycGAz4//lkaQClncE1L3mavXC1K6ez9k7uuda4pr4960VhSt14uA+dIAstW5oxT26pUAruNjHSeAhFcIKMYwKX4EsVufztJi81MEzEAfVImJuhM9RCqnjzsHpEMHva6GIzgAeSp/alA0sOWPO+8u6VwY9MDDgEUZ6tq/wKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783359462; c=relaxed/simple;
	bh=v2R7RMzgtl4p0GUyY1wULxMAxNHG70RoVQmfeFubRL8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Pmos+bIcKaY3WXuPL/o+8xWs3rDeC21FHV6lHogPbZPIKnD0vQ4d3z24P36zab9EcrxdJWTp5zakh1xeHmzuDS8ph604EfW/MyDDSk1AHPEDm6WKYieuMWpT5et73W8ehqaGPPl1lgHLNOl0o/kj7G/R/KjpZP6K/0fAez8ANek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=proton.me; spf=pass smtp.mailfrom=proton.me; dkim=pass (2048-bit key) header.d=proton.me header.i=@proton.me header.b=Tmwz7SmH; arc=none smtp.client-ip=109.224.244.17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1783359456; x=1783618656;
	bh=v2R7RMzgtl4p0GUyY1wULxMAxNHG70RoVQmfeFubRL8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Tmwz7SmHDAgLUbBdkKgYKpJS7gp59kkKj6XRcI2cpJdIOO9cBKlV0r14p9wHsP4zH
	 b0dOACHWQ3AHO9qcXZmjzwPPlM20znCP9hiR/NrvjwKfsUMcw/fXVOCMc68m88bNvh
	 x0ErvReN98A48O/teawZ9bv7Fs09pMTfd+w+izmN/j6gHmFq26/4wKoNQi9jW4VdOc
	 luyEcOG8T4e9IVdV2LV1yfiidJ8MvkaeASsTcCagXZdubT4W3MUQXF4iV6CvhGnnjh
	 9yZBn0fc6TdEWmlvgYoZKVCN2fN+btC3fpmF7jwR80JwhlurzVYWkqXH7F7pl9qvAf
	 t9MKIMhCdmlTQ==
Date: Mon, 06 Jul 2026 17:37:28 +0000
To: Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Sean Wang <sean.wang@mediatek.com>, Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
From: Zakariya Hadrami <zkh1@proton.me>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org, Zakariya Hadrami <zkh1@proton.me>
Subject: Re: [PATCH v2 0/5] ARM: Basic support for Amazon ford tablet (MT8127)
Message-ID: <20260706-mt8127-amazon-ford-basic-v2-0-akvkMzQcnDB-79Ya@proton.me>
In-Reply-To: <20260617-mt8127-amazon-ford-basic-v2-0-6859e29e72a8@proton.me>
References: <20260617-mt8127-amazon-ford-basic-v2-0-6859e29e72a8@proton.me>
Feedback-ID: 198761268:user:proton
X-Pm-Message-ID: 879d977e9a35ea1cee412757959b56d4f370c935
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[proton.me,quarantine];
	R_DKIM_ALLOW(-0.20)[proton.me:s=protonmail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:sean.wang@mediatek.com,m:wim@linux-watchdog.org,m:linux@roeck-us.net,m:krzysztof.kozlowski@oss.qualcomm.com,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-watchdog@vger.kernel.org,m:zkh1@proton.me,m:matthiasbgg@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-321442-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org,mediatek.com,linux-watchdog.org,roeck-us.net,oss.qualcomm.com];
	FORGED_SENDER(0.00)[zkh1@proton.me,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zkh1@proton.me,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[proton.me:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,proton.me:from_mime,proton.me:dkim,proton.me:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D187F714D98

Hi everyone,

Gentle ping regarding the last 3 patches of this v2 series. First two docum=
entation
patches were kindly reviewed respectively by Mr. Roeck and Mr. Kozlowski.

Link to the full v2 series thread:
=09https://lore.kernel.org/all/20260617-mt8127-amazon-ford-basic-v2-0-6859e=
29e72a8@proton.me

Thank you very much.

--=20
Best regards,
Zakariya


