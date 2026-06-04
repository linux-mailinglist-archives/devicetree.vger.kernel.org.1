Return-Path: <devicetree+bounces-306928-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tr5AO82RIWppJAEAu9opvQ
	(envelope-from <devicetree+bounces-306928-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 16:55:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 454226411E3
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 16:55:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=XGl3gAHt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306928-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306928-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 223673151298
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 14:41:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67001480DED;
	Thu,  4 Jun 2026 14:41:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419F447F2F4
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 14:41:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780584085; cv=none; b=ezUBV3R68X0gdFKNjisje4MG0zm/56WmelW57tOQW09wmLBZyK/ZXa/H/t2vLdqRmfmUIOt6LkQ1NLIX9Yfk9v/nNLsclfsQda/l75qDqWkZE7g8w9sbdqNrORXYdCKdbJlPdlb+V3/6vXHF+/vK5PUvKc/zMxcr8EZ/o0Fk+2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780584085; c=relaxed/simple;
	bh=KbiaoqaEr+57DhIIyFlQholjL4U32iOTFODfq6JbNrw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ma/a3SIGkkuzPIuClhmdM+lI2V4fLAHwpNbmh9VvEM27YFiHcOgk1bexM+PbQOsPlpwY4piR/DJ5ENRx3WfxnM38S2+ova/vxFV/zOLxaxXjzkb9GNd0ILNxFrnb9OF2cLJAEHXTgej/LuP1U83oh0yAXX72breJvxJ/urzH1VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jms.id.au; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XGl3gAHt; arc=none smtp.client-ip=209.85.210.181
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-84229481d44so380493b3a.0
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 07:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780584083; x=1781188883; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S7ZZvgDuAkj0R9mp/h2dtgYXrKsMrnp+U6EM1fwkkp4=;
        b=XGl3gAHtZo8zlRoEzzDpAzLRJvlE/Y+R2W05cYaIN+3ZlBIRVCZtMOO4RtJUqMxnxe
         Aj8LJUw/Ou5DyQbNj2ywbGSVJweIe9r7h9oef0+G6mjZC8RzDO4wuvehtN2TzgkzxTgC
         FbJQetTUfgA6M3c/evUHL1XKRpcjuB0EHDMC8DXors/bL7tU9mvTltZrC41K0VofdPWM
         wN6cXU+sXamIdqSQYRQqcLvdG5gTxsiFI2f3OBkaN+3O0+CYNf3t4swOB4rFLBazCM1s
         txK/M6UtBi3Ob/0KfqUgUkCdizVk1+NKDoIvdX+DL2v6BTpz1jBxG0ALRISqLNx/iRRG
         aDdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780584083; x=1781188883;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S7ZZvgDuAkj0R9mp/h2dtgYXrKsMrnp+U6EM1fwkkp4=;
        b=IxOLYwnFfnHYSDcpocKdeVK1+mSfOoDqaRZ1FD7TZyL4Y1L1RE29PChqyCpDmiMi2z
         TZnxdrOf48z3L7zxagLiW0w+S54IMvJVnMa4zIXhfUiQouEXnOhkHrEX8q9sPARMt4jG
         Ha2LmLZ94zlffQHHE9FKkCyuCMdX+/7NCGKHfBcJdXyDBgfZlzmsGiNtrUg+7+/AQfbC
         rDlWX9xrF6jbXRJBZGZzc38qvIMUGUyRogp85Z/J1uJIgE7KB0iAb/L/CBx5EKu2jfj5
         RvqsJ8jYcMhboVw987Skx/GjlH7Wx572u63ymPm64FShe54BR0H3zXBFMpXeR6/K8b8Z
         krrQ==
X-Forwarded-Encrypted: i=1; AFNElJ9Kjp1iKZlanjk0ImvgxNTlygLpdyobrT7+NZ3cpoZ22+0N//2JM+cnXd5N9afrVkG9omes4wun+RD+@vger.kernel.org
X-Gm-Message-State: AOJu0YxWGPhVaAhHKwjS4Oh6z5fOtoDqlakmb0npioqqUnv0QV/pSddH
	f8Y3DpA0RRrpy8+pUJ4xQIZf2YwWBWF4s0GqgUsxpWqR3uwf0cNKbIfU
X-Gm-Gg: Acq92OGL2ATvMCY1IvL1/WKUHDB70XPeBUTx8RHxmILAVuII1WnG5xZ/ujJqliDuzJ4
	anl244V/ontWYcRiqHdB/uLFfAzLZ4uNkOaSi7BMTl2udlj+s4uKnr6sDOJ02lNabmp7UGBlSzf
	9Ps0fY0YgsvvToXGbxPuMuRLq9IoiOlgI0I2rD3c1Dt0QLp06z5Am0+3tFhf1TMilzRO4OuRDv4
	V78NgFqNAc9v7TTZ9A0o4E6zLn+RAuVzi8tEgbb0FNY8i8qGGum82Fh/wLe0qcIz790eA/3vXHd
	e3qZJZzCcEY674mHJISWMHt9BKGgtgjrERHlOjxtcPOeGbNl8IeInp/I3beXMzR+ckbDb/g3fkE
	KAxtb7sGhDndYAFwOterUyZBbWYNSWlGuutk5B+viYjLt9XjiL4vUIQZU/hcJnTEdvJlG0LUvK0
	JZkYZplcMkJVslx9OfJ+PmSETDVXD9Qgt25wetuO9ZDe2B932PlYyhWKAHMxiw++ZKDRZYTz+RZ
	7XbZ6da7+byckBl8RNWdqiDsUVoGnwkrzbqCPILOZHJ58HGmFfFwWlFw3nSdDF+DFaqGdHQj2Y=
X-Received: by 2002:a05:6a00:408d:b0:82f:2b0:2809 with SMTP id d2e1a72fcca58-84284e35c75mr8188412b3a.1.1780584083550;
        Thu, 04 Jun 2026 07:41:23 -0700 (PDT)
Received: from donnager-debian.. ([45.124.203.15])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84282372868sm7279753b3a.17.2026.06.04.07.41.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 07:41:23 -0700 (PDT)
Sender: "joel.stan@gmail.com" <joel.stan@gmail.com>
From: Joel Stanley <joel@jms.id.au>
To: Paul Walmsley <pjw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>
Cc: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>,
	Anup Patel <anup@brainfault.org>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Nicholas Piggin <npiggin@gmail.com>,
	Michael Ellerman <mpe@kernel.org>,
	Drew Fustini <fustini@kernel.org>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 6/7] dt-bindings: riscv: Add Tenstorrent Atlantis platform
Date: Fri,  5 Jun 2026 00:09:52 +0930
Message-ID: <20260604143957.668047-7-joel@jms.id.au>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260604143957.668047-1-joel@jms.id.au>
References: <20260604143957.668047-1-joel@jms.id.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-306928-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[joel@jms.id.au,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:pjw@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:palmer@dabbelt.com,m:asrinivasan@oss.tenstorrent.com,m:anup@brainfault.org,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:npiggin@gmail.com,m:mpe@kernel.org,m:fustini@kernel.org,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	DMARC_NA(0.00)[jms.id.au];
	FREEMAIL_CC(0.00)[oss.tenstorrent.com,brainfault.org,eecs.berkeley.edu,ghiti.fr,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joel@jms.id.au,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jms.id.au:mid,jms.id.au:from_mime,jms.id.au:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 454226411E3

Add compatible for the Tenstorrent Atlantis platform.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 Documentation/devicetree/bindings/riscv/tenstorrent.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/tenstorrent.yaml b/Documentation/devicetree/bindings/riscv/tenstorrent.yaml
index e15359b2aab6..7fb640e38455 100644
--- a/Documentation/devicetree/bindings/riscv/tenstorrent.yaml
+++ b/Documentation/devicetree/bindings/riscv/tenstorrent.yaml
@@ -22,6 +22,10 @@ properties:
         items:
           - const: tenstorrent,blackhole-card
           - const: tenstorrent,blackhole
+      - description: Tenstorrent Atlantis
+        items:
+          - const: tenstorrent,atlantis-evb
+          - const: tenstorrent,atlantis
 
 additionalProperties: true
 
-- 
2.47.3


