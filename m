Return-Path: <devicetree+bounces-272730-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFkvBGd6rmnMFAIAu9opvQ
	(envelope-from <devicetree+bounces-272730-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 08:44:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 918CC234F3F
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 08:44:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 559D4305C2AA
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 07:41:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F55A36896D;
	Mon,  9 Mar 2026 07:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="g/tDVQqS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-43100.protonmail.ch (mail-43100.protonmail.ch [185.70.43.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F02A368966
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 07:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773042090; cv=none; b=rN5iIqQpqCB3REyyxO2oyDMmLibVIjjJIgklCrvH4yGPoRM7GaQD403me97xqr85kdFmcYgrdv75Wi2m2BCcYijQjnCzI5lFZgcdgdANlUhIAua4SRPM1aiiXPJyA3nrNrvWiFzokdnYbPgMbKVHrCQ9wKrHR/QB93rTRgvyx2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773042090; c=relaxed/simple;
	bh=xtsdoxG+gmYllPIx0WMX5AEoHPsIlHt7t21P4WSaqK8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hzndj6zJGaSjoESbVVbL8s2i2TaCu8b0M68zbsrCDf4xv0SZF7RYLXdhM3lNg3SqRGXhSp1cOLlQJaeZEMAXjq9PlLHN7XwrKV4dxfdK8fWZAdg3H95keshRHbowhNVwn6F+Y61uzoCmcHyUSpMspIvbVw5zvwuPbeR7Z8rdTQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=g/tDVQqS; arc=none smtp.client-ip=185.70.43.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1773042086; x=1773301286;
	bh=xtsdoxG+gmYllPIx0WMX5AEoHPsIlHt7t21P4WSaqK8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=g/tDVQqSjZlv50Xg5hI15QyiDt3GRjoHSu/gDiNvG3wQP/1hAxokE+/ochkX5ox7Q
	 l1bkVPAzQ1UatykLfspQS2XW9FVSN/m1PYAL+LehtXqxK4K33uXa/O0X8AaXBtk89W
	 obixgjDNtK4Q0onCI5ssnGhfxNAiuzPtN43CgsjdqzI5Y7O/5VFVJbpvHFy7GJLXTh
	 jSfz+aubX3drmS/E5DafcG99HddnFgU2dd9rm62oPJdBGvD+zZm6J8rCBV622iZ1V/
	 vSy1xN6+wxpXsWD8tOXNd5gBK7jCW+J8xP2C1xqSqbTJfouKCbGQOxDRwh5QIDTIfo
	 pka+1MlQ0xCfA==
Date: Mon, 09 Mar 2026 07:41:21 +0000
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Alexander Koskovich <AKoskovich@pm.me>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel: Document Tianma TA066VVHM03
Message-ID: <PU91d8ChpHqZx-aqR57qt-3XBGBOl_oCbF0SSI_q3uGK9UXUUWplDdDD4m_OGbpXn3Ayx0DCy0wHYe5-nuZeZc-Xy_77mvHl17KrTJcPt-w=@pm.me>
In-Reply-To: <20260309-idealistic-dingo-from-venus-c443af@quoll>
References: <20260308-tianma-ta066vvhm03-v2-0-5f2344685133@pm.me> <20260308-tianma-ta066vvhm03-v2-1-5f2344685133@pm.me> <20260309-idealistic-dingo-from-venus-c443af@quoll>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: 316d367de7bd5c6353c5dc6ff07091c2e8d9d69e
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 918CC234F3F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272730-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[AKoskovich@pm.me,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,pm.me:dkim,pm.me:email,pm.me:mid]
X-Rspamd-Action: no action

On Monday, March 9th, 2026 at 3:35 AM, Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>=20
> BTW, all of your patches have mismatched From and SoB cases. It passes
> the checks but I do not see reason why different case should be used.
> Especially that it is manual process to achieve that - none of the
> standard ways of using git produce such result, because SoB is added
> automatically based on From name. Unless your mail server is changing
> these, but that's also odd.
>=20
> This should be fixed in all of your patches, IMO.

I did notice that, looked into it briefly the other day and it appears to b=
e Protonmail Bridge that is doing it, I always use "akoskovich@pm.me", but =
Protonmail seems to be sending out as "AKoskovich@pm.me".

It also made some linux-media CI checks fail :(

Would you suggest I change my git identity to use uppercase here and then r=
esend all patches?

>=20
> Best regards,
> Krzysztof
>=20

Thanks,
Alex

