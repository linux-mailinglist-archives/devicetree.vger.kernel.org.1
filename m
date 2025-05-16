Return-Path: <devicetree+bounces-177822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3A5AB946B
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 05:09:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB9021BC5D8B
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 03:09:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B45F828981A;
	Fri, 16 May 2025 03:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="mKIIiEd0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41757289802
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 03:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747364759; cv=none; b=FgimLoiKTBYQhO4zO3foNsrnJKrHWtsYIDpsVfRUlFSgO1A7HU3H0x8RSDTcHV802ILMtiPsh72RURCjhI1xb73+rQgqmrVpC/YAw3gLtyB+iy0BaiW9M02A91IdvD1X5In796WYFO+IbuxBQdprYLU5crKaTOKh+DMedjc7eEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747364759; c=relaxed/simple;
	bh=nsgtSaTn5UMmzY8W/ttdkLr3ZbgDZmLHCd+an0LcguI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lz5Rw579YAuK3CnpVMcsLgjvsMV8EAqbE8EwWZ64LvYKlzsHNSkzRQ+zJLwBR0F7M7aO5gy3pTKx/U8OHGrlp2KAxM64a0/JBtkJ/FWXMf3qCtd7nHQ+D29cFG8MkB+yqe+OGlMQ1Ng4F36fGmPdQqVTziHu95iO3FQsmMamMmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=mKIIiEd0; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-ae727e87c26so1068008a12.0
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 20:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1747364757; x=1747969557; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a5/PDhz3AlgX3PPZzfN/Kg9kUFezGYCGeqp5UVya4gU=;
        b=mKIIiEd0a3CbzOyO8COl1IW0UTYIjEpHMEEtPc7QZJ6obtCDhwHqtD2+LOx5OhrDJs
         t4HXaKg2CCltjRxMebVVEWkIsZrRARVuHdxiE8djAGWrjccR09Nmsr4AFMtsAARbK1BL
         eePmHp8BYmQX/cDigy8YCsBiA9W+gyOL/Bijv97oXk2idx5LvFii8LjuRBeFWNldHoog
         AjPPN+gqqS0YjnBDICT66T0pywZSSfAQX6m8t7dtmGxgdDRDAncA6Gz3n2C+sfmMe20S
         Cafyer2EyFzBGeBzJCzk0a0B/fQx08Je38Rgr5gMfanlSG7cjIxACl//EVPDug35uGdy
         BGlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747364757; x=1747969557;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a5/PDhz3AlgX3PPZzfN/Kg9kUFezGYCGeqp5UVya4gU=;
        b=KH7aRVumprvJ8MYTCjLEPsVY4nscs85nlRSK81elUXA6UpKkNxGmFblDYt9rxazdEo
         Lc7E87tmUZ1CF7Fbn/ubp1hQH4BnZqX95UDhqAKMkt7wMMx6cc7eNLa0pm5bKo/NXbZm
         UAx40H+ah6rrhfTq38wRpj5neKESLWuiebIdKkLZEbYQ+f1XO4wqfVxM8HTFVZgaIKj7
         IFyDvGVmLOzPed/utWY3xdBI+t1763J+TPppEBvoIEWePq6Fak0kqpssnnK4i03MBTxX
         9HleO/kCrYbLajLEQXeeYNaeij4qxa2QVhk37ChFDo+SeQ8Ajj1dhcKY/1NX5yrqfsV5
         jK3w==
X-Forwarded-Encrypted: i=1; AJvYcCXteFKINwbTYsyEvqFh5hfybp8eR9629A069uVhMYdnGBjpSq2e7VSd9drPE+gnk/WCrydOqP/5tXNU@vger.kernel.org
X-Gm-Message-State: AOJu0YzENQZJOzSTBAMWLtxEexq8VZJyJL+kNH/QBnU7OChlPQmM297Y
	RLd5U5USrts+utXFSP4Vlje608t1STg6dVomA6kORO3Ij4xDrMpqVLLeGwG/M2hqsAk=
X-Gm-Gg: ASbGncsac11Suwgbe2vTQhrmyYEJTxrm8Jdm81o60L7NLnT+UuOryiPBjlevfq7S0eW
	vf61hnl0kDJWPjWI8wwse5uoSanyxY0Z9ZY2i/N9Ms9ECc/agpcw3nNmM1YJTe8srde+4latwu1
	ac/1EHqIE+NjsBiiYQYtHR2Hmd3iiFucYc7ZNlcOK+dLSJqXpqaJdVGxLqZezUZzP8ExpxcDUTC
	22dhycbFzpmdBLQY7zTXS8PZ5JLfA9QiNtgAE+fN8XqiTrffzlHJP6C3b7Ojfe/xU8tZTJFxz4k
	L152+QsiaPN58atd3GjGmQZISobut4cAoOdFIfbXhW9r1iqU6HPk1YYu35tP0jC2LXRybUR6yUT
	O7khc6nrdoeM=
X-Google-Smtp-Source: AGHT+IFJbPUK4tMDRuGc+co241YfBHz7E/gRc2tzvQ+RafzudJUC0EH4MsxgVnUHPIA3yanX+bcZ3A==
X-Received: by 2002:a17:903:2306:b0:223:5124:a16e with SMTP id d9443c01a7336-231d438a1c6mr23919555ad.5.1747364757539;
        Thu, 15 May 2025 20:05:57 -0700 (PDT)
Received: from cyan-mbp.internal.sifive.com ([136.226.240.168])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4ebb084sm4804405ad.201.2025.05.15.20.05.54
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 15 May 2025 20:05:56 -0700 (PDT)
From: Cyan Yang <cyan.yang@sifive.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	samuel.holland@sifive.com
Cc: linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Cyan Yang <cyan.yang@sifive.com>
Subject: [PATCH v2 07/12] riscv: hwprobe: Document SiFive xsfvfnrclipxfqf vendor extension
Date: Fri, 16 May 2025 11:03:05 +0800
Message-Id: <20250516030310.16950-8-cyan.yang@sifive.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250516030310.16950-1-cyan.yang@sifive.com>
References: <20250516030310.16950-1-cyan.yang@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the support for SiFive vendor extensions for
FP32-to-int8 Ranged Clip Instructions using
RISCV_HWPROBE_VENDOR_EXT_XSFVFNRCLIPXFQF.

Signed-off-by: Cyan Yang <cyan.yang@sifive.com>
---
 Documentation/arch/riscv/hwprobe.rst | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index 16085b2ee64e..e15405e12239 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -349,3 +349,7 @@ The following keys are defined:
     * :c:macro:`RISCV_HWPROBE_VENDOR_EXT_XSFVQMACCQOQ`: The Xsfqmaccqoq vendor
         extension is supported in version 1.1 of SiFive Int8 Matrix Multiplication
 	Instruction Extensions Specification.
+
+    * :c:macro:`RISCV_HWPROBE_VENDOR_EXT_XSFVFNRCLIPXFQF`: The Xsfvfnrclipxfqf
+        vendor extension is supported in version 1.0 of SiFive FP32-to-int8 Ranged
+	Clip Instructions Extensions Specification.
-- 
2.39.5 (Apple Git-154)


