Return-Path: <devicetree+bounces-272659-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CoADlAcrmm2/gEAu9opvQ
	(envelope-from <devicetree+bounces-272659-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 02:03:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A11232FF3
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 02:03:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2CA8B300AD7C
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 01:02:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E2A522156B;
	Mon,  9 Mar 2026 01:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="RFAHP1zM"
X-Original-To: devicetree@vger.kernel.org
Received: from out-180.mta0.migadu.com (out-180.mta0.migadu.com [91.218.175.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093042264A9
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 01:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773018176; cv=none; b=Ads9lSTCUUxh4Th9XYYtc+VJwmDOJ43Pc9tGUAlVCtAEkbz+jBHaG6NpznXRfVPHC30btpFQDbnVLuzG4LittNF4jhVOaf1x6bYhb3jv6U+X30oH/I8Uotb80Wn8JLtTZ74BUh+RwZDPCEKx5/1K2YYv41hGJvFVxcMeRI0GaQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773018176; c=relaxed/simple;
	bh=R8i5LmeS7vywoaypHJDWa8+wWER2GrTCmgrv+06xBiA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Qmm98WljVe2Adw7SDEfW2aUmePSvJ72jnSv35D4ecJ4EkTsdH7xW+L8N3F+BOq9XAJTjb+aD5rroVuKWBhWwCuPWmVwxRZpSg23lnifMfC9BUHYbR8jw8W8FgRhdlkG7OQzSMLpZq0v2QNrjT0Nih0CADa+gLy6MdDWnhGHdpeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=RFAHP1zM; arc=none smtp.client-ip=91.218.175.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1773018172;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4l9TwGmwI62ShrR0LuMlEarvkAy091kq/V4gPz0BH3Y=;
	b=RFAHP1zMU/tdKR6z+UZyFcIOTAbaIF2iVy0EH00G7pmqGwwREGHA0l9iuyp/YO4yzQYeYF
	60o6AzbkFyMCdSBxOv9zayNWZLGSYIZTfaX/WRtKGu9hDBnjfe62Tna1JM1pyJv9W69dHO
	UxBcAodAmFOOEBdF7arqZmN1Xt6zNx13kzhO8OMWk+n6Gf4z3Myo37C93pIaLoQyV7vmb4
	vhE4+tHdlZ09tHEuoA74CMDclPV++UsmiEYi0aDLPTOwelgh2maKWx/8BO8We+mQJ31Jne
	sJKAmW55l4fvOoqZz8AM74GaCHx/j6t2PL3+zXwt0Od5y9Sb9E6BqdPpnLQu4A==
From: Val Packett <val@packett.cool>
To: Bjorn Andersson <andersson@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Val Packett <val@packett.cool>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Maximilian Luz <luzmaximilian@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/7] dt-bindings: clock: qcom,gcc-sc8180x: Add missing GDSCs
Date: Sun,  8 Mar 2026 22:00:23 -0300
Message-ID: <20260309010214.224621-2-val@packett.cool>
In-Reply-To: <20260309010214.224621-1-val@packett.cool>
References: <20260309010214.224621-1-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Queue-Id: 64A11232FF3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[packett.cool,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[packett.cool:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[packett.cool,kernel.org,gmail.com,vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-272659-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[val@packett.cool,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[packett.cool:+];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:dkim,packett.cool:email,packett.cool:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

There are 5 more GDSCs that we were ignoring and not putting to sleep,
which are listed in downstream DTS. Add them.

Signed-off-by: Val Packett <val@packett.cool>
---
 include/dt-bindings/clock/qcom,gcc-sc8180x.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/dt-bindings/clock/qcom,gcc-sc8180x.h b/include/dt-bindings/clock/qcom,gcc-sc8180x.h
index b9d8438a15ff..9ed7b794aacc 100644
--- a/include/dt-bindings/clock/qcom,gcc-sc8180x.h
+++ b/include/dt-bindings/clock/qcom,gcc-sc8180x.h
@@ -322,5 +322,10 @@
 #define USB30_MP_GDSC						8
 #define USB30_PRIM_GDSC						9
 #define USB30_SEC_GDSC						10
+#define HLOS1_VOTE_MMNOC_MMU_TBU_HF0_GDSC		11
+#define HLOS1_VOTE_MMNOC_MMU_TBU_HF1_GDSC		12
+#define HLOS1_VOTE_MMNOC_MMU_TBU_SF_GDSC		13
+#define HLOS1_VOTE_TURING_MMU_TBU0_GDSC			14
+#define HLOS1_VOTE_TURING_MMU_TBU1_GDSC			15
 
 #endif
-- 
2.52.0


