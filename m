Return-Path: <devicetree+bounces-240303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9DFC6FE44
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 17:00:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9B51E4F55BE
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:47:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5372036C0C6;
	Wed, 19 Nov 2025 15:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pYLbNjJI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDB42E7F17
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 15:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763567144; cv=none; b=kmnkorVByJ2KDAtbXjMqx8MVHjmEubFDs1LN42DWDZVv0bN7weNs7x2bWO3Io3b/lTp/GRLZI3syckR+7bSWU6PzhmF6UVpp8tPW3XZvvCpEA9KiWhkgttfNbZB8K0Zu75WA8ppuS+eZEG51Abe/TwlvqAZEN3pxcreRyj46ncY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763567144; c=relaxed/simple;
	bh=3D6cMAtJFcH0eGhpLiRPBCAWIwBu4/DIokVo2lKhkeY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=h5KaOGfCVn7cKnkqT8ayKqJc0wmswIDF4A8URf9DaUqBAn3IzLmin/oOKRifb6f2Zt4ngUoOxBYMAamzgqtcJNDbwPAzd53EJP3FDZfsOS+ngSEmLwqd+MJ0FtpqDUnZWHLj0nvXJPr+7u46YB7J8roqPvORXFNT4lk5OQlnT/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pYLbNjJI; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-42b3669ca3dso3464146f8f.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:45:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763567136; x=1764171936; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1EgUtWpxUoehpDvVbPcVA+GkHlZFESzHxIeFdx8HGLc=;
        b=pYLbNjJIY4xqxEIuEns8uXjvZ7F9isi/7jugo5Qj7mhP9MDL/QpwdMISZcJdNL9qP/
         y9ZVXz8oEfwgevPWLkpZcPeLF47jsOb/XLf6/K0XXuPwugKhs+phJYcFTU6ZYG5E4S/r
         o+Gp6z+r3MWbQ861Bcu8Uuld23esVOU+yE3rs15fEovLoc4dr+ngBE2HsPuDyaaBMk7k
         PRsZEYjW7PPvzzPVl2RzcO++pOHfy+eUzYEjW15SHSG2mnuw9/5gHaT85gJU5KvJyeWx
         dle+WOQC/9zPb3r7giPWeiI3kW7J2GODRp8Myf5WewGW6sR4l53Vhkhm3IGgtNkPpyaU
         tTVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763567136; x=1764171936;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1EgUtWpxUoehpDvVbPcVA+GkHlZFESzHxIeFdx8HGLc=;
        b=fJuJI0gRGPEz8Bkw4EueiEI4ES0qi9Bj0asmcAPDWJiVEFzpwi70+ejqfmuAsO+T8S
         AROhufl3H3ilnxasIVz+oAsXClxQc6cund7aCE11bOjuQaiJRMnOMajC1/6TYxPk/xTj
         8ue5VKbgi5Dvn/q6emG166vJUBWl9XEh0uaTew/3wbAXdvlBR4BAx7wCiQ2Nz9+1j4TR
         Wu9Gt0HbbLUepQEzu3Tff0X/BsvB+MgnKVpNx63QMvDQ68tiqjxmFYWM71X3Q0C6bhyT
         d58ZsDnG+InSJInHoSKEyPCgHp58WC0Cm0xvszjZ7E4gdzBoxTyuaRU9vMApcF0xA2AK
         p6rw==
X-Forwarded-Encrypted: i=1; AJvYcCV2InPn+CSX9RkuF0DEH+6upyKPwh9SAz+R0B4IpcrqRkm1lqQLcpCZ3RuWTzGD+6IqK31xpBew1K17@vger.kernel.org
X-Gm-Message-State: AOJu0YyR8nKL6cgP/A2Q7HPWyeJ7xyfW61UrgOePgWixNKU5Nv7ZseAz
	T5p9NNuC4JBwwzxQWFOZO3YRjXhI518wmOBtrwdZY8whcpwxd1MsaGYhAIF+QZefEek=
X-Gm-Gg: ASbGncsuPgISXfbMoo/dLskRm1Drl13+q15qbDRbjp2f5ajATkO71QsIHVqNvZHaVzD
	D+ljE2xujUOoAYjjkIJh9eIiGDy/2sZuBD8dCgn2Dk+8oGrnmJLgqY8fM2l7sfrst9apfcHxf0b
	akIAiIF8LmBRrd1KPuJck1aPPsGV63vRW8zF2Yf0PHkaGWRCeJno8GjQuO3JvnQAE1zoIBSIwit
	NQxJ8xc659yvbefVn93u7ZJW5rBjkaAGEaEs0JGO32ElZckPFqapTi+ZAMzxfJblHCEaaz4jwXX
	1ovpjDSUQmxfF2dOqKfNJDA1YAJmHbd9wWFBy5MnkpPHZjBT67t3oQTrDo7UDSzsaysG/+Eg7At
	3mVx2espMWVzw5b9lN2S0FrZaGq2ZmyM+mxHdJaA9f5pqt6EupYORb50gQd+caZwQ8WN/N88UWD
	Cdnb37UGmLlnaA6Yu1SNx/0sewxH/cug==
X-Google-Smtp-Source: AGHT+IGKFFWZ+AqolHJ3imLY6SMDSF30b2mMpFX+Q/YU64RzAj2P3ofwp9AZZn8blv/guB2oFBfRQw==
X-Received: by 2002:a5d:5f93:0:b0:42b:43cc:982e with SMTP id ffacd0b85a97d-42b595a497fmr21650580f8f.36.1763567135863;
        Wed, 19 Nov 2025 07:45:35 -0800 (PST)
Received: from eugen-station.. ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53dea1c9sm38765632f8f.0.2025.11.19.07.45.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 07:45:35 -0800 (PST)
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
Subject: [PATCH 11/26] kernel/vmcore_info: Register dynamic information into meminspect
Date: Wed, 19 Nov 2025 17:44:12 +0200
Message-ID: <20251119154427.1033475-12-eugen.hristev@linaro.org>
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

Register vmcoreinfo information into inspection table.
Because the size of the info is computed after all entries are being
added, there is no point in registering the whole page, rather, call
the inspection registration once everything is in place with the right size.
A second reason is that the vmcoreinfo is added as a region inside
the ELF coreimage note, there is no point in having blank space at the end.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
---
 kernel/vmcore_info.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/kernel/vmcore_info.c b/kernel/vmcore_info.c
index e066d31d08f8..6a9658d6ec9a 100644
--- a/kernel/vmcore_info.c
+++ b/kernel/vmcore_info.c
@@ -14,6 +14,7 @@
 #include <linux/cpuhotplug.h>
 #include <linux/memblock.h>
 #include <linux/kmemleak.h>
+#include <linux/meminspect.h>
 
 #include <asm/page.h>
 #include <asm/sections.h>
@@ -227,6 +228,9 @@ static int __init crash_save_vmcoreinfo_init(void)
 	arch_crash_save_vmcoreinfo();
 	update_vmcoreinfo_note();
 
+	meminspect_register_id_va(MEMINSPECT_ID_VMCOREINFO,
+				  (void *)vmcoreinfo_data, vmcoreinfo_size);
+
 	return 0;
 }
 
-- 
2.43.0


