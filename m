Return-Path: <devicetree+bounces-271238-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MN61EwiHqGn2vQAAu9opvQ
	(envelope-from <devicetree+bounces-271238-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:24:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0829F2070A2
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:24:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B8F4A3017503
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 19:24:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 747863DBD4C;
	Wed,  4 Mar 2026 19:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Xtz1rBNq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250E73DBD5C
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 19:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772652283; cv=none; b=uNCsJ7kNMAj6NXsugCmOmTqida2mBMR4tgWcwaULGp8p0qUOFkw0/atGt+W4D8QdV1ldrt6f9P9hR4g00GvzxY9YWTSJ9idtqXCL5pLbGn6z7MMaaVmnqdRXofC3NWu14NsQ3u/lhYA5i5NkkLxbWDWowxxTtkcSMDaYiPZ+mQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772652283; c=relaxed/simple;
	bh=5CJF61aIDZ1zvB9FP2GW5XGjwP7hN+IXvRPHDDZGqTU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kkxvqtCJ8Lmm1DCbXT4tfsdmaqv3ijOzpH4zZo43dKcoMfDxtyqpaXm597oJmw6FRQI5Iqg7HBgVO48DpknjosbW7f4TtrVhyjUqZEnlqkucaYdvxO8kMdnh//Ae0XrBFuLLAbi6ZhqlCdxhQlT3Xl2dFKaA2JcSuDnHn3x2U2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Xtz1rBNq; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-8273e0fb87aso4076413b3a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 11:24:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772652281; x=1773257081; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ecl+MG1Yo+TiJvae6jV2u12ntROXHec567OXIz7U1Qg=;
        b=Xtz1rBNqLS8hgdXrJqJKpPQDkMZtRdGQNkSKMO9ZMdWkT7LB1euZOB6V/wyZEd020U
         +RjWmsNuVweYcIED2JPzh1y6WFLUR9y2sTmJCsnv2ckTzKyO/XDXMfgPQP2F1HghMJTh
         US0aaa3ocp1sUbdfg+I5RSnNhJG/KKgFwjVn52HuuZHNJxweDmViFcVa1ye8YL2at8xx
         hzGOf0Mj63RYw/VUeelflltVHNAVkZXQbKsKlIHBgQwu64oCk/efLjSTebBBZn8ip1de
         5gQFOMujI8UVpclsTVPGCz61C7hlKqJmu/IeWpVk3YguxjLRqDYk6uQrLEv3zgaBp10q
         kbBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772652281; x=1773257081;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ecl+MG1Yo+TiJvae6jV2u12ntROXHec567OXIz7U1Qg=;
        b=NdxnWYLRY9D5sweVBoz0Xg5IaNe3xId0kr/y03O5cftJGlqeFO7QkWPcXJNKv9JsLf
         d+5qAoOEshkKa9ZfFt70E5mzsXlbQFKEAPZjKCA/lRGamSUYenAZjY2xc2JeEij8Zz6k
         /PhDHPZZ8u/LLp2Cdo9Q+jbq7Wcpju/soQAFs01be5Fn2bXrjUwDaGgsT/FfvE/6SrDt
         +o8FUYQJfNKV43xAkalJqnfYhPfIVR87CVfru0tLnpALMTgf2qzcqAb5/Z8dMkY4ORfz
         u6reeZLbMycWS4VpylBFWh8jUd0b557SqwLzMGmXlO+O46Ta7/z6g8RinCs7TF1MrjhC
         7CmQ==
X-Gm-Message-State: AOJu0YwLwN7fFCxdiwuS4WTOZwpoU4yu0WZUrq4XAaxNui37Ry2zt8PS
	iIPBuJzGtABeI8+Vr+1rS9nUIVIqOrziaKdo9iXDF0g0rlwiTnv9kUwE
X-Gm-Gg: ATEYQzwvZQYarSZUmqLZcHjD9abV6BOLfuwq3546yQpSK+sOW47xTfTQCv3AnyfwsRf
	UaCNYWqQ9POMGvcb0J2E3mOSsN95oWThF1Vc5g0zeqXSwcOFoBC9/NSMBsowJH1A/OXA2x16ms+
	CgrTbBOmsFJp7X+pFjZa7J3MbiEUNiQI1VQKshzrGbOWTvKdt97QIDD+juTVPwL9oPhgXdH3Lof
	teJDVb8r+V6sfAt87rkQs4Z0BDXgt3fV0b36zLdncVeXezm2xWrxjXpn8/+1qx+v0hysgaVrgmJ
	7wIpEycKLpParnGnohc0ADzTYYXvmrW4djEOiAyZTPsgnmnZvPNrb+PO+vgl8y8bJ8392Jd95ys
	tK9uqb3Z6AgfXs7Eup48vPSV5TUsd4n4QOG+Lk87AnE0iC7zvIpovxU9qP4UapAHkqSPfCr3SUI
	l7KKbO8yuNHZnkTGIz/WS2BIWEyXl250RxYPGrHuq81oclf7A8BSKNlHCry4jIyNHB4QWgi+s0l
	gFYwuCn1k+kmgi4nQ==
X-Received: by 2002:a05:6300:6681:b0:393:74ed:7dca with SMTP id adf61e73a8af0-3982e1ec076mr2703298637.37.1772652281462;
        Wed, 04 Mar 2026 11:24:41 -0800 (PST)
Received: from buffalo-ssd.taila54753.ts.net (M014013071096.v4.enabler.ne.jp. [14.13.71.96])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739d8805esm20233563b3a.16.2026.03.04.11.24.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 11:24:41 -0800 (PST)
From: Akari Tsuyukusa <akkun11.open@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	sean.wang@mediatek.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Akari Tsuyukusa <akkun11.open@gmail.com>
Subject: [PATCH 1/2] dt-bindings: arm: mediatek: Add Lenovo YOGA Tablet 8/10
Date: Thu,  5 Mar 2026 04:24:16 +0900
Message-ID: <20260304192417.818211-2-akkun11.open@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260304192417.818211-1-akkun11.open@gmail.com>
References: <20260304192417.818211-1-akkun11.open@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 0829F2070A2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-271238-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[akkun11open@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add the "lenovo,blade" compatible string for the Lenovo YOGA Tablet 8/10
family and add compatible strings for each board
(B6000-F, B6000-H, B8000-F, B8000-H).

These tablets are based on the "blade" platform, featuring 1GB of RAM
and powered by MediaTek MT8125 or MT8389 SoCs. Since these SoCs are
tablet-oriented variants of the MT6589, they are grouped under the
"mediatek,mt6589" compatible string.

Signed-off-by: Akari Tsuyukusa <akkun11.open@gmail.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 382d0eb4d0af..69dbe389515c 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -44,6 +44,11 @@ properties:
       - items:
           - enum:
               - fairphone,fp1
+              - lenovo,b6000-f
+              - lenovo,b6000-h
+              - lenovo,b8000-f
+              - lenovo,b8000-h
+              - lenovo,blade
               - mundoreader,bq-aquaris5
           - const: mediatek,mt6589
       - items:
-- 
2.52.0


