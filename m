Return-Path: <devicetree+bounces-216570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 00390B552FB
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 17:18:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 63E757BC037
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 15:11:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 238833218A5;
	Fri, 12 Sep 2025 15:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fAOMROtg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BCC32143B
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 15:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757689839; cv=none; b=CCKs0RLfrHXDPK5PJ6npL7QidFfiSOrNRPfL6JsDx0A+kYAmaJBwrr3dmJD4nJljovjpUE/Pjqd78n0H/zHH0UKxoY0oqY1ngmaAACBmyWMnk8uOMTaHVYoBPg2lt7ys9woXML40gE9+PQSgoEtCGKZq+HYQcpyjbMg2yIsmF6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757689839; c=relaxed/simple;
	bh=lBamo/mRxiUtCBdbmIZyVniV6pvujs45sCbA4KFEQzE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WPNkBKwIkHZ3L9VHROFGpN7JOCNgnmoMQoJXSBfkN4yfLBD7tU3S7lvuvq8kaZDxo5cEvrMHkTgaDvMxRyj9Gllw2BLWw6ESiBsrT/hY3knDz2lgrQrMH4xMCGoorSaLnusU/keOZebIvnX23QahD8b4Zmp3US4WnEIpHt5JWCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fAOMROtg; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-71d71bcab6fso18125187b3.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:10:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757689836; x=1758294636; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+ds8gslyRhEA90VqYYB6jUYRwIuKnqG3r9jdtCHu7D4=;
        b=fAOMROtg/82tIva9GG3Qq7B1/Xo0+WLG/MAQv4jrJm8l+dpu/m7w88+hJOQUjbEBCE
         Q/c6F7hcNX4R6eSvQuECiTJ/TwZ5ordlY296OA611EL10F6Q1XB+2shpcmNX1wJysvwv
         NOh0HeeJrlREnwXJPTUTPDanh1+wbk5RqHQ26uU6u2xA9a2cR+CzZhb7PNYnsb0MizPk
         vfA0nSyqNet2mhTreKSt6W/pq1aHgIboBGbT4SMlpCiDS1qWyPIW2mSg10P7JSnWUfnN
         dgEWo/RJpZfZ7WXd2RPHPcUbUJGClDGaXmF6kF1cvaXdV1OhTMqaB58W9YZMg4944Pzp
         7LQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757689836; x=1758294636;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+ds8gslyRhEA90VqYYB6jUYRwIuKnqG3r9jdtCHu7D4=;
        b=qegfTyotYc8FjsNQycftX6h7go4yxqrI+0iUaOhr0Su2DlJL8ED9e+nM4QxL05/nEu
         kYQ0uWAyu/FhtcTEUrVRxRZ1bIBgd3E8VDqF+q3/fBPAB267GARNA8KBXPAOBql1DmkZ
         bSqRW3Da6XxmIxpJ5yZjFb9/Y9GoriC2x3ILi7+D8s+Ld/DV3GxQ74Y1reWKdzeU2s61
         voaq3u+ARIsQ5yu/uZlKthYQ1khCpDlqLxXvDxM33OCOmemjaol7Y5EQXWAQ2KJ6//q2
         Cx5dU3fUxItaHgV2wQrbv7ESx9KvzDTYhzpRrN9ohjuMPGJW1g2NM52K606Sv+K6dCe7
         /+Nw==
X-Forwarded-Encrypted: i=1; AJvYcCVtUOQxbfSU/Gn9IV9DhvYMfeVqaKIoR6qLsfiVQTPteJFTEP+v2ABf5CX23Z90X9+xpJ2EO2eSL8C4@vger.kernel.org
X-Gm-Message-State: AOJu0Yx34cSUAm4NuvYvbvZLbfaQzhifMV2K+8Q865dU2sIQ+UO1RXnA
	MiWiPVN03DW1tp9MuzR+CVGJ7Ih3N7kSSWpZ4mZEy6ST7PVXu4McIk19b4ijGzzOKJI=
X-Gm-Gg: ASbGnct7P4uu9coCSF5fW9Az2PAchKbYJAj8gyOmmK3qg1RM5Fa8FDWJJ34brBJSv/3
	p1Mz/5v7jbyj7in6IvFgy7rvmlN87zcsQZTJ9RTXtCC7rkOuN+y7Zg84ve34yQhBqCzXvQiDQrv
	LsoyMzOP4vbpQVe0PNeqPiTI8C0HM6JTKSfTdejWGoHYYVz4fmTXkY41uSzVxc0L2ZT27HcM9D2
	Di6i8F93F+miiKejEjBZJnYW3whMZL/PzRp/ECr0k90JvVOPo65Z/Z8N9Cijbd9WNe8G/MLVogY
	qxf8DmD0coQblGzskHt+muf4HzVewKRLmmE3WPbZ4wLMWRQk2XghdwOSCRESQR/VKL0c0SB8X91
	7Q30qBGPrI8hIE/IglDeL13FW3ui901M14w==
X-Google-Smtp-Source: AGHT+IGUk5zUSgxh+r2dAU6fmhsNlb1RTWa2J7nuwDb4l4jA+t4jqiomYFBGdZGHaaNJrIZspvEapA==
X-Received: by 2002:a05:690c:7286:b0:725:dc12:3004 with SMTP id 00721157ae682-73063d589abmr33964367b3.22.1757689836260;
        Fri, 12 Sep 2025 08:10:36 -0700 (PDT)
Received: from eugen-station.. ([145.224.119.89])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-624841586c1sm1302244d50.6.2025.09.12.08.10.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 08:10:36 -0700 (PDT)
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
Subject: [RFC][PATCH v3 09/16] genirq/irqdesc: Have nr_irqs as non-static
Date: Fri, 12 Sep 2025 18:08:48 +0300
Message-ID: <20250912150855.2901211-10-eugen.hristev@linaro.org>
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

nr_irqs is required for debugging the kernel, and needs to be
accessible for kmemdump into vmcoreinfo.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
---
 kernel/irq/irqdesc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/irq/irqdesc.c b/kernel/irq/irqdesc.c
index db714d3014b5..6c3c8c4687fd 100644
--- a/kernel/irq/irqdesc.c
+++ b/kernel/irq/irqdesc.c
@@ -139,7 +139,7 @@ static void desc_set_defaults(unsigned int irq, struct irq_desc *desc, int node,
 	desc_smp_init(desc, node, affinity);
 }
 
-static unsigned int nr_irqs = NR_IRQS;
+unsigned int nr_irqs = NR_IRQS;
 
 /**
  * irq_get_nr_irqs() - Number of interrupts supported by the system.
-- 
2.43.0


