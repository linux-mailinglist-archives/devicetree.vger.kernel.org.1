Return-Path: <devicetree+bounces-302061-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFZ/O0n5EGqJgAYAu9opvQ
	(envelope-from <devicetree+bounces-302061-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 23 May 2026 02:48:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9412D5BC305
	for <lists+devicetree@lfdr.de>; Sat, 23 May 2026 02:48:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A7CB3028350
	for <lists+devicetree@lfdr.de>; Sat, 23 May 2026 00:42:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A84821638D;
	Sat, 23 May 2026 00:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C2CcTXqq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 945441E98FF
	for <devicetree@vger.kernel.org>; Sat, 23 May 2026 00:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779496949; cv=none; b=JuDbn8LDZV72pCVAA2ljPKAewNUJ0kctUsyp+Y+9TlKiQFyrtLHV9AYsSFKtsMF73BEsMygU9TlqutZPI/7D+n9VGe6QOlaFGhR94Ps8HtDtgi8+baP/i51+DwbbzvLKu8RkahTrgagPxxfoYXcQUoZ2LD4l+4IijvvogwO+aew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779496949; c=relaxed/simple;
	bh=WTjmW9xT/kuDq2cwR01E+NrVEZIyPfsyZsXKhA2rw8A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=S5AM3hGWOt5V+74CU1DpfSJVea5+kUKmucgdLZjudsNstr1ca0CO0Ub4aripTIMHKiSCkK1wxfzUH10pmBOdjsp/NUjXjajguCqsti6mbS4QsdbAjMl4dLeOZIzyDf0cxhFca+mCDr3Is5kb6S0frnGgX+GTzDT/hOzbQXb0yZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C2CcTXqq; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-7c2fa14795aso61993067b3.1
        for <devicetree@vger.kernel.org>; Fri, 22 May 2026 17:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779496947; x=1780101747; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dzB9qvJfZ/sH4nFcSz8BObrmKmMXW4p76N/bzQsrDwM=;
        b=C2CcTXqqEfg9oalnu3kcXNUiabLr8Kaw6Lm1EqScbWfIRfU7rimefLkw03ONO3cC3L
         iaUaOIdKR1kEx4TauZcx9n16FVo71PpfJ8LNcsacHvMse28c7cFISWP3/Pj2C/6fyJMq
         huMYKX/DOoW8eHtSWCBJMm/aSJYgAjrP7Gdz2NrzrbLz8nnJQ3LSqegxusxg8f9Eox/H
         dLHbYouFaDo0TqBLCb97ktJ9LcVU+4efGmrqtSXve11UsFG93N3D3XChth7UA0hbxBEX
         FVSpHxkY4dUzomsIRSwjNREiMOT9ZfZMaBh8IrpMyLMqJiKY5l29Q0k8S5SxkrpIB4k2
         BrQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779496947; x=1780101747;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dzB9qvJfZ/sH4nFcSz8BObrmKmMXW4p76N/bzQsrDwM=;
        b=LVjc5h/RTwNDRAiP9bKFv6XYHp1uoMYMj6Yy6Gv34EIb1u6d6j9dkFHo3R8qoJjjB0
         7uRs9HnFLg569XHk0Eeu4txe+qWFV3fJLZlswHWU7QZbrlDbWnvRnW/8wlGsQeMek2UP
         mzb1nbdHRRTKC1Y1rP0ZqV7JqAAFAxt1V8w8+GXomk06GS3eZvaRafkGTJcinIgjtrB4
         BQ8GS/LMzsYN1mwCscZBvzGJKIi/3Ka4LYOLpUBznvqvW4L4fxQV8DX/rN7kifdHiTzN
         vLFA7i1IyYS4adEb/e0GT6Jva8Fqi3LIiLP4MUJ8J9GC0riouWuRqDA9AzmRLnlOe9CW
         MyQA==
X-Forwarded-Encrypted: i=1; AFNElJ/mlDzw8wRqECDmKbS10e09dxWAnHT2hn55ipdj9NNXvvFQvgFpCJOhsUyO2F/yq81vV9TrbkIEPHcU@vger.kernel.org
X-Gm-Message-State: AOJu0YyIoLPhUNx1F5H10MfwCTiuWSG8+li2W9NOOJsAQABBrn/5OBGf
	UAFgD/gRfzyPEYABVhbUQZz4hpC3s/+DczMa6hI4mPMa7eugf0IH1t/I
X-Gm-Gg: Acq92OHRQahQ6tsOiYG8bXvoDNIZZJFsVNh7f31LATNSY0ETzmwmXtcgdQi4BJgOM3Z
	nw09wb3DolgCUmy4QKodgp1L+HVl6bj5pccFfXxuwa+zuYG/NgQw9lCpHWZFr0b26O+D9EtFKLA
	7NldyE28boPLqEIq3YPv3K/932tuyl3XXuPt5MmR1p3fLDJxzkkDnwDnX3RAMn9UPMpg+QgQRdf
	AfaOXfeqSFsbIK8FV1mYKvzze7SNDDtL984P1zlaw8MXR5PV+E0EOfRC9IzwwlvccG4h3OhVTN9
	glslS2kaAUDd+jG3jF34BiIasSr45g1vXcHaDTUpuXerMyhXoVqjYViBUHvDDqZ8j1U5ZNifVDR
	Z7Tlr8oObeSj98OtOi25SVOFM0fiMGkGS/wWOtUB1IQLkdxxBSQouFZZLs4y61xCLVap0qAruT3
	hmDguAhEcFh5JqF0N+JgNBL/O4XaIA0gDkORveJN6w6C6OUYJfzBGA9M+N82LgpqY=
X-Received: by 2002:a05:690c:350a:b0:78f:bc2b:83f5 with SMTP id 00721157ae682-7d338a74076mr77827187b3.20.1779496946628;
        Fri, 22 May 2026 17:42:26 -0700 (PDT)
Received: from fsh.attlocal.net ([2600:1702:56e9:4b40:e3a9:78c5:641e:a58c])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7d38c8396basm15345037b3.44.2026.05.22.17.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 17:42:25 -0700 (PDT)
From: Akash Sukhavasi <akash.sukhavasi@gmail.com>
To: krzk+dt@kernel.org
Cc: Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: net: mdio: remove deprecated .txt binding stub
Date: Fri, 22 May 2026 19:42:23 -0500
Message-ID: <20260523004223.3045-1-akash.sukhavasi@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[lunn.ch,gmail.com,armlinux.org.uk,davemloft.net,google.com,kernel.org,redhat.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-302061-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akashsukhavasi@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 9412D5BC305
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Remove the deprecated plain text binding file for MDIO. The file
has been a dormant single-line redirect stub ("This file has moved
to mdio.yaml") since commit 62d77ff7ecbf ("dt-bindings: net: Add
a YAML schemas for the generic MDIO options") in 2019. No files
in the tree refer to mdio.txt, and all existing references already
point to mdio.yaml exclusively. The redirect no longer serves a
practical purpose.

Signed-off-by: Akash Sukhavasi <akash.sukhavasi@gmail.com>
---
Changes in v2:
- Add justification for removal (Krzysztof Kozlowski review).

v1: https://lore.kernel.org/all/20260521144235.3414-1-akash.sukhavasi@gmail.com/

 Documentation/devicetree/bindings/net/mdio.txt | 1 -
 1 file changed, 1 deletion(-)
 delete mode 100644 Documentation/devicetree/bindings/net/mdio.txt

diff --git a/Documentation/devicetree/bindings/net/mdio.txt b/Documentation/devicetree/bindings/net/mdio.txt
deleted file mode 100644
index cf8a01054..000000000
--- a/Documentation/devicetree/bindings/net/mdio.txt
+++ /dev/null
@@ -1 +0,0 @@
-This file has moved to mdio.yaml.
-- 
2.54.0


