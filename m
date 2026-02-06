Return-Path: <devicetree+bounces-263484-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJROCmQvhmkTKQQAu9opvQ
	(envelope-from <devicetree+bounces-263484-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 19:13:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1F6101AE1
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 19:13:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5BF7D30069B8
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 18:13:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03C20426EB1;
	Fri,  6 Feb 2026 18:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TEUv2n4h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f42.google.com (mail-dl1-f42.google.com [74.125.82.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23F1426EA6
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 18:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770401631; cv=none; b=LFh4UP2qocB7iGFO44os8rvMFZCSFO5LigUCHredbtNYKOx5GaOT9Q8X02V0AMtUz/o6xo64lPQe+q1WIqsgdm/1a0aTehhbsXcVCJ0FLkGMtPP30fd8/7QgMJNQGKdqATYXJDYAEFdd56mTIvbs+2O+hp12fpdbeRfP2zWcbR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770401631; c=relaxed/simple;
	bh=Pf9Yusx2Puzk+5NtvM9xS1F3b9TdvhDewQCMiyQSTE0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lidEi5hXyCe4IRnQHqEhmGugT61Ayk8MDlC8MtrQtEP/tVxsUIOvVeYr8jGgj6ozV/O7DZPLB6Vjw/UoVGJ+gtgxor1FrvdAM0+Pz5lZrxzWUFYOfVl9IxH8KmrW+g2AIZcIRWwbq+Mb/okSNnVASJLoVASD91Xyu24LkDBisoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TEUv2n4h; arc=none smtp.client-ip=74.125.82.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f42.google.com with SMTP id a92af1059eb24-126ea4b77adso2793282c88.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 10:13:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770401631; x=1771006431; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZoltbQKyGec+ucA9n8ImzXdn4Jsneih4XM+AaFlZmww=;
        b=TEUv2n4hceIyJuu9Y+TPP1UHxd98cCd4U982gYYHLSxZBpf1bbee/YpNwcXhg4J5+6
         nUIi9U5hQnJcfEccujwu+RzTMPjq2Wgm40ToD0ZeNiPji4jWZXEpwIT1NiIfilRRZ/s2
         Ylj5i+GGV492p9VCxWxqR20d/WTA+9lM+FVkeYlwMLgjbRKdgnWiICx1AqtQ8x0PSl8v
         vUCY3bwjIJzdwech8C9BL4Ej9XYjqBPivJ+RVdy3XUXT7YxUaQ3EOxlkQbFON2ivA1Qm
         44oJJYkRUZ7i3vT2F2488rt7vUk6FpojKVDx3nB0O/HebRKXKCJVQcthvgUSl97+7QWX
         Nsqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770401631; x=1771006431;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZoltbQKyGec+ucA9n8ImzXdn4Jsneih4XM+AaFlZmww=;
        b=bPbr6yE/Fd2xWqDfF+aIP/cHnq5FJTBpNPle/bVOxwBMr6KYB+35iibB1XY3Vmh6GP
         YyWaYr+LNj63oIjVz9jz+ckUKQyBAClh0Bv/1uwOzd3s2aoZzznM3KnO3oSyn3ycQ0c+
         3rBnov7+EdcqkT6ASMrced2R9FUg99r59hfvnDqSkbGD7/ImSSa28CRvMFnTqQqdZBTw
         Pbo9rTMkY6gnmGQZnFhAR25okoo2neXuonuNfnRgzRkVj3Qferlg2vbkvyMFNbwqgWoJ
         vbirckwiaudfVYaY13wLFVnatXi+22Br/xFP/PpO2nzt/N9PfKxTBQN1rLrkWYcEv/eQ
         K/mQ==
X-Forwarded-Encrypted: i=1; AJvYcCVl0K7buKs04lxbjGRsI2atYuyznQyc2Lu7R+o5BgvOFHDPtxrmi274vXWtkEMq+f9Z3gzoEWKZudVm@vger.kernel.org
X-Gm-Message-State: AOJu0YxJA+WdEAIuRHxjErZh9rc6QGhbWAM/zfKu2IZSNp860Etcc70N
	tHcT6+xc7JGgWiX4LOohZ4QYSS9SJdjKgriTDg2VJ/vY60uErM7FUPDR
X-Gm-Gg: AZuq6aIg5VHlBwS7MnPdQ09fy4BqsU+2jTUqk5DVFBvszcwAIC+azW6mBHjJkYhqUbZ
	l4RUICQZoi0rb825qy7NcOAkWZFPo6gAW+y0m+QQFx4Y3OBFZIlj8zIWftL/z6FX4oYyc7lnMkk
	9etZ4DBcfuCItD901nriNU7BF/uLO1jscBgemMQlRGRa3kop+iytrICxOJrmnJL9AHIUg34WIKz
	sh5XMfwr7FNw/u7IuijeHxiAzyNyoSaKhxsrD2BMfqWDRoRdN7MaLeHxB3pSrAHVyZsLicIcdJ3
	ADAdczoq9Q4Eo4z5IXt+VtBejd4cFeeG29C0BVQE3z4u31bfSbAS3lYg9BBDSZlfCaLet5irgoj
	lVkmbWWAS0AUEk7SrY0zwB+c6nmjaAnBYCKgMxHYtwJA2Z1c5Prs4ilYwdNbd6AqzBIoj4m3BI4
	Low2rh9XWEnHDw+Ek6Add8tdMw
X-Received: by 2002:a05:7022:92c:b0:126:fddf:3d86 with SMTP id a92af1059eb24-1270401f386mr1395195c88.39.1770401631027;
        Fri, 06 Feb 2026 10:13:51 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:44a3:2bb7:a035:fd7e])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1270433ab31sm2782500c88.11.2026.02.06.10.13.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 10:13:50 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH 10/11] dt-bindings: arm: rockchip: Add Onion RV1103B Omega4
Date: Fri,  6 Feb 2026 15:13:08 -0300
Message-Id: <20260206181309.2696095-11-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206181309.2696095-1-festevam@gmail.com>
References: <20260206181309.2696095-1-festevam@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-263484-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-0.993];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nabladev.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3C1F6101AE1
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

Onion Omega4 board is a board based on the RV1103B SoC.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ae77ded9fe47..40c6f7f90755 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -793,6 +793,11 @@ properties:
               - lunzn,fastrhino-r68s
           - const: rockchip,rk3568
 
+      - description: Onion RV1103B Omega4 board
+        items:
+          - const: onion,rv1103b-omega4
+          - const: rockchip,rv1103b
+
       - description: mqmaker MiQi
         items:
           - const: mqmaker,miqi
-- 
2.34.1


