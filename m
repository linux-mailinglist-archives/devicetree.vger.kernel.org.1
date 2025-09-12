Return-Path: <devicetree+bounces-216564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BE8B552CB
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 17:12:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 291A0B62A11
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 15:10:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7BF431A573;
	Fri, 12 Sep 2025 15:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VRvJd4NC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E439F3115B8
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 15:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757689816; cv=none; b=f+oPq8Fdyp9RFlH0Hr0mMAOIJp0d9WFCHaojT3zuleQDOqPUFLKYW6MUNnX19tNZsEJ9Ywyk1HOr96kzmSFBocaRx4o3IhWNrcCgMHme0bXBOvHed6DRNwpnolYYpqh+VqKtj6IGlXCtvfZ/QUK/rvnnGDj/cfOtyoItZOuLHZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757689816; c=relaxed/simple;
	bh=GVNCGH9tQf5YYe+DYh6Siqxk4Q3JqHAijX/d/+i2q6s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WIkxpC60j6QC5ZQ+3xXfZR1dtCmky3TltAFxi/ixQD8PfOkIRpFbceVecplclC/k8ZZd+xVHYh9TyCtsnwCaJQgekz/vsz4pIKrXvjqIn1zLAsm00Xlt4y3XkI9M/awmu4p9xWMFP0Qv1Ic0/Hu0ZTKlhMm3/iapXLLfP2nJVfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VRvJd4NC; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-71d60504bf8so19135167b3.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757689814; x=1758294614; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MYpcsE3JJVoPh3yiGg+2u2fE9IOmYvM0Rb6jQc+GT84=;
        b=VRvJd4NC+YHhBbcWu/+E+2UN/RPZLIywCS7nFWk4cNrh7/aNzQOyqE0XVbnOT7m6oz
         4p1lgLalhIWQ8Ysj5/pKJKxsK8js/C8JQmUDxU6ZC7jRp09BAI6OisRvZxPiEfBOa8II
         DbOz2+CJFrIZQKYrHYByVmF4eKfvnR8sPz3nkwfV6Fppvh7xObmTh2/oZzrt7LqimY7N
         RLMUmJ6BRL8fiBRxXTAxIsIgN4c91NAY0K8Ah9P9wdHs3j6Uy2n1CAzJvfV+7fIiSUEM
         RwRc/0FluPslIgBW27+O2M1w3JQwtTtm/jBsvU5ELMqIeFFLreoIakdXDnNuObQCATvb
         u7NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757689814; x=1758294614;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MYpcsE3JJVoPh3yiGg+2u2fE9IOmYvM0Rb6jQc+GT84=;
        b=rl2eGAtYyKLN+HvZe2HiBW9fYEcxd6TdJeDkW+AFnH9M1BbZP0aL9cIBM9+90v0sLf
         LYIDW4U9hFQRwyZ6Vox8NrB3D9cnzArpCkdXbV4hlo+45V1Tu9a6IFOtia7a5K7Sep44
         bP+vWx2WLYw0UDc61pm+VLAiVN0ciqXyu5RiR/wLFxPcIXabs2zHfUt/v9sXf3xJ+J2i
         DYKI/lFGrUKSAzU5f+lvyN8rqTLiqpqXKIhqLBZKYRjRn3ZREDM7AkyF/km67GJq5NnY
         hLaq58eqRAFOjcUt734WyjS+Uqd8/Zlw4XP83YgPEaN/7HTRlPIRrExjBl+QtAL+Iuh1
         UCpg==
X-Forwarded-Encrypted: i=1; AJvYcCXgutlun0xsrtqpxIKQ6cuX3siL9X5CkEVp6WtTIAtHx2JeJiJtkO0fTdOCFuGIJgencRVqdK7PjuPc@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0hgq6PWMMjcp8sm/v5kx8qbql4ev1q4IvcfQKVjhrNQ5VNMS/
	3JHfATht0ZGG6bddqC5QIq4ZDX66dcOjPY+VJb1GDI7Wxs940AJjkCmXN9UzbtZoI+g=
X-Gm-Gg: ASbGnctWAXQUxRgJYh3MggJh5uZaHrBiYvAy9jUDJ9AQfpIBviQuTM8dlp3kEm9w35J
	5XL7oLxc36LdGVzGcaloCdNbWPU8lBmMh1lvXBXpT1rRsv0hQEwgtx6MoxEouoVRRJvY8X+j1V/
	odBg6PYUL3hPlJwW3j9GGWvlXEOF9jX+YvZWfTqpOWuEaaGE6eOt0BDngV+0FV/tBwXEaQL6LFB
	l0dlfQeFSECtlzoL/7+sAbf1X2X+GIi9J7nwafO1CD9T3VdL2ptUnzGWR2MK//IOO5BrpqDtBeK
	T+Amr1ZzILbdCSpjP3A5rmn5InGZHP+coeTATYkto6beRgdrPfvHxNuBKf/WLtcrX0NBbQocrQQ
	nP1ZWtgOVE4rbPP0sxej+HM8oqXVO7IsYjFiWxl583INs
X-Google-Smtp-Source: AGHT+IE2B/J5wRLXOu5lnuN+Axv8riYyigPru1eeeYCbQIMixSd8q/6Ui1Mo233PH+t3U62U0f7UQg==
X-Received: by 2002:a05:690c:10c:b0:71f:c7ae:fb73 with SMTP id 00721157ae682-730659befadmr31464037b3.42.1757689810056;
        Fri, 12 Sep 2025 08:10:10 -0700 (PDT)
Received: from eugen-station.. ([145.224.119.89])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-624841586c1sm1302244d50.6.2025.09.12.08.10.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 08:10:09 -0700 (PDT)
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
	Eugen Hristev <eugen.hristev@linaro.org>
Subject: [RFC][PATCH v3 04/16] Documentation: kmemdump: Add section for coreimage ELF
Date: Fri, 12 Sep 2025 18:08:43 +0300
Message-ID: <20250912150855.2901211-5-eugen.hristev@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250912150855.2901211-1-eugen.hristev@linaro.org>
References: <20250912150855.2901211-1-eugen.hristev@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add section describing the utility of coreimage ELF generation for
kmemdump.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
---
 Documentation/dev-tools/kmemdump.rst | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/dev-tools/kmemdump.rst b/Documentation/dev-tools/kmemdump.rst
index 504321de951a..5616843e0407 100644
--- a/Documentation/dev-tools/kmemdump.rst
+++ b/Documentation/dev-tools/kmemdump.rst
@@ -27,6 +27,14 @@ are limited.
 Although the kernel has multiple debugging mechanisms, kmemdump fits
 a particular model which is not covered by the others.
 
+kmemdump can also prepare specific regions of the kernel that can be
+put together to form a minimal core image file. To achieve this, the first
+region is an ELF header with program headers for each region, and another
+region contains specific ELF NOTE section with vmcoreinfo.
+There are also multiple regions registered with basic kernel information
+that will allow debugging tools like 'crash' to load the image.
+To enable this feature, use CONFIG_KMEMDUMP_COREIMAGE.
+
 kmemdump Internals
 ==================
 
-- 
2.43.0


