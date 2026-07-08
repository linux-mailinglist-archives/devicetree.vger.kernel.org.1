Return-Path: <devicetree+bounces-322957-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SFC5BhNtTmoBMgIAu9opvQ
	(envelope-from <devicetree+bounces-322957-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 17:30:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1243C7280B2
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 17:30:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VY5Sx23D;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322957-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322957-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1AE6D308CE16
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 15:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5695D4DB566;
	Wed,  8 Jul 2026 14:57:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E00424DB569;
	Wed,  8 Jul 2026 14:57:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783522652; cv=none; b=k07qPojbLcNycx2N5vqw0ZnCk8JxKda3TKG31Zn4fhQFtDbw11Gv0qo0DSmDABPLydp6J7dbsn7vlt5DAxuzo61pBNwrAXDKlKIXPK+8yPmx0OB+Mcg0Lgor0oAxqQOwsoUWLY0N0ybZdtZlntZ+6ByeFcN2evcFA57wUtCOINk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783522652; c=relaxed/simple;
	bh=mb5MRWshU5VmKUXNPoHpODosmYc5qDAUJPrRWCG33Lg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gEJ2o7WvqzKSVLAV+M3hFZW/syTMBD6XQajO+CM2ZlMeSnReTqWfPCfjfpL65LB1PQF4v+FMgx9nZ6yC5eycvkXvNKTmSPshCjAUptUdCwinVjwguUJISmZSNyxFK37QiPGuUMDKR3RspBPwWk7cDSKUAz9tAqi86UL7C28XVrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VY5Sx23D; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7B2C1F00ADE;
	Wed,  8 Jul 2026 14:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783522650;
	bh=MeQ6YpdgU9+ocIPTR5I21hd908to6N5JIkQBQ0IPhsI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=VY5Sx23Dakpt9Szvb94zwh3wBN3F4cBDBrhbk9H5Q+w1ugLU///FX/61Fx+ZgbvYO
	 RotN1O8ygu/OU4FbypBDwksWAN/ZXRyW5Bl2OOed+afmgN8orAAYyvyiTVcEyu3dRF
	 nzp4Fabjepx3lVcGeOTxJ4eBY1bJfNvzJiUsEKivfqgk57D7MljQshhMx8srX86Kep
	 wC4Y50VmRLm/Bp2sxkCW2bnmHtGktHrqNbj0GfTW6Bc8HRYzqToW6Y1uBcYUdbDtLu
	 5S11KjhqtVyyREDnW3kgxP4xwdMZGH+NqSDZjKUngsj74+t3qcEMPXQxtcLJOBuhP+
	 QpJRlg4zu+FcQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>,
	Conor Dooley <conor@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: aiqun.yu@oss.qualcomm.com,
	tingwei.zhang@oss.qualcomm.com,
	trilok.soni@oss.qualcomm.com,
	yijie.yang@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: cache: qcom,llcc: Document Maili SoC
Date: Wed,  8 Jul 2026 09:56:30 -0500
Message-ID: <178352261586.2235436.462264889707061973.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260604-maili-llcc-v2-1-dd24f05bc197@oss.qualcomm.com>
References: <20260604-maili-llcc-v2-1-dd24f05bc197@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:konradybcio@kernel.org,m:conor@kernel.org,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:jingyi.wang@oss.qualcomm.com,m:aiqun.yu@oss.qualcomm.com,m:tingwei.zhang@oss.qualcomm.com,m:trilok.soni@oss.qualcomm.com,m:yijie.yang@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[andersson@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-322957-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andersson@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1243C7280B2


On Thu, 04 Jun 2026 23:06:16 -0700, Jingyi Wang wrote:
> Add documentation for the Last Level Cache Controller (LLCC) bindings
> for Qualcomm Maili SoC which is fully compatible with the one found on
> Qualcomm Hawi.
> 
> 

Applied, thanks!

[1/1] dt-bindings: cache: qcom,llcc: Document Maili SoC
      commit: c800e4c8a6481b4648945a53630907e414205cf6

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

