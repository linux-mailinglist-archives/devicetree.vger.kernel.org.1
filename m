Return-Path: <devicetree+bounces-258139-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLf+BDtIcWn2fgAAu9opvQ
	(envelope-from <devicetree+bounces-258139-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 22:42:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EEE5E2E5
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 22:42:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3075B5082B1
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 21:42:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C04F1436364;
	Wed, 21 Jan 2026 21:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kk158TJh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1F44439003
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 21:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769031732; cv=none; b=hXpPvnx8YAGMF1SalvUO9y0RsuJXb8XCzhToSIQ/i8vpta/eeYKvyjUP7mex3FsZhLj/qk6mbLcKZn7p82Cnqntku8JD0PCRu4vfvYUunNQDXoPaKcsVzUUa/7FNLoXsNKHCgSU1QF8G1ItETiXrXXqPqDsHguAZZ+e5TE4yOTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769031732; c=relaxed/simple;
	bh=te36EN2hRUW93/ENPny/FcNtk4yqn76AHGFIBrtKCpM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PCE0tTUi0+9vtFvCB2nz/o3fzNOryI17w4mSwXSkETrTWbSR2PAmlm18w1uqWJYZAfedb8uUAwaxzFxSlog09WdYMdOcKv96hdSsI7cyzJrn5Vk85ghLGfUhgHBZxPqeFRRk36WnayocY+bqfgaO0sk/11lPJisvGp5Z1lYYioY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kk158TJh; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42fbbc3df8fso192539f8f.2
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 13:42:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769031728; x=1769636528; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Infj0dCslIntYgR3E8l36IUqDoy5IPerf5hDlX8iy1w=;
        b=Kk158TJhLwgJPWni4IC2ci1YYbMCtza0mVsc00jKdLRMRlHqbq8QJUzgt1i9gLWoh2
         nv5Ri1jNIzXVks7zjDB7u4PeAcdnBlWA1N/nEUFzwlmbE43QVNBNnIb8ofT4GKvLfs8e
         WOX+apm91VnqxWBI07szES81PYjoRSonWM/es2uTnM1b+ZRrgUv9qvH0L4zCdvLNw7KZ
         Q1bBgwkyEsbaGsSYJrFZWeTxEXrliaSTK9Gfu+2/7OQoxDtz7LpvX1Mm/W3wD4rx96EC
         HPo6qnawR/mSCLFclbcPyjCNvWjuDFCATnJV027yLggM5kdEG9jvonT+r2tUIC3aV3t9
         Jl/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769031728; x=1769636528;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Infj0dCslIntYgR3E8l36IUqDoy5IPerf5hDlX8iy1w=;
        b=uMaSFPk17FrxXDQkTcjoDJEhgP1FhKiZMDNSC9uDkhEArkWXlhrTv0bTgTn1Y0if2f
         Pbccf0hw/EDB4u13622tmBrVcYrxMLpI2rzy81yYEbIlyXJxmuYUfdEHPDANfdV9oitY
         Z8SDneWE94I1MbfwXIdZ0q13hsX2kqc2wQbXBAumngNtZduQx4u6WvvJbmERC/Q/F9So
         THC+9QuHq2HFS2KCz8mlvSkusHafrjd/3tRwbBDlAls7sLQxPXFH251yxBZiJu4yXoHV
         p/YWmdozZpNeXDVcyWKPHzP6k3vZB6fQQ8BhVH7JIlSYz9NH+YXZdh1OH2nGcYzeB05/
         T83g==
X-Gm-Message-State: AOJu0YwXtPcRZ2h4NIn3MZUd8/ZDvIZ6972oRVgStLULMKhpag9TAWi9
	WKRLBb3pFDGVYig7AHtX73Zz+oMqpJsEP0lYO0p/wReGAsDrW/lf+oJU
X-Gm-Gg: AZuq6aINOrgGqjd0py4hzre67HdGnVnRP/2eb7iuIyfx2PAGko4aqZ1kVP8wT2KFdRS
	6ha6HvCv42LML0zAV+Sd7FhUu4HbvXnkNWUhIcdhWhSUY3rqmycTIZXnWvI5a7oxsjkERQK6oU/
	YyIigkvXea93LZgehr0BobIzIGjSlz2KVv2FfuwoWQkuHCKSO+jVphyKr2/qerBAQMF0XL0p1tE
	4lesJrIjub+Z4q9YekoTD+7brO3NArrAV5fowQ2oVMKgXPA1iEd1LpVawr/+mdzGA8+SsZ00vNP
	AgZMHKBOSch36/VP0yG8fVMZ/2lbyfUiKV8ckrmq5hV7b8IfyIlzLx6Fj24i12f8gZVWQHgLo+X
	qlb2KyHMh4/bhD6cKw7ve8WMYPK7+XPM7SEs+2uZxV52IImh7vNtZwwDiYGijVKHJ/F5xSBQ0ph
	ff7t2jp9oubZN6whPLYJFxIqNY
X-Received: by 2002:a05:6000:25c7:b0:431:16d:63d1 with SMTP id ffacd0b85a97d-43590174d1fmr11438375f8f.44.1769031727741;
        Wed, 21 Jan 2026 13:42:07 -0800 (PST)
Received: from unknown.tail46804.ts.net ([78.209.83.30])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-43569926ffcsm38351929f8f.18.2026.01.21.13.42.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 13:42:07 -0800 (PST)
From: Gianluca Boiano <morf3089@gmail.com>
To: linux-input@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	krzk@kernel.org,
	dmitry.torokhov@gmail.com,
	Gianluca Boiano <morf3089@gmail.com>
Subject: [PATCH v2 2/2] input: touchscreen: novatek-nvt-ts: Add support for NT36672A e7t variant
Date: Wed, 21 Jan 2026 22:41:40 +0100
Message-ID: <20260121214141.36858-3-morf3089@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260121214141.36858-1-morf3089@gmail.com>
References: <20260120193600.1089458-1-morf3089@gmail.com>
 <20260121214141.36858-1-morf3089@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_FROM(0.00)[bounces-258139-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCVD_COUNT_FIVE(0.00)[5];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FROM_NEQ_ENVFROM(0.00)[morf3089@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: B1EEE5E2E5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add support for the Novatek NT36672A touchscreen variant found on the
Xiaomi Redmi Note 6 Pro (tulip) which uses a different wake_type value
(0x02 instead of 0x01).

The touchscreen was failing to initialize with error -5 due to the
wake_type parameter mismatch during probe. This adds a new chip data
structure for the e7t variant with the correct wake_type value.

Signed-off-by: Gianluca Boiano <morf3089@gmail.com>
---
 drivers/input/touchscreen/novatek-nvt-ts.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/input/touchscreen/novatek-nvt-ts.c b/drivers/input/touchscreen/novatek-nvt-ts.c
index 44b58e0dc1ad..b1c379d87de0 100644
--- a/drivers/input/touchscreen/novatek-nvt-ts.c
+++ b/drivers/input/touchscreen/novatek-nvt-ts.c
@@ -323,9 +323,15 @@ static const struct nvt_ts_i2c_chip_data nvt_nt36672a_ts_data = {
 	.chip_id = 0x08,
 };
 
+static const struct nvt_ts_i2c_chip_data nvt_nt36672a_e7t_ts_data = {
+	.wake_type = 0x02,
+	.chip_id = 0x08,
+};
+
 static const struct of_device_id nvt_ts_of_match[] = {
 	{ .compatible = "novatek,nt11205-ts", .data = &nvt_nt11205_ts_data },
 	{ .compatible = "novatek,nt36672a-ts", .data = &nvt_nt36672a_ts_data },
+	{ .compatible = "novatek,nt36672a-e7t-ts", .data = &nvt_nt36672a_e7t_ts_data },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, nvt_ts_of_match);
@@ -333,6 +339,7 @@ MODULE_DEVICE_TABLE(of, nvt_ts_of_match);
 static const struct i2c_device_id nvt_ts_i2c_id[] = {
 	{ "nt11205-ts", (unsigned long) &nvt_nt11205_ts_data },
 	{ "nt36672a-ts", (unsigned long) &nvt_nt36672a_ts_data },
+	{ "nt36672a-e7t-ts", (unsigned long) &nvt_nt36672a_e7t_ts_data },
 	{ }
 };
 MODULE_DEVICE_TABLE(i2c, nvt_ts_i2c_id);
-- 
2.52.0


