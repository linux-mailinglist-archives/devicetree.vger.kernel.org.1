Return-Path: <devicetree+bounces-279953-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wINdJ527wmlilAQAu9opvQ
	(envelope-from <devicetree+bounces-279953-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 17:28:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCDC319044
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 17:28:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 36A2B30DF389
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 16:17:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F4A63E4C6B;
	Tue, 24 Mar 2026 16:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="SBGv8+Bo"
X-Original-To: devicetree@vger.kernel.org
Received: from out-173.mta0.migadu.com (out-173.mta0.migadu.com [91.218.175.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D89FC3E0257;
	Tue, 24 Mar 2026 16:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774369048; cv=none; b=QzMfg4XqyppTgKr4dxOVx3WYNHC6TBTaV50AutR7hkWKBe8kj7uaCZxXMz3NsML6Q6AubQGHrkRnVWhyMvFLgKXpzak5dzwNqpzZL0yuPcEaxALf+J51y20/CVcSSWYgpgcI6FVNCUZR8WafS3gDSrlc5RuOLSIA/CKBoGfaA5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774369048; c=relaxed/simple;
	bh=Ph8L6+gJe19poDr+sVxhDt5mPh/0Ip+l1jVhOmzfP2c=;
	h=MIME-Version:Date:Content-Type:From:Message-ID:Subject:To:Cc:
	 In-Reply-To:References; b=Wn41027Vu0lHLQtCCkkQWXcaQGwkDC7GTPoPM2tf/PtNJ4k29glbeL3LI1GfEcZgF/loB/9GAP2gKWJr8D07S3b0DwEUxWk4lCRxaHXxJ/BRH0C1J3YATl+WUWOloQMBE/TSqso9hJJ7NcGxrMrbjAYJ4l1SEkav7vtNa70szvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=SBGv8+Bo; arc=none smtp.client-ip=91.218.175.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1774369032;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ph8L6+gJe19poDr+sVxhDt5mPh/0Ip+l1jVhOmzfP2c=;
	b=SBGv8+Bo2ZzZsy2wDVzsRPzQ/icH2qnrLi7yUqrdCnafoTDUs4mOLEsMTHHCe4nRE47HHv
	YR/KoFkm32uLo1ggRVYzyyR+73wSxDqNNb9WV5KhVqDPcA5ImnAnofcGWzODTcT/KpGS4j
	1EPhQWqIOMRKZLuruv2/CwLFhK3jaVxinN22MVyNYACcpxQ0giajLSnJdfYK3DAUsgTuZt
	C7iRJ6O+BaYHlj0fmpGOfN/mOYZldnGTkl6lDiqkMXhRw0DSjYUyoKedsI8N3N2tZv9Tji
	jKB9q/G7lkAF717vB8nrCB+NW+l110dJRFhZy95sa1pLZkwPankhoAx8yi7Mzw==
Date: Tue, 24 Mar 2026 16:17:09 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Paul Sajna" <sajattack@postmarketos.org>
Message-ID: <e833f72236342a7efbce04c2109bf921f770673c@postmarketos.org>
TLS-Required: No
Subject: Re: [PATCH v6 09/15] arm64: dts: qcom: sdm845-lg-judyln: Add
 firmware nodes, change path
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "David Heidelberg" <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht, "Amir Dahan"
 <system64fumo@tuta.io>, "Christopher Brown" <crispybrown@gmail.com>
In-Reply-To: <e32a0a50-9c15-4f3e-8c83-1f96e5aae4b0@oss.qualcomm.com>
References: <20260323-judyln-dts-v6-0-29d70ca1651c@postmarketos.org>
 <20260323-judyln-dts-v6-9-29d70ca1651c@postmarketos.org>
 <e32a0a50-9c15-4f3e-8c83-1f96e5aae4b0@oss.qualcomm.com>
X-Migadu-Flow: FLOW_OUT
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[postmarketos.org,quarantine];
	R_DKIM_ALLOW(-0.20)[postmarketos.org:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279953-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,tuta.io,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sajattack@postmarketos.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[postmarketos.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[postmarketos.org:dkim,postmarketos.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 1CCDC319044
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

March 24, 2026 at 10:49 AM, "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.c=
om mailto:konrad.dybcio@oss.qualcomm.com?to=3D%22Konrad%20Dybcio%22%20%3C=
konrad.dybcio%40oss.qualcomm.com%3E > wrote:
> What about the other board (judyp)?
>=20
>=20Konrad
>

I don't have it.

