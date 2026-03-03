Return-Path: <devicetree+bounces-270279-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +G4QM/hapmkSOgAAu9opvQ
	(envelope-from <devicetree+bounces-270279-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 04:52:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 384B11E8969
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 04:52:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 528D63083DEF
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 03:49:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB69A37DE89;
	Tue,  3 Mar 2026 03:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="iwlq95Vi"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com [91.218.175.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36591374E53
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 03:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772509788; cv=none; b=YOYtea7yCUsHFJqZZCVcLAY2zdZlL5cZlQiYuvbsSsRqpsPPU2PhqVTAiap4KIEybpVHtyr5uejcHRMWEkA+8we1f5DnBQOP37EVSx3JL5PwzopsxqLz2kor1tSzsjcxifyh9C6rTxip9x43vYTA3EtQLOG5/vD+WDF99RBitNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772509788; c=relaxed/simple;
	bh=vN79aVq15KJmINuT84+yvI/rNP53bO1GbNxLL6+n1X4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aUSvlT8D9naqqkg+UAPAQQDu+3qjlkJCCHEBZTxUDnZgb0uOK+MYG0SdXweBwSZk8oq0F+RGUgW7j9ATvS0qVkrqOExYSx4hksPja1BWYIhPSCyik6nSii4YLC93AoLtMT/GSU8V8Sgx9XvQ4Vx71EEzV44L9YKUsI2PY7yNxFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=iwlq95Vi; arc=none smtp.client-ip=91.218.175.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1772509785;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RG3ZEWSeGQFYP6X+wKEUzoO+lwsoqVPpKdpIj2KNtZg=;
	b=iwlq95Viltjvmj7iTI8ddeSwNwPa5T3QmnsjyOA6iZqWSNooRBUI9g1T13+Tv2ZiNNtfdv
	9vn0XRPWN+2f5H/0BDwrmkeCyRDihW+VmNTEV+v1h4NuTYt4LiNKtq4hpwp6b1bj7mVsny
	ERlTbtbNftenIXUKCsgGVnJEV1Tlg7AMRRlGsEPefT9bd7qG+BS0+fQCRPQTh91gxm9xhM
	4HxDp+QZ1eQ1i0f0yK+dIYh1cI9GJqeC2H8lW28sNb3ham+3ibDDNq5hHrvVTFZdvDyeY8
	PF2/jP1P2vUzt9z43ijicnYCrjEAC8IFC4kX4XTJODukNl2ubdFjwBrtlHKp1w==
From: Val Packett <val@packett.cool>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Adam Skladowski <a39.skl@gmail.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Dmitry Baryshkov <lumag@kernel.org>
Cc: Val Packett <val@packett.cool>,
	linux-arm-msm@vger.kernel.org,
	phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Yedaya Katsman <yedaya.ka@gmail.com>
Subject: [PATCH v3 6/6] arm64: dts: qcom: sm6125: Add missing MDSS core reset
Date: Tue,  3 Mar 2026 00:41:25 -0300
Message-ID: <20260303034847.13870-7-val@packett.cool>
In-Reply-To: <20260303034847.13870-1-val@packett.cool>
References: <20260303034847.13870-1-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Queue-Id: 384B11E8969
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[packett.cool,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[packett.cool:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270279-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,somainline.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[packett.cool,vger.kernel.org,lists.sr.ht,oss.qualcomm.com,gmail.com];
	DKIM_TRACE(0.00)[packett.cool:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[val@packett.cool,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:dkim,packett.cool:email,packett.cool:mid,5e00000:email,5f00000:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Action: no action

To make sure the display subsystem starts in a predictable state, we
need to reset it. Otherwise, unpredictable issues can happen, e.g.
on the xiaomi-laurel-sprout smartphone DSI would not work on boot.

Wire up the reset to fix.

Fixes: 0865d23a0226 ("arm64: dts: qcom: sm6125: Add display hardware nodes")
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Tested-by: Yedaya Katsman <yedaya.ka@gmail.com>
Signed-off-by: Val Packett <val@packett.cool>
---
 arch/arm64/boot/dts/qcom/sm6125.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
index 80c42dff5399..a22374e5a17f 100644
--- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
@@ -1238,6 +1238,8 @@ mdss: display-subsystem@5e00000 {
 				      "ahb",
 				      "core";
 
+			resets = <&dispcc DISP_CC_MDSS_CORE_BCR>;
+
 			power-domains = <&dispcc MDSS_GDSC>;
 
 			iommus = <&apps_smmu 0x400 0x0>;
@@ -1437,6 +1439,7 @@ dispcc: clock-controller@5f00000 {
 			power-domains = <&rpmpd RPMPD_VDDCX>;
 
 			#clock-cells = <1>;
+			#reset-cells = <1>;
 			#power-domain-cells = <1>;
 		};
 
-- 
2.52.0


