Return-Path: <devicetree+bounces-240302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 6109FC6FD43
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 16:54:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D0CA53480BB
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:47:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4169736C0BB;
	Wed, 19 Nov 2025 15:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bz492DHl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDE4369966
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 15:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763567143; cv=none; b=DcQ/kdtqbEw3eUACnmIPvH3g5u6F5f/0ArMszX8HEzv5Q2m/UcOCiWN7gVKnKiluh/JrhtTlHoe5QrNiAfTyKgNsNoSpq1HoYBKRBDjlL9JPdErY3Pa6zYzy2jj1E4u8tZPTRJXlFkT+IP+PAcZWROKF7J2JTb6LZDgvZ16MIkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763567143; c=relaxed/simple;
	bh=bdt5n2rAVI8cStNvPmdZt8oM87hfXgPy8mlP/xL4jOQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eod8NBJj1/fhLHLuID8V1ozFCSDVRdiXc4l1uwa3wmigOF9rVybjPwN2z+euCmHcQcNVRz7PC0htwAIVRLZYOvYjOwy5K/LeFOVMrfJbXNBoytS90b1xVTNAGoLBHf2ccfjYDIMvv2w96713I/04rMT8HNJZdw8ATvGIaf+pbug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bz492DHl; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42b3ac40ae4so4186903f8f.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:45:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763567138; x=1764171938; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=slnZKLktel7FGULom0AhklQ/3aJdt8tuo66g65NOCPI=;
        b=bz492DHl5yOzE9yJqimKdlgCFvBmcsPkvDkuBNCriAVZnkeSAqY3nP7LGbyBZvdxbW
         oc2HOPgDgVH18yyt6HjNfvydEL8GIuHXv2Pofai7w1UKXlmII3hPumvCXNOvOePSROSi
         e/2BiBnIWC2n2sNn+FoRECLcoeEkoo+4CnwCEhpQwBpUULBVqNYLT4F1hgITIZqkJLqQ
         bfeKsPz9KlTRqx2ZVlK2A6artCAtJV32H7NQpEOqVUMiDR1uo3umGlgdSfA+RVSV9ygb
         zLmQSslT7dn9MaSqtfyzoxsSoi+0bpd+NdlBvr5Az29P7gmjqheUCt9rGNgINWi3WwuL
         Kn/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763567138; x=1764171938;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=slnZKLktel7FGULom0AhklQ/3aJdt8tuo66g65NOCPI=;
        b=Igj/MXBuoLNXQMVPScRpkGkPUv27UuAwviORKpU/Ut2iVDxuXeEqbyi5PUN9arPypK
         /BWl5Fx5B+GBAZyI++mwwLwKUnNWap9HLuPJ9Oe8CzW7xO7/CHe1FyT2VYDt2990Z9co
         ZFLP4FrcOY3CHppRCYdJ9nPOrxQ8wYFsfYwAjUbGuXZWmICrB07AA1SnmckTCodwXR1W
         mITxZj2+b72fgnJ4fpk8PlvTHRC+zciAsNKACqlvq8tkgIqiIEuFGhaIdaEI7YgrX9UK
         eP3kdOhT2swRLygR1PEqZzqNfkHpKVNqduN8f+/Brj2MKkcQ/aYcfYXjWP5ySoeLturZ
         tqvA==
X-Forwarded-Encrypted: i=1; AJvYcCV/daYXZYMpaS18HaULWMb+Ge+ld/ZY2ib2xIrRliqxgwXBU7Ob7fOtAISn4tWpneN+5lO1SU+CU7GP@vger.kernel.org
X-Gm-Message-State: AOJu0YwoAThXTHFSr12EW3m7oU0gAlIjK+skcYDe9Vc7xiQcIMOeyutH
	BuDDlDEFbtNXqmeeySRmiBfOxyp5R5Bc4JfrWSrcFV8OITRcNa/BWejEzlEtWMFEFQ8=
X-Gm-Gg: ASbGncudSo685UWtidTWdSWNEmR9hxE7RD37Qm/0s1SfKnWgt8ofKZCMmO05S+WM0xM
	bIPiBR3QS3vagsJpspDywAB04aeNFXNn/KUfgYiWd5NlpTjIjeFcKA7yURuJsOeLmNhriQF22lk
	JaAU0cchg4RiRrIYzmvuIQ+aLYDVuBWvYX50Metd737xaF+jytFG7exvOyKDZZpRiLBT/+ICMl+
	B6DVmDQm7WlUCv6rlyT/8h/CBzo1KbEf58z1KulVilROFaDqykLOUmAhgRmcVQCcqHkMhtWayB6
	rT7vCCc2iEXJ1d9ZAGiQwhBjOUjqbK2jk0jgv7TMT6V8Cr8yWuoDpYagxxQXa3de/E27xPbwk7a
	Hf2b+AFThiQ2YTP61eWfkEnbRz7mAk34Z85NzqN3sBDZbvzT2eiRqIVfekKg0i7bnoM6hsmWcQo
	8BdYf7QELFU4n0iIGJBANlgQkro20cTxCtGHC4kdRe
X-Google-Smtp-Source: AGHT+IH9XA5XKwB+eYd4P52AVjjtUkCjRx7TcK6UtIfvF/aP3IOPVELnIO3YhYk8yezAw62YpuQ83g==
X-Received: by 2002:a5d:64e7:0:b0:42b:47da:c313 with SMTP id ffacd0b85a97d-42b593395a0mr22250899f8f.3.1763567137600;
        Wed, 19 Nov 2025 07:45:37 -0800 (PST)
Received: from eugen-station.. ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53dea1c9sm38765632f8f.0.2025.11.19.07.45.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 07:45:37 -0800 (PST)
From: Eugen Hristev <eugen.hristev@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mm@kvack.org,
	tglx@linutronix.de,
	andersson@kernel.org,
	pmladek@suse.com,
	rdunlap@infradead.org,
	corbet@lwn.net,
	david@redhat.com,
	mhocko@suse.com
Cc: tudor.ambarus@linaro.org,
	mukesh.ojha@oss.qualcomm.com,
	linux-arm-kernel@lists.infradead.org,
	linux-hardening@vger.kernel.org,
	jonechou@google.com,
	rostedt@goodmis.org,
	linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	linux-arch@vger.kernel.org,
	tony.luck@intel.com,
	kees@kernel.org,
	Eugen Hristev <eugen.hristev@linaro.org>
Subject: [PATCH 12/26] kernel/configs: Register dynamic information into meminspect
Date: Wed, 19 Nov 2025 17:44:13 +0200
Message-ID: <20251119154427.1033475-13-eugen.hristev@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119154427.1033475-1-eugen.hristev@linaro.org>
References: <20251119154427.1033475-1-eugen.hristev@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Register kernel_config_data information into inspection table.
Debugging tools look for the start and end markers, so we need to capture
those as well into the region.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
---
 kernel/configs.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/kernel/configs.c b/kernel/configs.c
index a28c79c5f713..139ecc74bcee 100644
--- a/kernel/configs.c
+++ b/kernel/configs.c
@@ -15,6 +15,7 @@
 #include <linux/seq_file.h>
 #include <linux/init.h>
 #include <linux/uaccess.h>
+#include <linux/meminspect.h>
 
 /*
  * "IKCFG_ST" and "IKCFG_ED" are used to extract the config data from
@@ -64,6 +65,11 @@ static int __init ikconfig_init(void)
 
 	proc_set_size(entry, &kernel_config_data_end - &kernel_config_data);
 
+	/* Register 8 bytes before and after, to catch the marker too */
+	meminspect_lock_register_id_va(MEMINSPECT_ID_CONFIG,
+			     (void *)&kernel_config_data - 8,
+			     &kernel_config_data_end - &kernel_config_data + 16);
+
 	return 0;
 }
 
-- 
2.43.0


