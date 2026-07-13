Return-Path: <devicetree+bounces-325217-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id I3rtCY6QVGqdnQMAu9opvQ
	(envelope-from <devicetree+bounces-325217-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 09:15:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DD0747EA2
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 09:15:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Zoof87+i;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325217-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-325217-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 54E4F301BA77
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 07:15:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E3A8368D59;
	Mon, 13 Jul 2026 07:15:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8951369D59;
	Mon, 13 Jul 2026 07:15:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783926906; cv=none; b=DfMqdphk7akNyCXJsmHrna79X4D2cYrLAkeMT2TbqM6zB5up5CzSr37Q2LhECcgL2pAljnUWgM4BsglUnXuCX2mEEH+bVNGLvsdEt/shZQ7r96ZUEbqz0nqkGx9xLmiWxn/k4p25jDV/LUtzaXoPT/aNv0gWLJOKZXZbKLTeexo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783926906; c=relaxed/simple;
	bh=qt/ciUhbyJcgydhGc5DaXdaEqvPSjo0LGG//q/JJ3S4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=OnfRXX4m8GERiUlKyLqEk2q8oyboc4TxhpV51jZcgDLcadATPOJhwy1zCx1SBeko/qom56e+dJinJeySTeFAauCT/o+marM/462kUQPJ9jtWr7G0kYXEJF26hC15nvPmhepk0jZVuuNqD7JXhOzTanyD8rMXwJdyrzT28x6Nkdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zoof87+i; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FC821F000E9;
	Mon, 13 Jul 2026 07:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783926905;
	bh=eLb36tVfJEOKQMQt3uvFaLwJzBn1n6sVBLny6umONd0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Zoof87+itqVZwOMFUw+cS/Xefo1n3/ceC5P4IE47TXgULDYw5nLqzuvf2E9FYS+iP
	 pXLyyWbrJN5CvmtLB6z01L9XC9UxYU1n5roWqCK1q8zPPZMgSLLPTIxzev1+QEzCmY
	 WmnK2e5cDEOPrDAnP74TEPeww1bYljsh9Amp42Tumb4tSzseFuXXW1arTrqqVjoDqi
	 frMAGJ8gU4KQdtqhd/oB7KPt+u1pXvt/PcgSa/zd4cB2Y5w5usAYyaOyp3nTW5wNbP
	 D3z60chlJfH1xaj3QHzEnnXUUW2lfV2w9+t/XAi816L+E007Xyt2eSpMoiqiRL0R9n
	 uI3XSKyzQ7qSw==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Denzeel Oliva <wachiturroxd150@gmail.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260613-exynos990-peris-fix-v3-v3-0-2b230db78ae4@gmail.com>
References: <20260613-exynos990-peris-fix-v3-v3-0-2b230db78ae4@gmail.com>
Subject: Re: [PATCH v3 0/3] clk: samsung: exynos990: Fix PERIS gate clock
 parents and add TMU_SUB
Message-Id: <178392689997.24587.17631243111899566920.b4-ty@b4>
Date: Mon, 13 Jul 2026 09:14:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:s.nawrocki@samsung.com,m:cw00.choi@samsung.com,m:peter.griffin@linaro.org,m:alim.akhtar@samsung.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:wachiturroxd150@gmail.com,m:linux-samsung-soc@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[samsung.com,linaro.org,baylibre.com,kernel.org,redhat.com,gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-325217-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A3DD0747EA2


On Sat, 13 Jun 2026 07:36:15 -0500, Denzeel Oliva wrote:
> Fix several PERIS CMU clock parent mismatches and add the missing
> TMU_SUB_PCLK gate clock.  The dt-bindings patch adds the new clock
> ID.  The second patch adds the TMU_SUB_PCLK gate.  The third patch
> corrects eight gate clock parents and reorders the GIC mux parents.

Applied, thanks!

[1/3] dt-bindings: clock: exynos990: Add CLK_GOUT_PERIS_TMU_SUB_PCLK
      https://git.kernel.org/krzk/linux/c/d5083527908a994496519f5b9098b33460f365d6
[2/3] clk: samsung: exynos990: Add PERIS TMU_SUB_PCLK gate
      https://git.kernel.org/krzk/linux/c/b7d6221aa44fc523c3418ecd94c582eea6e6d53a
[3/3] clk: samsung: exynos990: Fix PERIS gate clock parents
      https://git.kernel.org/krzk/linux/c/a016e89781478e4b756fbf104945d037d0cdc809

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>


