Return-Path: <devicetree+bounces-271467-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MksFldRqWkj4wAAu9opvQ
	(envelope-from <devicetree+bounces-271467-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:48:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9937420EE3F
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 10:48:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3D10630299C3
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 09:40:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5624637AA98;
	Thu,  5 Mar 2026 09:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SZpjLppp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66D637A4AF
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 09:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772703591; cv=none; b=QAUa00Gz6+FnzG7eQ2U2ZaYAxc//dJypRNvWHtO5wZoGCe5hBmkXLuWXRNsLlLE7LggJm49QMYw4vey1hRrW5HhHTxIXtezYQDsvMdP4O8vpxO1DQ+7DJcT+4eve37FuTAI46jXPC8d8ATtSXxvDYgQNsVIMgnS3yJxArqD38Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772703591; c=relaxed/simple;
	bh=ZCy68bKzBFZTZSfOpy3mDznqvrsWBJ+1U7/kAOyrhT4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dGIJUQ8d5NkLuvLuJS2TiDvZfoNMsfyg814jmetKMqpK9SHB4BbTS44n8jZQKSCnR9IcXAeaiPiMei+EmkUx8PFTlChZb3S/9/8pFr4Wgg49El2tINPN1aQiw9XavFwowCCg04fw5spvJoHScmf5eE51rPpAlcyXCkuIQ5GPJbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SZpjLppp; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-65f8c8c3a4aso14432696a12.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 01:39:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772703588; x=1773308388; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cl74gGkU+YXXZGgHiIF1hb59wxwbza62LeRvdv03AsI=;
        b=SZpjLppp2z5jQCJz/U61VohKj0IJINuaqwZtTxTzfLdlarV0e3t/773vH1ArZ766lH
         DG/pWN+448p14CzJt7/6UWvM73QAVvnauqKGodIE4vngdS5vhUV0pKAfOfqansI5xR+a
         h2DfnEw8tFnoyk14Eic1tDOcfrCNXUspdFFHoKmjjXvOjjBHjIfTn5OXV6BuU1M9KWma
         dS7j/bCNyUQSxuFmO7PI7lQX3wgi2W9lkDwr3hm4qBtUjWvFhwG2cor3xgmtL2Cm4vzv
         jqOk4unQeL1XePfQEs1PDzCXP3z+bVrrUlfMAy26Zmdg9Yyd7RO654Nf6AsodikAprMU
         qi/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772703588; x=1773308388;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Cl74gGkU+YXXZGgHiIF1hb59wxwbza62LeRvdv03AsI=;
        b=QaqfIFDmwmoYT4LFgqhoJtlazRbgOhufmzVluHu7CFrVAtGOtX3uJOOcboiI99Z/lB
         atpFL59tnDF6HAkLPXh3Ca6C1AjXaADCl/jdaoMIOsCsxbRQvC6FqvhYS9ecq+tVOQuL
         LDaD6IBZwt44SrLLMqU8PY//yb+uIq+XF+J9pOVYyyaK4eOxZjGfxK3smp2bkLoaFD0p
         jVOAilZv/qbQ2DEVbo557mkoMSiCwD8uM21hIIGnpm8WgJYlqyECaLEjKwgp8OtWz8VC
         KBz4x6yWQtcXZtvzi8yyysXahYksqq/FFLJhkceFk94AKExcNOZme8TDeK8zfeozBeVF
         WMZw==
X-Gm-Message-State: AOJu0YyBUEh9ieitiwnJvthr/NkMpygg5djHyizTKt7KvP2evEsdEt3z
	uhQ6QXEgxaDHijep4gY0KMl5RKJan6ZLtYffZJVpeTPir4NfwzXL9c9ctCyjohNI
X-Gm-Gg: ATEYQzyKI4JHw0sSEd+AYU1nctRucf0gBzIqChWbMro8oCGPB1ayA9ZlT34Y8MQkpN0
	hY+5uGO4EYNom4/RrVLit8o4l8442TijhzkAKX9AFzzXth4InnFq3j26L2B3LCn5bxdtKx2Rih5
	d2qEVvKvpI7JuPeWUwY5z8yluo0S4Smeo7VS5YVW6UmBsIquOcgm89XKHoVZUklus/F7H5UJWD+
	fHabH+66YHTnM4D9bnwLrvMG07mE4LiT/hLpK1d2BAJAgxfuEVU9sy9TGxrtS6AZ5Tc8d3YJxG+
	WhARQSZ1JyZX/+iBVt6E5WhKG2Uxzdep9N8EiKVT+t2Va6XUZBklpOpCYr+FNoaHgcm8ph10qP+
	Ge/z/a44Jaj0IFvkA/k/ovnLvx/rEVr6/11zkGh9Qh9p9FfO8eUAiq+1BdvNDgR7D95aC3GvDq9
	zi8Jt1f03AkWdWcoBtdv3sq9GY+NkiD3SaYCIE4g==
X-Received: by 2002:a05:6402:51d3:b0:65c:64a:216b with SMTP id 4fb4d7f45d1cf-660f00d2ef9mr3126593a12.28.1772703587928;
        Thu, 05 Mar 2026 01:39:47 -0800 (PST)
Received: from workstation.home ([178.227.95.150])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-660bf4d8249sm2616634a12.17.2026.03.05.01.39.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 01:39:46 -0800 (PST)
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
Subject: [PATCH v4 1/2] dt-bindings: arm: qcom: Add SM7325 Xiaomi 12 Lite 5G (taoyao)
Date: Thu,  5 Mar 2026 10:39:40 +0100
Message-ID: <20260305093941.305122-2-zstaseg@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260305093941.305122-1-zstaseg@gmail.com>
References: <20260305093941.305122-1-zstaseg@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 9937420EE3F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-271467-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zstaseg@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
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


