Return-Path: <devicetree+bounces-281988-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oC3FCBwSyGnDggUAu9opvQ
	(envelope-from <devicetree+bounces-281988-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 18:38:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E4C34F6D8
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 18:38:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F15D43027DA8
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 17:38:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 112AA3A641A;
	Sat, 28 Mar 2026 17:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NllXKABu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B960D3A6407
	for <devicetree@vger.kernel.org>; Sat, 28 Mar 2026 17:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774719474; cv=none; b=PlzNzwpLAAzIWU0kd7RsUSiZnQnJ7SjRHG7Hf49zJ+HofiZ87tOWK5KJPGmrjhuLUuyl5SW3TB0pJUunAJXRywSugo3KcotomvHpkO/pa54lYEc4j2MZvEgivi01RftdBjwRvDo8ESajJ1PS/DRQrRIS2ShWMy7wTExjTVxhMms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774719474; c=relaxed/simple;
	bh=cmszwX0Ji3XjQt7Fpy6t/qmhlzCiNP9RsFnOxecQxzo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QvcWBeHKcaszAqe+VDlidja1Bg1XMM5g1M8U4BaLBNXlH53aDeuj2G6Y1FyV2z/Q8ZOMTPywvJtG/SiVsRm+rhfNqRskReuVeV/bWrClaYjPI+KzVjOB/9540b+KqHe2VV4ywjdgt+frIqQUXEgNT6qRoEBJlHz0NoC7eyfKupg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NllXKABu; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-50697d6a69cso16961971cf.2
        for <devicetree@vger.kernel.org>; Sat, 28 Mar 2026 10:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774719472; x=1775324272; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NICNW7Co3viLg/bgtUjVDeGjmH93cilbK6h9R5fkil0=;
        b=NllXKABujf0jvkOXn1/iL2f78XypRbc3xyQu0Rt+M4dVy1KSvm7xHeFfGq3yWBm74Y
         SXZP2Ou/DiKYVG7BX5T1TXOl3eCYnc4kq6+Xr3PHQ9y3Fa9ov3SlLM+ohZ+ENOLuFTSt
         jdl3PyXiKLZ7KOMcYg3qiEGfqLq/vzgsbeqZ9DlTMPvFctgOYgY7MlTxsO2mQ2cSd/fp
         YWQ7/TAyrIviEAqZi78QWVnM//wOqf7UzSuc4WsRliqnWFUy9vBECzXr/QnWph0urMSc
         vxHmAn447FeFup/xSClgjnQ9aVta5t6UdCbWM8szBted5NUwDHfN3ChlDtO1+jjUTKRq
         mmIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774719472; x=1775324272;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NICNW7Co3viLg/bgtUjVDeGjmH93cilbK6h9R5fkil0=;
        b=C7GyF1CXLsYoaN3EP3VRaKetUzBU3gzrBD+614BAb0BMpZDDECax6B6R5ot5OK+RMS
         Dr7Cu6ULnXVS+NAJb+x0PGfGyJKDXsKqn4YIGOR6ZEAfrT7IfGh1V3HYLJ+b8cqufsQp
         INDfrTE8D0kfJPwM1X5On6KKSw6YMqSBoSKHnDmv64UtBw1hhIJ5b26s9zNzone7qhV5
         Sm8STARDjCO7LJC/BnavMcf6+stHIBapOyhs4LbU3uusoRksOUJfO2v0IhmfTkefzZJF
         4xGTwh//2iGNojbCVicRwVhfcw2mP/dHdB9KNs05AP2OPWGhUG65RhNkDzx+hE5s08Sk
         PWQA==
X-Forwarded-Encrypted: i=1; AJvYcCUghxZJitnncuCClfsdQ84Xbvt7i2Z+t8IE8wmjdd2HB9F9s7Y6J3OShh1/LljSXJ0MnMywdEOx2YAI@vger.kernel.org
X-Gm-Message-State: AOJu0YysNkGQ81oj4jyHKXzYr4jpcm57GSbvkS7HmBqiX2XcUkeYoBFy
	+QD/VSomRdzC61CTsszk3FB/t42KmwxJnbvC/+afToM2F2zIR4G2Xbde
X-Gm-Gg: ATEYQzxnqCuBFL4hQM8+UAlDyVt4BqynZeb+EhZ2im9KS/rkwwOtpLObFoK4y2zucpx
	jkp/01RXEHJA6gpQ7SozXqLVJfu0Vy+KQBgV3Z4u9+AFqC8obdM8x1EJ9DTjItNvxEA9L3Ba6JW
	woY6v1FPeUZflvNY4P1JVrrATW4JUYXU8v9jbxx4BDpOP5QmLy5rlUSR92/MNGrUcujD07VYqax
	ftoC4xr6e7WqIbd001xqKrtEVSAu+YCLgrzr1NjlYXs0seut5wZ4r5w+gv/lT7wZj4UqDQUC3I6
	SSD73u0Vkkec8sHxr609WumlS4RbvlB9RQs2J8SAdCmuzX1oiL6UFV4ZfM2mPktF4xI2GW6eLH6
	RLo1FX3FC4ZaZZsqrjxXj815jyz641yzbbvhXpMjE1eLrAUCNhrog8Ol6r0OYnoihFUcCmX8f/y
	BcxkZodamIKij1aDERo7qKsj807ok1vXSO3AnL/pbgbe0Q+fV+MhDbPCNN
X-Received: by 2002:a05:622a:514:b0:506:217e:b0e5 with SMTP id d75a77b69052e-50ba369ec17mr96131411cf.0.1774719471720;
        Sat, 28 Mar 2026 10:37:51 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50bb2c9c93asm26629641cf.7.2026.03.28.10.37.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Mar 2026 10:37:51 -0700 (PDT)
From: Joshua Milas <josh.milas@gmail.com>
To: tglx@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	pjw@kernel.org,
	samuel.holland@sifive.com,
	unicorn_wang@outlook.com,
	inochiama@gmail.com,
	daniel.lezcano@linaro.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	liujingqi@lanxincomputing.com,
	alexander.sverdlin@gmail.com,
	rabenda.cn@gmail.com,
	dlan@kernel.org,
	chao.wei@sophgo.com,
	anup@brainfault.org
Cc: josh.milas@gmail.com,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	sophgo@lists.linux.dev,
	hanguidong02@gmail.com,
	michael.opdenacker@rootcommit.com
Subject: [PATCH v4 3/5] dt-bindings: soc: sophgo: add sg2000 plic and clint documentation
Date: Sat, 28 Mar 2026 13:34:48 -0400
Message-ID: <20260328173450.219664-4-josh.milas@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260328173450.219664-1-josh.milas@gmail.com>
References: <20260328173450.219664-1-josh.milas@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,rootcommit.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-281988-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,sifive.com,outlook.com,gmail.com,linaro.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,lanxincomputing.com,sophgo.com,brainfault.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joshmilas@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 82E4C34F6D8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the compatible strings for the sg2000 interrupt
controller and timer.

Signed-off-by: Joshua Milas <josh.milas@gmail.com>
---
 .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml         | 1 +
 Documentation/devicetree/bindings/timer/sifive,clint.yaml        | 1 +
 2 files changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
index e0267223887ec..decc43df3c839 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
@@ -73,6 +73,7 @@ properties:
               - allwinner,sun20i-d1-plic
               - sophgo,cv1800b-plic
               - sophgo,cv1812h-plic
+              - sophgo,sg2000-plic
               - sophgo,sg2002-plic
               - sophgo,sg2042-plic
               - sophgo,sg2044-plic
diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
index 3bab40500df9b..54266b3c2a185 100644
--- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
@@ -50,6 +50,7 @@ properties:
               - allwinner,sun20i-d1-clint
               - sophgo,cv1800b-clint
               - sophgo,cv1812h-clint
+              - sophgo,sg2000-clint
               - sophgo,sg2002-clint
               - thead,th1520-clint
           - const: thead,c900-clint
-- 
2.53.0


