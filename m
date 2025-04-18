Return-Path: <devicetree+bounces-168442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B89FFA9319D
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 07:36:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C8B948E3279
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 05:36:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2014626AAA9;
	Fri, 18 Apr 2025 05:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="M6579sxP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB2F226AA8C
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 05:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744954489; cv=none; b=eqGxEhijoJZu+0GoSIPawa1lFk/7g4v4GgMO1KZ8Msss2zJYGdULoB6pr8qGD5mYxMlDMwtZUa7vf2be3uIERMMwEXR41dLNY+M8oCbfqVDp2IOFGozInf1Z60AD1+6qgjDUEv0A6RV2xv/ZlTud22B89v0+NSHQX9+wRRFp/9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744954489; c=relaxed/simple;
	bh=6AgqMNboe7B8nPvHCdPBbiCcZOlfMl0j+JQ0fzt3kCA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kn6vpMw5hpzmqCWapRB9AapykcQkLX96pKSqsPj87X6flIn4EqyOcWYLc+wadPXo38wqojEdulojwNY7NC9Tkwordo5ZkaWw2q0f3PnUgXUL+mJ2Tl9l9GwwMGnKhyU5QlAK2r0zxBGkUCpvsz5z4rAso8zyXxLu+ZCeOgtGmxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=M6579sxP; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-739b3fe7ce8so1419113b3a.0
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 22:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1744954486; x=1745559286; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YHR6GhsJ93bX5ZzvrljhM09iosbdwKgwllH+L65tMJE=;
        b=M6579sxPU+NsgvFAaOf4J2OAcwSRleaf2ayPQCBbBmMlo/8PLUkoJbiVrGRjKlzMNz
         xMuNpRoGzE8HsDAeQnvF7Yd9+p65RYOT19mcEWIP2Ocu5CMqzxnAgkutMzVFnyCayNOY
         yjFzmWucInILlH+LCNtsPK5ckBv3hd36A9wFuYzVZL1Mr0sGINu5CNmUGg5JzeLk8x3g
         O4cErdt/t28bXHIWiu11ZfkAOHZSVmmJgLBqwMT3Tv5B90ZepTmyuHNAAO+Zzju8Cfoq
         E1HBG4JakyvVAKDVfkgInQB0d8s4tufhXnaAYIhH8u76o8GA8qNaqhX14YfGchAXoSki
         CpXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744954486; x=1745559286;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YHR6GhsJ93bX5ZzvrljhM09iosbdwKgwllH+L65tMJE=;
        b=MqUbcCZ1lCThn+EiinX7THtXcwp6QgwGF7g/ys/lqFx8ohNMdAG7fkj5jb6H0es8os
         CjzFZ+hYfp90OtVdCufOWCHHmn9zml8/4mY5EfLITtiwk7iQ/3RnxZGHs2j3r0bnse4N
         LoDBNYiqPQXL1nTstsjrP41EgpfZ6mvRKupCf9v+ygHr72DtAiQEghgzsHcSncv+CkTE
         CraHnQD3Xykq/54SCtSnMq/V/PrFqjKXNT1x8nuADRLJ9z+kghaj8c+J1JMzMtGrLfr7
         PQJd93S9GlfZaf0n/H2D/DOetorXVwbX+qRJoRDXwHGkaINuZ4sauFmg9+USS8pSi0Wy
         kdpw==
X-Forwarded-Encrypted: i=1; AJvYcCVCs+gOcmyNR5T+Cp2Xs6sCVQTRNdE+GPhR7qDA7bArwkSFU1DLQ6L7mjXOaumMWhOgJWXSV3Qc/jyG@vger.kernel.org
X-Gm-Message-State: AOJu0YyxXhY6SLXGZUfA3HhiExidZ+RIRVeRl+nkLQerTfwgkEs4lP9w
	DFguYdfJz4HuQAnjUDkoqTFQ96gm8/2K1/JWIV5Wz9PMcPWxnW0HTd5/QSIPq7A=
X-Gm-Gg: ASbGncskcPqfYJqQ0F2LtZRwoS+fDy1BxxaNpEuN7hJEgNn0PW7VJesZ+VYZFB5PsWe
	zX0+XOHYHZ3LTVBPtRieUxCn/aF/bnpG3xrJPIeU3LiQsuUFoU9AbL+cU82TgJkEiAP8+/UK1q2
	BLnC1KCo/BKIadUgRdxGoDbC0t8SzRzr+xGQesIAqCiYcU49mauQQdH6O5G3AH6CT8UbzswYXur
	ZopBobXOQyzT1qjywe1RoLfDUt+dTiHr7MtrDXucFMc4UacixHfvrQLWzYbZC8+KjTrxrzs4bJs
	uSltGvyA4L/J0UE7z+sNiNaVmUHbGfenrVedl9eZGu7xElVFtljgHtSJgAIbxpBGYJ0rIsOXJkl
	GYKztJ53xVFQ=
X-Google-Smtp-Source: AGHT+IE94GrG6NgY94ivBPu/h8Nj3d+BVoWj25z9GYvOP7uZPO9BGG//BTMuP3HCRMD4vlqRI/woGQ==
X-Received: by 2002:a05:6a00:4acc:b0:736:3be3:3d77 with SMTP id d2e1a72fcca58-73dc156f96bmr1971764b3a.16.1744954485769;
        Thu, 17 Apr 2025 22:34:45 -0700 (PDT)
Received: from cyan-mbp.internal.sifive.com ([136.226.240.168])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbfaed86csm834555b3a.180.2025.04.17.22.34.43
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 17 Apr 2025 22:34:45 -0700 (PDT)
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
Subject: [PATCH 12/12] riscv: hwprobe: Add SiFive xsfvfwmaccqqq vendor extension
Date: Fri, 18 Apr 2025 13:32:39 +0800
Message-Id: <20250418053239.4351-13-cyan.yang@sifive.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250418053239.4351-1-cyan.yang@sifive.com>
References: <20250418053239.4351-1-cyan.yang@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add hwprobe for SiFive "xsfvfwmaccqqq" vendor extension.

Signed-off-by: Cyan Yang <cyan.yang@sifive.com>
---
 arch/riscv/include/uapi/asm/vendor/sifive.h          | 1 +
 arch/riscv/kernel/vendor_extensions/sifive_hwprobe.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/vendor/sifive.h b/arch/riscv/include/uapi/asm/vendor/sifive.h
index b772d4631284..9f3278a4b298 100644
--- a/arch/riscv/include/uapi/asm/vendor/sifive.h
+++ b/arch/riscv/include/uapi/asm/vendor/sifive.h
@@ -3,3 +3,4 @@
 #define	RISCV_HWPROBE_VENDOR_EXT_XSFVQMACCDOD		(1 << 0)
 #define	RISCV_HWPROBE_VENDOR_EXT_XSFVQMACCQOQ		(1 << 1)
 #define	RISCV_HWPROBE_VENDOR_EXT_XSFVFNRCLIPXFQF		(1 << 2)
+#define	RISCV_HWPROBE_VENDOR_EXT_XSFVFWMACCQQQ		(1 << 3)
diff --git a/arch/riscv/kernel/vendor_extensions/sifive_hwprobe.c b/arch/riscv/kernel/vendor_extensions/sifive_hwprobe.c
index 2b9505079a9f..1f77f6309763 100644
--- a/arch/riscv/kernel/vendor_extensions/sifive_hwprobe.c
+++ b/arch/riscv/kernel/vendor_extensions/sifive_hwprobe.c
@@ -17,5 +17,6 @@ void hwprobe_isa_vendor_ext_sifive_0(struct riscv_hwprobe *pair, const struct cp
 		VENDOR_EXT_KEY(XSFVQMACCDOD);
 		VENDOR_EXT_KEY(XSFVQMACCQOQ);
 		VENDOR_EXT_KEY(XSFVFNRCLIPXFQF);
+		VENDOR_EXT_KEY(XSFVFWMACCQQQ);
 	});
 }
-- 
2.39.5 (Apple Git-154)


