Return-Path: <devicetree+bounces-216136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2644FB53BCB
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 20:46:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 92BBD5A1AEC
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 18:46:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 881EA2DC79C;
	Thu, 11 Sep 2025 18:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L9GrAblU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165342DC778
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 18:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757616363; cv=none; b=l6GvUdXXUvspcI5uBTEbjzHk6k3H6lkiR7Qk15mJydxG0oV3Pt8vf5Ua3/gYUuQKhcNbAqmDwd/2gwIGRdvL0xi8cjxMbgr2avENYOY7Fv6UFXahPWl7KwIugptIf3HpKHSP4nEKGWF3cC+rCEmuagwgQPO4pQk7rOjJJCtJr9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757616363; c=relaxed/simple;
	bh=jMIemCZzS4/8PenidOe4LvP1cFNH/RQ3gLJoU+jtxQo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NJEbm1Dx22P7Vdlvkfpyil24pN7l9P7qeHxQzaq8lZhNOUW6YuX0RM6v3sKU5H3Kud3FWqMU0dGdKQ6jPmoaBOK8p+Yy5CfLZTrx2mB6iCYEU0SSrdfBefpT4PVg8ynCEp8PShxHuTaJ3AI6owc2Xz0OKP33wN4ZyrxHIZfBPuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L9GrAblU; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-77287fb79d3so940193b3a.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 11:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757616361; x=1758221161; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=11u3ge/kZdqOdUCXMGxE61YAG8eluHRkzjjiYZfqJsk=;
        b=L9GrAblUfF4kPgYlg0grC159YedXe+iqMOCXhiMWaL29bwNW2fMhPHuHm8PzYSf171
         XvBaKTLdU83mhhuRP8Cf1Sm5+w0VfNctsMDlC6RVtMqivAV9m282XYUR94pFZYqj9PL4
         /UrzreDGyNysNdyzVdH4n4uFpCci9MHN2Zgx8XZ+JhqrIb+uDWjC8uWALnHsVFNUjq46
         NBdzfE36LdE/5oC+na0KQNcBmYtIiS0sN11ziahUSVowq2e+zyAg66w6v0oT/spwg4bh
         5i3vyQr8QP0xN3z4R2kLgO4pEikOFAhjTQLnhb23aINi75ELXpVDv67B5mAdPuqFNU/a
         eHUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757616361; x=1758221161;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=11u3ge/kZdqOdUCXMGxE61YAG8eluHRkzjjiYZfqJsk=;
        b=QgeKhMBzl2g7UUflIWJe4BfDxilzXyfC7NUCtg1CXbjcGrh5rzRVg5BJRzSUXKwxNB
         CMNzYRXrFlL8N9Kx1e0CqyJixcQk98AAYcwNeybFzz3GOR85YOEy7mao2e4bZkMriN+Z
         9Dgvl/VaeIlZYn4fhRnsJ82/AduEZrRMQzH7kit2s4B2KB1B3/K5wrDb3ihGGsT3Mbgf
         J9VadL85cywTJRkCFoPW4Ouc/uZjI7UUa/xyC2llOKd/60wwYnKXNnQj06ldNlH0EcM9
         yNj8S3mxWk8xg6C3VIfCDBOrSfGtU/U3PVypBjB8raNJ/8k8JPwTiWeUSZtOQfZHYq/7
         6lkg==
X-Gm-Message-State: AOJu0Yy6FFoHPxDGy3xbMvAiX1GepiJ6x+SW7EarBeXVEeWXGEWkviyw
	1gtaGCNf2JAhleJm6g2PPsCRb1L/SGUNHDgtl/qnFZNGhGPua/QdMK5ghVkjX00iFOB5rw==
X-Gm-Gg: ASbGncshjVcv55cDmk8l/mgs+SRGWWoI3fCuyAtBnOj2WjDBzyaVRnH6nL9dcfrC/mx
	KpXCXB0Tq1hFaJi9Mpn3A7qipYh9I8OFght5hWc0einiHehP9l2xnsxTOH5YEI9t10Xdu04TZk8
	DZgiaXGwvZnWldGzGIEicsnb96hxot8fI4JC2VylCdaHq4gksHSnv0bsCRIapKNilDFJqrl9Fq5
	586DYcFVF4y8UAzkLUa1s9uFUpxpTcS6YYfsaCKUOJZbPp/DKcBvn5eU7cnmjZBCdYYU5cp2NY9
	74UUOzM6UAIoMZCmi1vlGfK+WwMY+6wXz2rlQga9MY1fQIK403qNJGLSffzcNF88uLn21pMSItW
	XnsFbjZIpJJll22RzQ69nNbm5Nt3miJ/6z8KhYU93qGy8Y4YsawBAJ7YDsQGgfDus9HWWvkjHoG
	rmZo4a6WNFUG5e77kzrbBnKg==
X-Google-Smtp-Source: AGHT+IHd/qXnQXTsb5UgYgP0uV+8e03FjtD7UCE3WoNBYNYrck3TNfpFhSjkvJMDSsyUWGXnMfLorg==
X-Received: by 2002:a05:6a20:6a06:b0:243:966e:21a with SMTP id adf61e73a8af0-2602bb59c2cmr401286637.36.1757616360643;
        Thu, 11 Sep 2025 11:46:00 -0700 (PDT)
Received: from localhost.localdomain (static.148.173.216.95.clients.your-server.de. [95.216.173.148])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607b34790sm2762616b3a.81.2025.09.11.11.45.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 11:46:00 -0700 (PDT)
From: Han Gao <rabenda.cn@gmail.com>
To: devicetree@vger.kernel.org,
	Drew Fustini <fustini@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Han Gao <rabenda.cn@gmail.com>
Cc: linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Han Gao <gaohan@iscas.ac.cn>
Subject: [PATCH 1/3] riscv: dts: thead: add xtheadvector to the th1520 devicetree
Date: Fri, 12 Sep 2025 02:45:26 +0800
Message-ID: <20250911184528.1512543-2-rabenda.cn@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250911184528.1512543-1-rabenda.cn@gmail.com>
References: <20250911184528.1512543-1-rabenda.cn@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The th1520 support xtheadvector [1] so it can be included in the
devicetree. Also include vlenb for the cpu. And set vlenb=16 [2].

This can be tested by passing the "mitigations=off" kernel parameter.

Link: https://lore.kernel.org/linux-riscv/20241113-xtheadvector-v11-4-236c22791ef9@rivosinc.com/ [1]
Link: https://lore.kernel.org/linux-riscv/aCO44SAoS2kIP61r@ghost/ [2]

Signed-off-by: Han Gao <rabenda.cn@gmail.com>
Signed-off-by: Han Gao <gaohan@iscas.ac.cn>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index 42724bf7e90e..59d1927764a6 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -25,7 +25,8 @@ c910_0: cpu@0 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+					       "zifencei", "zihpm", "xtheadvector";
+			thead,vlenb = <16>;
 			reg = <0>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -49,7 +50,8 @@ c910_1: cpu@1 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+					       "zifencei", "zihpm", "xtheadvector";
+			thead,vlenb = <16>;
 			reg = <1>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -73,7 +75,8 @@ c910_2: cpu@2 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+					       "zifencei", "zihpm", "xtheadvector";
+			thead,vlenb = <16>;
 			reg = <2>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -97,7 +100,8 @@ c910_3: cpu@3 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+					       "zifencei", "zihpm", "xtheadvector";
+			thead,vlenb = <16>;
 			reg = <3>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
-- 
2.47.3


