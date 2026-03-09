Return-Path: <devicetree+bounces-272846-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMFdNl+prmntHQIAu9opvQ
	(envelope-from <devicetree+bounces-272846-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:05:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D094237894
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:05:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 14C43305562E
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 11:01:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A568A393DF8;
	Mon,  9 Mar 2026 11:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CZM8EwBj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AFC03932F5
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 11:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773054074; cv=none; b=Qo1+yXJV5kisLJbxfebXm8aABqPMfU2/oEH3+JVEqvhfpPQu0zG8o7P4l5aaTPF8J2QZZprundhRDxTkBKYgi7XkdhSmLddwhteLOuSOsnLLGq4+l9ifAz6Hjcpxw1ABPBe5OwALxC/FQQYZGb42TzHEzB5iwRchp+//jj6+0pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773054074; c=relaxed/simple;
	bh=L2/qOxKHTQKz7tTe9NevqobBIQclt/atXpIP78HnnLI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ULp79EiuY7veN+7nl4JQnb4MnS0nba2uDkk6YvTuUGaTsbx+Dls65Q2favc+FWgYHH5pi0dn7MRsdxvC1UM94Aw1iCN1LcAjJRbxS+Em3Gv7/FO6wHBikrLIQNFCjRtV6IOKOFn0G0nMGKA2LD/ep1aEO73wovz7oIAxY0+vb74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CZM8EwBj; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-3597fea200dso6144757a91.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 04:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773054071; x=1773658871; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vdfZbw3s1pisbWO+qyvAF+lK8p/8MUQFjHrM1SRRAD4=;
        b=CZM8EwBjuXYzMb/pKHsYz6zESqsuMGqyek9eo/kqQEoGdarIYPDJkQL8zeG42vDLeU
         YAirayWNoIgnbJoHdNfb0yPJNZ2qie3QBuTADlmCz8FT6xPJF6QcIdaeQsmCVNA95dDV
         qymShDUkDXI1m3SLPWhvc/5Dxv9kBkwVJD+h/hnGKamW+e50SQvcHJ/xysqAnlpY8tdV
         hpScboRWdKFynu7pYbjhPM3ZicfGYFlQOC0S6gr9xzZqx1Yq082id+OPob8/6hdsNKty
         d8PfwD761yDkI5YtMxRxAWeFdIXTGQZ40xD56jR9UdD7GkA2diIS0AqRAkSlRL6TVrhW
         DTTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773054071; x=1773658871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vdfZbw3s1pisbWO+qyvAF+lK8p/8MUQFjHrM1SRRAD4=;
        b=S9xQBvZ2zZdsBHXZg8AxO/QnseCnTRf6cltFYQBBaSr3lFBTSGwOP+/0buBawCClRW
         9BxWHkczfGM1+LvHR05UPA6V1q82wxXgjMRK25WyIwmT1Qu2USN7T9IC9S7UERrf63hM
         l6HH4N4AycAUO8Ww/gQDqisboaSjHRt9iUnGch6Cc03wIA4dpA9s5P/qCKc3EqSpKFYv
         hd2ZlNjLGpTNrpdUahvSMy2zST4Gf370zGZuKCY9iGREV42mae7ja+xuts+S2ihRhYTE
         fxsryG8y3YsB4ibD3du7kkxVIHZgqFx9Hur4fO3GWCdv+Gi729K7XKLvDJjYdfZr6Pa2
         FIMw==
X-Forwarded-Encrypted: i=1; AJvYcCUJR/L/vc12Wwzg37R+PXDio8C0W/Imcz25Xq3e0dHb+CXB2FaM4c3GWHXRfW+s8bbLlyieNIQknoVI@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb0Em1V7HeXZJBhGxNkuyAtpSTtUlLkE6n9Bl8lpKOz2iExLlB
	76E+G4CH6fToTUK8CGef7KJo/7u/2Ol4zcIfmuw82NDjTc+vWuz41pzz
X-Gm-Gg: ATEYQzzVyZ99rNjkDPph2GoU2sUHu+EC49g7Z8LkbDOLjIU/YPq29KO9o48UO//twcK
	Map4DnviN/pg5wEMqmMoI103PQjMczHwLdjhLZerViTTpA2i9Fh9ob0gzTOAK49nC3YbBVUCAeV
	spg4BJ96THBdWNwwQEnY1cUxd+4UTDH3ki3SW/gol6iOIlnfxLXRv2SnJxhw78b1uAEJBG3yk5+
	QAkiuWcdSUbxS56YATaITBfhHQyQFRC9RfvQVzKYa+Fw5tET9iaO2AsiLkKnpW7eBWDMUC2oEAr
	/leJDjUJfw+vN74qvTWaag2/6wdH5/9YEjCooaqqJcJb6LpUnLlCwIT8zHQ/RKfh1zyD3R02zEz
	wMXDRfO48DxOftk09iaiPaP6Pox0KG2QB68s0WUe6oUY2O+jCZJ+mKu0Yzya4fM0IIg0t1aN4rK
	vzaNUnCgaPRaa5bjTffhS9T8WZmO2AKki3M4s3Cy6ZH8Da5YRsAOMe5t4ILA==
X-Received: by 2002:a17:90b:2891:b0:359:8ed3:8a65 with SMTP id 98e67ed59e1d1-359be349690mr9632532a91.34.1773054071032;
        Mon, 09 Mar 2026 04:01:11 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359bff279f4sm13268296a91.0.2026.03.09.04.01.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 04:01:10 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Michael Welling <mwelling@ieee.org>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	phucduc.bui@gmail.com
Subject: [PATCH 1/2] dt-bindings: input: touchscreen: ti,tsc2005: Add wakeup-source
Date: Mon,  9 Mar 2026 18:00:43 +0700
Message-ID: <20260309110045.108209-2-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260309110045.108209-1-phucduc.bui@gmail.com>
References: <20260309110045.108209-1-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 5D094237894
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272846-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,denx.de,ieee.org,vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.993];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: bui duc phuc <phucduc.bui@gmail.com>

The tsc200x driver uses the "wakeup-source" device tree property to
determine whether the device should be configured as a system wakeup
source.

In the driver, this property is read with:

    device_init_wakeup(dev,
                       device_property_read_bool(dev, "wakeup-source"));

Document this property in the binding to make it visible to DT schema
validation tools and to clarify its usage in device tree descriptions.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 .../devicetree/bindings/input/touchscreen/ti,tsc2005.yaml  | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005.yaml b/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005.yaml
index 7187c390b2f5..c0aae044d7d4 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/ti,tsc2005.yaml
@@ -55,6 +55,9 @@ properties:
   touchscreen-size-x: true
   touchscreen-size-y: true
 
+  wakeup-source:
+    type: boolean
+
 allOf:
   - $ref: touchscreen.yaml#
   - if:
@@ -97,6 +100,8 @@ examples:
 
             ti,x-plate-ohms = <280>;
             ti,esd-recovery-timeout-ms = <8000>;
+
+            wakeup-source;
         };
     };
   - |
@@ -124,5 +129,7 @@ examples:
 
             ti,x-plate-ohms = <280>;
             ti,esd-recovery-timeout-ms = <8000>;
+
+            wakeup-source;
         };
     };
-- 
2.43.0


