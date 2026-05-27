Return-Path: <devicetree+bounces-303477-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFWJLToLF2pB2AcAu9opvQ
	(envelope-from <devicetree+bounces-303477-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 17:18:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4855E6BC4
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 17:18:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A9E0E3009F37
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 15:11:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E870C426EC1;
	Wed, 27 May 2026 15:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1gMdPNV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D591642668E;
	Wed, 27 May 2026 15:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779894684; cv=none; b=uzcXnSx6RlIBD+btN6/FCa14799sCg93mJVALD0I38ng4Im4S/1vHQAVv9ruWYKgWhU/tRTpaxRge44emqcpcLPUO78VeRzB5amJKbfr9SGmIfnzxGKqq0JdwxCUk05y27hpuVcwwOGp5WXOK0H0KKTJUcSARQ5muQXICC66sKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779894684; c=relaxed/simple;
	bh=MNPWYr+U4PLN2ZDtZblQotOFaQMgEcw0TOnbqnCmTWM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=mVKO6cPkvTwu+AJMgsWkdQ5k1KOvxlfD/l2UnUj3WZmlt+GqOeMaMv5N31EFXw2gRqYB24AKbRzvcEVxdfBHrcn/WzpxUFofSmaQzwPgJRZtkILTToNhmSY2V5tm44BeJBDVgZctmHatUhndXjYbrEBShbBE2n3fqPvKnjI5Rv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1gMdPNV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62DFD1F000E9;
	Wed, 27 May 2026 15:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779894683;
	bh=/tzWFhSFGUKixfYv1g0y57oN5p1YPCjS0eSO2ifQkCU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=F1gMdPNVADjhvCgtQPrWzwCq5WAaTDEYu+ce8pLgW04t3Aqh3hqViz0H88qpyfYDc
	 Wkswo9i/rpAYXFmeIkdeo5x13RdiG6h4jhjPd0fNd/V/T1x9wjZBb41XqkJTxMXvEt
	 4e8ynsnDeVnQ0CbjHWofJTcnpBuGafp+GYvnMgKHZ2H1oz2U5az3c/oFjlp7UN5tx8
	 BNlU5UOiOW9VcOUDKnn/HKYZizigBq9el4yHp/Qt+0p5KVgGYKfYAw2l1p4jNF0ABz
	 6k/w648tsIfsxaeD7Fuw7vDnIPhPTNDdJT91tQB+FfoaI0MvMPLY4gBP8qknCrAx5G
	 OUeY2sD0pBG4w==
From: Lee Jones <lee@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Lee Jones <lee@kernel.org>, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20260519-sc2730-regulators-v3-2-5bf0e02507e3@abscue.de>
References: <20260519-sc2730-regulators-v3-2-5bf0e02507e3@abscue.de>
Subject: Re: (subset) [PATCH v3 2/3] dt-bindings: mfd: sprd,sc2731: Include
 SC2730 regulator bindings
Message-Id: <177989468112.708163.11191837859858540056.b4-ty@b4>
Date: Wed, 27 May 2026 16:11:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.16-dev-ad80c
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linux.alibaba.com,abscue.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303477-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 3A4855E6BC4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 19 May 2026 14:06:12 +0200, Otto Pflüger wrote:
> The SC2730 PMIC provides a different set of regulators than SC2731 and
> thus requires separate regulator bindings. Allow using them for the
> "regulators" node.

Applied, thanks!

[2/3] dt-bindings: mfd: sprd,sc2731: Include SC2730 regulator bindings
      commit: cf61a18f7be9c41a53ec87db13b0dd58eea41147

--
Lee Jones [李琼斯]


