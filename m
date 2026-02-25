Return-Path: <devicetree+bounces-268125-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMtQAOaQnmnTWAQAu9opvQ
	(envelope-from <devicetree+bounces-268125-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:04:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AF41923CF
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:04:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7746D305848E
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 06:04:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 507832E0B58;
	Wed, 25 Feb 2026 06:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="PSGFI5dj";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="jIYrcWrR"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A782EFDA1
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771999445; cv=none; b=CiZonjV/PyZmZCOom1B68W66UceukcxsUy16dWbJ7mFFa6u2e9YncwVfZb+oD7BNIogxQXZuruABL8Eqz5kkwuotPC2tv8CH2T/WgtJjsbqO0chP2D8BhygGxEhOY9/6x1DE6irBnNm3Kr9G1b7dTbUkBkEjiUisKGIH6X2BCeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771999445; c=relaxed/simple;
	bh=1N2ETo6YA9V740ezAru4zNdeRQ4nt/V2E1OUipyom/4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gCSJT0hd//PXokxuoVej5LHoQZCjd40qM/jVsm8lkO8twAAb30pQecs0mF2gMesGJHoUVqvVlFb3cXvPs0tyxrBBYIPSwz02yDEjC4JC8A/D63jr/MGGPRMJFtjvkHsgbB3EvhA4fuKWnxWAiAghCe1r/Fbnk/jiYvs+2ZuqzqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=PSGFI5dj; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=jIYrcWrR; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771999442;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gmrGSNfnGiWDwNvctHFqdcRxKu8ZGchqf9tdlqmXs2o=;
	b=PSGFI5djxGGu/UMQFpEwFkMCt1Q6R4UQoxe8te5JwtPNc4UzR5eX0t9Vfliq5UjLvkL+2f
	R6cb3b0pYKJmeVENIqkzlZ1cLkmjVcqGvYbLgxO9WL3F/31T3VmpxJfKIDg20Qwl4JR00N
	DHHf9KVEdorMhhcnsaQenKZFstQ280o=
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com
 [209.85.210.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-269-UFFWT71nNfSXJ74EvMD0jQ-1; Wed, 25 Feb 2026 01:03:59 -0500
X-MC-Unique: UFFWT71nNfSXJ74EvMD0jQ-1
X-Mimecast-MFC-AGG-ID: UFFWT71nNfSXJ74EvMD0jQ_1771999438
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8243ae83898so2452701b3a.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 22:03:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1771999438; x=1772604238; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gmrGSNfnGiWDwNvctHFqdcRxKu8ZGchqf9tdlqmXs2o=;
        b=jIYrcWrRSAXth06GAyw0v5tojxiEuVWBaC+rLZnZAvxvPu3Eny8VsqnMldb5QNAAXn
         xnxD0oYy7BBWUQeDL6Y2MTva6w/CIrK7M/cE7QPLBlSBSiPz0rUlnkiXAPeA6Dnbr2c+
         rOJ9nNmWNxcK3/JztRsYSgQrRQBJl7dTAHWZRwojb5/KTeyUn4tFyiF2YVtrrqwHH8pr
         fzl0Q8PusW31utM4j5AhIwtvPO3t8fEudd+lWiGbVSfAccfhw3GR9JY5PHdoGazQrndL
         rBU2Bu4zUrwTJYJgJWy5xozYCRHqfbZxVqIQ4f7NG/CttzaAlKIkMtI5AFSu2vKyS5Vh
         4FUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771999438; x=1772604238;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gmrGSNfnGiWDwNvctHFqdcRxKu8ZGchqf9tdlqmXs2o=;
        b=BIbHcsRLGlfGjFfDEOI6jZrnvB37XuUEM7+9Eb0NvgqD0vbLMsq3KYDV+cHG0XdBTT
         gCeBxCs1FD/FswchGfXg5yBFtwbXhvLsbYwKe3nlb2mBkljR2rM6AxWkLfFutIX7W9HP
         AfuhVTCO0yNbeYyR03dF9ykrLptlwmPprl5ZP8gKIKtMl1+l9OiUXEaP0+jgJFQXzesm
         UxArjERaMIDfn9KedDMm6A2N3PlE+fnG+TWXikY22g18To2WFzMvzsgSA9rfbZ7/O4Ei
         furDHqJSVRl9TT16e+54xptl2rMRUxQCBAgwFgInWy2SroodJ8PM3Mf2CUIMpCedNwQK
         Ftow==
X-Forwarded-Encrypted: i=1; AJvYcCUh+HTxRIpOQGjJgQPEAV5n8pWjWef25AVT1QS4ryWzDZKWKZrOyIOpWZAG1rdEoUe4dncZ8mQU6BCW@vger.kernel.org
X-Gm-Message-State: AOJu0YztC/+470Uj0tjb96SxVfyVw2IiNwpSU8OYIpd0mVKO6Ok9+lm7
	wJ26ifD+z0tnhQA24jh2bF1yuRr3FH48InKNczPKjh0zpRhe4FMQ3rz8fD2NfVFO8sxdWFX94Or
	R6eJifonC6LEp/E6txUpXW/EZv4/y8B5wXBEEpCwqOLGpea8IbMa+eV2Kh+KgrN0=
X-Gm-Gg: ATEYQzwjj7WKBMcx3yZoUbdPCkWeZdyLxHSlwQ29J3sq8bZGELSMBk5m60Yv/gSEqgO
	vUpQezkx5HPeJKKxKFi7qPZb5+nuP4ZkbE0J/Jkz98vKYByR9bwq2f5hJLFfd2wlL1RCMZaIno/
	5ZoAAH2QvmjIbztpBT5M6Fz/U/fmY4O0Vhp1kFIBu7rNlzVrDRuOufE9St9GQwvO2WtFyLcawtP
	0xabaK2P+oXBRmLCSTPh6t/DLZinuw1019ApQC1v6X0wEC2KwYNkXSxoiPL9l3j46MKtsIzXFJu
	vcMR+2QwCBkQtrMzkMxHVt3qhCAyj/7ZkbV/TwASxGF+ozM3F7frDhHY9h4rRYZazEMfMhCpSGr
	IH9kUSL90Z6MX
X-Received: by 2002:a05:6a00:4c82:b0:81f:4d16:5d8a with SMTP id d2e1a72fcca58-82724a3529bmr1223059b3a.29.1771999437879;
        Tue, 24 Feb 2026 22:03:57 -0800 (PST)
X-Received: by 2002:a05:6a00:4c82:b0:81f:4d16:5d8a with SMTP id d2e1a72fcca58-82724a3529bmr1223028b3a.29.1771999437424;
        Tue, 24 Feb 2026 22:03:57 -0800 (PST)
Received: from localhost ([209.132.188.88])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd8fdb81sm13000482b3a.64.2026.02.24.22.03.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 22:03:57 -0800 (PST)
From: Coiby Xu <coxu@redhat.com>
To: kexec@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org,
	devicetree@vger.kernel.org
Cc: Will Deacon <will@kernel.org>,
	Thomas Gleixner <tglx@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	x86@kernel.org (maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)),
	"H. Peter Anvin" <hpa@zytor.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Baoquan He <bhe@redhat.com>,
	Vivek Goyal <vgoyal@redhat.com>,
	Dave Young <dyoung@redhat.com>,
	linux-kernel@vger.kernel.org (open list:X86 ARCHITECTURE (32-BIT AND 64-BIT))
Subject: [PATCH v5 1/3] crash_dump/dm-crypt: Don't print in arch-specific code
Date: Wed, 25 Feb 2026 14:03:44 +0800
Message-ID: <20260225060347.718905-2-coxu@redhat.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260225060347.718905-1-coxu@redhat.com>
References: <20260225060347.718905-1-coxu@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268125-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[6];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[coxu@redhat.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[redhat.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 79AF41923CF
X-Rspamd-Action: no action

When the vmcore dumping target is not a LUKS-encrypted target, it's
expected that there is no dm-crypt key thus no need to return -ENOENT.
Also print more logs in crash_load_dm_crypt_keys. The benefit is
arch-specific code can be more succinct.

Suggested-by: Will Deacon <will@kernel.org>
Signed-off-by: Coiby Xu <coxu@redhat.com>
---
 arch/x86/kernel/kexec-bzimage64.c | 6 +-----
 kernel/crash_dump_dm_crypt.c      | 7 +++++--
 2 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/x86/kernel/kexec-bzimage64.c b/arch/x86/kernel/kexec-bzimage64.c
index 5630c7dca1f3..7e980ea49d8d 100644
--- a/arch/x86/kernel/kexec-bzimage64.c
+++ b/arch/x86/kernel/kexec-bzimage64.c
@@ -525,12 +525,8 @@ static void *bzImage64_load(struct kimage *image, char *kernel,
 		if (ret)
 			return ERR_PTR(ret);
 		ret = crash_load_dm_crypt_keys(image);
-		if (ret == -ENOENT) {
-			kexec_dprintk("No dm crypt key to load\n");
-		} else if (ret) {
-			pr_err("Failed to load dm crypt keys\n");
+		if (ret)
 			return ERR_PTR(ret);
-		}
 		if (image->dm_crypt_keys_addr &&
 		    cmdline_len + MAX_ELFCOREHDR_STR_LEN + MAX_DMCRYPTKEYS_STR_LEN >
 			    header->cmdline_size) {
diff --git a/kernel/crash_dump_dm_crypt.c b/kernel/crash_dump_dm_crypt.c
index 1f4067fbdb94..2f7b42b09673 100644
--- a/kernel/crash_dump_dm_crypt.c
+++ b/kernel/crash_dump_dm_crypt.c
@@ -414,14 +414,16 @@ int crash_load_dm_crypt_keys(struct kimage *image)
 
 	if (key_count <= 0) {
 		kexec_dprintk("No dm-crypt keys\n");
-		return -ENOENT;
+		return 0;
 	}
 
 	if (!is_dm_key_reused) {
 		image->dm_crypt_keys_addr = 0;
 		r = build_keys_header();
-		if (r)
+		if (r) {
+			pr_err("Failed to build dm-crypt keys header, ret=%d\n", r);
 			return r;
+		}
 	}
 
 	kbuf.buffer = keys_header;
@@ -432,6 +434,7 @@ int crash_load_dm_crypt_keys(struct kimage *image)
 	kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
 	r = kexec_add_buffer(&kbuf);
 	if (r) {
+		pr_err("Failed to call kexec_add_buffer, ret=%d\n", r);
 		kvfree((void *)kbuf.buffer);
 		return r;
 	}
-- 
2.53.0


