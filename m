Return-Path: <devicetree+bounces-310927-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RfL+IcP/K2otJQQAu9opvQ
	(envelope-from <devicetree+bounces-310927-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 14:46:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 417B7679766
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 14:46:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=sirat.me (policy=none);
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310927-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-310927-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7D6743014749
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 12:46:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 293EF3E1CE8;
	Fri, 12 Jun 2026 12:46:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABFC13E274E
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 12:46:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781268409; cv=none; b=qo+UU4pRf46hOOtOrhCj9xjkNIuo9HMaNbICHtP4VYUq++WGg+7cblp5Jb/9Y6d/ex0tSztagJvwQcaeEQlvZ750aaj//BieS/rtShW1MwRiO0F5+jo0idRf+bIx2mrxixfu0OJ/cLV6in7b1OyfqOdOF5Glid6IwJMXuBkPlkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781268409; c=relaxed/simple;
	bh=+AxFDR9s2f5U4K/Sa51Cyqr9XsO4976gs5ZNljqq3X8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VMaL3kWyHoEiuWB/NclOu4lSE5sKJrV8qcK8caqmPhsHY45sN9wrCCK5J2khSxfjArZGXrNbtcGHl68mE8u+8hOjwYhuqnb1/0Us20lzJybhR2ZxPUeH1vuT4EjcmwKbwn2+S319YAeZ8VdwDTEk17gAfrnF9bHPIIi8extO3Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.214.180
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2c0c3543590so6396015ad.2
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 05:46:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781268407; x=1781873207;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mokoTEvD6tpZww6g3gJhOSnEQ3UgjOZ7Y3EYoksKiAs=;
        b=CrxOjud6i8yJsqVdcROM0HbvGr0ExyIDaitf1QTRy1yp/ztacNm6l9lK0euJ7eAsG9
         M/5YP5El64OGsDDJ0odhjnpidpw59jsuzdggc/5Vy9EeIQjplmiMkYJPJclgEpaDDit/
         WjLVOXjX6W5EY7Kw+KTvoTvjQz7spQNS4+S7hy81S7jW4anHQxXa1zAC2qrF0skcjkTz
         KIXvpaMLUPz4QSl5z1k2iSgsc5BJpoahwqftNxVFsyqM8sc/Hyjy4jZGxJL+b/QGy2Ms
         O9zcG2om05uxZPNsPCQgYBA4AVMn2yCQRpGLW+uo1iTI+wIMNnQLWTm0zErVnxZn1gyT
         a38g==
X-Forwarded-Encrypted: i=1; AFNElJ/9Ds687xSb2DJpMqBW2wC+H9U7kLaODq1b5BgG1C7ZiwltRVI9o5RZQoliiJ0AS+stw5ms7ZwhHKCn@vger.kernel.org
X-Gm-Message-State: AOJu0YzqpVvsK+hq15xryx/bdjytukkcPBN9cGbJhsC30oScoCQfzeua
	PCY15BUuqm5LKIsy/ip3Ftl4mU4lbMrRhNKGnU/5eAa/vlvcHZNo3zGD
X-Gm-Gg: Acq92OEy/d3NveoYNFr+/l6KmQ5cuJTXf9sEt83mo1WfKmf+uB8Aq6/kX8F5J/shn67
	afjbEVFfE0vtI/QAIaV/BLAALK/riaFl8Wt6v0+/uFCTHFn1IwDd/KyvEgZYsAP6SdLu3wKIYht
	k9mtq7OaXvn6lLF0DQJxs/IWB/Ml8W8RRjY5BnKUup89076xIK96t/MtjTUtkMGRhCzJmJ4CRYF
	GHm6IfKYoK6ko2+MPJPMUvVVerHp91xbKpoqmaE91QpiPcO1bJNXGibBe5ghNWGQKaRVzv0EVjp
	5GMW/2hfzCXdLkfBcT9qWRPOjJFyBrRR3af2Ok8Yl/xSw2iGPBA0GlYjHKiTsYAnLUKyYcl4vPn
	Sr2mW4MYBJcvJ0PlXPS2WZ99wC9zVe2XfzsJciPRSmNBA8HdimERvvYMTF4KgLzZ0eHzOR1zduQ
	7QqCplUbdWxx+jHLOHARXDveaYFXj3Do3gUAOH4TSQk5tWCr1boYVXYMa/VRhR/SLmbRMFgaJH8
	0VP+XUAJ5W7EKkz4f093IXNMG6DijR/6VTT9HYzFxMEyZnlkRHIw30XvaZQp1piM2oiRI2wL7Iu
	oP6ICA==
X-Received: by 2002:a17:903:8c4:b0:2c2:5446:30eb with SMTP id d9443c01a7336-2c411b7e5a4mr30936005ad.11.1781268406922;
        Fri, 12 Jun 2026 05:46:46 -0700 (PDT)
Received: from fedora ([42.0.4.231])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c42fbb5411sm21115625ad.32.2026.06.12.05.46.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 05:46:46 -0700 (PDT)
From: Siratul Islam <email@sirat.me>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Siratul Islam <email@sirat.me>
Subject: [PATCH 1/3] dt-bindings: add entry for qstcorp
Date: Fri, 12 Jun 2026 18:45:25 +0600
Message-ID: <20260612124557.13750-2-email@sirat.me>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260612124557.13750-1-email@sirat.me>
References: <20260612124557.13750-1-email@sirat.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[sirat.me : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310927-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:email@sirat.me,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 417B7679766

Add an entry for QST Corporation Limited

Signed-off-by: Siratul Islam <email@sirat.me>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 28784d66ae7b..11aac47f90ce 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1355,6 +1355,8 @@ patternProperties:
     description: Shenzhen QiShenglong Industrialist Co., Ltd.
   "^qnap,.*":
     description: QNAP Systems, Inc.
+  "^qstcorp,.*":
+    description: QST Corporation Limited
   "^quanta,.*":
     description: Quanta Computer Inc.
   "^radxa,.*":
-- 
2.54.0


