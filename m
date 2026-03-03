Return-Path: <devicetree+bounces-270276-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ePsEHntapmkSOgAAu9opvQ
	(envelope-from <devicetree+bounces-270276-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 04:50:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BFD1E8913
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 04:50:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5CB583060AEE
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 03:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3275437DE83;
	Tue,  3 Mar 2026 03:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="cC17qp3f"
X-Original-To: devicetree@vger.kernel.org
Received: from out-183.mta0.migadu.com (out-183.mta0.migadu.com [91.218.175.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97E0D37DE8B
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 03:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772509764; cv=none; b=MoQ7HXervNvrbMBACXeQoLh6zpUeFRd3Ojp0LGuDDCoc6kduOpfI3hpT1BaubZkmR4q5P+vPSHAbXURTwK4Qg8/BazCTMgoDQe2QLqAqw++jyMDYMzk2fGbiM/B1Y/JN/ONVSpekJVAMksALjpdhcsTxHtmTpaAzpy5OKm5LSsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772509764; c=relaxed/simple;
	bh=JmHCvqb6T7KxzxojkMyUlASSjnUKPQs/bEo9bALbp0M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TSjvcX+B9Hsg4AzCXFzD/N8VxgnKO77NL0UKX5nC0tZ0FQyOwuJMsrdsaxiSmp8X6b+rb0tJs8He8CISyZC7/R3QtA7nc3lyxGj0Ad1PuYEdwJK1PCYlFVH4eT3KiM5kDM5SqH2BV5qj5fIJPPg5/scXULW+GIQsOpn6d9mbVC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=cC17qp3f; arc=none smtp.client-ip=91.218.175.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1772509750;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ARS/m6Y++fp9w2H2RzhShEg7exMajx+v9LuZw+S1VIY=;
	b=cC17qp3fpTWhJUhW92xN43LSO3zk3nEY9W2yFjTSq1cu98aAE5RUZepk3a3zu6+ZWdBX3q
	S/kLdVMYpZJE1V/ehfuETyVWqKEYk1Bz8keb/WIeYS1Aa7Fy0wsfCuTr8GrVBoNOIyHZAb
	pUhgYmvpdwMbxcKnIL9Upl9HOkbrYhFLx51UJNZfTATM4keuxl7Qu7076vHogwBopbRE3g
	XK7NelKhk8IxI1rEuxNFTUdWb1awKz7djeZWlxwz51UCWt0wetFhlKkoybkjDSQHcHJofr
	X4RtgRkfMOsyN/YJ48mKwPle4YGxgKuYsyuzZjXpR2d6Xf58iqOuXlTH3M2gCQ==
From: Val Packett <val@packett.cool>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Adam Skladowski <a39.skl@gmail.com>
Cc: Val Packett <val@packett.cool>,
	linux-arm-msm@vger.kernel.org,
	phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 0/6] SM6115/SM6125 MDSS core reset
Date: Tue,  3 Mar 2026 00:41:19 -0300
Message-ID: <20260303034847.13870-1-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Queue-Id: D8BFD1E8913
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[packett.cool,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[packett.cool:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270276-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[val@packett.cool,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[packett.cool:+];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,packett.cool:dkim,packett.cool:mid]
X-Rspamd-Action: no action

v3: Collect A-b, remove Fixes in dt-bindings and clk as requested
v2: https://lore.kernel.org/all/20260228204638.11705-1-val@packett.cool/
v1: https://lore.kernel.org/all/20260216233600.13098-2-val@packett.cool/

~val

Val Packett (6):
  dt-bindings: clock: qcom,sm6115-dispcc: Define MDSS resets
  dt-bindings: clock: qcom,dispcc-sm6125: Define MDSS resets
  clk: qcom: dispcc-sm6115: Add missing MDSS resets
  clk: qcom: dispcc-sm6125: Add missing MDSS resets
  arm64: dts: qcom: sm6115: Add missing MDSS core reset
  arm64: dts: qcom: sm6125: Add missing MDSS core reset

 arch/arm64/boot/dts/qcom/sm6115.dtsi           | 2 ++
 arch/arm64/boot/dts/qcom/sm6125.dtsi           | 3 +++
 drivers/clk/qcom/dispcc-sm6115.c               | 7 +++++++
 drivers/clk/qcom/dispcc-sm6125.c               | 7 +++++++
 include/dt-bindings/clock/qcom,dispcc-sm6125.h | 6 +++++-
 include/dt-bindings/clock/qcom,sm6115-dispcc.h | 7 +++++--
 6 files changed, 29 insertions(+), 3 deletions(-)

-- 
2.52.0


