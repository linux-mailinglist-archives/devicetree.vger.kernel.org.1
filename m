Return-Path: <devicetree+bounces-283763-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CbKFv8SzmmnkgYAu9opvQ
	(envelope-from <devicetree+bounces-283763-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 08:55:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D895384C8D
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 08:55:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5CEC73045091
	for <lists+devicetree@lfdr.de>; Thu,  2 Apr 2026 06:42:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3909E331A53;
	Thu,  2 Apr 2026 06:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="j8kUwBqW"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta0.migadu.com (out-174.mta0.migadu.com [91.218.175.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F065F273D6D
	for <devicetree@vger.kernel.org>; Thu,  2 Apr 2026 06:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775112123; cv=none; b=MlPfx0xLb0ALC19B8VMf2LPehIzNhA+IdJdz7eEE5qZW11xWqocxdXX0RQ7d+oSYn0xxq439bI+9s0QDsj+sUGJra0jNsR+h82OQRGDtJijVsmTMfNZauEgWz2ikcFPhO98QxB3ClZZ7gx0VcFDhQLL4pqqmtuluezf1MOl90r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775112123; c=relaxed/simple;
	bh=62aRNidf81NIQSpQlivJzpjBxKi4+6TnrkQkwf9cnQY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TSn/w2VbEfEUaIYlanJYgFiRF2qZ7handWDQhYqVkxHVftI76w5iwhxd3wPjNEbYrFKU+opq1+B76OnX/XDIN79VxYflzr/Lzfjg9bQ4TIwucT3BxJcVNnNuhQw8m29g5cHMDpnVh6HPOASCtz3/hJjhXXSjHxD5Ki8LDNjtcKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=j8kUwBqW; arc=none smtp.client-ip=91.218.175.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1775112120;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8ncEp6L8HOBIzKU2YR0UCVFBGSGus/FpKTSPP46t8Nw=;
	b=j8kUwBqWjyyvoPf3HdFVmgmc+jc6O0r/xw16fH9LdVad4KbMnwNvtrEUzoM7xEOU51gD5+
	BZ5qGcuAGZHBwIpLIXweCwV97QkoGCho5lc7zv1GTMswRfNt3IHjjQuVaTvIV4XLoo6tCA
	tblpe6yrfWkz269duHeLk9ykvLdH2im/HrCBhSnPYXRiFUUQ+dVwmwi469g37TwmQpPYG6
	J4qSs2IttMVA0oOby7y72FX6ouxlFoYXvcLDAx8vXc8KFefZ/IblxdfrKn6cRNBWZ9rYxj
	7DrYu20xgpLn/gnom5L5uJreW+s5XMv1Zr2ngOCRO3o62GeyVEWnrJ9qTAErSQ==
From: Paul Sajna <sajattack@postmarketos.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Heidelberg <david@ixit.cz>
Cc: Paul Sajna <sajattack@postmarketos.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Amir Dahan <system64fumo@tuta.io>,
	Christopher Brown <crispybrown@gmail.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v8 13/15] arm64: dts: qcom: sdm845-lg-common: Add camera flash
Date: Wed,  1 Apr 2026 23:41:44 -0700
Message-ID: <20260401-judyln-dts-v8-13-cf13065e52ab@postmarketos.org>
In-Reply-To: <20260401-judyln-dts-v8-0-cf13065e52ab@postmarketos.org>
References: <20260401-judyln-dts-v8-0-cf13065e52ab@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775112052; l=955; i=sajattack@postmarketos.org; s=20250422; h=from:subject:message-id; bh=62aRNidf81NIQSpQlivJzpjBxKi4+6TnrkQkwf9cnQY=; b=IWVdy3tYT9Sh1wScuYq7JzXDlCGbtT6weTPDLZaZLntsuEi+3Mv0DpGF51fkwGkOPA3D0DQtY DHCH+JHgMIiANUKSmf6gzhMDbHXxfH3IEOXhdr4TpxuYiw1Ea8uLZX4
X-Developer-Key: i=sajattack@postmarketos.org; a=ed25519; pk=TwacvEOiRJ2P2oAdEqIDrtQTL18QS4FfcHfP/zNsxkQ=
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[postmarketos.org,quarantine];
	R_DKIM_ALLOW(-0.20)[postmarketos.org:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-283763-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[postmarketos.org,vger.kernel.org,lists.sr.ht,tuta.io,gmail.com,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sajattack@postmarketos.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[postmarketos.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,postmarketos.org:dkim,postmarketos.org:email,postmarketos.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5D895384C8D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Camera doesn't work yet (imx351), but we can use the flash as a flashlight.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
---
 arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
index 71d070619ad7..9d82961d527e 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
@@ -496,6 +496,19 @@ &pm8998_resin {
 	status = "okay";
 };
 
+&pmi8998_flash {
+	status = "okay";
+
+	led-0 {
+		function = LED_FUNCTION_FLASH;
+		color = <LED_COLOR_ID_WHITE>;
+		led-sources = <1>, <2>;
+		led-max-microamp = <100000>;
+		flash-max-microamp = <500000>;
+		flash-max-timeout-us = <500000>;
+	};
+};
+
 &pmi8998_lpg {
 	status = "okay";
 

-- 
2.53.0


