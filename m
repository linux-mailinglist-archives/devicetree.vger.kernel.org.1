Return-Path: <devicetree+bounces-257586-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPKBLTfib2n8RwAAu9opvQ
	(envelope-from <devicetree+bounces-257586-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 21:14:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A98D4B1C8
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 21:14:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A8BA338D214
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:37:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1E8F466B61;
	Tue, 20 Jan 2026 19:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GQSENjA+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAD5F33A014
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 19:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768937782; cv=none; b=KDrnNgpfCncTyzc8hzuozDgEM7u2vgSGgDIWQXb46PqYeSNpe9IukgP9TY6IhedkkReZa1jLM+6yXgVpg5AS/25q9tLsOw7c7Tic2fbs4kMAS7vOYr57L52sELtYoTu0Ap6JclH21KtFEyC4/LWoImouEGaHHHjnUGUwS5Ebd9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768937782; c=relaxed/simple;
	bh=GZnPKOTa1HqnzuYZeMPLeyCydNQCmNfziboE4iAektc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oPuOh2dv0KJl5rdbSHajYEXDI/ErQWCieiNIWB9ZXDQSoS7m9Wburpe43YpNVqPUPlbDqsjYBUL7UU8MYZM8ocAPTO45vCo8iR0iGXy+D5YHf6wCNmmAlIsY8YFfnxAaBelC7DnWnuFnXlmnNouxLmI0a5DZ2wlJOo7/EtFAL4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GQSENjA+; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47ee974e230so46053875e9.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:36:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768937779; x=1769542579; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sOzxOEsKJTSa9ITustjB7WD7pn8Z4/rVt4c+7xkqZK8=;
        b=GQSENjA+ZUH5tlixi87eivg6cWm1atHKswGmEn41QDA0iweVGuN8xM1Z8TAY0ZFTNf
         3AHLN+4l/fgRVC5uT7npxKsQY+O11MFhVi4/CBuXheJO8c8AWdmfT4n4fSqGdERKQVOZ
         T83Su9zQ6jZYcpYV0dnGVjkhl+CC3cpgtvPFpp449lKzL93zm/w52DvvFbPD7ZA0U12K
         wjKvx0d3KNlNlNHJW7Vs/wtGwPAcZ56qtnfwJCp5de6U2SDho6XHKSNrGP3nTr5Y77tp
         PBAaW1DKg+yymy3dhjFfPzQKtnbUjp2E3qlGNz3pjJciUWxZ8FdDSKZnpk/4hZLsbrlx
         65Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768937779; x=1769542579;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sOzxOEsKJTSa9ITustjB7WD7pn8Z4/rVt4c+7xkqZK8=;
        b=nGc3cHlLNwczGO7C/mrGtTta/VWxxashHW9ZYzYZD7/DdN3Trv68dH2ayYnUYVllzh
         LOtHgddxXyvascypCu5sS6iHNs0GpcieHaHkpBSaXja1lsrvaBrd/LEjvl7sON2IDsPr
         5UYwqocsGJ5l4f55poA47Vv4jJr3zfPeO6Eyoo6ETkPdSbB8GE0YdNVXz6V/b0umTYGo
         66c4LiTHvXqPkLHDxcKAiHPfRS0W7Y+r5PrhINfQilQN9Hu3Bl3ksh+4K/RibEkRR9nH
         +jdribX3VB8N19BCQN/Xplck3PDPeHAq/mWj2e2nBOqpLjVXRggSAiENI/7nzv0Iw2Rw
         NByg==
X-Forwarded-Encrypted: i=1; AJvYcCWzlzWOd0n3FRb33gpItKLucHojInnvs4xWOKu58ryX0eRkGajnce23p0anneNN/EPTJBADxsxCkfZc@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1u9a2mTF74nK3y1DmjFE6QnNX+7rTaFbvpJocItJfdEiKvuHi
	s9u+APBVVxSMajFpyNWeuY/x+vzQ/UkQMRButKxgKE9yk34JafgtszWF
X-Gm-Gg: AY/fxX7dvczLYIfR3x5ZEzJD6l/tfm3v64IVTs1Swm79WbZLJ8fGMQYYsHrDmM1Y8aQ
	loqrQAYgkiy/f6jnFEWDOUPCdvvspC1G4JzodmtsaonSBDpY/lWF4U47W7dbEbpjamoeY0WcAiU
	e0P6pyzaL259Qa6/ZvJsduqmBODFQ7knoc4DtEfJZPen/1Lv3qqjKtEplwvBlR0ED3eJwuPzeja
	RPFmEQGqXBT2FoSMvGwKB+GUE1ueCG7KrTaLy6qHUj0Pu5Bodpd9OYaY/xz5sx85C0mXY9xqkjl
	Jqu19Bt0vMtI210AIzS8XtL/q34hmIUDnVKKlQjneEQPrGY3NesPhYfgf5xdW9FU1+FNULxqCMh
	cYE4loDM7LTv5cjgtJhmy0lOoOnXPV+lE6kjJngJkqFBffJeckAcGpzVMrGAZY2++ObmxackAoi
	OyeXomYOzPOEOoKFcOf8bN
X-Received: by 2002:a05:600c:3e0d:b0:479:3a86:dc1c with SMTP id 5b1f17b1804b1-4803e803c1amr46907605e9.36.1768937778769;
        Tue, 20 Jan 2026 11:36:18 -0800 (PST)
Received: from unknown.zextras.com ([78.208.157.140])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4801e8795f1sm265081185e9.6.2026.01.20.11.36.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 11:36:18 -0800 (PST)
From: Gianluca Boiano <morf3089@gmail.com>
To: hansg@kernel.org
Cc: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Gianluca Boiano <morf3089@gmail.com>
Subject: [PATCH 1/2] dt-bindings: input: novatek,nvt-ts: Add nt36672a-e7t-ts compatible
Date: Tue, 20 Jan 2026 20:35:59 +0100
Message-ID: <20260120193600.1089458-1-morf3089@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.46 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-257586-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[morf3089@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 5A98D4B1C8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add compatible string for the Novatek NT36672A e7t touchscreen variant
found on the Xiaomi Redmi Note 6 Pro (tulip).

This variant uses different chip parameters compared to the standard
NT36672A, specifically a different wake_type value.

Signed-off-by: Gianluca Boiano <morf3089@gmail.com>
---
 .../devicetree/bindings/input/touchscreen/novatek,nvt-ts.yaml    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/novatek,nvt-ts.yaml b/Documentation/devicetree/bindings/input/touchscreen/novatek,nvt-ts.yaml
index bd6a60486d1f..aaa9976bd65e 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/novatek,nvt-ts.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/novatek,nvt-ts.yaml
@@ -17,6 +17,7 @@ properties:
     enum:
       - novatek,nt11205-ts
       - novatek,nt36672a-ts
+      - novatek,nt36672a-e7t-ts
 
   reg:
     maxItems: 1
-- 
2.52.0


