Return-Path: <devicetree+bounces-273166-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +EEbKMdjr2mHWwIAu9opvQ
	(envelope-from <devicetree+bounces-273166-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:20:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46298242F7D
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:20:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AD3AD30087C9
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 00:20:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 539F61EF09B;
	Tue, 10 Mar 2026 00:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L0enkBRS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228771B86C7
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 00:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773102020; cv=none; b=mGGL0TV0GKe2GebnHGMVHTokrfb5ZS9UpPGb+4m2RxZZRlOQW+OCZU3Mmd1O7hlEvsz95gtSeVUboimySIxAuP5as7xA6jkk1nnhPeDCduGoXDeOMfeNMEvKPrX09vE7EMtkSjWr+ufO0beTJ7EEISr1pe2lZByGpP00YKEb7MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773102020; c=relaxed/simple;
	bh=zT7VHqFCzDwH7dsnqHKBT6R20zasdavK49rOXk8BcyE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DZ5IyIBeZXYslVoqmAOw4P557GJD4aB33JYG3RPeS1qUrVHDML+/ep5+clugR1jLxr/FWADjhR9b5JOdH+sVWqCBi5yBVm6ysFx8wx8BE4O7hMixmEU6XxGPP/Wsu/OZRNeNmk7XTduA36b5QfWsbltXx59F4lHaLzkdV31hiCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L0enkBRS; arc=none smtp.client-ip=209.85.160.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-50919fc3a14so19467451cf.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 17:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773102018; x=1773706818; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yqMq09LrRUJ7Y1qu+vRwg7gsZM0+ELiCGik6jbn1EcI=;
        b=L0enkBRSntbBxvpcK3E5rFUtDs3tB6Xrq1rhI4zRfMGY/V+xRT/EvX4qbhUPLEQkaX
         lzX/aZZJl1YxAyCE/M2GL74Yqt46wbviJohIRk0GfMZbbrch0UR8pT1T1VrH5BbIBZTb
         /Rrj1sZENrzHFWoYOaPnkmmvwN8RvxZIzxu6aquQYg5+C22NIcdLYXrg/pzRaAKt9AEu
         hmpeqR9KZXWBWcqRxehkQYmKqCkFoXm6W2dqI/sfJRIQ3NZcj+rE4xC2YUKUGkAB0MVZ
         Sdx/x7hJW2ZLrBIhb2hrGSrbRfIVi4lFjkB5x6jKf+dUZOzCh4T8x18AOoLfHQAcbAej
         i2qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773102018; x=1773706818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yqMq09LrRUJ7Y1qu+vRwg7gsZM0+ELiCGik6jbn1EcI=;
        b=GWhbRGsd4dCjnIjqoZYIDl0fEM+BD6pO3sxf3RsgMEPp3HnLZoKKcbrA/Lv5E0UlI4
         a14bieylb8IjegRYPxSuq8TcnLkPAnvYHfSkdB/0RYGz3mNtkrONM0vJRhuzYO4zrGnS
         gKvvPbx43YepSc3K6Qc/jbvz54bqIcRq9sMHeT8ToKcz0G4jY3QtrFBjY6TpHHPr/5FG
         YamkWIU7UzvcCwlsSQy2a8NzJOZpDTxlrDRCr+iBYKCOo+loOdMPg2G+Rou0p2niWXd7
         WAl/oQd+fDPCn5epU4MFyTCFMFSxJBSv7kUU8PAiIHd+hE66LpGZeGiEIJVJgRlfuiT0
         9tFw==
X-Forwarded-Encrypted: i=1; AJvYcCWhM/nAffvE2p88sRLKDTE4IdiaY5WTvZ8lZFT3xLVOcMzU/TgRlgNRzOg3VxHtMPc6OuwAgoWR4UJL@vger.kernel.org
X-Gm-Message-State: AOJu0YzMRk+xccmvm4srbc3wK57TNyz8Rb4iXziXLlQLUPpuoCmOW7q7
	EYm69QIONNqg++RaWgACl9fRjRRHNLlGPq1x6eeqWsS8Kt6CdsvzgagR
X-Gm-Gg: ATEYQzxXQIPwGXEoP9ASU0/N9JLHBG0nO0ioP1Kpl84y1y/bg48Oe0ro0mT7Fiem2IK
	XHUFZ69MV2R6vytd+9ThdKLd6AiNFOlIUtDmIrq37y6ooPtwgpXPzA7uIYSexKdrA3bypIbwD1J
	m0E8CFspl7CXwlyyHnwQM8k5Yif5tCcL9lhuE75RRuDMGZz6SlRrOzK+9IrbArc0ZaT2XoE5RrW
	TVOyrtHaPfOjXQ5idMdTRVzdf/xYL3wsdc+4G2eFntQhOlxMMAK5NwPL1986p+7Ngu7O9WYYSoT
	ttVnwo7H7O8MJiaIqboeOWvrYevm/jSKfXXrQ0ciukyGfM1CtSucUJlVpwqV/oZZtx93T9Hzv0E
	H/1AR2JJ7nJnTglPDHCE9zwjyjYG1LoyE5GrsSd8lKcPPu2DoqAdWOzKvMKOIQgV8DzX8UsNo/F
	A3f8DRmhHdKlsDoX4Wn9VPQQnhXQ==
X-Received: by 2002:a05:622a:1998:b0:509:1dc8:e9e5 with SMTP id d75a77b69052e-5091dc8ed37mr53525151cf.34.1773102018043;
        Mon, 09 Mar 2026 17:20:18 -0700 (PDT)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a57a1afabsm8615926d6.9.2026.03.09.17.20.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 17:20:17 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v3 1/3] dt-bindings: thermal: tsens: add SDM670 compatible
Date: Mon,  9 Mar 2026 20:20:35 -0400
Message-ID: <20260310002037.1863-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260310002037.1863-1-mailingradian@gmail.com>
References: <20260310002037.1863-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 46298242F7D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273166-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,intel.com,arm.com,gmail.com,vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

Add the compatible for the thermal sensors on the SDM670.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index 3c5256b0cd9f..6c84f22ae322 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -71,6 +71,7 @@ properties:
               - qcom,sc8180x-tsens
               - qcom,sc8280xp-tsens
               - qcom,sdm630-tsens
+              - qcom,sdm670-tsens
               - qcom,sdm845-tsens
               - qcom,sm6115-tsens
               - qcom,sm6350-tsens
-- 
2.53.0


