Return-Path: <devicetree+bounces-279488-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCU+AVr0wWmmYQQAu9opvQ
	(envelope-from <devicetree+bounces-279488-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 03:18:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEF1301102
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 03:18:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D81F310F6E4
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 02:08:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64917388E42;
	Tue, 24 Mar 2026 02:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="fgIRRc4b"
X-Original-To: devicetree@vger.kernel.org
Received: from out-178.mta1.migadu.com (out-178.mta1.migadu.com [95.215.58.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4AA1388364
	for <devicetree@vger.kernel.org>; Tue, 24 Mar 2026 02:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774318089; cv=none; b=YFtMbTlvCtx2uxLYaUdqOq8ME7CkSK1ERNJtQOQjk9IAYCJ7GokL4kGVvWoowZAzmBVrmHdsWru5Idbk4Tf2Hna1i7OtsQx3H+X0OcbRaJS5ZsRiYRY+GrQfb9yYTeB8J7+JRQVAlT6wT8tYKSwHaBP3Mq6eazNnnlx3s7i1MnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774318089; c=relaxed/simple;
	bh=6xoFlZVlY5etAeSqVv+qkdD4WZk+2DUAtOHNeZLvqiM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vd55ucDpGkwxY31rFQh25u9BIhYGociU1IFFA+Nzj1Px79XOF7bvhljpHi9b3UYcmyS1+5ov466iFWLDPbEFE2Elf9C0E63+akaCxStUueyKc4/0x+RO1eYrxZzqSurEGgt12F5PXkx+ItMi1qbaS/v9/5avrXLS2wlqpAFtREk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=fgIRRc4b; arc=none smtp.client-ip=95.215.58.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1774318085;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sjAu9F2Ij3hY1reYG62HkcTE8+Tm43f71szHq2LLmRI=;
	b=fgIRRc4b2N/6Z/DXSacfExKwGq31ubBmkw+OiLhmwiIiiNkl7pVkZaT+Az++yQSR5KPGcE
	NekOb8OH4bDv+AZbkR++Aj8Gu5bE3tF5ahY7+XF4JsGdYA9vR2e7eIytFSRKG+1WocYDjv
	RwER11ZPMZfWdoZ2rp8L78Tl0wf1G4E5vQft+qAfh8c2JBV4GlXAskls2fFj4iA77Y5LlX
	Gy5CcfBdcScegiiR0M+YjJ6UWZgJoPF/WID4sN7Nw5I6TXr5ehc+GMKWLhvluYV03Y8DCh
	43ibcRf/wRrJFyW0u50s0KijGiKbImb58+VhY5oFrUcpn4JwTT8ehEJ4STt52g==
From: Paul Sajna <sajattack@postmarketos.org>
Date: Mon, 23 Mar 2026 19:06:37 -0700
Subject: [PATCH v6 07/15] arm64: dts: qcom: sdm845-lg-judyln: Add lab/ibb
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260323-judyln-dts-v6-7-29d70ca1651c@postmarketos.org>
References: <20260323-judyln-dts-v6-0-29d70ca1651c@postmarketos.org>
In-Reply-To: <20260323-judyln-dts-v6-0-29d70ca1651c@postmarketos.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, Amir Dahan <system64fumo@tuta.io>, 
 Christopher Brown <crispybrown@gmail.com>, 
 Paul Sajna <sajattack@postmarketos.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774318055; l=1093;
 i=sajattack@postmarketos.org; s=20250422; h=from:subject:message-id;
 bh=6xoFlZVlY5etAeSqVv+qkdD4WZk+2DUAtOHNeZLvqiM=;
 b=qQjCWciNSTceSumVkBBrDX+ycmMH3SaOYhrgWYvlyQc4ZfBvB+UFyO8z7q87ZIsdIICyCxOxw
 PS91vX+ZjdcBIk3H+rqNUwOiIcxb9CxPE7MgjFUUsHS8cSzIzppEfrk
X-Developer-Key: i=sajattack@postmarketos.org; a=ed25519;
 pk=TwacvEOiRJ2P2oAdEqIDrtQTL18QS4FfcHfP/zNsxkQ=
X-Migadu-Flow: FLOW_OUT
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[postmarketos.org,quarantine];
	R_DKIM_ALLOW(-0.20)[postmarketos.org:s=key1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279488-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,tuta.io,gmail.com,postmarketos.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[postmarketos.org:dkim,postmarketos.org:email,postmarketos.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5AEF1301102
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

These regulators are required for the LCD

Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
---
 arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
index 55bfddab3afd..bbfa709048f7 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
@@ -67,6 +67,23 @@ &gpu_zap_shader {
 	firmware-name = "qcom/sdm845/judyln/a630_zap.mbn";
 };
 
+&ibb {
+	regulator-min-microvolt = <5500000>;
+	regulator-max-microvolt = <5500000>;
+	regulator-over-current-protection;
+	regulator-pull-down;
+	regulator-soft-start;
+	qcom,discharge-resistor-kohms = <300>;
+};
+
+&lab {
+	regulator-min-microvolt = <5500000>;
+	regulator-max-microvolt = <5500000>;
+	regulator-over-current-protection;
+	regulator-pull-down;
+	regulator-soft-start;
+};
+
 &mss_pil {
 	firmware-name = "qcom/sdm845/judyln/mba.mbn", "qcom/sdm845/judyln/modem.mbn";
 };

-- 
2.53.0


