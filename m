Return-Path: <devicetree+bounces-257587-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YF57INX0b2m+UQAAu9opvQ
	(envelope-from <devicetree+bounces-257587-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:34:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C134C558
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:34:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ED306A4D63A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:37:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 311B747DD42;
	Tue, 20 Jan 2026 19:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XXibl3sp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E70D47D932
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 19:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768937786; cv=none; b=s9evH1H2zjtGgZqt0K0ZQu+8lGc1ixDd/DlQHgEfOiaxwqGU7TOqM6bnXFVa5oH1Pg7IgUfo/mRNt8Hq0XfUvdkwqm77bqLkrJfvWi4UwmzAlaiUm+/X+xRmY0CZ/duQqbnJ9B/vrrm9x7GVUtTDRk7S+2zQOhRCW/UMtjubfAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768937786; c=relaxed/simple;
	bh=XkNMP7cd+gchNvP7abMlUd/wTlgiF/59hJAv+vC/3gw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pidlZyDaizPHT67tepZM+b2khFYygz1p0JCqoNrdBakUTrCxxM9z0MUclXBNzQ3GtF5mGKfzQciOi5y77Ip2aelYGC3+IxJvqXJPCioRltaTa+ffoCjeQER+nkUB8b8bwiaUE4sQYUD+PWQpoJjZja8OzUU1K4Oba57LEC7Hrp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XXibl3sp; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4801eb2c0a5so38436305e9.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:36:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768937780; x=1769542580; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EWDjFAm1WaiS9fdrpJtyst/PgjIOQ0mI0xi2wXullFg=;
        b=XXibl3spTwDxac9NvBsJqRX5D08/7EtKigVuEaGUU91kTlC+L0l7dDOdGX/eY7xwmk
         HOsxPxEttFy/KXOezPbPBcwbxUWFlnuA5LE8+tnl3P0d8SRk3KiPZxnQw2YByPApuwLE
         Ns1cLGfTG4B7ReuSa30hNZaj+f71Zr7d6mIFhBcVRfo+Nuan3QwHrEQIeSiWK+POrKLO
         C3f04b806Hp24BleS0SPEyeVt0M00/5BWHHWb1APfcXEs+JUrWzuyEN5sahgcsD5SDXv
         VcsIp0y6zioQTG8H3mQvzqWP0C31poylhhgYo74TgvopTFN5FHSSpRilc9h32XRVSabI
         F5dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768937780; x=1769542580;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EWDjFAm1WaiS9fdrpJtyst/PgjIOQ0mI0xi2wXullFg=;
        b=w7X2exANF4yxPtHV9L90xQBSOVN1adsFTxO68Rw50cdK1hd8Mq9QYptK1BXXt5KmIb
         2FXZgLYj8Zlw8rPf4F4p4UojOxPT1ufhHm9T7IfT4i2BF4VRyy2GM8j+1bwqtTxr9ngA
         QktGjHWzNLVN/Iogz5sE2vivu+RkC7+/c2lwzK4mpg8o26dDWNmS8s+2jBDk322f+aiB
         9fGgknK94x1tbQ7Ms3dZZVF6qgGJb8VmMpsFfi1v3evtom4Bhih5H4i69LC+PsWv/ZIM
         P3Cxxjd4PF/qSe2ptZqczxqP2qLby3Gdp5GXGlNCNEM1JNn/qYxiVicl7/6PZtIt4t0F
         SI8A==
X-Forwarded-Encrypted: i=1; AJvYcCUmn6tpXLlhmXydSLwdii0io5dGZubE2Zp1YkZbYhQpibKAtGLSUhJJfhaRkFmxg5M12bTkv+oBrVLI@vger.kernel.org
X-Gm-Message-State: AOJu0YyCDSJwjC2ZFMYx1/auvoHfKRPQOd++Y38r0/WfEgE2xi7+eXYl
	1B5uF4/botDTldHo+7pV2G+7Au6ZddEqSk1Rh37d22udmewCcLwJLPLx
X-Gm-Gg: AY/fxX7Aijg7KRswuiwMhrkeNTh+z3CnUddmnP2KOAF8L9FGlxgsK7zEPXseBmwL8RJ
	+UKjogaGWsJRom68c20ljOFUOy+ftq4zhHU6wAMueqJ9HrAbuHukrFKY1Q3vXIYQpuTetkUbJxl
	FhWa3Dg9fLPgGn67BrAk3CI2s+pOWcb/fQnxODS9yvdmsOj4vnciNd44VuanFlqIEt0Q7HzT1EK
	2CP9Fi3hEYskuDmqk2JOfujYfOKkctt8aaZXmmkSo73/qRTY7HghDEscb2hWwbUlmp/PswmyFPO
	o8yRPlvYpBlC8URMpYvpgS7jCGvd5S8tqdrMPwnnJ0t/3kHfTgiJWBpK8DBMkDLX+OoOYZfeHJT
	uLYPVhf5ils+i/5Xu3rSLVJx1ULTFKy6ZStj5fT78mz4hUADJ/IlfPghDQAuDTVt5F1z9iluWcf
	tRzZPRSXevwM2xDwITyhgB
X-Received: by 2002:a05:600c:3555:b0:480:1d0b:2d32 with SMTP id 5b1f17b1804b1-4801e2fe352mr218429725e9.12.1768937779906;
        Tue, 20 Jan 2026 11:36:19 -0800 (PST)
Received: from unknown.zextras.com ([78.208.157.140])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4801e8795f1sm265081185e9.6.2026.01.20.11.36.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 11:36:19 -0800 (PST)
From: Gianluca Boiano <morf3089@gmail.com>
To: hansg@kernel.org
Cc: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Gianluca Boiano <morf3089@gmail.com>
Subject: [PATCH 2/2] input: touchscreen: novatek-nvt-ts: Add support for NT36672A e7t variant
Date: Tue, 20 Jan 2026 20:36:00 +0100
Message-ID: <20260120193600.1089458-2-morf3089@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260120193600.1089458-1-morf3089@gmail.com>
References: <20260120193600.1089458-1-morf3089@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.46 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-257587-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[morf3089@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: E7C134C558
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add support for the Novatek NT36672A touchscreen variant found on the
Xiaomi Redmi Note 6 Pro (tulip) which uses a different wake_type value
(0x02 instead of 0x01).

The touchscreen was failing to initialize with error -5 due to the
wake_type parameter mismatch during probe. This adds a new chip data
structure for the e7t variant with the correct wake_type value.

Closes: https://github.com/sdm660-mainline/linux/issues/155
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


