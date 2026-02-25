Return-Path: <devicetree+bounces-268126-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMlZHwaRnmnTWAQAu9opvQ
	(envelope-from <devicetree+bounces-268126-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:04:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E11211923F5
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:04:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 345143073F77
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 06:04:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 024CD2DF701;
	Wed, 25 Feb 2026 06:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="IL4wDhLM";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="nY7C2VmD"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A14902F260E
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771999449; cv=none; b=dQ3s2jFonpaAfZZS6HZvjrSI/CGoYmgkvH3XD9L2dCdYdaE/2obTLqVS3yjchN+hZ6cfnZ6aJo/ID4kJQMGVHC8k676kFJ1QZuHeybmdkkDs0L68rg0mCXB6qRF0sDzObwOg7A+0ZfAcleMIdBVepCqHeUuke8gyTAnugi1iLFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771999449; c=relaxed/simple;
	bh=nbhYwnbiK4Jtvsyg3yIW+7Xkh+KbjuC+PUdKhUcCoNw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dyQe08iK/qNJ7p+gBxBEbGKyvdJWfBJkiGTiQr/JDjdEBjewGWS0tmIZ+4Of1Yrk8gar/TadzW824VTJ1lSpj97Gsl1zERlpLle9/hWB8gJbxyxXBvCIHzqXhrDStm/jImam4+gHWWMx4DJ3sBPamlFml/Ell/oPFDgiZlHxVqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=IL4wDhLM; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=nY7C2VmD; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771999447;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ijh1gRZ/vz98nkJ2ibune9S4XQ/SnjSEuxpGe+HaeR0=;
	b=IL4wDhLMr+NRpQMfOK4Zibc2SAkJ597KaVEpT716dcuaiGsbz0to+N/Ui0ETQs/dMQpAHP
	Z50i5TPWJ8ZMryqBiXn3lHZfDUwgs8arBjPdYN4/cnlkYUEjJOOdA+JlLjSTf4cUjz8txU
	vD8NSCa4+mzLEB9qVPXc7EuecYBPo5w=
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com
 [209.85.214.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-263-TlP-1pvmNuSs2tsVqaOcPw-1; Wed, 25 Feb 2026 01:04:03 -0500
X-MC-Unique: TlP-1pvmNuSs2tsVqaOcPw-1
X-Mimecast-MFC-AGG-ID: TlP-1pvmNuSs2tsVqaOcPw_1771999442
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2adb085735bso14300485ad.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 22:04:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1771999442; x=1772604242; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ijh1gRZ/vz98nkJ2ibune9S4XQ/SnjSEuxpGe+HaeR0=;
        b=nY7C2VmDlzdrqeb4bd5jjM/fEmHEVabn0vM/WUaMm2lvjDTcRt6J9cvV5FpPqkUI0T
         WH455jKylJuYEdhZYoOgYnaC9UdBoCaXXBC4VE//zlsHnpxI1JbvVkmPJdq4Yi8yXgfr
         QU7lYwKTyotY5/wUicCs9EKpcxQtdHX/odp5oP8tg+TQg5unUzE6ZtqaQ79cJiEwqn1S
         3OzjcYeMAMo9jh1qtAo5t0d17MRPw3eivLxs9j1fOYMZ05TAr9FG+osa1GGSmQjy0eOr
         uUlrmeniePhmwn47Xz2WxalVFFrepQXKIxVjbQaTbROMd5kw6ZFOYgQex6JinrirDKjb
         WPmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771999442; x=1772604242;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ijh1gRZ/vz98nkJ2ibune9S4XQ/SnjSEuxpGe+HaeR0=;
        b=ipo231kptyC8DLqYiNAHL+0GVX0uRAyj1wNLJMAETyT++pGaf/SBB4GX0sZL6c8uak
         Li/SoVEj8RyYWMwrDAadnPYqL/489/WJSGZZfuIaUUYUxd883iKBqXDRbhiy5i1YhJNa
         c9pKwyIqR93Vygd49TQqb2TBHNfKsKlGhaNJLKFDQiUB1PgO47M8QHpwKGpRHg+wQ6Wb
         uijMBkw9EiUsT2KLanO1AJ302PcPYwFiI+SQngJjthz3DHFQY/0U13p/MrYeRZOak0Os
         /PvXHan2J4sOjfACwiedHgrABQ0tgoI9eF6RlxYvgiFsy8NMK+AGPM0eogr3gZj0Rp6F
         2i3g==
X-Forwarded-Encrypted: i=1; AJvYcCXAwukOxfvZsDJdH94A+6rjDv/PkZeyHAHjxarUxTQzwAzU9Kj9VDtU9MeeKOc+1vnSOX+XLJys4BAd@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0zNvkXewhbD4ZchHU4XP/KF0f147nH50fwbtDKGjHZYnqxqBv
	l8ZJ+8FO8Sg7SXALWfka6YE3dOcpnHMqVyD1qLR5XSS8KqHO6DezX5WlW+0OfMdBiKRy/w8rR4e
	fSSH7Yhr8jSrkqk09+jw40NBJYhtFvMJshEWQT7IGXvDsRhXOWi5wiJyQxv6eiIw=
X-Gm-Gg: ATEYQzxbLUXZwyyB6o7C3tvIosEJedgiNlB1AWrDGb8it6t+hNNw7BTXG+8fpOFNen/
	ITAUj6Xa3fzTwwm/LC9/bbZ8uymJlJ7/DsOfEMK78aCWSYglP0sY7k7E8txZoAa1cJ68/gT1Uzk
	h6MxCiDfAgZFFveTyS2xLFgYFnnZb5f68UZjN46G6sYgFHQIggbQpFdKfuIPzYIpK0A1ihvwnse
	EMjxJ0cFpszxB+tIUNjCo8IOvESuI3ox9Dy0RV3+RTWqtoKe5okVbiItfxZwsTe9q/LOn/8YFQF
	kT0C49B15Nky1kDo3slsOUlijdJSxP9sOxpNXbRzPS/176gzNxtFgfSxmR4cToPA6S8th7vnYpZ
	7eRQoNZzsTUZV
X-Received: by 2002:a17:902:e787:b0:29b:e512:752e with SMTP id d9443c01a7336-2ad74556edbmr127353865ad.47.1771999442357;
        Tue, 24 Feb 2026 22:04:02 -0800 (PST)
X-Received: by 2002:a17:902:e787:b0:29b:e512:752e with SMTP id d9443c01a7336-2ad74556edbmr127353515ad.47.1771999441818;
        Tue, 24 Feb 2026 22:04:01 -0800 (PST)
Received: from localhost ([209.132.188.88])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74e3507csm127703285ad.8.2026.02.24.22.04.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 22:04:01 -0800 (PST)
From: Coiby Xu <coxu@redhat.com>
To: kexec@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org,
	devicetree@vger.kernel.org
Cc: kernel test robot <lkp@intel.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Baoquan He <bhe@redhat.com>,
	Vivek Goyal <vgoyal@redhat.com>,
	Dave Young <dyoung@redhat.com>,
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v5 2/3] crash: Align the declaration of crash_load_dm_crypt_keys with CONFIG_CRASH_DM_CRYPT
Date: Wed, 25 Feb 2026 14:03:45 +0800
Message-ID: <20260225060347.718905-3-coxu@redhat.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268126-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[6];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[coxu@redhat.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[redhat.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: E11211923F5
X-Rspamd-Action: no action

This will prevent a compiling failure when CONFIG_CRASH_DUMP is enabled
but CONFIG_CRASH_DM_CRYPT is disabled,

       arch/powerpc/kexec/elf_64.c: In function 'elf64_load':
    >> arch/powerpc/kexec/elf_64.c:82:23: error: implicit declaration of function 'crash_load_dm_crypt_keys' [-Werror=implicit-function-declaration]
          82 |                 ret = crash_load_dm_crypt_keys(image);
             |                       ^~~~~~~~~~~~~~~~~~~~~~~~
       cc1: some warnings being treated as errors

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202602120648.RgQALnnI-lkp@intel.com/
Signed-off-by: Coiby Xu <coxu@redhat.com>
---
 include/linux/crash_core.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/include/linux/crash_core.h b/include/linux/crash_core.h
index d35726d6a415..c1dee3f971a9 100644
--- a/include/linux/crash_core.h
+++ b/include/linux/crash_core.h
@@ -34,13 +34,6 @@ static inline void arch_kexec_protect_crashkres(void) { }
 static inline void arch_kexec_unprotect_crashkres(void) { }
 #endif
 
-#ifdef CONFIG_CRASH_DM_CRYPT
-int crash_load_dm_crypt_keys(struct kimage *image);
-ssize_t dm_crypt_keys_read(char *buf, size_t count, u64 *ppos);
-#else
-static inline int crash_load_dm_crypt_keys(struct kimage *image) {return 0; }
-#endif
-
 #ifndef arch_crash_handle_hotplug_event
 static inline void arch_crash_handle_hotplug_event(struct kimage *image, void *arg) { }
 #endif
@@ -96,4 +89,11 @@ static inline void crash_save_cpu(struct pt_regs *regs, int cpu) {};
 static inline int kimage_crash_copy_vmcoreinfo(struct kimage *image) { return 0; };
 #endif /* CONFIG_CRASH_DUMP*/
 
+#ifdef CONFIG_CRASH_DM_CRYPT
+int crash_load_dm_crypt_keys(struct kimage *image);
+ssize_t dm_crypt_keys_read(char *buf, size_t count, u64 *ppos);
+#else
+static inline int crash_load_dm_crypt_keys(struct kimage *image) {return 0; }
+#endif
+
 #endif /* LINUX_CRASH_CORE_H */
-- 
2.53.0


