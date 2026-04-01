Return-Path: <devicetree+bounces-283532-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEPIGrQdzWnOaAYAu9opvQ
	(envelope-from <devicetree+bounces-283532-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 15:29:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A5B37B3D7
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 15:29:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 91F7B3093F9D
	for <lists+devicetree@lfdr.de>; Wed,  1 Apr 2026 13:16:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1AEA39FCB1;
	Wed,  1 Apr 2026 13:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b="Q9CwM/oX"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta1.migadu.com (out-174.mta1.migadu.com [95.215.58.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A722248AF
	for <devicetree@vger.kernel.org>; Wed,  1 Apr 2026 13:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775049390; cv=none; b=eNLHTA2TajncJuenlcUNHnkdG1Qe86UdmVl26qmtIqKInKoGaEhuKypRcZcp1V/bmWlZooa8jYHDknjtaNtwouysbQUJV/QTjgwwrxARnYMHL58aJGgM2fhJplTBf27cD2XvE3be+d75cAJgwoSmYInX6KE1h5F5z73U53w/rto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775049390; c=relaxed/simple;
	bh=LoHydvQkEtU2MKwAGqk1UlhONrINhmFCEE7KdZ5sTRo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FzDFXrGQ5jULykqEZ78a/ItYG1kQOpcBIpj35N7ACttsh6rLUMVsnzP9r4DSkEatr5sf+HVmKFu1Z+qBVnNAv1Fmr2B75w5Kl9RCEwWSfPtUaqH6JTOYsrwLinaL9eiNj1ggXw2lNwFHyGgR3QC71hrpYrE6FUCC25x7uD0Rp6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=Q9CwM/oX; arc=none smtp.client-ip=95.215.58.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow-tech.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1775049383;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=hA1ON1KrKFmuynktbmS/7CrrbUp1WQrtm6ccdkoVF2w=;
	b=Q9CwM/oXd6o2d1UrsrE7d/ftoEoJyQ4aMNUcnz7xLhhBfmtcDo2DN/htknOV8YYkKqhPpf
	Q3o4cAzlep6DIyDGiAq/ccNM8wcr75OpxVzsOYNOC4Z3q33eB1nqngcl2rROIJlEkXn1gs
	ZCXBNL5ByXU5FvhbQ8/8iXmiJhSDJxvTFCxTXOgCtSg06Z6t6OGMbPdP8Ovzov4sJLc73b
	82luSB3MmQK5mJQJD0ObpGfWASDAYM3/aHFBg0I09K3tsNMJ0K33Ez8v5Os2RypNDBMj0G
	x0KScUtfaBYy6Liio8bs14Ie5Z9prC7aFxXn7iLXA1NNM5O5Qm51Dbh2i1fQQg==
From: Diederik de Haas <diederik@cknow-tech.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Diederik de Haas <diederik@cknow-tech.com>,
	Arnd Bergmann <arnd@arndb.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Improve gmac0 DT config for NanoPi R5S
Date: Wed,  1 Apr 2026 15:11:37 +0200
Message-ID: <20260401131551.734456-1-diederik@cknow-tech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[cknow-tech.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[cknow-tech.com:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-283532-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[cknow-tech.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,cknow-tech.com:dkim,cknow-tech.com:mid]
X-Rspamd-Queue-Id: 88A5B37B3D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

These 2 patches contain a fix for an incorrect pinctlr definition and
replaces several deprecated snps,reset* properties with their
non-deprecated replacements.

Diederik de Haas (2):
  arm64: dts: rockchip: Fix gmac0 reset pin for NanoPi R5S
  arm64: dts: rockchip: Replace deprecated snps,* props for NanoPi R5S

 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

-- 
2.53.0


