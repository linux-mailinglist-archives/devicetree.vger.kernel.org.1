Return-Path: <devicetree+bounces-266301-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MChDMogFlWl5KAIAu9opvQ
	(envelope-from <devicetree+bounces-266301-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 01:19:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C63D15230B
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 01:19:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0A2D73008470
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 00:19:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD11222541C;
	Wed, 18 Feb 2026 00:19:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="YE6685Qw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-43102.protonmail.ch (mail-43102.protonmail.ch [185.70.43.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276C621A444
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 00:19:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.102
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771373955; cv=none; b=gzVs31vPnHKkWa+azYrL2Q2Ifjtny0HuDz2Sa5fY6BKiYAVDJgGni+Ek4OvyxCZaWPOKnMIMlF9+TjkbXmgriTVEqGi41dQQvsrDuTak94xRZbDxBVujriv47R7mPrkeIa7kksSu/sFGSjRewqXeWaH7drHP5KPGKeV+GJAA0uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771373955; c=relaxed/simple;
	bh=iWxz9hS/cM6IsGj2Xnd4oK5lyC5JkpNLPaBzkWaWQ8I=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=CGNq/K2SQiLIPYR/gq6F97n2vCFQn2cE+ON53vAn7Aez9jiQuwPfmoV+JAeriQjzQ9bWWCAIogEu7fHglE+MqdXN7TDci1b1G/7Lh42WRwfOWii7mzO+2ULAv7ZuM71Vc1RztWQ+tNg/AAUC5mfpV7fgXioyK0LxBXOOsNx7U9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=YE6685Qw; arc=none smtp.client-ip=185.70.43.102
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1771373952; x=1771633152;
	bh=iWxz9hS/cM6IsGj2Xnd4oK5lyC5JkpNLPaBzkWaWQ8I=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=YE6685QwrcpakCk6DlcdcjMH4BCqP5AF7VMN8P2aT+pMZ0An3dwmkWfsz90YalVUQ
	 jg0EWjOerEQUL2Bat+rcIPgifHP8hDxl75yAOvmeQUP2fqbXvK14ou7URqdy/QcYn7
	 f8iXcXerXLT65UeLG6TL6N5QTBjLF6Iw0ADNsIzQ9m1rdLNTSfjm8Hx2ZKExp16Amp
	 MUDXHE0NClhxKChbxEIIl54dZS8s47e5mc5ZrnHFB3X3KTlJh47hAVc/K+NNpomKUn
	 Ny65iPzIktC4TV5xXc0/y75he9vfRNxM6rdcJVH7X/5usoVGTbxUbcnZbWB24KZPtc
	 OkwD9XsGh/zWQ==
Date: Wed, 18 Feb 2026 00:19:09 +0000
To: aelin@mainlining.org
From: Alexander Koskovich <AKoskovich@pm.me>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, dmitry.torokhov@gmail.com, hansg@kernel.org, krzk+dt@kernel.org, linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, linux@mainlining.org, neil.armstrong@linaro.org, pc1598@mainlining.org, phone-devel@vger.kernel.org, robh@kernel.org, rydberg@bitmath.org, ~postmarketos/upstreaming@lists.sr.ht, Alexander Koskovich <AKoskovich@pm.me>
Subject: Re: [PATCH 2/3] Input: add support for Goodix GTX8 Touchscreen ICs
Message-ID: <20260218001846.59363-1-akoskovich@pm.me>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: 5c2b87d16bcf39f8e5301048801b39030f04b267
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	FAKE_REPLY(1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266301-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[AKoskovich@pm.me,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,mainlining.org,linaro.org,bitmath.org,lists.sr.ht,pm.me];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[pm.me:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,pm.me:mid,pm.me:dkim,pm.me:email]
X-Rspamd-Queue-Id: 3C63D15230B
X-Rspamd-Action: no action

Validated on the ASUS ROG Phone 3 (GT9896).

Tested-by: Alexander Koskovich <AKoskovich@pm.me>


