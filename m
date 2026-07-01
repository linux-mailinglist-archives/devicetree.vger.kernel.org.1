Return-Path: <devicetree+bounces-318594-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XlhONtMWRWom6woAu9opvQ
	(envelope-from <devicetree+bounces-318594-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:32:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6E16EE239
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:32:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=hL+kHZv9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318594-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318594-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 737FA303C699
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:57:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F7064949FA;
	Wed,  1 Jul 2026 12:55:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E4A4949E5
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 12:54:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782910499; cv=none; b=ExwL8esgWf/mReDG991WZOMSbm7AWgBttf5mwMNXY+EmCdoWRcYoWa1iqxOUslnCWZCz13V1kCEpy8MFFWK+w+ByPpfGIwOeVB+UIXhGpjyOcJYkrd2w4mPDG3gu9+IBie4+9vRu+wHJzdNGE1mqHc0ErRTJ/Tfw+lZWhNU3pW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782910499; c=relaxed/simple;
	bh=RM5/Jm80n8hic83slp8easkNCPyba3jQD85igQwb558=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=X2DplH56PMvUY4f+Z0yeo5UvCYfjiI12zU3RNgxdnkKsHaVbV6P3gEY578D51M+CR5+VMpM+VFGoD65fQq/svppIVbUnk97I/NMrzBS886Bei61kM1MP8B/0VSY7iPZz5qA/BDkhxmSSaD8TS2cvghQIY5tunbPtkBZbhf/g1Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hL+kHZv9; arc=none smtp.client-ip=209.85.210.178
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-8479f1a86ecso344875b3a.1
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2026 05:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782910498; x=1783515298; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F4itvwgmIkfoT47xsL7nDKqH8kqk6Z6HU3EjYTAF58M=;
        b=hL+kHZv9QtNmqmq4shB0EI5/eyhYkO8XTFPmsbD/isNbQaIXt+7joQB2hAvIUmmrMV
         P9gNKItTxhVvdgtb2DnDSl4wkA8gSyMlyrXO4aFoaF5xCjh1hAdrz/dB4vPlSlt5IwiR
         AY9LHlqAxBVFfnpMn6Z1z3jI0sCSzg6WzIKxNDdirxFG9ldTAjtCIm+QlwLpadEc0vg1
         wM0SZ/0aJD8qt+rqzvRuXWCUACNx4IY5zyQLPiphYkNwLBNKFUMZUNyszoxF/m/rxp0D
         6M+eOdQAFn8NoBdq4ILMl8EUFrBvx5tupTPND7k7ITFdd0a2bjTJv6Aqyxs0mRH50Qi6
         dIlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782910498; x=1783515298;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=F4itvwgmIkfoT47xsL7nDKqH8kqk6Z6HU3EjYTAF58M=;
        b=F0ZgRvBZq51XK+LfaiVOT0ZW2sBrG2RUdPYQjSe1BZPR6zBH1TE5TejeYjKIlh+QBV
         7La0V+yldUe3zPLivPayF+GL5/9yMnKIAEAmwHgALgVohIR0dycXgYSn3Sjavx4RS/sS
         7ECg33aHCaJ95Xfs19WjSs5s99sO/RZBEqE1nGyv3bEWtqnp+gnNWmLheWAE2ugP3Wsw
         oBGIzKHltvU++5DjX5CHSX71+LiML87Zuxra+5H5xhXJnBBZpFUwPi6UeYvZdEjMCkdG
         3DQkyuuy5iEfvqRjsZlhmXZighdTTF53Kz/A6ID+hyVVrmHRFaKnj72XcPLrZrEyKGF4
         VkaQ==
X-Forwarded-Encrypted: i=1; AFNElJ9uW4PBySNvJjukVmctscP0fFPyzG7BdDnqyU9i19MgEjOHSo59kMJMV7oxojuzMOvaPorn2CdM4OXo@vger.kernel.org
X-Gm-Message-State: AOJu0YyOPGzUMj7AoVLlzWNCJ5kpawc4dcUotR1QPiPqaW5Ok5lm1Z8Q
	tn89Qe76l2Zy5QEV1prfBl7N+jamKL4UIH7dUemSR0opaN6/8sX5vYGx
X-Gm-Gg: AfdE7cnKWqYrgvoU3ejCDX1Bv3xnUMrS15gksWicIWBZpfuSj+8YNFNLBKoui+FxGlA
	exJXPD2NNnWDCyMyDH3pXrOtp2W2UaF2Dxqn6u6lPnMlsH1ng9pAb0qbtfONwLvQoJPlHL5r0lT
	kKpPlLRQMa9JipNQJrjtTqjcs5gNDpu4kX9/aq4T1F+xQ+1VEwBwfVamLPhwKwzSZQGGJxdojwi
	i5i1UYSh8ey2mKw+Xk1HGC/MwNpOZIALdN7bUiuWo+aqRn9RpP77XdGHaTAo7bN9p2lNQUa5Vzx
	umR67OLFAVvGCjdGA8J3SzUIE4eSx14LlaFwZg5v6e4SFFtK/Id3HtSRcuHn1Lfqz08Lz3qDvOo
	ig7pdEZ4Ga81nt0KHAxPOfqE2FoG68ZKp+GfT0kcEdKSU5uA+gH/UixxXIDUM8aS/Jp6EmjbfU3
	/FJtIDtBFu2YrBLrfI4LgM
X-Received: by 2002:a05:6a00:44c6:b0:845:e105:1e6c with SMTP id d2e1a72fcca58-847c5235e15mr557323b3a.62.1782910497562;
        Wed, 01 Jul 2026 05:54:57 -0700 (PDT)
Received: from [127.0.1.1] ([120.244.9.45])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847a03778basm3999403b3a.49.2026.07.01.05.54.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 05:54:57 -0700 (PDT)
From: Guodong Xu <docular.xu@gmail.com>
Date: Wed, 01 Jul 2026 08:52:27 -0400
Subject: [PATCH v5 14/17] riscv: Add a getter for user PMLEN support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260701-rva23u64-hwprobe-v2-v5-14-2c61f94a695a@gmail.com>
References: <20260701-rva23u64-hwprobe-v2-v5-0-2c61f94a695a@gmail.com>
In-Reply-To: <20260701-rva23u64-hwprobe-v2-v5-0-2c61f94a695a@gmail.com>
To: Jonathan Corbet <corbet@lwn.net>, 
 Shuah Khan <skhan@linuxfoundation.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Zong Li <zong.li@sifive.com>, 
 Deepak Gupta <debug@rivosinc.com>, Anup Patel <anup@brainfault.org>, 
 Atish Patra <atish.patra@linux.dev>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
 Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
 Chen Wang <chen.wang@linux.dev>
Cc: linux-doc@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kvm@vger.kernel.org, 
 kvm-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Jesse Taube <jtaubepe@redhat.com>, 
 Charlie Jenkins <thecharlesjenkins@gmail.com>, 
 Andrew Jones <andrew.jones@oss.qualcomm.com>, devicetree@vger.kernel.org, 
 spacemit@lists.linux.dev, sophgo@lists.linux.dev, 
 linux-kselftest@vger.kernel.org, Guodong Xu <docular.xu@gmail.com>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1943; i=docular.xu@gmail.com;
 h=from:subject:message-id; bh=LaS0cxSQXBgyR01xQr5M6KNsO7HDlsJSbaq9hq8ofFM=;
 b=owGbwMvMwCXWtEl1Z3CGpCDjabUkhixX3jaJs1we53hUJftu3dk5Y52sfn0Xg+vbEK7Om/tuL
 zAvnjqpo5SFQYyLQVZMkeXw0Zbsra98on2fc/6AmcPKBDKEgYtTACZizMjIcGpvd2B4wjVF7TIX
 h1/fvitwee95mTC3Iqiy4+QF5p0ycxj+aTkoSGYs+z1b+51NUvTHg/+rd8dNWbVvxirV3Wy6Yma
 ZDAA=
X-Developer-Key: i=docular.xu@gmail.com; a=openpgp;
 fpr=90B1DC3DF0BD10FD1227BD6344F254AF42F143EE
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318594-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:zong.li@sifive.com,m:debug@rivosinc.com,m:anup@brainfault.org,m:atish.patra@linux.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlan@kernel.org,m:unicorn_wang@outlook.com,m:inochiama@gmail.com,m:chen.wang@linux.dev,m:linux-doc@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:kvm@vger.kernel.org,m:kvm-riscv@lists.infradead.org,m:paul.walmsley@sifive.com,m:conor@kernel.org,m:jtaubepe@redhat.com,m:thecharlesjenkins@gmail.com,m:andrew.jones@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:spacemit@lists.linux.dev,m:sophgo@lists.linux.dev,m:linux-kselftest@vger.kernel.org,m:docular.xu@gmail.com,m:krzk@kernel.org,m:docularxu@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[docularxu@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[lwn.net,linuxfoundation.org,kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,sifive.com,rivosinc.com,brainfault.org,linux.dev,outlook.com,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[32];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,sifive.com,kernel.org,redhat.com,gmail.com,oss.qualcomm.com,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[docularxu@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ED6E16EE239

From: Andrew Jones <andrew.jones@oss.qualcomm.com>

Querying whether a given user PMLEN is supported is needed for
RVA23U64 base detection from outside arch/riscv/kernel/process.c.
Add riscv_have_user_pmlen() to expose this.

Link: https://lore.kernel.org/linux-riscv/rfuwa7a3ebe76udmnwyrssjy7shkkgxntvhwzn6oquysj4tuyp@xzvpylcfhz53/
Signed-off-by: Andrew Jones <andrew.jones@oss.qualcomm.com>
[Guodong: replace exported booleans with getter per Andrew's suggestion]
Signed-off-by: Guodong Xu <docular.xu@gmail.com>
---
v5: No change.
v4: No change.
v3: No change.
v2: Add a getter for user PMLEN.
---
 arch/riscv/include/asm/processor.h |  4 ++++
 arch/riscv/kernel/process.c        | 12 ++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
index 812517b2cec13..febf51e127f70 100644
--- a/arch/riscv/include/asm/processor.h
+++ b/arch/riscv/include/asm/processor.h
@@ -214,6 +214,10 @@ long set_tagged_addr_ctrl(struct task_struct *task, unsigned long arg);
 long get_tagged_addr_ctrl(struct task_struct *task);
 #define SET_TAGGED_ADDR_CTRL(arg)	set_tagged_addr_ctrl(current, arg)
 #define GET_TAGGED_ADDR_CTRL()		get_tagged_addr_ctrl(current)
+
+bool riscv_have_user_pmlen(u8 len);
+#else
+static inline bool riscv_have_user_pmlen(u8 len) { return false; }
 #endif
 
 #endif /* __ASSEMBLER__ */
diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index b2df7f72241a5..5d9cb108a6232 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -302,6 +302,18 @@ enum {
 static bool have_user_pmlen_7;
 static bool have_user_pmlen_16;
 
+bool riscv_have_user_pmlen(u8 len)
+{
+	switch (len) {
+	case PMLEN_7:
+		return have_user_pmlen_7;
+	case PMLEN_16:
+		return have_user_pmlen_16;
+	default:
+		return false;
+	}
+}
+
 /*
  * Control the relaxed ABI allowing tagged user addresses into the kernel.
  */

-- 
2.43.0


