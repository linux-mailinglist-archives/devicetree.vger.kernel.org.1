Return-Path: <devicetree+bounces-269775-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAzPMp/xpGlTwQUAu9opvQ
	(envelope-from <devicetree+bounces-269775-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 03:10:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CB58E1D26B9
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 03:10:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CAB93300720A
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 02:10:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E32C283FEA;
	Mon,  2 Mar 2026 02:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AmQXkVyM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C752A2820C6
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 02:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772417435; cv=none; b=fCmfzE43q4WP9yGLRGAreuYHab+fVoqcc4PDi9MeuKRGRjQzCeBLBRjjoxIS/d7vUkesgMhvhnhw59L0oxBjZ5J5nolz+8xd55+noiOc+RJZlsCpZOXkEI4omzn7v4quem3JFTX4rfJMfo5pOUtIqRU4w3B0p/MaVWydpID3rgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772417435; c=relaxed/simple;
	bh=XdTfbdlFopslMwOZRNBOxZKx7xvKU+sQAg/JqNo3kh8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ND+0eFHhAxOL0bvecKc7P82LNLLH+g8PxK8Ngza+Juzsq/7cWdAtgW4cY05JTq0pfwG1q64tZxAP3sRAuls8+fUQTtY+ln94nSnYlzxLfiOOVsUQ/xI4u2aZD2vQH7M4uh3pP4DXJG4V4WTabD0RLLzsEu+mOOiZse6jk7dxonk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AmQXkVyM; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4806cc07ce7so43731395e9.1
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 18:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772417432; x=1773022232; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uA7ZHCoOg+iN91Yh0fD8Ot2D5G2O/zSpqiwS7NE95K0=;
        b=AmQXkVyM1w0flvlqX8+P0k/BWqhxyIdZvSNqHBwj2VjxybLik7f6LU3AOAe7Jjg+xP
         W2w+CG1NopZgr2Pr72EIJAL8aTEPDCb1q1A9oAQyHSfUCHS/re2Ja2SOapf1n/XQLC7S
         TJja89WdFjGY9MdQpP2L6E8qCYxqrIIGef1NoAsawu5kSPP0r2R7fgT5couSCxjwNmP6
         UHef4YyEA474D6Tje710tzXnJly59qbFn9ea0sAw44DFu95AVNb7KTLaCyB3A810TGT2
         g6ZeiaN62c4jQLXdlkF7cgg1svqiVWNw6htsb1mxK0qOIi61X0ANLHsJcTp755gF8NR/
         BoYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772417432; x=1773022232;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uA7ZHCoOg+iN91Yh0fD8Ot2D5G2O/zSpqiwS7NE95K0=;
        b=dK70wxsmwFJ6lmge2ySXXah4KLE/ijziNUQhvNLt59vguQZovillBelyju0/O18khj
         b+WBxOOZgNMhHg39uvavSY6+oYOmABlT6AS7LsMQhykPQAqOpQOXOrSBOkFyeddN8MnX
         RRXocifx/mrX+qvwgvqGG9v8gaa2hwk+jLPEtbydLL4RrLf2sGDD53fe7UXdY9fSUD6Y
         2i8zEqTP5RM8dXDHO8NXYP9hprM6DOXE6TMnRCahZQqXVsP9NYxYQBdYVkT9bmCkVABF
         GVOpeUwerFERVtwRWWjhK47Tt0Dihh+S9DG1yiRxrIOf22jsq4mJHnBeN5hrKnKZLslI
         2tDQ==
X-Gm-Message-State: AOJu0YzDQMMfZjuCg66wJoDID0aMYJ8CFkck8fCuHf7xdbup5MMZa4xH
	IDMtRPIw46ovPKp55633PFpH7BoyJCraMqWgqB+6btkAjCdWr2RoxH8EGQW4Ui3/PWs=
X-Gm-Gg: ATEYQzwG3A2gQkpp849g9pXmKaerLhrvswRa4SfB+OCSCmm8pLxRGymZXdzxmlZjKGG
	csOxhR5POv0C145YF5zK5ATBImPUCRx7hW8vuOc5eQBPo3Pp2CKuQJVUvSPcbf7aPYrXMyKpPU9
	+3y2xs4YeXA8pvSl0bz8O1AmGRZWmrfk22aSoTffXEKSoOJJDPogPe8qQKVmn5AMtU9SVNE5vjm
	RS1OYAIQ1U0SWDYhMNCWVSwPEUIuT2ZHKZqMXec1az7rat9Z4C3ZfSCFPgOmNy1novw8ksQLjYP
	SF3kdSJ6+cW7y8Es/T8Z5PVJk2y1UfbPENAcTvIBBk5xzePXDod/d6Ux2paaNwAFAqQw1wEAFlb
	6PE5QknD+4t+h8/GtVbyiQD7xbR0gPfCO85dnjKXs9DG/CoQ8E8CVCFyYU0G0QJVwvNNmCoFGFg
	X3l6vxlpoMtOcACUDlw7oT
X-Received: by 2002:a05:600c:190c:b0:477:9814:6882 with SMTP id 5b1f17b1804b1-483c9ba7d51mr193315775e9.5.1772417431943;
        Sun, 01 Mar 2026 18:10:31 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a55:9af1::1002])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfcb9b97sm194451105e9.7.2026.03.01.18.10.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 18:10:31 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	wens@kernel.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	mripard@kernel.org,
	andre.przywara@arm.com,
	Jun Yan <jerrysteve1101@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add Beijing Ultrapower Software Co., Ltd.
Date: Mon,  2 Mar 2026 10:09:54 +0800
Message-ID: <20260302020956.96424-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260302020956.96424-1-jerrysteve1101@gmail.com>
References: <20260302020956.96424-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,sholland.org,arm.com,oss.qualcomm.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-269775-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[archive.org:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,uqsoft.com:url]
X-Rspamd-Queue-Id: CB58E1D26B9
X-Rspamd-Action: no action

Beijing Ultrapower Software Co., Ltd. is a company focusing on global
mobile games, ICT services, cloud computing, and artificial intelligence
solutions.

TaiqiCat A01 is a blockchain-based terminal product launched by UQSoft
(Beijing UQSoft Interactive Technology Co., Ltd.), a wholly-owned
subsidiary of Ultrapower. Its dedicated product homepage[1] was once
hosted on Ultrapower’s official website[2].

It should be noted that UQSoft's official website[3] is no longer
operational, and the company appears to have been discontinued.

[1] https://web.archive.org/web/20190409213228/https://tq.ultrapower.com.cn/product.html
[2] https://www.ultrapower.com.cn
[3] http://www.uqsoft.com

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe203..bb16ae90a4f6 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1731,6 +1731,8 @@ patternProperties:
     description: Ufi Space Co., Ltd.
   "^ugoos,.*":
     description: Ugoos Industrial Co., Ltd.
+  "^ultrapower,.*":
+    description: Beijing Ultrapower Software Co., Ltd.
   "^uni-t,.*":
     description: Uni-Trend Technology (China) Co., Ltd.
   "^uniwest,.*":
-- 
2.53.0


