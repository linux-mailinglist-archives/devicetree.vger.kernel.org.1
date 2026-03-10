Return-Path: <devicetree+bounces-273233-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eP/JBCqKr2lvaAIAu9opvQ
	(envelope-from <devicetree+bounces-273233-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:04:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 851E824495D
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:04:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3BEAE30413AD
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 03:04:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A90363B52F0;
	Tue, 10 Mar 2026 03:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="PvRLIoBO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-24418.protonmail.ch (mail-24418.protonmail.ch [109.224.244.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BAE234D4C1
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:04:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773111847; cv=none; b=eIz/wjauKGXeAWTWFcdZ1sEhWOItyy3nC4OnDiYJiiy/Ca1yokjYnTekOlWlAmWJIPoVC1H7AFRFgUrE4ZKIAd5Ka4EgRds1kOWWmfZ78UMOnvhDhDqwAuOhoSw3ttHGzX1cYl8qqd+aJoJwGcHAbIwgrEDNq8PspX9hS2FHcPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773111847; c=relaxed/simple;
	bh=NrXMG/PPFGP1ghSiTP1PzvaMNUMKSfTfB+NTUwCFKmo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FRmEX7uOg5J5gyq7ILcY8lL9Zs1Tm8pwSi1hhEKTGrPl1Ug6TX253ofa8dc1t45884ofcL6YI9JBGdUB1Ibhngw12JiekTcBFcujnp3iV53ZSrQOI52a7XXcCGz+YIqGjYgtWYLRos60oxC9ttLkru0CK/RNd+rXahb1FBXEr8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=PvRLIoBO; arc=none smtp.client-ip=109.224.244.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1773111844; x=1773371044;
	bh=NrXMG/PPFGP1ghSiTP1PzvaMNUMKSfTfB+NTUwCFKmo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=PvRLIoBOSfEfbDCDndyVEmpV+QhS976k0LZlQliftIcFv5bRvdPQOc4SLhCdfGxnF
	 YE3fcqUtDmwIv+K9cAzJ/5wNkp0Vm3Apw/hbd58a3dwa7PjiPsMUIgQ/bOvTZRbXJN
	 6WJ5tvDaRmoIaDds4rl7mzsaU1vVV2EhHtCbtaf84FExlp/u+PHvTYIrXG+0vfmlID
	 CE0/XkWZyiHK8nSgLXxhmeJyPKLAvEkHYdPOizLQoOCt3Ntqsutiw49daF7ZB4hnqm
	 pwZPaw3S1b1MO4vY7LrryWMjQXP0RDrTGqJiv1kCXWssi5+dr7amkqHHW8+hUlHSJs
	 +vxNCw+WOCDsg==
Date: Tue, 10 Mar 2026 03:04:00 +0000
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Alexander Koskovich <akoskovich@pm.me>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>, "Guilherme G. Piccoli" <gpiccoli@igalia.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: arm: qcom: Add ASUS ROG Phone 3
Message-ID: <aiez7cEpph57bS9vjzZt-ebtJRL7riKay60UUoeOmmzENyeKmvzZkc-ecTQcXjkb0d9RvfhONW4OOeK-3TgtxWy16LkOH-TRcQUq6XoDafE=@pm.me>
In-Reply-To: <20260309-rapid-kittiwake-of-justice-ea5be9@quoll>
References: <20260308-sm8250-asus-obiwan-v1-0-3c72941eb796@pm.me> <20260308-sm8250-asus-obiwan-v1-1-3c72941eb796@pm.me> <20260309-rapid-kittiwake-of-justice-ea5be9@quoll>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: ec80a8adbb0ad3664057b2ec77b17e964b27721a
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 851E824495D
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
	TAGGED_FROM(0.00)[bounces-273233-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,pm.me:dkim,pm.me:mid]
X-Rspamd-Action: no action

On Monday, March 9th, 2026 at 3:59 AM, Krzysztof Kozlowski <krzk@kernel.org=
> wrote:

> Please run scripts/checkpatch.pl on the patches and fix reported
> warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
> patches and (probably) fix more warnings. Some warnings can be ignored,
> especially from --strict run, but the code here looks like it needs a
> fix. Feel free to get in touch if the warning is not clear.

Ran checkpatch on v2, got a few warnings that seemed like they could be ign=
ored
given context but let me know if they need to be addressed:

Asked for MAINTAINERS to be updated, but from what I can see there is no ot=
her
sm8250 board that has a maintainer specifically listed.

Complained about undocumented tianma,ta066vvhm03 binding, but have that
specified as a dependency in the cover letter so ignored it.

Complained about undocumented pci17cb vendor prefix, but this doesn't seem =
to
be a vendor name so doesn't seem like warning applies? Also already in
sm8250-xiaomi-elish-common.dtsi.

> Best regards,
> Krzysztof
>=20
>=20

Thanks,
Alex

