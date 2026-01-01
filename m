Return-Path: <devicetree+bounces-250900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7DACECE43
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 10:03:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C02F03018F7A
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 09:02:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E096283FC9;
	Thu,  1 Jan 2026 09:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jQWOb1zY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F32E283C83
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 09:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767258165; cv=none; b=Rz+cpObMCjXC7wG9ynGAOYGHP24olm+B4Hze1BWIECYm3+L6Gytjxy/2gCd6710oyXQWu8A3VmYPBij5bqeDMK48MvYlu0zCoRjgphHpEUGAdyspAiC8MguI2skQj3T7cb1t0bI8aOX7ZAkT8zbRfmQhyx+nbbElfG8TbXf6uyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767258165; c=relaxed/simple;
	bh=T7VIuEp6hEe3RkCETbS7KqP+//z7d2ZDmQMS7i30tSU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EjO/iGky5Jat3YrV2mMRbNFYXeiZ7J44cq8QhC5SB1APLahpx6Cu37KsPHMjGdIC9ZBp1pFLjXLuZQqpuCc6nhnqARAGaFQ5U4egahZ8bp7IaLLNKIk4rADqxkNOCwdjB9Q3c++Ie8ZgLsnHofZcITw+LtMHDD3nbhZxuYBIe8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jQWOb1zY; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7a9c64dfa8aso8663587b3a.3
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 01:02:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767258163; x=1767862963; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gnmU0etDq0lcWJuNgsoBFmFUTXG/dt5JQHfVECxG+u0=;
        b=jQWOb1zYrKym2cyozQPiQHSx6OzTx8q6juktqeIYNsaC5jTZek/8bnJyMB//zf1OsB
         yDRjEPaFKnSliz9WljRdNjwXNghxNbGow1DmKV8+kzUz8AHDQ7+xfGRY590LULfUhoj4
         gywtz3wWB5j8xP5X0wPX1NGWv0saPZ/DvBMaLy6K7ZwJKKxDS/ssiClcBj9C0Yqk5Eoe
         tqdxC6MMh3i7EbvJ2wCwGm4Kv90pBYEFgnat1MNLSwHUgtvbOXNh+OFKiiOlYmSM6DRo
         83CeBHMYlWoA+qAR0KjJrWCLuGV2SPtl4gUpHTCjzICV4YO6lJKWaKE4UnHd64zFCIM1
         6vfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767258163; x=1767862963;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gnmU0etDq0lcWJuNgsoBFmFUTXG/dt5JQHfVECxG+u0=;
        b=RdzCW2DPhGcKvV2UhKa1P/1bdD7hPxAcYXbdw1iF/p4LapqwF+IzWIoDaNHJivx50g
         2H4tKsypFq5e+d4TWr8kXhTIYk8scDbGcmyIHE44g681kYBi1X3S1dZ8bkZNP9W/Bu2E
         z8f5eOCBmZhSkevff5OYKELXpo5GmK5CliOrVT7jV9cnO8PDTQySh75fTjMawwmsjayH
         ryMhGh7bafwnRRTBcrbrmaaXiv4j391AoQLwLsQ/TtCGTBaqBj8RjvZV0NhAFH7dSPz8
         lsPM/JzvcrmOCmUxUj4bKfRYBH1H73M/KFkzF0GASXfaXEPSbkUhUwZiBU5mxL5M1/cU
         aT5w==
X-Forwarded-Encrypted: i=1; AJvYcCWhWtLe/0xdOUSKRsVsxMimcZyWku0adHq1Rwvxr2XUAtzUiavF/sXgOL/uTte0CqNQlkNGAsKhkfp4@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7ZUl/CE5i8caDlFAzJ7TJ/eBiHFeRmj58R3wAfF5ahclziHpH
	N4d4e4gaSOQdhIq9VvybPdevUrKkhkXTgoje+NWwfxmVr3ZLUY3K9TYu
X-Gm-Gg: AY/fxX5swGbbZeJd96blSEbo5IyxsUxjcgQdGTvvSMyLCycaS96wJrtcY8RoSc2trMv
	aBJaTD2XxyDbX+5M2jMSvohAH6J7lbj+6KYvjI9sIAZNuWf796N2qLlQG2DZ4B33IYoqtW7t7Gm
	eRq/vyqNU9G+Cs4pdzPQjCTWIA7sjUbimGOm9fpisFtDyZGFADAio6fsQL0uxno1ft0MDeb6HXr
	DLffuFtFPeOETX6AKcUzVdmBzcbejQ+3HBXOoeM3MdFSKGjyc1U1+397opr26x+CdINK7t294B7
	3TnWbL6pmsgB+g4OcLA+EczqZaSHoDrVAQHjiaGMHq1lGu1F7c1uIHUzxMlGI+ml6rQoFkLIBix
	n2Z+xGASx8Bd27zO8xPC3/mqRLE+IwaU7z1/hitmck/SUWfmOQ9qcIMWQqCFFzZBoey5BRX30i+
	FVMiaktGKyW2n7
X-Google-Smtp-Source: AGHT+IFmkrWKS/7FmmxYOa2Rc6IAdldSe0vW+VCQopk2Z3V5RjuuRrxz6yRgFXBslyCW8xVE0ysndA==
X-Received: by 2002:a05:6a20:9389:b0:35f:fafa:a198 with SMTP id adf61e73a8af0-376a75e8a87mr34983779637.10.1767258163369;
        Thu, 01 Jan 2026 01:02:43 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-7ff7dfac29bsm37182957b3a.39.2026.01.01.01.02.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 01:02:43 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 01 Jan 2026 17:01:38 +0800
Subject: [PATCH v10 02/21] drivers/perf: apple_m1: Only init PMUv3 remap
 when EL2 is available
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260101-apple-cpmu-v10-2-48812c529ffc@gmail.com>
References: <20260101-apple-cpmu-v10-0-48812c529ffc@gmail.com>
In-Reply-To: <20260101-apple-cpmu-v10-0-48812c529ffc@gmail.com>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Sven Peter <sven@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, 
 asahi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1251; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=T7VIuEp6hEe3RkCETbS7KqP+//z7d2ZDmQMS7i30tSU=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpVjgmcioDFW/cgCyqzljV2Zk1HIbx3mEdkkvCz
 qn5UQHjIACJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaVY4JgAKCRABygi3psUI
 JGHYEACifxfNp4MaPvu9Ha3yNIOsVV8p76VKZFaIJFNpIC2Zg32i/Ut43TnFCiS8KNa/Z1lMnvH
 qO2YUVuRgPglNl5teGrwBILvKrc+4Mfr5cz/z0PM3SwzzZfU6ErE0gSfIjTjLF/garU0bJFiww5
 AhIKOOKrQg0sSuyk0+5/j7fdr23No9zE0cUYiaPyyZ6PsapXl7uZScKxqxv0UJ6otVAjdwDyK7Z
 yF5hb+lc24Ty3SeSNKwx++AeHURmH1I1f4lAGa3bMtyLrhd+xISa+eAMvPlWBSmp/c7B/ag0KDJ
 newogHd+vtN2SwJWTwHI/w3yoSRAuqh19czHPd+V73lGBQnJxVWHXrDFKPoGbHvoBPfQYkuTTwI
 nmwi3Eta7gpDcEOhBcX8n0fNpkM/6vliM3cEK0ZTsZQ61/eUZdrpJogIPCB43iLAkFJX0Y8pKkE
 Sri65VYBlADVMF9l/fcPp4Y37troNgDsNsiLhpRF+kZe+2UmxnE+TbkKd23JKopNYQ4blJUZmz5
 y+M7KTk69CdhgQp9fD1LmQ+8PpIcOf/qFrUr33awtQ26sF5F8l1Wlm7zDriYpBRjPvpw1d86YqU
 uWW180xDiOmD258mV0eFbE34YjS0MTPFY+HNJc7O7QiVi3C1S5D7b87hGnIlnFPSp8hLGbzajf4
 8iYG31jc9OUZNiw==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

The events in the Apple A7 PMU is very different from the ones in M1, and
EL2 is not available on Apple A7. Instead of assigning the wrong PMUv3
remap on A7 or declaring a new PMUv3 remap that would never be used in
practice, skip initializing PMUv3 remap altogther when EL2 is unavailable.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 drivers/perf/apple_m1_cpu_pmu.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/perf/apple_m1_cpu_pmu.c b/drivers/perf/apple_m1_cpu_pmu.c
index 81b6f1a623499566ef04d04075752f34e2cb6a92..f3948528e28e0189efd0f17fde0d808930d936af 100644
--- a/drivers/perf/apple_m1_cpu_pmu.c
+++ b/drivers/perf/apple_m1_cpu_pmu.c
@@ -645,8 +645,10 @@ static int m1_pmu_init(struct arm_pmu *cpu_pmu, u32 flags)
 	cpu_pmu->reset		  = m1_pmu_reset;
 	cpu_pmu->set_event_filter = m1_pmu_set_event_filter;
 
-	cpu_pmu->map_pmuv3_event  = m1_pmu_map_pmuv3_event;
-	m1_pmu_init_pmceid(cpu_pmu);
+	if (is_hyp_mode_available()) {
+		cpu_pmu->map_pmuv3_event  = m1_pmu_map_pmuv3_event;
+		m1_pmu_init_pmceid(cpu_pmu);
+	}
 
 	bitmap_set(cpu_pmu->cntr_mask, 0, M1_PMU_NR_COUNTERS);
 	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_EVENTS] = &m1_pmu_events_attr_group;

-- 
2.52.0


