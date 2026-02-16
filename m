Return-Path: <devicetree+bounces-265719-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBroG5cIk2nO1AEAu9opvQ
	(envelope-from <devicetree+bounces-265719-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 13:07:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F1F14337E
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 13:07:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A390B301D32A
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:07:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EE5D30C637;
	Mon, 16 Feb 2026 12:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DWHnPUTF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E5C30C608
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 12:07:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771243650; cv=none; b=IQOMvyd+dNTRnwKI6Q/Fd974GxpphnOpXXBdKJnEFn4EYPgU7xIOEzjZ0mDea9fQ1m0LV+oqtZC2Va9wPR5ZxsHrReJlxA3WRC0ifYQG+qwXJw3QQP0SEuWo1asYJTiXsejFJP0UfzaUezqNWtaXyvlluHFaKNC3AC/Qvs/pjOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771243650; c=relaxed/simple;
	bh=ZCy68bKzBFZTZSfOpy3mDznqvrsWBJ+1U7/kAOyrhT4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ktRQEN7qXTZMTMI0i9lpHRJJtMKwWUYLDMd6H9z7RROOdaNFmzWHbI19ITusPaREQL/CNnScp6pSoyeRfMIyIsq56oGGCRr/CrinPOhD8w+Kb+VTWC4E7T8AMVZy9Gu/2LBN8yZU472MPtuVEWgmSrCva+v150IZXarqGfrA89w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DWHnPUTF; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-65b94e0a875so4357170a12.0
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 04:07:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771243647; x=1771848447; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cl74gGkU+YXXZGgHiIF1hb59wxwbza62LeRvdv03AsI=;
        b=DWHnPUTFFtKmqz9yl6rcUSu8xKY4RxOa7d1D2Dzjl8pG1WgoA1nI4nb1mdFTBsxYG7
         Sy5BYvuklJhJa9Wx1kCPmHQR6bJ9/uoXCYQfLzKbo+wgWqLh5wQKg53C6peEsp7SRaAN
         kOnmxMcBML+KoT4hu93ODig1dctdA5B9m/VCksedAxpRgKbQ36kfDi3O7+a7A/KsDxQu
         0fcNRNpIEXQWmgYg/Eru/S14LQUnEkOApnD8Oc60JzHxlO5FGE7LhBKiK1eer9sG3GEy
         fg3fZP77UEDQmKe2xAsEjt34LME8ZaAleVMT/ZxOkjuyi223O8OzZ2xJ4s5RYdPkbnJm
         8UYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771243647; x=1771848447;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Cl74gGkU+YXXZGgHiIF1hb59wxwbza62LeRvdv03AsI=;
        b=sQ08aNKEHyzS6o0kKf4ENZfRvKDG4NYcy51jQyiYXAg0lSArn4gerqhVtEi2ezUY2J
         J2Z5hXqDCYbg09ZvIeOQ7dTTDyXqlYdN8l++L5AaiJlvFQzowwuIs/MLaDq7svdbverW
         pldfFmeccBW5PGnmoNg1VKKEP/kNsaMm1DjT4885ltvfPZk3xFnalYxOteUr+sfpcgT5
         44E9NX2swON2L6oQQuYohIaWHir66mrvYuOSfaRhjj5lyAvJ+7FDMSfrFEdegox2dtKt
         AEOOddyWvhT3rCadzQUyiKEae+dhMHw/oFgIg1KvJ2fCUpRfKfqOUXdQyzb1Hq/w/jY4
         CQng==
X-Gm-Message-State: AOJu0YyKSArau6cN1U7+/qstu0Ir1l/PIqy7bbLcNlxiSRHDS1CALcST
	NjGLjsRzaGt/j4wDbMojoywFkxvAhxrgYK5L51PTk29lb6lOfda/9BPJIwTFU49h
X-Gm-Gg: AZuq6aJ/rHtu+PfIZ5sg/GZST4AEflW+oFI/OcsdHilvdelcLfinYAfIxjhnB4xhlGU
	Dt5+08AoqMSMB9f3skxSE2TgdJw48w2ltJcEoDLp0RUQIT1uNCt1kcmiCpHXpJxCLF8MGtHeGzE
	49rLznuniyks1dku83DPGS/3ZMu509pPtJrMCOY4mFanu/puAlPl7rinUfKd8z0FHPzz9ywtMYG
	SHtaGuvZKDHjv9FlL4gbqIOt3NS+RJeANTcPAwF8hpHvlc5WBC6naeFOOa/c7bopaNBkzehclDI
	n2ks1O0/Lje/Bkid4Xo0pGn4f9UbfeJE+8nREdN5ywqsjUJRIpdKVvxV75592uqB2BplUQ3xqPi
	2dqCxBWuBTZcs3UlJ7OTOXTPUpKBBw97fBgFTXTbEVunlWjNhdNKJqLHcmgRAHMnBth2ZioVPF/
	Zql/z0GCDLxkNhmKrgpIeVUVzrpcRfiLU=
X-Received: by 2002:a05:6402:26cb:b0:65c:972:7073 with SMTP id 4fb4d7f45d1cf-65c09727503mr1641072a12.28.1771243647060;
        Mon, 16 Feb 2026 04:07:27 -0800 (PST)
Received: from workstation ([178.227.214.62])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad3f0d09sm1867098a12.25.2026.02.16.04.07.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 04:07:25 -0800 (PST)
From: Stanislav Zaikin <zstaseg@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Stanislav Zaikin <zstaseg@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: qcom: Add SM7325 Xiaomi 12 Lite 5G (taoyao)
Date: Mon, 16 Feb 2026 13:07:14 +0100
Message-ID: <20260216120715.3432191-2-zstaseg@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260216120715.3432191-1-zstaseg@gmail.com>
References: <20260216120715.3432191-1-zstaseg@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-265719-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zstaseg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 27F1F14337E
X-Rspamd-Action: no action

Xiaomi 12 Lite 5G (xiaomi,taoyao) is a smartphone based on the SM7325
SoC.

Signed-off-by: Stanislav Zaikin <zstaseg@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d84bd3bca201..711cf3bba6e8 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -982,6 +982,7 @@ properties:
       - items:
           - enum:
               - nothing,spacewar
+              - xiaomi,taoyao
           - const: qcom,sm7325
 
       - items:
-- 
2.51.0


