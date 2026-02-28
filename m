Return-Path: <devicetree+bounces-269619-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGxYGNtUo2nW/AQAu9opvQ
	(envelope-from <devicetree+bounces-269619-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 21:49:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2311C88F4
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 21:49:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4D96230764B5
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 20:47:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 418393002D1;
	Sat, 28 Feb 2026 20:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="Vb0z5Y6K"
X-Original-To: devicetree@vger.kernel.org
Received: from out-182.mta0.migadu.com (out-182.mta0.migadu.com [91.218.175.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2DCD175A95
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 20:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772311665; cv=none; b=OOtr8wdwEVzf67A4+GFUtxZ7tTqk1TLrMNDH9QFQIRTrouxtWMHduJ2sCm2Gwlqoi/3cAGnxWOWRNvQDEESVoxJIUmec1PgWMYFhXaG1ohBXGK3qVd4WuIHu+5JmhD28TGDKlHCjlXU+sxnRwQ22uoJ9E5lyY5A1uiPxIRXNlVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772311665; c=relaxed/simple;
	bh=6XdLF9JTJRWCKGHMMMV7qKvxDe5yc3EsPTrCvvgF8cc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=X5M3vAb6JsA3zygOQ3+fQ/SyzDJQHcSKrTGMlRVeLzYhA5+UkNx0sJby0MY09xvJHK/cS+PI9ztj90kM9BHGnv97PcGfKI2RY+I6pAHp71oT8DoiCG2IE/9uaZwXwFpXIKmHKTefvDzVHRWlzmX+BBj17ifteHzhdo7ZyS3byHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=Vb0z5Y6K; arc=none smtp.client-ip=91.218.175.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1772311662;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0i1+OkKQaK2cithGqyj/94PMbbQBAN7UMU6yAQl/SDo=;
	b=Vb0z5Y6KHkj0Jq4zsLTbkk45Dvg6la7YRbRCByaMs9P91C+fnnNRxC6neaW7pMZxDbbrN2
	sCtOD4OMd/7djQkwtPWEU2HZwIksH54xc9nh9vH9cPsWWNb4SVDUT+QRQsV/9NEJYvPPKW
	FXwjhgH/j9yHvyPpWrg4a+S2l5U8F8WWG9WoMtEumr9JIQc8RAAoGY83/iTRbl0aqZ5sDJ
	G/HLiK802JbJHAxgRGEcfniWSiZbyutNyWMxBzp+ubAg1ttAGAz7wxCFlvaEcQP5aN0VDz
	O4qa5Bc5hIdqyB7ESq1FTSVVYNin4XqejzmsSZHYlUl4+io2FOhMPAVSKxe++w==
From: Val Packett <val@packett.cool>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Adam Skladowski <a39.skl@gmail.com>
Cc: Val Packett <val@packett.cool>,
	linux-arm-msm@vger.kernel.org,
	phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v2 5/6] arm64: dts: qcom: sm6115: Add missing MDSS core reset
Date: Sat, 28 Feb 2026 17:41:31 -0300
Message-ID: <20260228204638.11705-6-val@packett.cool>
In-Reply-To: <20260228204638.11705-1-val@packett.cool>
References: <20260228204638.11705-1-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[packett.cool,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[packett.cool:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269619-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[val@packett.cool,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[packett.cool:+];
	NEURAL_HAM(-0.00)[-0.945];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,packett.cool:mid,packett.cool:dkim,packett.cool:email,qualcomm.com:email,5e00000:email]
X-Rspamd-Queue-Id: EE2311C88F4
X-Rspamd-Action: no action

To make sure the display subsystem starts in a predictable state, we
need to reset it. Otherwise, unpredictable issues can happen, e.g.
on the motorola-guamp smartphone DSI would not transmit anything.

Wire up the reset to fix.

Fixes: 705e50427d81 ("arm64: dts: qcom: sm6115: Add mdss/dpu node")
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Val Packett <val@packett.cool>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index e9336adbc391..3a9a1ad8d581 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -1864,6 +1864,8 @@ mdss: display-subsystem@5e00000 {
 				 <&gcc GCC_DISP_HF_AXI_CLK>,
 				 <&dispcc DISP_CC_MDSS_MDP_CLK>;
 
+			resets = <&dispcc DISP_CC_MDSS_CORE_BCR>;
+
 			interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-controller;
 			#interrupt-cells = <1>;
-- 
2.52.0


