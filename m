Return-Path: <devicetree+bounces-317547-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ImxAHZKSQ2rycQoAu9opvQ
	(envelope-from <devicetree+bounces-317547-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:55:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E62F6E2821
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:55:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=amarulasolutions.com header.s=google header.b=VtGDKWrr;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317547-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317547-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=amarulasolutions.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 56003302E728
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:32:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F10633ED5A8;
	Tue, 30 Jun 2026 09:26:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734C93E835F
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 09:26:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782811601; cv=none; b=kwxUXjPHHdosBTy7N4dEpy30/IEcll+R24dpvIFcmqHPceRTeR3NBpAwB2wAKYsxBPrX87T+ewHUQInzbMAF47pPTHZiM4xif1oaMWw0W2SxADUktkJ0jvUMVU1yguPYgPtH1RukVBWv6u35H+08Lo74aGEMaqocAU4twj6OjaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782811601; c=relaxed/simple;
	bh=5Uzl29QTCrj5VKD83cW4UxcKrN9I1xXI5DXz829aub8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=t0T78qtbt76I4frp1rEn8JkgaVzZy+r4hNIPI6QhGV3uddDW2d5pQgoaxeXSK49Jf/pFPWfI3UfZDzal5hB2Znn/YfgHd4N0KMRf82CiP58xAIUh+HW4+O6pr+o8txs/GjGHtuEtmLAsjPTLVlU713XtwGle2d/HE6yahqfgsgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=VtGDKWrr; arc=none smtp.client-ip=209.85.128.43
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-49395888c7bso37628465e9.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 02:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1782811599; x=1783416399; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XAn+sgOJ//YpFHFCj3wQ7fJwCRmUnKUhDxx0gbmShJo=;
        b=VtGDKWrrTXYp3WNiIBnbbmceEDG/tsE4R8eFuzgeYgAZXojWQgqVrDuWWuLVq3Cy8e
         S2JQKDf3VRqsQjddhPkUe91SI9+nIidnbn4LvWdtN15Jq3IzK5u49Vve/R43DpG/TZ+/
         LqCvgzd5lqY54aqAwBdfHgM0uemFmN46GnN8k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782811599; x=1783416399;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XAn+sgOJ//YpFHFCj3wQ7fJwCRmUnKUhDxx0gbmShJo=;
        b=JaRJaojJxJZIB5w7jWCCKE+3LMfdD9L8m2hYZhkKZxw1qVBpafTOXvwkTSIN8gaztn
         WvAfTlzZWSLUTAQxoRyBx1qvabn1BhYmq1wb5IVAUHJT5wH/XzQkJTGSlfoD88u69bxS
         jJlNhWPSMjiTLMZyOd17aZBtQ3Fc704EsCDFpmEwhuHrqMUnHDOWXKp+fZYvwoloMAys
         ipl67QQ8fKg7YZy1NaXCYmiWO73QdqHkLLDzGdva5M6EhIpKjtSDvhO2FaZiI5yvueB+
         pI90DCVMjB07FpzmqhvtqEyP4zt6wwNSZYyNunBL9xTfCT+0JZpm/z9uD8XZnGgItTtY
         TorA==
X-Forwarded-Encrypted: i=1; AFNElJ9SCbxjnFM88q2qnrk27a/d6VHvMyPIcgDKidlkw5VViBG+IC9zz/E3FwJjCoDl54ctfFYSEBAiuE70@vger.kernel.org
X-Gm-Message-State: AOJu0YzJLUuBCroXbWYujJdNkQ8ybXtew+CJLK6PDYD0W/9m0Fr9XuZ5
	FFfsNElGD6lrXmxpkVckoamZ/mclL3T6mQqgIk0XbSZg2mj49QnG/DswCBMVTn8M6vg=
X-Gm-Gg: AfdE7cm7LEaoQDqlHlcO3ChSz6M67CduVMvqkS7tSET4r5VDcIHXq+HyAhom6C9N28x
	+Yohz1RDN1Xz395vOIgBd//PtXWYqJCv9EXBE7Wo37L5R0f89WdzveOaPi/j9A6GuoeqFZjhmdE
	tAPwN/3JnJc+tyswWDliBulTcCOwUO9MxlvWCpyeiIOuU8M3KnP24VttdAhcMRoByqPtDTRovMi
	fAFY6WuG+GOCh3jd1l2NkPJOAfUm1v7G/NIoPXzpM3xK9ky4Hn61jmlOcVu1GTdCRfHMe3SPmSW
	cT4Egan+KrePZefWUvAyBEs9nPW5Vmj5xAMtCxyOQIG9dRzOjS8ppZiAYC2/G/qmID9DylZnzKf
	6K2HdSIwEtmPavijlg/oPpuD0rynvWzc/XVAOHWXW4YAK+ZnFTTCZb00es9lx04mSk3UeAd12Lf
	S/kkAURxtCVqpJC93BNpHeyMz85xWFOt4YJSTDOCGlGHEyjkh2oZRzI9nwUt2JSCPYSjYVktRxA
	7UFe0Xdv4+5UAGQJCbUPokX3bamwqoAWPVGmW/aIdGPPYVw9Shf2nyRVLvhsMy2ekYNxodNM/Cn
	847D6/TpZ3D49ao/Euzfuvv3
X-Received: by 2002:a05:600c:6218:b0:493:a7fd:15d6 with SMTP id 5b1f17b1804b1-493b8289c5fmr45013735e9.9.1782811598900;
        Tue, 30 Jun 2026 02:26:38 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-82-48-44-238.retail.telecomitalia.it. [82.48.44.238])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47567a6f0ddsm5669083f8f.37.2026.06.30.02.26.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 02:26:38 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	francesco.utel@engicam.com,
	michael@amarulasolutions.com,
	domenico.acri@engicam.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Amelie Delaunay <amelie.delaunay@foss.st.com>,
	Christophe Parant <c.parant@phytec.fr>,
	Conor Dooley <conor+dt@kernel.org>,
	Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v6 01/16] dt-bindings: arm: stm32: support Engicam MicroGEA-STM32MP257-RMM board
Date: Tue, 30 Jun 2026 11:24:30 +0200
Message-ID: <20260630092628.1695560-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260630092628.1695560-1-dario.binacchi@amarulasolutions.com>
References: <20260630092628.1695560-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[amarulasolutions.com,none];
	R_DKIM_ALLOW(-0.20)[amarulasolutions.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[amarulasolutions.com,engicam.com,microchip.com,foss.st.com,phytec.fr,kernel.org,siliconsignals.io,gmail.com,vger.kernel.org,lists.infradead.org,st-md-mailman.stormreply.com];
	TAGGED_FROM(0.00)[bounces-317547-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:linux-amarula@amarulasolutions.com,m:francesco.utel@engicam.com,m:michael@amarulasolutions.com,m:domenico.acri@engicam.com,m:dario.binacchi@amarulasolutions.com,m:conor.dooley@microchip.com,m:alexandre.torgue@foss.st.com,m:amelie.delaunay@foss.st.com,m:c.parant@phytec.fr,m:conor+dt@kernel.org,m:himanshu.bhavani@siliconsignals.io,m:krzk+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-stm32@st-md-mailman.stormreply.com,m:conor@kernel.org,m:krzk@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dario.binacchi@amarulasolutions.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dario.binacchi@amarulasolutions.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amarulasolutions.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,amarulasolutions.com:dkim,amarulasolutions.com:email,amarulasolutions.com:mid,amarulasolutions.com:from_mime,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8E62F6E2821

Add devicetree bindings for Engicam MicroGEA-STM32MP257-RMM board based
on the Engicam MicroGEA-STM32MP257 SoM (System-on-Module).

The use of an enum for a single element is justified by the future
addition of other boards based on the same SoM.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>

---

(no changes since v2)

Changes in v2:
- Add Acked-by of Conor Dooley for patch 0/1 "dt-bindings: arm: stm32:
  support Engicam MicroGEA-STM32MP257-RMM board"

 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index c6af3a46364f..c5ce81e3ce45 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -203,6 +203,13 @@ properties:
               - st,stm32mp257f-ev1
           - const: st,stm32mp257
 
+      - description: Engicam MicroGEA STM32MP257 SoM based Boards
+        items:
+          - enum:
+              - engicam,microgea-stm32mp257-rmm
+          - const: engicam,microgea-stm32mp257
+          - const: st,stm32mp257
+
       - description: ST STM32MP235 based Boards
         items:
           - enum:
-- 
2.43.0


