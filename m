Return-Path: <devicetree+bounces-272569-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOMSBQtnrWlp2QEAu9opvQ
	(envelope-from <devicetree+bounces-272569-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 13:09:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D5723029E
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 13:09:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E40BE3053F09
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 11:52:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 403FD229B12;
	Sun,  8 Mar 2026 11:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="ayIyF9bm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-10628.protonmail.ch (mail-10628.protonmail.ch [79.135.106.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61518306B11
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 11:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.28
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772970743; cv=none; b=pKkbTni2n2GSJE1uUKgr1BYxsjLToJsNflul8pPXjUvOhVDOYUqcz7xdxE67Ii+q+y3d5Mh1Qhz+PM38u0kMm1bK8dvDWS53gCALSAAju/c3Xi0VhdXFxRYxK7FkNykNopVd1z6v8Gd1QFhw30po/GlLm1lOExc31r2mtL5Gy48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772970743; c=relaxed/simple;
	bh=itefZKbk9DIeIY29bgUp/9OpWv9UnV4si0vIARTZ5m8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bFyAoHSh9uCgWUeSoNSMONhzuZpOLfUOS354iUhfJLMH6GO//uiKZtgQOEM2GMRDBfKBtzEhcJDlF5RRSMHOoH3vHFVwZH0DowlN/9y/TkhmirY6HbKEr/7grP2WiXytoFaEd4SxKedJ3Wt0FUaB/l3Fj/ZOTByMKfaonz/zaWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=ayIyF9bm; arc=none smtp.client-ip=79.135.106.28
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1772970733; x=1773229933;
	bh=deOqS1v+V7VkWFrWEWsq7ObbQ1Jg2bAGdP/XlHX87yM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=ayIyF9bm1eH+omWtJHdHQBSFtIOPnD1kEbttMKj2Bh5e8Hn8NFfRUuTDJwpNG1KGq
	 gO55wzquActNuIzjGhxJttFN8CaUvgECUxuvTscagtJ4jgIzqkQP0LNbwRfpZPbsBA
	 nPWxvJMR57DmM0sjAtkPAWbW0Nx8SCmEchGvVoCNcebXEGmub1qF1QUYn2zH9j7a14
	 SoSlvt5BR0ycSpgv1oAPUiY9SF33yzO6MIH2AwJLKhtDa31Zor2PVBFcOrgj2GbR3c
	 akDW9ZDWM3KAvsp+uGDhPItrvQKt8IeFINpuLA45hDu19wdRLEqDogWcI2G3jLOVR8
	 zGXrTmEfffseQ==
Date: Sun, 08 Mar 2026 11:52:07 +0000
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Alexander Koskovich <AKoskovich@pm.me>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8250: Add label for reserved-memory node
Message-ID: <yyLvPClplHmyd72RJgOMXVLx_z6GT8sDZP8FyzlHMV7MrCm26twtNmxebCmLwusqGABJQTrIIAe-AAwAW3uaIQ8Rw5TId1C4v5reyj71nmU=@pm.me>
In-Reply-To: <2b260d55-71cd-442f-bf9f-a9771a2765c7@kernel.org>
References: <20260308-sm8250-reserved-mem-v1-1-889eca3c11ca@pm.me> <2b260d55-71cd-442f-bf9f-a9771a2765c7@kernel.org>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: aa3b8ca56e43e07eaa60d7cb891dc38ad227fa09
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 14D5723029E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272569-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[pm.me:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[AKoskovich@pm.me,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.930];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,pm.me:dkim,pm.me:mid]
X-Rspamd-Action: no action

On Sunday, March 8th, 2026 at 4:46 AM, Krzysztof Kozlowski <krzk@kernel.org=
> wrote:

> There is no user for this, so change is pointless. labels do not exist
> in DTBs, so drop the entire patch or provide here - in the same commit -
> proper user.

Want to submit the ROG 3 in a follow up change but was trying to get all de=
pendencies for it merged beforehand.

Should I just upload the devicetree and link to relevant patches?

>=20
> Best regards,
> Krzysztof
>=20
> 

