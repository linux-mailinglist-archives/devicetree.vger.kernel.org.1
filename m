Return-Path: <devicetree+bounces-276011-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICywMHTCt2n5UwEAu9opvQ
	(envelope-from <devicetree+bounces-276011-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:42:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AAF296614
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:42:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 309AD30233E1
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:40:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2513C382362;
	Mon, 16 Mar 2026 08:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PE9jzYeG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CC82384244
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 08:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773650418; cv=none; b=FQNT7UGfCZtPn1jdqDnkyUKrDBn0JYzuyuazqsGM27kx4t9jj9AEZbQMgbVT8fW3X5YnoELqQZ1plZlVC7DGFNel6quPzgdwky/uAObQy4j4UJt/WNm1IfH05BnfzDm4XkAqwGDKoFoIB4AprF5TWhYQTmHaSmSf+AANM8eOtRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773650418; c=relaxed/simple;
	bh=RqDoIW7WugtGdMXzE2eIsOee9DNLTBABdKsQLGxjo/M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fvxZefcNIHaLxeBqmHPTpDdYwVGr9kVqE90KQzTEDAVr82KNLmie+TRpohkEjxM9d4ho5fLhaqfbzOWO7aM+w3P7sypWqcO/MCTXSYtGmXZpcl11ALqEqWMM5HiNElTHQoSwQ3wSvnAXT2n7lIGO5CL4nZoivYN0lOw+VgLFtoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PE9jzYeG; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-3591cc98871so1885236a91.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773650408; x=1774255208; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wOAXNQ1o+ey9uPPxnP3jzFRrFOSx7L8yN/7up+eSyGw=;
        b=PE9jzYeGulKUydIB3wSH9fhXim+4KpvdXtAEea4zUNQuvWog7L7glTEMUi+UgmXYaJ
         knuqP2+ub/MQQ22d6a0oj66jTdoicscvj6KC88/N2Cuzq9b7i2NDclwDZJkBlI5npxTT
         55x/MBDoZHfuVbPHyyq9KJFvD8iKRsHA1mkfICDfFuTu3TNezG0bSjFovYpwSleDhder
         4iHd96BpBUwC9K1TXtZCSb4gIPurbO3oKdSC9IU//dKfEZfc9m5GC+tNVF1/Qc+sH4bB
         dJW/54rlVoUWop/xV/fVfdjLdGDSRZyBd2KgEo1EXvAtb9HrOeFAS+y8YcntjA2lUzk+
         YfLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773650408; x=1774255208;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wOAXNQ1o+ey9uPPxnP3jzFRrFOSx7L8yN/7up+eSyGw=;
        b=gxpNwIvnKiL0hnURaQKRay0LcHqDyb6r6ZzENAnXfEPp8PCsAzL1fVu5x4yH/VDmMG
         FNorpc3TRfsXXRZGeX1Z8XlVbBiMsBZHid6gJ2uGNT4Qtm/xbNVFfADtjt9pRvi3ITVg
         dcdNPR5o4MzDapfQKvLW7iMcu+sB0IeoqV5XgGEW3v60Is2fwoBsW1kt5pGm+Be7xFC0
         JOJDtscu0d5q9TEyyl7QnzqoI+kHskG6Llw+U6xOcirOjGIfr1pGOIWTgwpLjxTfeQqc
         9Wn/GmfXshAYclsT3EzxPpTEyPIS9CECkvVDFy6NgJHMl+3qKGF6vA87rYy3ncQz0lU+
         8dpA==
X-Forwarded-Encrypted: i=1; AJvYcCXpFs4mRXexh5zZScuBilOByp2ItGL1jqECJPy46dN8k+ihIl28uCxv5SdPOYh2kjEvIhG+td8MESgE@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6mAkxubsC83sfCb0YOhP7PA78pF7QL73tP5NMGcxTmBz9RUqt
	bqPou83jToSBOST4ebbTbayc+tVhCKPqckuqDy2BwNdhtXHALMDMal0i
X-Gm-Gg: ATEYQzzLYoMJNZAVGm/KT5NO177Nu6jA6+ej/FcVvlKQSGqI6YKyelWADhsWctn1wXE
	JlHS+p2Lo7us1l7EWzOsixIvJmA9hYjQGR6wLYkBMfFuJkNWO8qbvWHm9ZnMjcJy/cNJck5WR/T
	2IB7KruxQ9kaPsY7MiNBtmqjdb3dvbVTE2NZ0VEJP1n3GOK7XtU8y4IKwEATpmYCyXm4bontmwe
	cdbB6uhpeXAE/pn+ye341WbSE94DEXuqBYKVinPLJOzhVzG7WnOuPO9wjui8yn1thlkzoVQhGTn
	Qab4qNdFtb4FKsgb/0Af3LZZyQstMn6RQkibfDww3fLgDK1BqRvS/JLINBKZZ06UwH2YGZ2+GBu
	6Ri4zgeX0jQ5zAtAdh2JMlJleq7D97YHm0pYfOOtF9aCgMG945dl4y6pNfNHlEB6QBW1r6FbDrN
	jJ9yuAN07bUlo41tmVtWQ=
X-Received: by 2002:a17:90b:394f:b0:354:a332:1a61 with SMTP id 98e67ed59e1d1-35a21efb0eamr10430000a91.5.1773650407761;
        Mon, 16 Mar 2026 01:40:07 -0700 (PDT)
Received: from [127.0.1.1] ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0537b663csm45946865ad.51.2026.03.16.01.40.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 01:40:07 -0700 (PDT)
From: Colin Huang <u8813345@gmail.com>
Date: Mon, 16 Mar 2026 16:39:33 +0800
Subject: [PATCH v2 1/2] dt-bindings: trivial-devices: Add Delta Q54SN120A1
 and Q54SW120A7
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-add-q54sn120a1-q54q54sw120a7-v2-1-60e6182cc4a7@gmail.com>
References: <20260316-add-q54sn120a1-q54q54sw120a7-v2-0-60e6182cc4a7@gmail.com>
In-Reply-To: <20260316-add-q54sn120a1-q54q54sw120a7-v2-0-60e6182cc4a7@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org, Colin.Huang2@amd.com, 
 Carl.Lee@amd.com, Peter.Shen@amd.com, Colin Huang <u8813345@gmail.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773650402; l=1104;
 i=u8813345@gmail.com; s=20260202; h=from:subject:message-id;
 bh=RqDoIW7WugtGdMXzE2eIsOee9DNLTBABdKsQLGxjo/M=;
 b=Urz65Zd+H73gQS88yzQ3kRn4fLB+M4ty16QWNJyAuAqbd/RAkbZ3F5jmBxxcUPWOYaVRBNrr4
 Tg9lnLKT2OLAOhu4/M4VJZhMzGT60ktCu/X/JQN+0BPF35you6kXdYX
X-Developer-Key: i=u8813345@gmail.com; a=ed25519;
 pk=Zlg0WqpCw4qbswOqamTBTXIchwR/3SnYZpy7rjaGMdQ=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276011-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,gmail.com,microchip.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u8813345@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 72AAF296614
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add two additional Delta 1/4-brick DC/DC power modules,
Q54SN120A1 and Q54SW120A7, to the trivial-devices list.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Colin Huang <u8813345@gmail.com>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index d0f7dbf15d6f..f430e49b9ec1 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -95,6 +95,10 @@ properties:
           - delta,dps920ab
             # 1/4 Brick DC/DC Regulated Power Module
           - delta,q54sj108a2
+            # 1300W 1/4 Brick DC/DC Regulated Power Module
+          - delta,q54sn120a1
+            # 2000W 1/4 Brick DC/DC Regulated Power Module
+          - delta,q54sw120a7
             # Devantech SRF02 ultrasonic ranger in I2C mode
           - devantech,srf02
             # Devantech SRF08 ultrasonic ranger

-- 
2.34.1


