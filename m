Return-Path: <devicetree+bounces-287816-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MC2yDpGv4GkRkwAAu9opvQ
	(envelope-from <devicetree+bounces-287816-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 11:44:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C2040C8E5
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 11:44:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 76235300C5A4
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 09:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49D7339BFEA;
	Thu, 16 Apr 2026 09:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="VNzF41fr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-244121.protonmail.ch (mail-244121.protonmail.ch [109.224.244.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A48C37C11C
	for <devicetree@vger.kernel.org>; Thu, 16 Apr 2026 09:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776332394; cv=none; b=CcHEP6R3MI+bJ/Vmdnh6HE+gSrdxJX6n52qYsjWkoS6CD4K8AN92f31b+CwHZ0GHy1tgcqH2/ZDYylj0oZFSJi4cQZJhA8G5z09As55B6zoHU0ZX7YcwYE8zeMMHAhe08vFzxSXBbLSo+bF+J4PQZv/mimxWREDBLYM0qIqLLCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776332394; c=relaxed/simple;
	bh=BD0cwyV0XW/t5ezHwMgClNSnK70nWFAxhYPo27dixqg=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=K3+5ojD5LxmrnWI4M84m2VDixhF+1OlwV3sqd6Mg525HEcfDmwH1aGGyDadY8mZPhnGTEYVjEqqND94tQuyh6KaCZlH/L4yng+YA2Wl8QlG3KauDC07l2nju3ecKZLffj15dXHZuRLy2YJ9iEDdEZ0J1+iW7DO2OWpMxy8Cq4Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=VNzF41fr; arc=none smtp.client-ip=109.224.244.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1776332390; x=1776591590;
	bh=ZcOCyUzaVXe/Qvp5i/tcqCJQynw29lc63i+zflJ5wik=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=VNzF41frvY5ionnJnHTAvBiAuHtDG6uBAQt6rU9YVrmBAb8byv8g6f9uiae7L5i1h
	 nvGpFY3WJfahEL6p9tmAkqcojB9ECXduN5lHbxVYeO24VaiqEHmfzsHSjcL8yFUOim
	 lZbuU7OIP2pNwCaTSv3o7GR51wavfLWYps/4IZiLlgXl2IZVdHAb6HeLxx++uA6xN6
	 LsLquGREOeM8MdO8e4z+HUba0VK2h8AJPmrSaNBLxpf3I61lqB68rB/jFVwaUj2+oC
	 v6OlbHC6cGjUgO+5k8nAarvMqgGMD+HkEP7D8m/LRCmNBZcvHr6bId3pLlMT91pCf4
	 jfsd9FA/nYSqQ==
Date: Thu, 16 Apr 2026 09:39:46 +0000
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
From: Alexander Koskovich <akoskovich@pm.me>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, Alexander Koskovich <akoskovich@pm.me>
Subject: [PATCH v2 0/3] Describe IMEM on Eliza
Message-ID: <20260416-eliza-imem-v2-0-fb7a71123451@pm.me>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: 90e17c226ca56f779132f36ce5286861c6b415ed
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-287816-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[pm.me:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akoskovich@pm.me,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,pm.me:dkim,pm.me:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 87C2040C8E5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a compatible and describe the IMEM for the Eliza SoC.

Also sort nodes by unit address.

Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
---
Changes in v2:
- Fix sorting of nodes in eliza.dtsi
- Link to v1: https://lore.kernel.org/r/20260415-eliza-imem-v1-0-4a90e86837=
99@pm.me

---
Alexander Koskovich (3):
      arm64: dts: qcom: eliza: Sort nodes by unit address
      dt-bindings: sram: Document qcom,eliza-imem
      arm64: dts: qcom: eliza: Add IMEM node

 Documentation/devicetree/bindings/sram/sram.yaml |  1 +
 arch/arm64/boot/dts/qcom/eliza.dtsi              | 94 ++++++++++++++------=
----
 2 files changed, 58 insertions(+), 37 deletions(-)
---
base-commit: 936c21068d7ade00325e40d82bfd2f3f29d9f659
change-id: 20260415-eliza-imem-e791f44abf1b

Best regards,
--=20
Alexander Koskovich <akoskovich@pm.me>



