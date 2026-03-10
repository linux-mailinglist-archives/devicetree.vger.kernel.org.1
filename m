Return-Path: <devicetree+bounces-273265-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OgxgFG+kr2k9bQIAu9opvQ
	(envelope-from <devicetree+bounces-273265-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:56:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4CC245525
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 05:56:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E7DA43027957
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:56:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 057E03AE71C;
	Tue, 10 Mar 2026 04:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="Oz9tajMJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-43101.protonmail.ch (mail-43101.protonmail.ch [185.70.43.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D65B38F940;
	Tue, 10 Mar 2026 04:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773118572; cv=none; b=i9EwUi3RKHuqp8GB63dYQMzBpga6VBIPgyROdujcep+WSDtPSJdL75skRSvf+ZSZZR7AGG6nisTnBCFTh+YaDkr0BPnSN8hnB1LAok4bcIT9VyOvV2g08dH2Zg1brjCvjcA4uHc3JdODFGUqprNalwB6pdM5OCIF0owsN51Ofs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773118572; c=relaxed/simple;
	bh=lzYvC+T8ZweGDPviV9fb9bTRsGfUUDvU4XlcyvOEU4I=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hTjztXXIVtDhQzi7KjEYkXFyRTVziR3rjgq4FhB94w2flBZMcEXI7TbNrxcWFzh49yLuFU8gXCt9NMT//pGcSDNsQAHfYGqlVxTGWeL+Ho7r/CDfDCfJAO6iAcmuffmgWs1vSGJJhaLhjJ17P8KxmuZE4/CpL/KukN4iPtGNxsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=Oz9tajMJ; arc=none smtp.client-ip=185.70.43.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1773118569; x=1773377769;
	bh=d9EGh7AbRTcyFUu5GJO6EMPF90rmEUGbtfJ1Yn/eC4U=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Oz9tajMJw8AR0hKQcV2pjv/0ByPR6HHt9BBxAzhp6AlmBbc2urE8CDtGV+jCMsYIw
	 U6z3fG7GBC3MXaUbtLgcN4R/d/GPT3NhJDzxZ/f33jMawyej3qZGGyMEKVLCz9VRAp
	 y1rKNBNwTRsFzKHXG0j0i1NTTAo7y4KcxMpPUwIZxGFy81+Qy1URMCIczr1qXTxPUm
	 6qIwsCwy3sA18IBjh4bwi61V5jV4xCZR+qop9jrfqypQwugdLXQXp5dS87BQDfB2Ou
	 URkFXci/975pf5sSiOv3ujF42KxcZ/9E6DGfD+YYUXxK+8BpXAoBUxgriB3p77aG7e
	 VG0t1UZZeLRQA==
Date: Tue, 10 Mar 2026 04:56:05 +0000
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
From: Alexander Koskovich <akoskovich@pm.me>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>, "Guilherme G. Piccoli" <gpiccoli@igalia.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm8250-asus-obiwan: Add ASUS ROG Phone 3
Message-ID: <J_W9QYsh5uzP8yFwfXk2sEUPd32v1Ea8G7h2TUDYnZxCicj_fNlgKLrLZDFbKc9E1Ag9FtVh1QyMKf0qoBUr2mWtRal63cGt5hh4VT8pYHA=@pm.me>
In-Reply-To: <Aq0_A41FhB8fJb9dTuRuZRKqmFlPjEaBk9DwgvNk4bo4qyzhKOb10g6FORBRqZuPcYGkZC6YC4_Hx5GdwDmPPkYBHMzo9mqcCT3_JSi_Z0Y=@pm.me>
References: <20260308-sm8250-asus-obiwan-v1-0-3c72941eb796@pm.me> <20260308-sm8250-asus-obiwan-v1-3-3c72941eb796@pm.me> <pu56z7dorbujx57yzfclcncrj4zwgtv3gshntnlpxcpbunxsiz@2rckwcyjgetg> <TTd9O1RN8B4tl9ogFkEYOLpb0iuA2NkOP_3RVkPfnEPntd7f33LU8zzKfy1ICXQ1M-TmDVht5GxiNsMDCu8O2odbZUBcU4lEzg-wyq22ZxM=@pm.me> <eykyxrdiaqf3z3nthwa22tvxz442ynhvhsjhajs5jfnwuko2yp@f75t6vfhfjrp> <Aq0_A41FhB8fJb9dTuRuZRKqmFlPjEaBk9DwgvNk4bo4qyzhKOb10g6FORBRqZuPcYGkZC6YC4_Hx5GdwDmPPkYBHMzo9mqcCT3_JSi_Z0Y=@pm.me>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: 476d3e5dfe454aff18fba26bc890770af78bd18d
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: CF4CC245525
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273265-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akoskovich@pm.me,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,pm.me:dkim,pm.me:email,pm.me:mid]
X-Rspamd-Action: no action

On Monday, March 9th, 2026 at 11:32 PM, Alexander Koskovich <akoskovich@pm.=
me> wrote:

> On Monday, March 9th, 2026 at 11:24 PM, Dmitry Baryshkov <dmitry.baryshko=
v@oss.qualcomm.com> wrote:
>=20
> > > https://lore.kernel.org/ath11k/PqqPCfIvgme9VLMd4Q91JxMhlc4JOTjuWhwXup=
f3_0cZXUvRy0wijwNfy7lAY6fiIXHXU_buPPbpDM_Uvht3G26146R4szD7Hvp57m7Totw=3D@pm=
.me
> >
> > I don't know if that breaks the scripts used by Jeff or not. Your
> > attachment seems to be lacking the commas.  It is named
> > "bus=3Dpciqmi-chip-id=3D0qmi-board-id=3D23variant=3DASUS_ROG_Phone_3.bi=
n",
> > while it should be "bus=3Dpci,qmi-chip-id=3D0,qmi-board-id=3D23,variant=
=3DASUS_ROG_Phone_3.bin".
>=20
> Hmmmm that's odd... I checked my sent folder and the attachment does have=
 the
> commas in the preview window, not sure what happened there. More Protonma=
il
> tomfoolery?
>=20
> Maybe I should resend that through gmail or something.

I resent the board info through my "alexander.koskovich@gmail.com" handle, =
looks like the commas are intact! :D

> >
> > --
> > With best wishes
> > Dmitry
> >
> >
>=20
> Thanks,
> Alex

