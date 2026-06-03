Return-Path: <devicetree+bounces-306274-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v0TqHG01IGpyygAAu9opvQ
	(envelope-from <devicetree+bounces-306274-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 16:08:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 11253638681
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 16:08:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=pm.me header.s=protonmail3 header.b=SefhuhEG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306274-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-306274-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=pm.me;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1C28E3080A7D
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 14:02:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E37A47D952;
	Wed,  3 Jun 2026 14:01:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-10631.protonmail.ch (mail-10631.protonmail.ch [79.135.106.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3D55481648
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 14:01:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780495298; cv=none; b=uz3xeR4HLyrbvJdn9852Sciph8k3io8LvLbi+W7O+EVvex4HQ3taViorXWzdNNFQeQS5Z6hcaJ0Lr8/v0gqqDS1hBiRPDaCYGcKkG7YSOAPPSBNUUEZcu4W0nlty2Z8nji1Sri4WwtYv83Tz/JNH6eSxRttqmUU3TZCXofi6Uk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780495298; c=relaxed/simple;
	bh=SYkCZDpkKgKsZGxiHTJkRREueNdOve+YvI/Wfq+lp20=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kswd8+yzW9TrPmjyuZjsSFhFTF2XV5oHZN+/TbsN5i07jjO0dq78C2p3Cx80f7tnp2g+FhZXzBqhUW9QCxXPacM7QrcyBecA4AbW44nw2z2TiXT7fg7xw5NQFAPVjiE3BKU8rfrlBJLrZ5t1PwogDmn6/btozodhgTQmN8Dv00o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=SefhuhEG; arc=none smtp.client-ip=79.135.106.31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1780495290; x=1780754490;
	bh=0EZsJvwM6lMZ5ZpyMK8ylpPZGzWdFd8P/vhUyBwyAJ8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=SefhuhEGfYbIom39iOomqeW4PDrcbKtJuzXPnIRbcHXG5GYbVcLCNK13V+WganFic
	 BSXGXc+FNoYz1yDZi8CDGhhfIbwbwCSq3L2yOZxxWnfwschLmERdWBjtl9kaCNmtqJ
	 qpJi3JDkGLMFGa9G0DvHGXt94/lK2c+lZWWtEAwhRLodQzHRlKnv/WQ2dS7q1LhYzR
	 xh18neR4rPMyDMZTFKYR7MkgvLilr/FXSQ7j4eLVrildQ28/TsX/9PunVE1mV/azu1
	 kMFGtte+jmlZ6Ezc4OnCki/ijSJspBUYXMHwLR15ZWBzK318cONx8P+2/T6UTQeDeN
	 GfCczZCbU71zA==
Date: Wed, 03 Jun 2026 14:01:24 +0000
To: Neil Armstrong <neil.armstrong@linaro.org>
From: Alexander Koskovich <akoskovich@pm.me>
Cc: Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Document BOE BF068MWM-TD0
Message-ID: <ALMSs_2ssEuRgFGXhTUpuP022Q2bMpEn0F-QqFgw4PYn8RkcSWGh0e7_lL3XZy1MQpViwpnMj_98Mi8lTP6A3UsRAYi8XuZWdqIAFVT2dq4=@pm.me>
In-Reply-To: <4a7c19a3-bb00-4a68-beea-146ef65f9e5c@linaro.org>
References: <20260603-asteroids-panel-support-v1-0-109c6ac81c8f@pm.me> <20260603-asteroids-panel-support-v1-1-109c6ac81c8f@pm.me> <4a7c19a3-bb00-4a68-beea-146ef65f9e5c@linaro.org>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: baf767d958ea255241b0159643e0ae0b9472890e
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
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306274-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[akoskovich@pm.me,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:jesszhan0024@gmail.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akoskovich@pm.me,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,linaro.org:email,pm.me:mid,pm.me:from_mime,pm.me:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 11253638681

On Wednesday, June 3rd, 2026 at 9:58 AM, Neil Armstrong <neil.armstrong@lin=
aro.org> wrote:

> On 6/3/26 15:03, Alexander Koskovich wrote:
> > +description:
> > +  This is a 6.77" AMOLED video mode display panel on a MIPI-DSI 4-lane
> > +  interface.
> > +
> > +  The panel also requires ELVDD/ELVSS/ELAVDD rails but these are
> > +  internally managed by the panel via EL_ON1 (ELAVDD) and EL_ON2
> > +  (ELVDD/ELVSS) control signals, they are not managed by the platform.
> > +
> > +  The driver IC for this panel assembly is an RM69220.
>
> If you know the DDIC, please switch to bindings & driver around the RM692=
20 DDIC
> instead.

Question about this, isn't the DDIC kind of generic? E.g. another panel
assembly with RM69220 cannot use this driver if the actual panel assembly
is different.

Thanks,
Alex

