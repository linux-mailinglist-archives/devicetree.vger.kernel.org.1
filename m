Return-Path: <devicetree+bounces-272742-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IAxoL0p+rmmzFQIAu9opvQ
	(envelope-from <devicetree+bounces-272742-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 09:01:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 604012352ED
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 09:01:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E125303FAB4
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 07:59:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECCE536A02B;
	Mon,  9 Mar 2026 07:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="RKCV4XbU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-106121.protonmail.ch (mail-106121.protonmail.ch [79.135.106.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97161364949
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 07:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773043162; cv=none; b=VqL9uAEJRRZCFxBP5ghdbY/ehC6XSKPcRFGGTIZzo0FZYcWKzszN65hbQJPaJOwPolurEKSJ3+lptM9B/4bJsHBN2+/aqhuie06+E7JBNfzV4uIjnnfmGHZKr2YC0rmKE1G+8JBwBpSxaDVtgoiojEpxu3dI88HbARjNl20pn6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773043162; c=relaxed/simple;
	bh=us2Sxut54o3bbCLDzOPRYoYiohqpnDpL5+Y7dE37BrI=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SIh5ud95B9cnmziNhgTPByYTooTOZ+8ycIlFrg1uxN7oAP+MkLOsbxkC7vvp7eg0T7/lHokp4OE8T4cPLyo8nLQ5qHQu7N2Q6aJV3yawEoDW2CF+kPsuyRwmvZXdpQNUfKgb4EH4rQUtdnwM9U4iwfj4z5VwTRJjtpwsGBi+jZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=RKCV4XbU; arc=none smtp.client-ip=79.135.106.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1773043153; x=1773302353;
	bh=us2Sxut54o3bbCLDzOPRYoYiohqpnDpL5+Y7dE37BrI=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=RKCV4XbUp8+kiDsCNoMPtYjj7xI9ctQf812F6alJ1CB2JR5hVMb4cf7hLapcKQrM3
	 DiMdKATvG1MEhacz44lHWH/XaMQlIHDQaEqBV5lLJRQ1p/PFuLEmVJ8BMzxdG44+bU
	 AOTP35zATJAyeOkAZ2oBuN0bhwkXRKCvcyL3GMFi5O/LrC5qXOZordlabaqwKJBw4d
	 AM8znJbkiFxGHcV+w7DGtHPxyTb9awlIgNwHCHElDdCTpBaPTVUFkkJbMFnDwtmbg4
	 xOreBMDFiad2+n7yZ6Ooinhcoe5uT0Po4cEm1tsn97y7Js2gfIQf1SXMl1jddNeP6q
	 4y3apa09tPNUA==
Date: Mon, 09 Mar 2026 07:59:07 +0000
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Alexander Koskovich <akoskovich@pm.me>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel: Document Tianma TA066VVHM03
Message-ID: <jEmQOGXayNvDVOS6CwoOrw57iIPZ9a5tQLZHo7g7Zq78lD5hZVg85dKDzzboPtKt9BNSjiHptAhLEpEI1s2rrpTSc_qP-LneoLxZhfxZ814=@pm.me>
In-Reply-To: <2d1d5c7c-61b1-4f5a-b039-02ceb2a02c1a@kernel.org>
References: <20260308-tianma-ta066vvhm03-v2-0-5f2344685133@pm.me> <20260308-tianma-ta066vvhm03-v2-1-5f2344685133@pm.me> <20260309-idealistic-dingo-from-venus-c443af@quoll> <PU91d8ChpHqZx-aqR57qt-3XBGBOl_oCbF0SSI_q3uGK9UXUUWplDdDD4m_OGbpXn3Ayx0DCy0wHYe5-nuZeZc-Xy_77mvHl17KrTJcPt-w=@pm.me> <2d1d5c7c-61b1-4f5a-b039-02ceb2a02c1a@kernel.org>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: 6efb296065016972a1a62ed9500271d657904941
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 604012352ED
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272742-lists,devicetree=lfdr.de];
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
	FROM_NEQ_ENVFROM(0.00)[akoskovich@pm.me,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,pm.me:dkim,pm.me:email,pm.me:mid]
X-Rspamd-Action: no action





On Monday, March 9th, 2026 at 3:54 AM, Krzysztof Kozlowski <krzk@kernel.org=
> wrote:

> On 09/03/2026 08:41, Alexander Koskovich wrote:
> > On Monday, March 9th, 2026 at 3:35 AM, Krzysztof Kozlowski <krzk@kernel=
.org> wrote:
> >>
> >> BTW, all of your patches have mismatched From and SoB cases. It passes
> >> the checks but I do not see reason why different case should be used.
> >> Especially that it is manual process to achieve that - none of the
> >> standard ways of using git produce such result, because SoB is added
> >> automatically based on From name. Unless your mail server is changing
> >> these, but that's also odd.
> >>
> >> This should be fixed in all of your patches, IMO.
> >
> > I did notice that, looked into it briefly the other day and it appears =
to be Protonmail Bridge that is doing it, I always use "akoskovich@pm.me", =
but Protonmail seems to be sending out as "AKoskovich@pm.me".
> >
> > It also made some linux-media CI checks fail :(
> >
> > Would you suggest I change my git identity to use uppercase here and th=
en resend all patches?
> >
>=20
> Just change it in Proton settings to lowercase. Or don't use Proton for
> kernel development - in the past it was causing a lot of troubles, so
> here we have another reason - mangling silently with headers.

Thanks, I see in Proton's settings that I can just change the case. Done, w=
ill resubmit changes in a bit.

On the header mangling thing, I think I've already seen that. I noticed tha=
t when I send via git send-email, it strips out the "In-Reply-To" from the =
headers leading to the threading getting lost.

Will try to look into getting a different email provider for Linux contribu=
tions set up at some point.

> Best regards,
> Krzysztof
>=20

Thanks,
Alex

