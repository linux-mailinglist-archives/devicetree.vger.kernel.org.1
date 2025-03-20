Return-Path: <devicetree+bounces-159157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B0BA69DDF
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 02:57:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3014F19C1E2F
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 01:57:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE78C1E7640;
	Thu, 20 Mar 2025 01:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="trJaNCwi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f201.google.com (mail-pl1-f201.google.com [209.85.214.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E76D1E5201
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 01:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742435771; cv=none; b=KjX0ZR1083XkNHHEv5cDcrta9nulZdqa20Tn05Dbt04j46PVSSP0isb+oEAU+t9S82sH2IFRJq9/q/1+stEr2R9ckOhI84tEQJMbyRA6AtG+33WM4qgVBVi+miabfFmE/ghuJlg0LWhOHKjZL4lbTAmNbpK1CamKmcU/A0H9kuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742435771; c=relaxed/simple;
	bh=7oZEWfUMoqXZIdbIu3x88udCPkEeHCGdOzdraE/jqeE=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=aYe+8OSixb2T0KHSbFPHmvRNigFVJE24ljjC04N/g+pH71BdkBq7QAU6ic3+XZFgzLxNkbcnDFzeWCtysNQZYXffnh2utlElLc2ZgsS0nvDPd68yhFBJEFB4XaBMKsSBESJBaAfiDa1bLJ3ySC2BdmkXwAtu5cSbXIntN3ka3U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=trJaNCwi; arc=none smtp.client-ip=209.85.214.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--changyuanl.bounces.google.com
Received: by mail-pl1-f201.google.com with SMTP id d9443c01a7336-224347aef79so4640275ad.2
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 18:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1742435770; x=1743040570; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=8yL5b2WTU5WHGZETUIu4ND+tiGH8mntIZf0oxmIMUMA=;
        b=trJaNCwiCRNMJ0q8wlwQAtrfaIwhO/5YpwxIDHIB3sUkH8Ix+DviASWJIZzz3qsBxf
         mYU46vQfCs5O7ajvr1YKO16SGoUXTTMQ21hesajdv9Lkyg/bTgOy+wwrifYCiAVJ4D+v
         Giqo2X30ZPXp6g57fTSjO33Ddag7T4jiNx2Op2pLWrhfIZQzgovCIA21BuTUmFHsushj
         LbPNe8ZtdrS8WZCDs4OvPm8YV904B3d9i0af7ab3eBMdPg3by/73I2jvpg7xsECan/mT
         ZlnYBgKNXDSqur8MRz4eaTm1Gw/FLLNz0AkmiCEoQPcvlztYjemlSxh0H5tFnHDrC6IL
         MASg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742435770; x=1743040570;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8yL5b2WTU5WHGZETUIu4ND+tiGH8mntIZf0oxmIMUMA=;
        b=r9whFZNZW1KBUhIck+rmkPijtQNiXvFpX5J7SN4Tpaft3aJenZAPjJ61d2lLE6vkMV
         l30Vajk1dc5QYq6y/z54qJic2wwh9R7R4VY0zcwam9b10LzSnC6hfOTVo8YoonnYCsxX
         YacUNXKFviq90ch+PbA3ZODVSibKCDBicqgZwPbJ6BujeHYTWihQvkZ2zJLGqqobS+ez
         TfrieS5LdgccI4aqqT0NKoAmac89Jq4BboALUH9JrRs0TdGSb+esM2zkYLCE13cxgjkX
         33rYsCHajj/23IgA3fk9mDal7L5O0jWamn+8ELF6g5NVmvUqwB4w++HGtrN/iBeqcmEJ
         2QMg==
X-Forwarded-Encrypted: i=1; AJvYcCXYHKI8KEnOOxkqZWjYL1yTISEfbZsN1RKjxAoh8oZF0DJAdjvl0a6axIgHI7boE95tERFu2PzT+tpE@vger.kernel.org
X-Gm-Message-State: AOJu0YyA3bAGP+FaleS0ZUeGdxn5vf7GTHKJAx7JyQio136aF9UBKaZB
	TQv8j48y5u8yMOuSsmwVWz4H2+q3plR+6WYMZnAL2U7oroA9VSYtZ5Dq9obBDYkfa0A4jpMsHXz
	RqFgpIT+Lgyqpkwn6fA==
X-Google-Smtp-Source: AGHT+IHW15FvPpMLWn1HKaL85qfGSHpQDCxTWGFYK6N/65irCZHXzpE1wn1H8XnTV124IW6pqODmzO2IIQUyBB4r
X-Received: from pfbna11.prod.google.com ([2002:a05:6a00:3e0b:b0:730:4672:64ac])
 (user=changyuanl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a00:4187:b0:736:fff2:99b with SMTP id d2e1a72fcca58-7376d6ff535mr8193650b3a.23.1742435769805;
 Wed, 19 Mar 2025 18:56:09 -0700 (PDT)
Date: Wed, 19 Mar 2025 18:55:41 -0700
In-Reply-To: <20250320015551.2157511-1-changyuanl@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250320015551.2157511-1-changyuanl@google.com>
X-Mailer: git-send-email 2.49.0.rc1.451.g8f38331e32-goog
Message-ID: <20250320015551.2157511-7-changyuanl@google.com>
Subject: [PATCH v5 06/16] hashtable: add macro HASHTABLE_INIT
From: Changyuan Lyu <changyuanl@google.com>
To: linux-kernel@vger.kernel.org
Cc: graf@amazon.com, akpm@linux-foundation.org, luto@kernel.org, 
	anthony.yznaga@oracle.com, arnd@arndb.de, ashish.kalra@amd.com, 
	benh@kernel.crashing.org, bp@alien8.de, catalin.marinas@arm.com, 
	dave.hansen@linux.intel.com, dwmw2@infradead.org, ebiederm@xmission.com, 
	mingo@redhat.com, jgowans@amazon.com, corbet@lwn.net, krzk@kernel.org, 
	rppt@kernel.org, mark.rutland@arm.com, pbonzini@redhat.com, 
	pasha.tatashin@soleen.com, hpa@zytor.com, peterz@infradead.org, 
	ptyadav@amazon.de, robh+dt@kernel.org, robh@kernel.org, saravanak@google.com, 
	skinsburskii@linux.microsoft.com, rostedt@goodmis.org, tglx@linutronix.de, 
	thomas.lendacky@amd.com, usama.arif@bytedance.com, will@kernel.org, 
	devicetree@vger.kernel.org, kexec@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-mm@kvack.org, x86@kernel.org, Changyuan Lyu <changyuanl@google.com>
Content-Type: text/plain; charset="UTF-8"

Similar to HLIST_HEAD_INIT, HASHTABLE_INIT allows a hashtable embedded
in another structure to be initialized at compile time.

Example,

struct tree_node {
    DECLARE_HASHTABLE(properties, 4);
    DECLARE_HASHTABLE(sub_nodes, 4);
};

static struct tree_node root_node = {
    .properties = HASHTABLE_INIT(4),
    .sub_nodes = HASHTABLE_INIT(4),
};

Signed-off-by: Changyuan Lyu <changyuanl@google.com>
---
 include/linux/hashtable.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/include/linux/hashtable.h b/include/linux/hashtable.h
index f6c666730b8c..27e07a436e2a 100644
--- a/include/linux/hashtable.h
+++ b/include/linux/hashtable.h
@@ -13,13 +13,14 @@
 #include <linux/hash.h>
 #include <linux/rculist.h>
 
+#define HASHTABLE_INIT(bits) { [0 ... ((1 << (bits)) - 1)] = HLIST_HEAD_INIT }
+
 #define DEFINE_HASHTABLE(name, bits)						\
-	struct hlist_head name[1 << (bits)] =					\
-			{ [0 ... ((1 << (bits)) - 1)] = HLIST_HEAD_INIT }
+	struct hlist_head name[1 << (bits)] =	HASHTABLE_INIT(bits)	\
 
 #define DEFINE_READ_MOSTLY_HASHTABLE(name, bits)				\
 	struct hlist_head name[1 << (bits)] __read_mostly =			\
-			{ [0 ... ((1 << (bits)) - 1)] = HLIST_HEAD_INIT }
+		HASHTABLE_INIT(bits)
 
 #define DECLARE_HASHTABLE(name, bits)                                   	\
 	struct hlist_head name[1 << (bits)]
-- 
2.48.1.711.g2feabab25a-goog


