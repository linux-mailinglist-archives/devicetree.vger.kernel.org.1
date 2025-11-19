Return-Path: <devicetree+bounces-240300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C70C6FD1E
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 16:54:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8D7C13653BC
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 15:47:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0969E3538A7;
	Wed, 19 Nov 2025 15:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kmDHNoQu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9068C36826E
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 15:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763567138; cv=none; b=WK/NOJjEZfqHdEiicrECYV+QDHV6v4o6o0uEoWaDuzMoRJjhmNA//cowcyECVA224gp4SO3vdk+mn++i2Rk059kKC5aXJvZpj3EFgdiDe9WTE007EyRcM44eQgG2dsFIRVGNLPuXkYLrxuelhb2wXUKSKzn2xY9z2RBEnhtApYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763567138; c=relaxed/simple;
	bh=TD1by0OTaP880US48xY3+1tAtbimE4nLFyenW4Dl/t0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LraSWoKks6j9lcTzEFTM0ccsg69mMklHdBiRXLkRuNBAP8Rme1FkkfJvr7n1mM5OiOKNzKVGDQx65PF+NBuddqlneOV04tu0kAejRB6UQjKe9LSoThheDaXmP4UtYO8qzXa5CGNLWdNN4xgvNwPe8OzhRDDLO50TptDGpA4KF4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kmDHNoQu; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-42b3c5defb2so4676960f8f.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:45:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763567132; x=1764171932; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=THAjTq9x4zT81mmTnIarOvW/kNy7ppuR0bAFxzz05mc=;
        b=kmDHNoQu64HbmUGpkc9vYVbHScLy0U0K3t13WEAzv2EDq8a8uPl0d4aWu6NxEH4N1t
         DYYE8ac89yB69Gol4kY2PYMld6Mj6ywoy/rzvjIZJaK5HRAdqiRUeyuEFTVsLejLbh6W
         3TJ/neVjVhIoqjX30M95snlbaU209rNFQn27MGf9j4vlM2WJL/UQ+DElN6BeNUSNt0m9
         MtOlEDObIPHZ8AQoxYJFwIPUr/dgA/ysyug1orn6TqhN4UiVORtBU+5OYM511Gy710PF
         t+B5gphP+SGCjRgl3wzXRoSe9gTtaPOY3qj52wB5VXVOyBK1swi0MrDrAiE86iSXtahV
         SpGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763567132; x=1764171932;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=THAjTq9x4zT81mmTnIarOvW/kNy7ppuR0bAFxzz05mc=;
        b=Wi0DMdFDpO5DIA883Xs1P4UilASEVpI4A9IriDOPHhxlXR8fDbHArGBNJ/cHZHTRub
         7YHNgcEXZTgt8p4CaHqmEgaNZIWiOeBbH12HbiaF488/tuS/UEu+hlVSGxKGWSDtZAN/
         NleOKJZOgsZK1M6X8EcT8rRl4eLn9SNj7EcGOtTzbD8M29tzwPadjdDgdJMJ6FdTzWIm
         kU4RgGHD0KXuDmq41oMIC/JNvu3u7Prp/Gq1z530SOs77BeMv6pzmaMRoojS3HWCTrnk
         CK54zJNUlPS991aWDgqPilJkRlyGTvbZAOpg+T409dE6vcpyUDhf3ZVuHpuMswYqRV9P
         LtmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPg7hjh4a9s/Mon83B+quSb6EOV8CPBK7i0XrMr/8ZBo7eJ/LC8p8EmtqRquWIpPk+5dOC1BBauuBn@vger.kernel.org
X-Gm-Message-State: AOJu0YzwWAC2EH6l9pph2cjGevNWEN3adI04ok3+zaYyeelQXSGa4spr
	N9Qq3lX3t+S1+mS9NpgFTnM2XbTc7/H9/tNLUrjx3ipXgV+PE1wqXXiwDTa3v5ZAjsI=
X-Gm-Gg: ASbGncu2PdmJQyieWILqcZtPq2L7VxUvZCtD5aflcOWKuMymUtzgFQBNfuUGcrXBkgo
	EqBGHVDFWCnusCd/llJpcecQmM7vqyQC8KNLhGPMX25xdCyX2TwpcLV4EKP1SSxA8/Vaqv2kVIZ
	1gHAzjCoE8ufyV5I4JMcx6rhg6EdMOLhJBYQq/8TjstnVMYvYRT0NqBTHdJ7Yz75mX0s1T1HIa5
	XXfU+Lm6kcu2jMXo3dzPq/Bps8vLGucl61WrtiiVgCA8EI4W5Sf63TNmLnucFREfNzhPgJXxGj3
	M0K0g86vffZKEMBpkVPJsSHroXk9Fl1ORRORDMLyx9qoUgT+GAsOfXnO94Qie+i/sykWP47pSw/
	hmtDH4h8yHwKsr6UUOUHhvWIuK9qZlxTgNGdb3KEz0JBnwzolq2Xvat7C5z5Q8AbJqTI//MEmIa
	NatTARHEtcINNAPJe9DWhyT41AMuL+LQ==
X-Google-Smtp-Source: AGHT+IFM/SLutYeAmIo2p7oRt8B5TNnuLzBZ4qt+3E18Kli5wgQjVTHlMxDsxZxKW/tnJD9yRmbxGA==
X-Received: by 2002:a05:6000:2a0a:b0:42c:a449:d68c with SMTP id ffacd0b85a97d-42ca449da11mr9102186f8f.30.1763567132399;
        Wed, 19 Nov 2025 07:45:32 -0800 (PST)
Received: from eugen-station.. ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53dea1c9sm38765632f8f.0.2025.11.19.07.45.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 07:45:32 -0800 (PST)
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
Subject: [PATCH 09/26] mm/show_mem: Annotate static information into meminspect
Date: Wed, 19 Nov 2025 17:44:10 +0200
Message-ID: <20251119154427.1033475-10-eugen.hristev@linaro.org>
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

Annotate vital static information into inspection table:
 - _totalram_pages

Information on these variables is stored into dedicated inspection section.

Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
---
 mm/show_mem.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/mm/show_mem.c b/mm/show_mem.c
index 3a4b5207635d..be9cded4acdb 100644
--- a/mm/show_mem.c
+++ b/mm/show_mem.c
@@ -14,12 +14,14 @@
 #include <linux/mmzone.h>
 #include <linux/swap.h>
 #include <linux/vmstat.h>
+#include <linux/meminspect.h>
 
 #include "internal.h"
 #include "swap.h"
 
 atomic_long_t _totalram_pages __read_mostly;
 EXPORT_SYMBOL(_totalram_pages);
+MEMINSPECT_SIMPLE_ENTRY(_totalram_pages);
 unsigned long totalreserve_pages __read_mostly;
 unsigned long totalcma_pages __read_mostly;
 
-- 
2.43.0


