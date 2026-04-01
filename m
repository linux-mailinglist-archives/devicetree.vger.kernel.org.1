Return-Path: <devicetree+bounces-283229-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gI1OFwOCzGkFTgYAu9opvQ
	(envelope-from <devicetree+bounces-283229-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 04:25:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 63287373D20
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 04:25:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2977C302967D
	for <lists+devicetree@lfdr.de>; Wed,  1 Apr 2026 02:25:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8DAA3164DF;
	Wed,  1 Apr 2026 02:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="doNOPUMJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-43101.protonmail.ch (mail-43101.protonmail.ch [185.70.43.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5027935949;
	Wed,  1 Apr 2026 02:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775010299; cv=none; b=VejJLE2O+WJ4Ah19hnXKcq5Ufgv9HB1nJJr8a2tGTRQrYax4PHbsO5ROtY6wM2/0mSng91P7m1tN+oNZZM+eH2/8piyD2MGNEbxORfkYrfuJRuVM3LAXaSPD+Qe/+V2/6/LlTl7KMGgVqLHgtoz/essLqD/o4+m80Fz/9QK09Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775010299; c=relaxed/simple;
	bh=8+CZDna/EogCFXdLCAXHvySSXUkYcZgmhELLBcGz0VM=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=Cex4R7hoEen1+mgN86s2Itf6HxnfYUvCClLO8K9UFRfmYvfgFHWjbyNSjf/FcRztiOnXKX7faY7wsxnp2PJ+0Aj+4yA5dH61BHSdwpdjuzZiSGF0tQ3c8WecWt/sc4toNSFVRKqpsa+feOk5qqZ7lSpGxT39jTYM+EvREeeV6Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=doNOPUMJ; arc=none smtp.client-ip=185.70.43.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1775010296; x=1775269496;
	bh=T/rwjPz9MmhkhnU4CYwXGOarqSHo5wH7OTIbypOF5qs=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=doNOPUMJw42XFfdTgnlZeT0m4araxyirREOwnn32gFHX7PDvRUfTQUIKwPqoeK6di
	 vZm9Z5cYoYgqDftAMMpYL1flq6g3am46msDw+SDpR8B+9XJ5Pg+wrS0BpYygI83deq
	 GQEZQTsGwmTlsTlsTmlTlwyYlRY/YZ+0c7aVewSWj+wRx6gxCj7gaWj7A5qXwR9oLx
	 g0v/C4MbBGBCGYmDCXNSzan45EzKDADfX45C8ztz7plRuPgl2nh9jthAV5FzNnZqtx
	 otS/KRsMHEFZ3kUdRKclQq6K2HST5cd8fYDDn/ocGMDGFqpbA7dI1JjIWdEgq4zYt+
	 wAMzp75St/wzA==
Date: Wed, 01 Apr 2026 02:24:51 +0000
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
From: Alexander Koskovich <akoskovich@pm.me>
Cc: Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Alexander Koskovich <akoskovich@pm.me>
Subject: [PATCH 0/2] arm64: dts: qcom: milos: Add QFPROM efuse support
Message-ID: <20260331-milos-qfprom-v1-0-36017cc642db@pm.me>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: 3f988b4749c439bd25ac61755fc6aa0666982e27
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-283229-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[pm.me:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akoskovich@pm.me,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:dkim,pm.me:email,pm.me:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 63287373D20
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add dt-bindings and dt-node for Milos QFPROM efuse. The GPU speed bin child
node nvmem cell contains details of clk frequencies supported by the GPU,
which can then read by the GPU driver to select the correct set of operatin=
g
performance points (OPPs) for the device in the future once all the possibl=
e
speedbins for Milos are known.

Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
---
Alexander Koskovich (2):
      dt-bindings: nvmem: qfprom: Add Milos compatible
      arm64: dts: qcom: milos: Add qfprom efuse node

 Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml |  1 +
 arch/arm64/boot/dts/qcom/milos.dtsi                      | 12 ++++++++++++
 2 files changed, 13 insertions(+)
---
base-commit: 7aaa8047eafd0bd628065b15757d9b48c5f9c07d
change-id: 20260331-milos-qfprom-1b00c2892171

Best regards,
--=20
Alexander Koskovich <akoskovich@pm.me>



