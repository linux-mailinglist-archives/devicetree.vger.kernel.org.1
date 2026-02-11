Return-Path: <devicetree+bounces-264654-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDmaLbA8jGlyjwAAu9opvQ
	(envelope-from <devicetree+bounces-264654-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:24:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D82122314
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:24:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F2A193023D99
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 08:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F40434FF4E;
	Wed, 11 Feb 2026 08:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="BhG46sNN";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="s/0YO7ou"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650D721CFF6
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 08:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770798254; cv=none; b=MWkgDxR6tpwR8cJia3a+NxWXfDRef/bk6y5CbJjupe+wE4mefGSnoXo37P+ZkOioAfvYfTe095caNstZLooVKvR29INVotpjfmP+2fpkN8BH4U2FUuyPQp70NlGZ0eJs9jFaS7hIBHn3DaJ2LVizE968VKBynKF0UN5lM1iUfCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770798254; c=relaxed/simple;
	bh=dGImHXOG0PgODWLprEUWQye7uORa7yhGWr39ayOehNk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Rx4y7iZ/tE7ubrwwXBdavq2UEDLesaA4NP7/uBgHexINJVnGxaMYJML5Cm2Wu7o5h0c5Pe21BeIW2+JoN/tXKvYcWaN1bJX0241RkuXYumb+8ZZFRkNBPdHPnHysth6d87NABaghH1XOEms+H0vEweTahpCohuyFSDiI6l1r0hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=BhG46sNN; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=s/0YO7ou; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1770798252;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ihJ36lzkXZ7WFB7v/KaqffqO3gp0QEVYrI9tOHAHfi4=;
	b=BhG46sNNHCtuAWmTZn1yjyoZ7o3iM90DGGsAEQj7LqZNMUI4PjdsGEditEW4JSU7vOShVA
	9c4HSnjIPadyJoREXOnyda7lMdK4lq9XpQ995Xaq2GyiOr1rzmzDwK2/29aFA+Sx0bgy+x
	4GFalqpu4YTHA4v2aCS8sy7aISx5FTc=
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com
 [209.85.214.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-588-g0frqU65NTCO6Pgx4FBjLA-1; Wed, 11 Feb 2026 03:24:11 -0500
X-MC-Unique: g0frqU65NTCO6Pgx4FBjLA-1
X-Mimecast-MFC-AGG-ID: g0frqU65NTCO6Pgx4FBjLA_1770798250
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a946c0e441so20359205ad.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 00:24:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1770798250; x=1771403050; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ihJ36lzkXZ7WFB7v/KaqffqO3gp0QEVYrI9tOHAHfi4=;
        b=s/0YO7ouZn7ptqfQZT2bxSqkwqmUMPqFxCSM63cMZzkXARadqRBKuNsWmW87MrhLJq
         ePgRlSePvudW88HNIKL7/ciqhZF02qkgK4VFwHxazw2WHURxHOK+/ugeO/7IHMXFAd3M
         B5iGypdAHONTQkLtRPD+UekPYkMIM/l0gT6hbtl0saCiTpfIu0NkUOLzmgTJzXIpAFhz
         Jx0ji6S0GQl67QQ6UHJHOjJhJ2VG9tIJ4iDxE9uEuvr+TGveYPyijQAHlFATFZo3kxLp
         a/i69mRGxS3KFoQqmjdJZH3ZggjhLedmCqpWArkOxtqt8xYPwI5O6f0layajUfiR1LvS
         cKLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770798250; x=1771403050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ihJ36lzkXZ7WFB7v/KaqffqO3gp0QEVYrI9tOHAHfi4=;
        b=l/rRB9a6M0P/lvyI8s62EsBDdTfvbBrscdPYyJRwaoiimtCyjiZNPUnZs4753ktung
         5Gn90p+qbl2m84p9veVyjUrwc5jVJT4c/+2mGY2ZiKcu097zfolPbQduEFyhdX4eyCki
         q8jX1l+YUz9izWlc6QrfUKSYou1x4FMOOmtMj+2UtRNoBVgHdKogfMkx5yq7ZNuxLjpI
         00gkaF+hmeM+GllKyBdfMBYfTiWlIk5fPEqjuc06q8IOulY/N4F/Br+kB6EDY1O4ITRt
         HRTYEBvEihXi9fG00iXL1+7v93r+CmZOtmH7bBbh6tK/2WO1IzFtOtRAij6v2QqDPbdY
         0AKw==
X-Forwarded-Encrypted: i=1; AJvYcCUjqwnnLSpE2OurqONfzHfEI5yoTABR7quXqcpK0oeDbNNOjgJkfHrJ6KGNHuexg0lahRlkEc/5gvjZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwtW1uWS8OJPIYhHg24SwCiSb+1Qy9oWrhtcuJP+1kCiiFttgQa
	WPIHAu1QpYsZEf6zlLZ+MQEVdrI1/wZGAhcyz+uL2n0p7FseaBsNQvcHkNqLLLogxmTVEsamcCN
	+PTvZsTlGeinOygEp1eujfA66pNakVrTSp61OYX8hRuzgfAFAp+6HMbH3ByRNxKI=
X-Gm-Gg: AZuq6aLT1RdaW43/v2qbRHC975HIwRWLfWxaCgVwxo/EBU+ye7OW1kX5jQ6RkGfpmCV
	RYNSFaqOs72Inn4SG5IFX8CuMLy5u924P4pwp9hqvOYGtJmFBLlGy/x4/gvK4cwlpQrGxliXSyh
	df6f4Glgf+UPmAp2c4X38XaqtvAOPxvIGFkB7dvCXrKkaxSU1xiPdplraYERhEjyDIDUjSFnZDl
	dGmbt0X8owwGTet7oUNK+09vaZWAv4+52rAPNRMhjiR5/aobH5WQQHPVo+OlgXR5kn03OOuxALN
	0w2Xgfkc5NxHp3yB7o6iK54o8HQAUMx4TAcoXl8oTLInChfVnmdQlXzJyN5Rr53CcBujoV9m401
	Hzysy01OSLuBO
X-Received: by 2002:a17:903:1a0e:b0:2a9:4450:abb7 with SMTP id d9443c01a7336-2a9516fcf6amr203049265ad.39.1770798250247;
        Wed, 11 Feb 2026 00:24:10 -0800 (PST)
X-Received: by 2002:a17:903:1a0e:b0:2a9:4450:abb7 with SMTP id d9443c01a7336-2a9516fcf6amr203049015ad.39.1770798249724;
        Wed, 11 Feb 2026 00:24:09 -0800 (PST)
Received: from localhost ([209.132.188.88])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ab29964c62sm14460265ad.55.2026.02.11.00.24.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 00:24:09 -0800 (PST)
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
Subject: [PATCH v4 1/2] crash_dump/dm-crypt: Don't print in arch-specific code
Date: Wed, 11 Feb 2026 16:23:59 +0800
Message-ID: <20260211082401.2407853-2-coxu@redhat.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260211082401.2407853-1-coxu@redhat.com>
References: <20260211082401.2407853-1-coxu@redhat.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264654-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[coxu@redhat.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[9];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 54D82122314
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
index 7508d0ccc740..d20cf976d01a 100644
--- a/arch/x86/kernel/kexec-bzimage64.c
+++ b/arch/x86/kernel/kexec-bzimage64.c
@@ -518,12 +518,8 @@ static void *bzImage64_load(struct kimage *image, char *kernel,
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
index 401423ba477d..478dacb0625c 100644
--- a/kernel/crash_dump_dm_crypt.c
+++ b/kernel/crash_dump_dm_crypt.c
@@ -405,14 +405,16 @@ int crash_load_dm_crypt_keys(struct kimage *image)
 
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
@@ -423,6 +425,7 @@ int crash_load_dm_crypt_keys(struct kimage *image)
 	kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
 	r = kexec_add_buffer(&kbuf);
 	if (r) {
+		pr_err("Failed to call kexec_add_buffer, ret=%d\n", r);
 		kvfree((void *)kbuf.buffer);
 		return r;
 	}
-- 
2.53.0


