Return-Path: <devicetree+bounces-240308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 604A4C6FE9B
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 17:03:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4D6A34FEA82
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:49:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3A9F3A1CE8;
	Wed, 19 Nov 2025 15:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u2cvfbXn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B79377E84
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 15:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763567154; cv=none; b=SKtybmqnq2mAtCr9vH2/62JOPZqF/o1slA5P4vSxp31KI7FxkYCReJir7+kNF3t10QoN/D1OF/J+bu/481sHRTbFjCnZWI8Rz+Gh90sdP9K4v6GdQc0FnCDJcs30IQrkcUwnGmwaQ267BkR5e1zgvreXFnDwnnghTkfRGg8P2k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763567154; c=relaxed/simple;
	bh=puCNsUx1cqEsVIIsTQXC2Zu04afcvVugn2nqwtYBNCc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b0tXHPZjX/3HgSG5KsScONZTFmAPhZqsjQ3aDtIhujW8/bqv3vKKiAnGYlEjiNfpO3SK5P63OEBPTYdT7zymDHUSxmkcAct2TlvnjJD8k70q0t0HPX1XQCGP6A1v4N2MNxi+my5yAWDU8tHP09KaXLeTA3EuEVTsYCPkpZYNXNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u2cvfbXn; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-42b3c965ca9so3588478f8f.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:45:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763567146; x=1764171946; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cDp3sMBoTlmxBrCfHcN3bT849KzRdDNMVpiuychnTdo=;
        b=u2cvfbXnHZX8S86mhbmVlDKoHQ2qZIBOHUToZr3q51jGLlJFmHxxQcU/fm1uw3dr/L
         ryR8SU3D5iO0H6+339AdAvKpGNAn1CK6/oOlstGHI4cd4xG6+/w44Ge5Or0ybjFmHaS3
         TmyiHTUji9gaHk7uex4IBqSQYtfvzqDF4k1l4LfR1824PbZuKmIt9zwUJc4RzpmuIicf
         FnV8EwOu8LdVRf/aAcAWgL+Gv4kc4rnhvuoRDiBZpPwDdKCtUw0xPkaSpKH5yXwWXj/t
         JHK8eUL5sBMFkiK5dz64vZJDZsK1hF9kybnlSUvlmbITELWgyWL8yGyyhYzSYh/yxDZ1
         XWqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763567146; x=1764171946;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cDp3sMBoTlmxBrCfHcN3bT849KzRdDNMVpiuychnTdo=;
        b=c9PKE6IPv5/JiFg6NCHyVVFwwT2yLuzwYKFMptmFfL8uJgnAa21D34bWprTvYzhKd+
         dwM7XK4388jExVDUpkdudHr5QJWvNgSC6rEYH78PBlg5ScEe2a9IZD+8THl2UmSVcDWu
         x+FWgzKlIenDNLvcNyzWI80Z9cwvjjmdV7J7ePUu5+mII9yx4/00A9Jgq08Iag2ZiWil
         e8XbE4YIkkOrWm05a5RTfWpuyTpB3gUiYoRJAjGMcUerNknQ++bCWyZw88n4WAoNUHGa
         wONbFpc6TRbQ1mdLiBZAZu+3dUwzIhftqe+UUuGrVYQ75vvKpQdjXZNTtZo3wNiy+Uz8
         eGdA==
X-Forwarded-Encrypted: i=1; AJvYcCWs8jDPexmjI3iqW3rz0hRZBwqhKJO7Te5iGd7hSraykYUEEamA0U06eidoguwRPPCVhOIr/+HLXLdp@vger.kernel.org
X-Gm-Message-State: AOJu0YztufRhO/f6brNljFoInxMx7BVIRSB5KIGgt+1rUYutxwRhNe0v
	SHZob6kk0mKa80o1Qf3pALr5DmMpfJluvhczT81ZxzgctfXDCOJMBaGOjSh3OD3nVkQ=
X-Gm-Gg: ASbGncs66KdPXdhidO4LvrlCWSVitkOVVkOsL65WEfwUSGkGry2F6im1buUhlHmc2UD
	+EYdCUH6xBgna5pm502Gcm+RvZ76vJC+OiXVa0x44QC2mbuwPhZ+jMdvI7Cgpnwo/mCwH9niGar
	3rTdoAtjzFn2lF07q6rVGgzYI5JF365ckz9SaKtrErEO7gTVYsmNCg1B/W5EqP/2AyXlNbN9M8S
	Su8+Rvr1xiiTo7UCzvBbNTFhQwP9M1jrs75hOulwGx4gjeORlFJXybltF78E/rWoafESGZlwLyg
	wceUWwLOuXmzldkkKzF9wTVXDKaibHt8/G39thV46PoC0C7BmwteMUp1NnXWjzz3qb1ZmMNtL5W
	Y95k703qMkDo8vqQduH5iVElQQUA/CovF2cO20LjDyqwuVWJzbBEcItCj4pqGdaJLUMhTeA00o5
	1IeKzG31lzKIkJKmVR1g8=
X-Google-Smtp-Source: AGHT+IHSn97ivXqqEi+3+TEBhok4L0zKY5jBJq8AwBEmyjMgjDaigOLXet9t8Pqm4XTXHvlHGh5HZw==
X-Received: by 2002:a05:6000:2891:b0:42b:39d0:638d with SMTP id ffacd0b85a97d-42cb1f9e35bmr3506384f8f.28.1763567146421;
        Wed, 19 Nov 2025 07:45:46 -0800 (PST)
Received: from eugen-station.. ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53dea1c9sm38765632f8f.0.2025.11.19.07.45.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 07:45:46 -0800 (PST)
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
Subject: [PATCH 17/26] sched/core: Annotate runqueues into meminspect
Date: Wed, 19 Nov 2025 17:44:18 +0200
Message-ID: <20251119154427.1033475-18-eugen.hristev@linaro.org>
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

Annotate runqueues into meminspect. Even if these are static, they
are defined percpu, and a later init call will instantiate them for each
cpu. Hence, we cannot annotate them in the usual way, but rather have
to call meminspect API at init time.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
---
 kernel/sched/core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index f1ebf67b48e2..a68367daddb4 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -69,6 +69,7 @@
 #include <linux/wait_api.h>
 #include <linux/workqueue_api.h>
 #include <linux/livepatch_sched.h>
+#include <linux/meminspect.h>
 
 #ifdef CONFIG_PREEMPT_DYNAMIC
 # ifdef CONFIG_GENERIC_IRQ_ENTRY
@@ -8792,6 +8793,7 @@ void __init sched_init(void)
 		rq->core_cookie = 0UL;
 #endif
 		zalloc_cpumask_var_node(&rq->scratch_mask, GFP_KERNEL, cpu_to_node(i));
+		meminspect_lock_register_va(rq, sizeof(*rq));
 	}
 
 	set_load_weight(&init_task, false);
-- 
2.43.0


