Return-Path: <devicetree+bounces-264197-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0P30D7yVimmuMAAAu9opvQ
	(envelope-from <devicetree+bounces-264197-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:19:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C711163ED
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:19:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A8665301BC0F
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 02:19:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 452B22D2491;
	Tue, 10 Feb 2026 02:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mHgg4Q69"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB692C21FE
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 02:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770689976; cv=none; b=Dbho1eF/KqelKWvcSWYcygTLPsDbgXgeC/MskQ3FnXPHYfdOzmLQSId/eUrUis68tVeCj0nyyBD2KCpSogsvHKdYGpPb28wXC1B4V49xDS8s4NUbHZ6JrywDPxErOSSCDykD7Yuj5C09Cesd0ivzpwOrS/b2TF7YBxH5jPRvsYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770689976; c=relaxed/simple;
	bh=5sdnml06i2vfNbmnySkEQevUFy+mYjvbxMF9LN/YHXs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jCMPAyK1jYUKiFzpPSFO/B6oBosq//7zwG2YfvKbaQzbPkX7yaSWb+5Y0hZUZUy2JyfZLrIOYW4q7kvhsQmM7e6uz0CQMrTCZoMITJwiXHIcQYDHHHKZv//zz8sZoIjFUsT4SE1yuFQZqtZCz29nfsMFkCp9EC7lCcdjjIwDGI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mHgg4Q69; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-896f95e07f5so15851846d6.3
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 18:19:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770689974; x=1771294774; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z9gz1RSVJLy6gAcQFZXv7+6clW+DqqvonPSOlkDmC1Y=;
        b=mHgg4Q69mWy/MKHMyGgsCYEE5YfQN2fPQs2tAz5BBW/Ei1Y3W9JYyBy41hOuwyj+h4
         M8r3xVh1/kg740ManU/6cqdJ+yAEhDFh8RayV0ebyGG8A2ACJvRwD7blIXWZ5IApbgOD
         Yuxf7uVuRUgGa91jhoh9yfE0JUP+NTtHLqXsh6BNpFauHFed9W2ijuD00No5cQB6mubO
         GXzz4TkzuvvyPwGu7P+t8YfmgAG3Ac/MYGQMz/uOG0ByO2HuvgtMontWR3ZbQyjffcTQ
         fBskntmU4nDyDh7fV3NRgXowB8AE+N5ziPl0gwJJE3fLj4FTPE5hwt9zslnz91+SLH57
         YaUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770689974; x=1771294774;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=z9gz1RSVJLy6gAcQFZXv7+6clW+DqqvonPSOlkDmC1Y=;
        b=QBgTH2D6xwOh5SSrVVGlAk9WUwwgt769PSx9B0tg1Nff/eEKJwBqxW5YyXip74nqgM
         QddJraVxn4AZPFZTI++Zf9DDqcDriMWm2f8hRGZt2CG9qpYTjtTnUCDjqeZjpxxtZ72M
         qW7lR2oSmz9Pe+RDWv42Ifpy3S6L8+s1KDXaa2zrvu/wmmcx31X9wXN2fR1j+QZ0ciMS
         i69zDYXnZyp346qrpYdiAwk3pcl91jAWRz/ZA75Z8RL5CXz1ZHvdFGdSfuVlaCZr13LA
         zOIwUIShdtztqVOQQZx7w4rqMsgHqU1VTraVqtJuaAH6OdhnBRHVJkxiNDYnfG7o2g9z
         KQAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsHTb4TKSzmthSClymVYqUpJRl+xDhbtMaID0+IvYdmnsRiwi9LcKjlvcG4b67NtEPzx+tEiE5Nwbm@vger.kernel.org
X-Gm-Message-State: AOJu0YzQqJ1OD4XbG+H0gNKNFAmpQcwwh4R6qJP9xKh1Hya2AKQYsR+F
	X5vKcVV02DinIJvhqrjpPjSA6nlxHjjSKRKZDK3sdr0avjq4M1eqU27K
X-Gm-Gg: AZuq6aJJkQUy3AZEyRveQXgPq5OEsmQsgolV4p1uHk1fESnbMJIITRvhxudxFa2NFYJ
	nNJr0qpVyT5IHx9fUSYmlQ+B9fpqu/vJnSxppT+uxlvj7LICGvNj/lCh1swNGWQON+MQ1i/p8lQ
	67MwFbfWCy1CXnqMZFffMKOtN9HA5IYqkJXnkao0LanRhG6rryqbpEcPLGK6KwWUvujSlbUkOck
	+wkV5nuivW99ksPjE1/Ck1e1yTXHsv4qBlwEBu2RUEdWchRi9hIJnfrPL41iWNdkG+wZCVzI8Mv
	pm1oo82ib3HG39OT8SCOJizKNZinslJT7rzpvAftFDRWCmPw7y1xmirernzzlL9Cq0FbJk3ns97
	Jg1GV/o1imp3YTc9bifB2lwJYSZMuu/gxzmkBixQwS8A5pyf4+rSt0zeo6L/ntEFunfJEK7XypJ
	ctO0gHka2htawe1a5kxQmtre5KW6yjW28HlhTbM5V/JFS2I8K5BQUc6Y0pObBqsdc50RHERe3Wo
	EVQMVSI+QzaNDU=
X-Received: by 2002:ad4:5dea:0:b0:894:6667:7005 with SMTP id 6a1803df08f44-8970e51600cmr8801726d6.35.1770689974141;
        Mon, 09 Feb 2026 18:19:34 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8caf9a16240sm948396585a.35.2026.02.09.18.19.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 18:19:32 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Conor Dooley <conor@kernel.org>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH 1/3] dt-bindings: cache: qcom,llcc: Add SDM670 compatible
Date: Mon,  9 Feb 2026 21:19:55 -0500
Message-ID: <20260210021957.13357-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260210021957.13357-1-mailingradian@gmail.com>
References: <20260210021957.13357-1-mailingradian@gmail.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264197-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 69C711163ED
X-Rspamd-Action: no action

Document the Last Level Cache Controller on SDM670.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 Documentation/devicetree/bindings/cache/qcom,llcc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/cache/qcom,llcc.yaml b/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
index a620a2ff5c56..0de39b7b3f48 100644
--- a/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
+++ b/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
@@ -32,6 +32,7 @@ properties:
       - qcom,sc7280-llcc
       - qcom,sc8180x-llcc
       - qcom,sc8280xp-llcc
+      - qcom,sdm670-llcc
       - qcom,sdm845-llcc
       - qcom,sm6350-llcc
       - qcom,sm7150-llcc
@@ -162,6 +163,7 @@ allOf:
           contains:
             enum:
               - qcom,sc7280-llcc
+              - qcom,sdm670-llcc
     then:
       properties:
         reg:
-- 
2.53.0


