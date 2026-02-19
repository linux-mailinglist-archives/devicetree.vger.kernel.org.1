Return-Path: <devicetree+bounces-266722-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wEgiLyh7l2m6zAIAu9opvQ
	(envelope-from <devicetree+bounces-266722-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:05:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4D9162941
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:05:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25C29305B45E
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 21:04:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01845324B1E;
	Thu, 19 Feb 2026 21:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q/lXx4U5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F711325496
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 21:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771535067; cv=none; b=b2ShLXoUUeYjDX+D6bZcWjhX9+GliENBN5fk4INIwXLFAk/Sn24VD9Uu3LpwsR7cTqc+qUG3DpqaTH35awomxSnbtXwxRx8orvsa0EG8UruN4WFPBRRmDlQQVOgVD7mLqo3mTiqbhG2GBrW89OiQkkSlM0O0nmcOtctM3LN4cB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771535067; c=relaxed/simple;
	bh=pi1fLBggw2w5nq+ku9XGxrPVz6Xc+gXO0i/5XkcUNq8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=coPqUv6s6NY8Y2vvoRIjQNpWnHB+i5s/jTVdTOGzAkrVZfXIE7TM+uayrZN/YEFrrK4cq6cHsopSJCPXw77/ARmGDbYKy8ReuR2xOzxzQpkCGIO7X0eF44sUHM/YzzKUFODfiPsABZP4kw21N5fG0vh4MV2e4cdytT3sA5u75hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q/lXx4U5; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-506a1627a09so7688351cf.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:04:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771535062; x=1772139862; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gnop4z34aVye00gIQguUoewYT5lM9SytbUgSGtePF4w=;
        b=Q/lXx4U5Jm0EPamJb0hescTCYgC8eMtNhM3GnPwyJrtBObkBbWwD7WfCuY2as90OYm
         HqghXxuHPxfvXJJIpgA95CHrAYkXvVOSfIjiQOc4NDbR9JFJz0JvwExxwFHtvr4MLDw7
         r6JS8qIErG12I0+jGWzZnlyXhwUOX1p4yd2SexLRn+OVcY9Z2nDgDfAhY17FK+A9kQBx
         iIRHTIoGg+tpSJJiMwZhH1KRzY34lBJo/ugphsMeIf4PQ8BWuqOzKsA/O0UH2TsMT8th
         hXYW1YBW9qcQR+EfmiyRdDct4DWVk7Gt+kwZV+Dk/Ws/NgS23TZHy1vWnsrcn4Tv81Jh
         fN3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771535062; x=1772139862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Gnop4z34aVye00gIQguUoewYT5lM9SytbUgSGtePF4w=;
        b=W93MI9pQbTyUlUrN7oRm1mSBbBzwD6pzrt5gUyqeFIB1Mmdlkf//QL67LFlpU2hJJ6
         rs3ZSkDguGmq/sJdjWTr5NkDHERe0PArXfcOeF15uYSOh4dckEEEY6birlWIjphxJdOU
         GTbq/5pbi6En+qoZKtH0+E2xb+5oDygktEa43aph4ndL8MCyyEnNB5ZaEd1bEtm1KS87
         oHBnxCUP8sDACT97EdI41143c2mVhIDqmeeCCUBjc7g+QJWVvm5VDqNcKISXHgvTo2z0
         GKxl6bGWlnHjD4X5otkk2nDq7yqwvvP5SXIAxsthbgjfsdqunRcX4VKhKYcjSsjEuAVD
         yuEQ==
X-Gm-Message-State: AOJu0YyUPhaZD61M0X3KTHSKx22ZfXh8VL3VXvO9UgwwMq4MMFxtv3Xi
	hFReRYkYBlyAJtC/y5u+zHmm5DQjKYOkw8Gsat2sXP/CWs57UmMH7BBz
X-Gm-Gg: AZuq6aK5TWXsdXOJpv4H1rAqTQQmnwMYxkxerTFD9Oq9kTAIicOn+muAPoyncDP6t2A
	JiKcj+fjQG8mppTlBqxOoahyxy0iCaz3pbruBITL55wBTzBhFL89OmYmVa3WWQt1OgfPcpMFpva
	sRivw9+4h9ijK2K4QiYmKRK793LA+kHpQVs1fVzpZHcoUrUv25n7oq0NXg3jUy74MWEinL3cC/e
	zX9dLkU1qweZf/j5g1oBboV2fh5mYQGuCWP0PiOD8Y5Kxlm6j4HGEjRj9ZqSassV8IIO56c0en8
	LvnDuNEZCS3bF3hB5yFfTndwMKpQTqYXQy0t1MxBr6Co3OX72BLeF4HLVZ7Qay1Y90uqf04+tGV
	lRjdH8RLlCSn3DO8db7Ui99KsCxUtAqnEs4KoJ4IvfTr08ZVQXbe6Fu650lqnBPMlOn961yXQ9R
	zyYGAvqVNeJodSWgxYmUUPrHGHEyYulNNoMZrZo2iqGtniUZEnpdu1+mgx2OFbjpWleEtRv6GVG
	POh4aV1d4g=
X-Received: by 2002:ac8:7d55:0:b0:502:9e5b:2d83 with SMTP id d75a77b69052e-506e9264731mr79699451cf.75.1771535062155;
        Thu, 19 Feb 2026 13:04:22 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-506b275d59fsm153971511cf.32.2026.02.19.13.04.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 13:04:21 -0800 (PST)
From: Mithil Bavishi <bavishimithil@gmail.com>
To: aaro.koskinen@iki.fi,
	airlied@gmail.com,
	andreas@kemnade.info,
	conor+dt@kernel.org,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	khilman@baylibre.com,
	krzk+dt@kernel.org,
	laurent.pinchart@ideasonboard.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	jesszhan0024@gmail.com,
	rfoss@kernel.org,
	robh@kernel.org,
	rogerq@kernel.org,
	simona@ffwll.ch,
	thierry.reding@gmail.com,
	tony@atomide.com,
	tzimmermann@suse.de,
	andrzej.hajda@intel.com,
	bavishimithil@gmail.com
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v6 2/8] dt-bindings: vendor-prefixes: Add Doestek
Date: Thu, 19 Feb 2026 16:04:01 -0500
Message-ID: <20260219210408.5451-3-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260219210408.5451-1-bavishimithil@gmail.com>
References: <20260219210408.5451-1-bavishimithil@gmail.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266722-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bavishimithil@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[doestek.co.kr:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6A4D9162941
X-Rspamd-Action: no action

Add vendor prefix for Doestek Co., Ltd.
Link: http://www.doestek.co.kr/

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c7591b2ae..70a195fc6 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -437,6 +437,8 @@ patternProperties:
     description: D-Link Corporation
   "^dmo,.*":
     description: Data Modul AG
+  "^doestek,.*":
+    description: Doestek Co., Ltd.
   "^domintech,.*":
     description: Domintech Co., Ltd.
   "^dongwoon,.*":
-- 
2.43.0


