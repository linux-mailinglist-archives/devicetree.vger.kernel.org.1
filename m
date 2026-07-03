Return-Path: <devicetree+bounces-320023-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +iKoE1CWR2q3bgAAu9opvQ
	(envelope-from <devicetree+bounces-320023-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 13:00:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7549C7018BB
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 13:00:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=psihoexpert.ro header.s=dynu header.b=T4uzixyY;
	dmarc=fail reason="SPF not aligned (strict)" header.from=psihoexpert.ro (policy=none);
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320023-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320023-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 308C93069C86
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 10:49:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E1CF3BCD20;
	Fri,  3 Jul 2026 10:48:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.wiredblade.com (mx1.wiredblade.com [72.51.58.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD14A3C1082
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 10:48:26 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783075708; cv=fail; b=VQW0Ot0K83NvynZA2VfR5bWhhJz2J4IsRQ3HYIbRnjoKlLXY51npFSC4dwH4QNyQdDwsKmjIJIzrEoqK2lORHfRq/s7+YiZFHRh0vX0iz4qkgMQm4foDkKSGYyUFC3VKd9X8uczLkr1zwOYHgH9JicwteT30D2vql9XM/ZZYauA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783075708; c=relaxed/simple;
	bh=pAeTYzgwrIma4T0EmfQBPjqpQmrfwT/lwP3uZKi7OOM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pJA5Q16E14AOWs6h6cSjBI+GD1qKoTLeasa9VInfM+Mg3vylC3eLRM9WOfq66pKeBOh+jzMc+eDalSlrD1vncoO3msMYhvUlO+Ng/NrV8z+/aIRcmFHVfMGwU/HfqsP7OVBuEr8IRov1lWcW70BJhfhe64HGLcjQBP1dwfCPb+A=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=psihoexpert.ro; spf=pass smtp.mailfrom=psihoexpert.ro; dkim=fail (2048-bit key) header.d=psihoexpert.ro header.i=@psihoexpert.ro header.b=T4uzixyY reason="signature verification failed"; arc=fail smtp.client-ip=72.51.58.35
DKIM-Signature: v=1; a=rsa-sha256; d=psihoexpert.ro; s=dynu;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding;
	bh=JCV7TNmivDrKZTMMPq5ptyzKo/jd7S9u7SuQSkaTGPw=;
	b=T4uzixyYfCnse4p2tvAV6lMAiSXmHIHSRpFuWYDiYoLniKYKEarVqVSwDKqeT0AsuZO5IByVyCECcFoPuESatWe9erfIiPe28fXy7XjZegzHAdqgJ04AQVQBtg8mDFz4B8zxJP7QT4tGq2UVY3qDbwRmNOmkH9lOD+QO+Sl8Njdc6hvJsWLz90ISoT64kZ3JJJ1xScveCUeNcMdJcHS4LF0dZK1j589F/cjNaSz09xqUVfG9GfvTeX+XVY
	Z/kUpGJ9XlAE5mEwaFKs9R5/gvr9ZPF7qKBDuxXAR9l7Ur9o+PhRtrB1W5HudByZKY/aR4XT44VCCp7Dur6XHMqot4JA==
ARC-Seal: i=1; a=rsa-sha256; cv=none;
	d=dynu.com; s=mail;
	b=jxqRA+VDt4OTk0p6mSf3Cf+Lj2yA8HJ+T4t+NbirS9OKEFgshoG8aDCJ9WZVrFJY/G6fSWvoS3F7lpnmDV/whDOKgHwsYBJdWQXUMJpJ2YCOMwIoRBE8c1rUPezWmXvhoSvUg5q0i7cMcprnkCK8QmtgM7/bVFKguUmn2guoZZiq26GaG+Rhx3xjcdo+NpYBRt/Yr/4BO+2t6JyuMnbR5oTG7dhHcrBnSze0YkCBY/5nKN6hGn1AL1/fua
	KfVgbtV2NkH5qEm9fpsrETuklEmWvEWvunpHPAhaFRcI7HbZlubsUWgU4Rl4IUc3t4/tMwcAToYwrwVko2bsuzMHEXMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dynu.com; s=mail;
	h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding;
	bh=JCV7TNmivDrKZTMMPq5ptyzKo/jd7S9u7SuQSkaTGPw=;
	b=zCCJW9uEB0eyIvYt5zFgISFo/snqX7bbCx3NUwi/PBqGld/mQj3mrej+hPPFCiU0iihab5JtqD1rCBn/wJr0XCoBIWzr9LwiFkVipm4pm1M+wR30E/c7iAaAIg3zC0EB5pjyAXKMYC8PaipVP6GG1sOXp1c7CTtpa4rTVaayWHFspUZ+ouaRvmuQ0BCJ7b5OwLc5R+ZH5HEDHeSrLoWNfy/xZ66OumPhhxca+eCt3ltHtgn8E4FNYhoVzR
	TWvJP9vWSZpqSFakNYT/EB1LDcyv3CG71Dz+Qa287rbhfAL9vfkVymczBn9GS0LmtpdiybwzgzFQTfZJiM/V8+2Z5WRQ==
ARC-Authentication-Results: i=1; mx.dynu.com;
	dkim=none;
	dmarc=fail
Received: from TkB (188-24-192-94.rdsnet.ro [188.24.192.94])
	by mx1.wiredblade.com with ESMTPSA
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256)
	; Fri, 3 Jul 2026 08:47:14 +0000
X-Original-Rcpt-To: m95d+git@psihoexpert.ro
From: Marius Dinu <m95d+git@psihoexpert.ro>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marius Dinu <m95d+git@psihoexpert.ro>
Subject: [PATCH] arm: dts: rk3288-tinker: add eeprom node
Date: Fri,  3 Jul 2026 11:44:53 +0300
Message-ID: <20260703084645.7001-1-m95d+git@psihoexpert.ro>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[psihoexpert.ro:s=dynu];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[psihoexpert.ro : SPF not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320023-lists,devicetree=lfdr.de,git];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[m95d@psihoexpert.ro,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:m95d+git@psihoexpert.ro,m:krzk@kernel.org,m:conor@kernel.org,m:m95d@psihoexpert.ro,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[psihoexpert.ro:-];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m95d@psihoexpert.ro,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,git];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7549C7018BB

This board contains an EEPROM that holds the CPU serial number and ethernet
MAC. It is used by U-boot when configured to use upstream device tree from
Linux kernel.

Signed-off-by: Marius Dinu <m95d+git@psihoexpert.ro>
---
 arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi b/arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi
index 8e27a20f2845..7e16022c7d9e 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi
@@ -344,6 +344,11 @@ regulator-state-mem {
 
 &i2c2 {
 	status = "okay";
+
+	eeprom@50 {
+		compatible = "atmel,24c08";
+		reg = <0x50>;
+	};
 };
 
 &i2c5 {
-- 
2.53.0


