Return-Path: <devicetree+bounces-250903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A09CCECE34
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 10:03:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 99182300D31A
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 09:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1D3A28469E;
	Thu,  1 Jan 2026 09:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lLc/0gxD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B61FF281369
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767258175; cv=none; b=nSt5J5z3pAMps6eCAQxXO5vQncFR9zNqr4C7ISuCFuO8bY+KR/jtuQp0OaaEhOvUgdBJVaMJs7vNgkx0ptaqafTdDDFze72Qjer3j9H+cdLI3ZT5qlNRkOy20UCSGCxEOOpIok3GwFYni42ocILc+v4JTtRnjVeXT9TUhUjU/+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767258175; c=relaxed/simple;
	bh=HP3+BRpxCk9vu8k0Gmg3N76nZU0a4qyvZesmM5VNmx4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HSFSEh9JlRdHnx/iSOre06UudAAvf77wK1SaU51ihqb7CqxnoORLIB7MxAFRA3q+MOwtYeOlFRa4iVOWAly7zy52PHNBnufJXXqsIKe5n+aFJjPANlw2iodoYZ+kRdSzWtH8F9V1BXTkoFOuyaq0PKacOtmok+FfKEfE0zQKvpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lLc/0gxD; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-29f102b013fso142226785ad.2
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 01:02:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767258173; x=1767862973; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LYhLngMqNJ6OldqM8uri9fztTRs+E1nPGgcMJFZEiIY=;
        b=lLc/0gxDo+Al9yzGv7K7Rzr1JUePmu0WP0ZJub+W3vXmfgpg8rwYt+ubibAKomeeig
         Q2fJxOeUKrUolS4Z7C4xM1hNP6B0UZZ8FR2KRw0IIkWSBhFzM920hdDTuWdmXNz+awPi
         tFYkf/h4MlAD5eoFItz5TkAxWsODkNqHPLRAWl48K8k1a78o2qy31yNVipUSS4XnH//d
         XGi4lCTB9aRsdwLs9CriRTGgeFyKZN11/1gJBhRkeG+olVcxCkLHnjmncvbJsdHpm+YX
         GbfFWL2JNasNyZaXNZiTxN6OHap7rrEfpcc5N9ykxxPscsfqxjYdUA6ED4D9TPz/TZ1z
         pgcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767258173; x=1767862973;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LYhLngMqNJ6OldqM8uri9fztTRs+E1nPGgcMJFZEiIY=;
        b=GaD9eotGiqCI86uf746GcdTphDfCHO29tny6QGXsrzfaVwW5hyG1o4nf35iulF5a0C
         9rIXXXgjjG5992rzcm65CSpiMwJ7tp75eqdHAEVYVzzkuj3lEOkrh8hFTauHv4su/Bl5
         CGhIPx53CgE29l5YVIoQtllBi8KVVvvv6uphHcw1R5t+0YvkyeectsM7KU2N2QqdPVv7
         RwwhvyUV9BMtibrlKHcn57xq8eRl3eNnN1kzn5MKcPGZA+HVI/f/lJmBuStskZSnPUiD
         Q9D2N/jpgINwdfmBr37J01dIlPc23j0+4oN72x1a2MdLppt77wCOJ/WoOmnTrSaLqMsr
         QbzQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxCvCruu6R2J1z5CxJtQujH5LZkFK09F356W/tOTwruCgIpzgUCalwRJmRhR4WMqz4NZpOpgv/Eh1E@vger.kernel.org
X-Gm-Message-State: AOJu0YylOnaFmaKiONnq1gw+kta5fkNdGiWYKSGhbwwSlyx5WX4TqMXQ
	qizhs/iFCiLZTQdGMK/j8AEr0EubJ6zyXmb/SubZEHqoArdOyYgVfqEIZqcuiw==
X-Gm-Gg: AY/fxX6i2ZaWK3QzC/DyFoXMlerARkHHm2LxjgFjLzc1Lfs5NB8ixRiuz7jGOkhbhl+
	QrSnbsGjaGjJGoQyYMMhKJD7I8s7D1aMOLs0muYNCPgrOyr24BeTfFWJoVibTu6HoHLloteKnYd
	2mZNnQXIcgHnQSfG1ICPyBfWS8/x66m63ug/xs4s841PoTbclm0fXWngmI0JU6tJeKdnpNnWEkG
	hNqDewnYVfYalgEcNORI+OBwcmQqmzJ7UMUnhf/OI+h+WVt8VcFSR1VtTCC89ZRn0YBq1P36vAB
	ZCnqG0ID5h+BrZN4wKaE0WCYrQSYxpQ9fZ379q6cR6kwCjPDLJFvlyykhIuGIY1AdRT+evuRf63
	KukrNoMPoPHnzsRyt0fNSEGLlaRESgrVX9XQOhoKxt7DWwfjMZZcuN1NABn9s+f1h+AB+JlE5Z4
	m6/nOwW5kEBtPb
X-Google-Smtp-Source: AGHT+IF2DK/wudcCjuHS9KGm1WeGhjtlIUvpoPE63sH8WHjKNF73liEZe8dOYBfzDMRjLKw9kdzJgw==
X-Received: by 2002:a17:903:1cd:b0:258:f033:3ff9 with SMTP id d9443c01a7336-2a2f2a4f072mr340888935ad.48.1767258172838;
        Thu, 01 Jan 2026 01:02:52 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-7ff7dfac29bsm37182957b3a.39.2026.01.01.01.02.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 01:02:52 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 01 Jan 2026 17:01:41 +0800
Subject: [PATCH v10 05/21] drivers/perf: apple_m1: Support configuring
 counters for 32-bit EL0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260101-apple-cpmu-v10-5-48812c529ffc@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1977; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=HP3+BRpxCk9vu8k0Gmg3N76nZU0a4qyvZesmM5VNmx4=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpVjgn0cIO4FislP7e3t8nidSA1+CQMnbCNH3pF
 h1xmqm6xcyJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaVY4JwAKCRABygi3psUI
 JDnRD/9gYiOUD+XFPH6CuOvFxz6OirPhj00mypSpKS6xPDABNlbRm6Gpq2c8l/14xhRKhcTEFWE
 wppVRTTwtKjb2bicRv0dx7ReyAY6SSGq9rLxVnWb85qXeNrxKut2up5+QYJr0v6L6X/wqF1IGIa
 UgQ24vn4LdN+SCNi59WaZ7X0QJRb3w93mznF6mCQJXYRiTIDWifB/sQteUprkUHxzlwT3ID2lvp
 hx8f3tl24RDYGH2qccljtXnVWrHO8tYZl35zov2s1cjkwQdINF4UO9UxGjo+GCHj/xTETx1atcF
 /SvGj0u91ifTnPB/j7/nizOSZh1JifhmoQO4kNd7acRZivFtzu036oKoIernRQvQsnWDsTrfvxg
 eYPZkSaFQL5eC259rFHjkJoVX7dsPExFJMEvkbbu9uhtJeYp7O2vji09NAFqiGRCOdBU4dkO1b0
 CmIzcWKl6BvlzTKm8G5LJgm5XPtyWtdjddecvLRsDKkQC6Iy/vckYLjUj1eA3HOBWDp69NmyNeE
 n+vS1Z0/35HwheeHocy1/vDnuQXu2J8NfoLYa57FjXj1yJkQjZldfjGQ/O0e+I4vpf+MN0MchKs
 WYScYjbtt2U34OzHdfHxOhsSm4cQYiyHqCLm11bS+UoqE7qkQDzL+Llk7V3vajXFNv3myxXuNfV
 5n2Iqm3zjmofrnA==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add support for configuring counters for 32-bit EL0 to allow adding support
for implementations with 32-bit EL0.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/include/asm/apple_m1_pmu.h | 2 ++
 drivers/perf/apple_m1_cpu_pmu.c       | 6 ++++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm64/include/asm/apple_m1_pmu.h b/arch/arm64/include/asm/apple_m1_pmu.h
index 02e05d05851f739b985bf416f1aa3baeafd691dc..8a667e7f07a517419c22a4f930947347be8546f7 100644
--- a/arch/arm64/include/asm/apple_m1_pmu.h
+++ b/arch/arm64/include/asm/apple_m1_pmu.h
@@ -38,8 +38,10 @@
 
 #define SYS_IMP_APL_PMCR1_EL1	sys_reg(3, 1, 15, 1, 0)
 #define SYS_IMP_APL_PMCR1_EL12	sys_reg(3, 1, 15, 7, 2)
+#define PMCR1_COUNT_A32_EL0_0_7	GENMASK(7, 0)
 #define PMCR1_COUNT_A64_EL0_0_7	GENMASK(15, 8)
 #define PMCR1_COUNT_A64_EL1_0_7	GENMASK(23, 16)
+#define PMCR1_COUNT_A32_EL0_8_9	GENMASK(33, 32)
 #define PMCR1_COUNT_A64_EL0_8_9	GENMASK(41, 40)
 #define PMCR1_COUNT_A64_EL1_8_9	GENMASK(49, 48)
 
diff --git a/drivers/perf/apple_m1_cpu_pmu.c b/drivers/perf/apple_m1_cpu_pmu.c
index 0b0ee2b9ad4b555f66b9b478055a420b7eec8f3c..6340ff7d3b75d7f0c7ab159e4114d49cf031daca 100644
--- a/drivers/perf/apple_m1_cpu_pmu.c
+++ b/drivers/perf/apple_m1_cpu_pmu.c
@@ -348,10 +348,16 @@ static void __m1_pmu_configure_event_filter(unsigned int index, bool user,
 	case 0 ... 7:
 		user_bit = BIT(get_bit_offset(index, PMCR1_COUNT_A64_EL0_0_7));
 		kernel_bit = BIT(get_bit_offset(index, PMCR1_COUNT_A64_EL1_0_7));
+
+		if (system_supports_32bit_el0())
+			user_bit |= BIT(get_bit_offset(index, PMCR1_COUNT_A32_EL0_0_7));
 		break;
 	case 8 ... 9:
 		user_bit = BIT(get_bit_offset(index - 8, PMCR1_COUNT_A64_EL0_8_9));
 		kernel_bit = BIT(get_bit_offset(index - 8, PMCR1_COUNT_A64_EL1_8_9));
+
+		if (system_supports_32bit_el0())
+			user_bit |= BIT(get_bit_offset(index - 8, PMCR1_COUNT_A32_EL0_8_9));
 		break;
 	default:
 		BUG();

-- 
2.52.0


