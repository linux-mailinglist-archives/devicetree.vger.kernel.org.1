Return-Path: <devicetree+bounces-263610-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIPrJ6I7h2l+VQQAu9opvQ
	(envelope-from <devicetree+bounces-263610-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 14:18:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD4C105F4A
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 14:18:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 851563004D88
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 13:18:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD5FF30ACE3;
	Sat,  7 Feb 2026 13:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LNcf1wXb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9856C17C211
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 13:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770470300; cv=none; b=aLk3dqbWBtys+PzAlzvx4ziFCmbpCFjqcjNBTzsxnq5EIzCSM2FFZ1AgCvj1SF2G5nRG05waoYVI6uXEqVwxyOnPO3OlUhytfNmfLy+g7CF21Z1JaOaKOUE9q4O3vEfL5eiAvr6oyG+ozzqMfz6frs5yboTVHNI6BK4hU9vLl+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770470300; c=relaxed/simple;
	bh=MbesdmuUgC2F8un9Lf/Fr4suU7Nb1BhGgDGD7BVHEVk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dcQKg5Qe+cPsjEBtNVL5mtUvfC7zHFDPE9QA7+fGXbdJGD6J5U1326uHr4OXI9i6G6McIU7XLNSnnNS0FcBbZlGo/pQsbK+mMD7XM2ndjqmlgL9QMUtL3G57uBcpyCGP44y2z+6eOoYrGdshtMlwuHb3MKDpCIqfmEvz/XAwwao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LNcf1wXb; arc=none smtp.client-ip=74.125.82.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2b81ebac5d6so3646706eec.1
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 05:18:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770470300; x=1771075100; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PGbAXMH3pEHrAeasqKpMCINB/rzrMFrYvbmEBtzsJ6g=;
        b=LNcf1wXbv+oBP12F+2HukTfyCFdx1rg0VIbOC9QLXx0bfQpTbd3KhcCBPBx8CPJ9Xp
         qIZ4zKJiot42shYRyeRQ0+r8Kxkd7WJdwAOSkauWGjlHifksRQW6yS7nHMMDjQdM1+85
         913nYrtJgTErLpDekZ4EVQu4Kn1bAtQEVA3bnTWEJqwRWCAYSakr9IfPP/uvC3n37cBs
         JFftaFpaMqZvTdwiYEzFTDFp+xE1tfAdcapMBs+/oaP7hoPlPvYpc3OK9Uf2+id06x/p
         ZLnk/bI3JKYLPglgAsg47uvl+0HmI8I798wJunp5Bxz1A0BrZ0mCHXv1tTVl5EUbcyJj
         0jyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770470300; x=1771075100;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PGbAXMH3pEHrAeasqKpMCINB/rzrMFrYvbmEBtzsJ6g=;
        b=MnNNrDfr0gJ/j+9qEds0Xzi12YorTOpWElEKLExY2TlIp+au7oiINblfs72y1oI2Rq
         gtxmSs8XacVNHW0eyzO+R+oBtQB4tWKohuAKgh7sCgVv2OlbHe8qbiWP9vug/msHMwTd
         CLJL3ETQb4DbBtixKsMnCDjiDraX59FEFse7WvpazaP3+VQiw32eDaS0WcSNx6thzpnS
         IblAbbILIGMiQRN2FJ9X284urWx7giYhDu4j65i79IP8rG6QgECuZBNy4zOZEpNw+lqi
         /HsnXN9jLMoGxh+OZZEi9caG2xJImiav7sgk4CfcMzDa7sZRwb7GTMDPmgN0KbzegZ7o
         KyfA==
X-Forwarded-Encrypted: i=1; AJvYcCUzi47pOgZFlQDgIqzUVkC7Za2vzNkPiqXX0qnBtsIaYjFTqV+lFiE3c5ruDy04bEVO+yEkst5Wg61h@vger.kernel.org
X-Gm-Message-State: AOJu0YwMQCRtBN6+Szl7hY5de2wBFc5lQAh+T6dpx4VcjrUiQeWbr5em
	SsbbmWjx/FNosa07gJYHObDAc3zxT8oCeQxCp2guocgY0Ysc9g4nNQWS
X-Gm-Gg: AZuq6aIFV/km1/1I3HrdrBqeDAkYGWYZF64FS1fN1BWEZvzRkllOdC1gx/n2wGtjQS1
	DvBXwW6WW/Co84FUkXnoW5JFLfzuN4eF+L9JHHQ0tj4qIHMoNbciF0hx6Xcmuimnzsfje/rMOwx
	elBWivYm+ZThVArIX5v+d/VJpv5hucLw3oOdnc54t+6gPEowSd9CaZu2FEwAlITy1jV2170Y2oe
	Hsk8hVMyIKMp0pQvH3ZCn+aUa92pFm3uJjgmifeCUFoIgtFWnJtcEgFsdXxs6Ez2ScPuHamNNNa
	zFyLSqUqpMR1EG9dwKZ+m7Xxgz2zaUgMSX1BFupWa1q5LcVSiM61e1NxJRNrFg4rMsVWBEgOKRq
	X4PYB2tQm8Cd2psDZMAtTAz0d19FizWuim4C3BfggOHQzcGV28lErkLVn8BfBgcrKWiuv9tt6Hb
	QamQypvZqM0itWB/4kX+SOZ0Nf
X-Received: by 2002:a05:7301:1293:b0:2b4:7c92:3f7c with SMTP id 5a478bee46e88-2b85645ef66mr3452021eec.6.1770470299657;
        Sat, 07 Feb 2026 05:18:19 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b1ab:5cb0:a2f8:764b])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b855c7f5fcsm3688627eec.29.2026.02.07.05.18.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 05:18:19 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v2 3/4] dt-bindings: arm: rockchip: Add Onion RV1103B Omega4
Date: Sat,  7 Feb 2026 10:18:02 -0300
Message-Id: <20260207131803.2834749-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260207131803.2834749-1-festevam@gmail.com>
References: <20260207131803.2834749-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263610-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.992];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nabladev.com:email]
X-Rspamd-Queue-Id: ACD4C105F4A
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

Onion Omega4 board is a board based on the RV1103B SoC.

Document its compatible.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v1:
- Fixed sorting.

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d496421dbd87..2d90df71475b 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -802,6 +802,11 @@ properties:
           - const: netxeon,r89
           - const: rockchip,rk3288
 
+      - description: Onion RV1103B Omega4 board
+        items:
+          - const: onion,rv1103b-omega4
+          - const: rockchip,rv1103b
+
       - description: OPEN AI LAB EAIDK-610
         items:
           - const: openailab,eaidk-610
-- 
2.34.1


