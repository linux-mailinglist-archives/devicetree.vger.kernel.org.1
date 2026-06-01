Return-Path: <devicetree+bounces-305207-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id FNxmJFSgHWq+cgkAu9opvQ
	(envelope-from <devicetree+bounces-305207-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 17:08:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7686215D5
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 17:08:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8D893300C308
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 15:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83DB13D8905;
	Mon,  1 Jun 2026 15:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gU1BLnF+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273273D8902
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 15:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780326481; cv=none; b=YEPt/w7i3pqHpPWsqU34mkeKDiK21i3RxAleVxaSgBmt2FMOFRmds54+k903s9fjCGmFmz6JSPVcJiQEYNHAjJLuhC6NAt7/XPrfjcq0IJ5ULPNReKOeJRrgtI2pQJ/XHTlsbjHewYx+2osmLPzrnEqoLpsfmNDAIPVHvUPWD/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780326481; c=relaxed/simple;
	bh=Qd0jDxwQNZbi1ul0ROIVUYj3DsQujXROy5T33O1q+w0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=e7gy0ihKMvnaPfDPJSc2+n1TMO4CYcukQXM6SJkKvwcPaHvyEalsUv1DBJ+tumy94I5/KjlDAQiN/3EqEdWapjteAJUfEro/9OMywJSRRbEJBec6voOU053yxZXyz6EV89v7d4Ot1qTTDbdsuCMyBC7qT/IxmMdSiy1tazvJdGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gU1BLnF+; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-68852a4fc68so732249a12.3
        for <devicetree@vger.kernel.org>; Mon, 01 Jun 2026 08:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780326478; x=1780931278; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oiUCmAGCnrYS6f22hVVaVmaPrbP2Cs5yaWaXidbeTmc=;
        b=gU1BLnF+7kK4dlXj0EI6VPfKa4568hZRsXjOG+7OrJQpsi4pRXZE5sSIYye21jo8Qa
         AYbgY4Yr0nXIDm7qMOO+qCdWkdCW3Xnp4Di3VObIZNzreKwUGOZEjazJeS7qeCelLQAn
         F874N3IE2Tl21r7ksM9uaTHfsjaLVkvi0YRYrssqUuL2X5Z1X5ZA7wmS4KU76Sscq9bn
         7UK9IWuoLkVu0FP0AAMpos+sv7XKKpIYuFx+hBlgPhWenVSdKmdagOHSQIDiU4J950xo
         dgO42he2Pme+TSzWDmwrsx21YF+RU2FkGWHc6a+sugfA3bXcm2vqgleLPZ10aWwTsXWW
         4TXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780326478; x=1780931278;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oiUCmAGCnrYS6f22hVVaVmaPrbP2Cs5yaWaXidbeTmc=;
        b=pO2aWsKzztPx0jvycilUtFnrDE/UfTfgQQy+viMUlBZy4IfWCfDWj4qLdTxzRyKdb3
         HFYFhLly2uozScqUGnG1QNoUXNEfuyyI8z9BMXaYvrfP2HZqoTKr7Y3bv2L5s/EYVdVG
         ePGujC9xiVWwV/392zAYK53k7p/l2VSMUX3JaSuWOXYIecBRDD+oUAs8LrjUwj9mnLWO
         08CEl7ddmmMkglvgojC8UpAi+KLb+C1ugzpKasYUDw/j2Saub4e6lcO1057ylzQnf1Pc
         01hnUyP3eiHdjQRtl3MRXuoVTmqQ/Q7N2MMPWkW65BbhE3WTwTKSMwclKAi5mvecasHm
         515Q==
X-Gm-Message-State: AOJu0YxM6yc5ouAZwnvps8SHGrzh4QHMND4tY5XwBrh+HWpKBHMG69b4
	zh4wVcIjzzb01GgTr7D9ZVBs0yiwpyhpRR4TCR7CnrcPoM4sTVR9G80g3g4cqSYC
X-Gm-Gg: Acq92OEgj3pEBhpDYnWtH2Aec6vbFnfI/alPmD3Px0sZN16p7MqWnTtkVnl6cf9CbaT
	7wQ2zpjWPVyLGipAA7YBO7lGT1UyzltKPajqcSnRGZ9AwBZ2I8kf+IiDeWCQ7+IgNDfQTtO2A+L
	6WVTDMIkyYZ2D52n/YnFqgO4SWX1lY55jFGFAVb+JqsEYctYeZcQPdXPmbz5e7EJN5ztCCpZ61x
	v4KL4BifDcOEPjTeYTkNxM/BNN4hEfHm8/GC02Y569AHWMY6GXGn/4J6N8YZ2UD7WxzqtMszlgA
	hx3Gds78erpGfbQkjDZ6XN2MMOAlv3p/kguk6z+spXGT8X1VO4FhOcIAmAFlvgjnI26mA7ca7Mm
	pamrs/v88UCiKL7bJvW+5tEeMj4VgwIfeMkqOxro6s/H/bD6dxXIPUBgc3WtFWBnlu9ZEegMs57
	zt1l2tO2JGT+fMl/sOSEb9pr5yrLK+1TVe52G4KdLhCQUOpfhhFcDLonL0j4PmOY/yxXF4MKQkl
	JLB1OZ4AQ==
X-Received: by 2002:a05:6402:a50e:b0:689:9d82:bb60 with SMTP id 4fb4d7f45d1cf-68c896de21cmr3614781a12.6.1780326478401;
        Mon, 01 Jun 2026 08:07:58 -0700 (PDT)
Received: from workstation.home (71-212-98-95.ftth.glasoperator.nl. [95.98.212.71])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-68ceb852272sm2085659a12.20.2026.06.01.08.07.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 08:07:57 -0700 (PDT)
From: Stanislav Zaikin <zstaseg@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	dmitry.baryshkov@oss.qualcomm.com,
	Stanislav Zaikin <zstaseg@gmail.com>
Subject: [PATCH v8 1/2] dt-bindings: arm: qcom: Add SM7325 Xiaomi 12 Lite 5G (taoyao)
Date: Mon,  1 Jun 2026 17:07:51 +0200
Message-ID: <20260601150752.666393-2-zstaseg@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260601150752.666393-1-zstaseg@gmail.com>
References: <20260601150752.666393-1-zstaseg@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,oss.qualcomm.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305207-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zstaseg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 6F7686215D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Xiaomi 12 Lite 5G (xiaomi,taoyao) is a smartphone based on the SM7325
SoC.

Signed-off-by: Stanislav Zaikin <zstaseg@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index b4943123d2e4..575ca67c940a 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1041,6 +1041,7 @@ properties:
       - items:
           - enum:
               - nothing,spacewar
+              - xiaomi,taoyao
           - const: qcom,sm7325
 
       - items:
-- 
2.53.0


