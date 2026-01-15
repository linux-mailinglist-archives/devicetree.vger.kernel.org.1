Return-Path: <devicetree+bounces-255802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 70329D294DF
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 00:43:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 903ED3014E81
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 23:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D9D02E542A;
	Thu, 15 Jan 2026 23:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="fep03Ckw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD467327C0C
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 23:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768520576; cv=none; b=lIhhwFSNVRdnxVmax8s8QJyKoLV6l7zgv8S0yzBEZwr1V8TtteAywOyjuxjFq2XtY1gW3f15PVRzPaFCuJokekwQqU8RhSAf5E2R+bVwmVFTFZUcEkVpbiennedGW7bLBLLlElCN+fu+OD9NmMJ3zf+kxytM5lKkT5DbWrnBTRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768520576; c=relaxed/simple;
	bh=6upf/F2Vdl/fKKyIKJ8WQQzcZoV1JG7cvz5xZhRldFE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=s7YC3E3MLlJM8WffHHCbLTzIhLGJpIHkUpjvIFfeOSpT7T7oN+yUdofLT6cSEirUgE2MM1/znuqSExLgNI9x4rTI9pMXjOxetGjypqpr+Ppj0ZWe9PknlneOGuEy4IdLYJa/gxykEcRPbmylvbvJbSQ+zETZ466Hf0nJsomz+p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=fep03Ckw; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-79275e61c2cso15934607b3.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1768520571; x=1769125371; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6iZRWuyORG3HiSopQBMtG8viyXNEvTSjWImQZ3xz+Po=;
        b=fep03CkwYFxnuhSSNm10JUrlFHvAk0zxGoI7PT6wQBqeddR74JowNB9DPjZhc+0yoh
         0EaXu7CukphMVJBD3GUADX3VvJdlETKFqNsaQklevo3ENCtuRKSYN2YbEi2AYdwUvWWN
         vtvdHUdiY8OwTFN8pzexh1gxyt28ud9wczJ3q1fiuFbftQZRuoAzaUCQ7guJT3EaAGp/
         HMaIUqnSE59SBvPToxnqXgm7/tarU4K4BRDA4bp1BlksAroGFv2blLN/EquVGQzD07kJ
         kRprhbg3J2QbNkC2T1ZsekupA80UUTQo0k8PcOdQlwzaFU0Q9HHx9bgTFS8DgtFB81AC
         tGDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768520571; x=1769125371;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6iZRWuyORG3HiSopQBMtG8viyXNEvTSjWImQZ3xz+Po=;
        b=Dtqx575IGwnCOf+2UadLOl0lptnq8oxcaHA3izzW8rmnGEqANzuZsIFH2Sv5GkFrpd
         3W2K4FqDOFVF5T4cmPAL6/1YuTbqWxFBDSa1dMUZqpz8uYdJ1AlpzwBMM9Ymx0uYw7Ka
         yFGchkzcawsmQwZLnrqcbkY/dn7oaEXcF0yJt/CHGrzIAVl4DxxWW24q3W3zkB3CmFuE
         PZNQ2kMHXMOFudgab+s/At725r97fdbhi+BSHPBoFGGptngdOPlCPPS2l/QJH7bmSV6g
         wSJXKJk7T7mizzFomvSnJDzaHbbeDVFOgskGeFb4Sx+eoexB7MUDpfq9zhmfpLA/oVNG
         +TRQ==
X-Forwarded-Encrypted: i=1; AJvYcCURVUjGOWu7Uv/6MDY7KKtlKZHDNpWtlmhj0cNyXtp+IdFhQi/3qF4FWIFp4aFREFCeZ+YN74n6xwEm@vger.kernel.org
X-Gm-Message-State: AOJu0YzR9y9Wi200v+77itfvOnc1iyAv+vWDAhGJ8Si6pqAOfkrimqWw
	Zy55onh7ZdoIa9WgTlmaShqazkDYALQkCBCyzFTxRdu/ac/ARRlHeuHvaaSTkEF43dU=
X-Gm-Gg: AY/fxX4SdvwJaOEfKnVNudvLDk+bwfnHy6+YQg1FIE2HKnjtIm+0xhSqMSVXzOqMPkp
	prMl66WqlM6I94108e/MnytORFtFDUUNjO6o0njS88FzF2piAyEJESsaCF0m6RCjQ7zojBT24U+
	tR6DHIMCxvj/Kqy7e2SArCw9FKogD2VH0SV+qo9FokRFjldbMzau6KcST2zm1GofrXNVp/22+9v
	TOrF4kYdJ61S1F+iyPaABIQkwZ6eCACv85maoDgkRrVXPRi9gDlecCkjlAAeayCKkMJ4iCR9JsB
	YYxzJu6Pq7km0uOSdWsx5U2cnfDjyw+HujG7ixTbviKGcu5HCOqIh+5iGlIjLbbntxM2lDs5Phw
	QpInL5wEKYLrGN6BrOe73UdXZL+mDi9vdjg+MIPfXVGrThTPujuydbFe5trGHgE92Bx5XFwo+Vr
	XsWBIl6mUI+JUmK2a/ICeK0HjOXsh1oaB12JIh0sZfyzGH6FRr9PGm+UWcEUxLACqNzgexwbI=
X-Received: by 2002:a05:690c:46ca:b0:787:1aba:3081 with SMTP id 00721157ae682-793c683dcafmr8332397b3.58.1768520570793;
        Thu, 15 Jan 2026 15:42:50 -0800 (PST)
Received: from [192.168.5.15] ([68.95.197.245])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-793c66c72aesm3027117b3.11.2026.01.15.15.42.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 15:42:50 -0800 (PST)
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Thu, 15 Jan 2026 17:42:05 -0600
Subject: [PATCH 6/8] soc: tenstorrent: Add auxiliary device definitions for
 Atlantis
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-atlantis-clocks-v1-6-7356e671f28b@oss.tenstorrent.com>
References: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
In-Reply-To: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
To: Drew Fustini <dfustini@oss.tenstorrent.com>, 
 Joel Stanley <jms@oss.tenstorrent.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, joel@jms.id.au, 
 fustini@kernel.org, mpe@kernel.org, mpe@oss.tenstorrent.com, 
 npiggin@oss.tenstorrent.com, agross@kernel.org, agross@oss.tenstorrent.com
X-Mailer: b4 0.14.3

Reset shares the same registers as the Clock Controller, so it is
implemented as an auxiliary device of the Clock Controller.

This commit adds the auxiliary device definitions needed for this.

Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
---
 include/soc/tenstorrent/atlantis-syscon.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/soc/tenstorrent/atlantis-syscon.h b/include/soc/tenstorrent/atlantis-syscon.h
index f1dc6ad33c6d..972a9b7da596 100644
--- a/include/soc/tenstorrent/atlantis-syscon.h
+++ b/include/soc/tenstorrent/atlantis-syscon.h
@@ -8,6 +8,14 @@
 #include <linux/bits.h>
 #include <linux/types.h>
 
+struct atlantis_ccu_adev {
+	struct auxiliary_device adev;
+	struct regmap *regmap;
+};
+
+#define to_atlantis_ccu_adev(_adev) \
+	container_of((_adev), struct atlantis_ccu_adev, adev)
+
 /* RCPU Clock Register Offsets */
 #define RCPU_PLL_CFG_REG 0x0000
 #define RCPU_NOCC_PLL_CFG_REG 0x0004

-- 
2.43.0


