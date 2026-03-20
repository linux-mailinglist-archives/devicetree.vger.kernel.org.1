Return-Path: <devicetree+bounces-278116-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0ONeBjIGvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278116-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:32:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CE82F2D7425
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:32:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4F3DB30166E1
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:32:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 777AC318EF6;
	Fri, 20 Mar 2026 08:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jqr3AMyh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402DC308F36
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773995545; cv=none; b=haT3r9HINMkyZhHSVC2UQxU6tnPL3A//dJwFYTbFhirmNNadfgIjiZA/WG/MPNPBtLISMCvXSPfLJKBckIoImCyTvQivJb6CLPUHc5NRP/LSPtfUY9MkkqteNhb7ChPHZUyvOiKoWk/J6Tw6oTqyo5woLG5NRsbUTsVkXnKM1ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773995545; c=relaxed/simple;
	bh=NMH1lM3fMo3/CvgbDrRdjr8Z3m/1BUIg1YK4rBIIENg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hZnwo0XxhPu0fgPHyxEFI/Jz/4sjnf1XXUdqwG6jknt8/flw6vthfYLFaeyI7UyxoIBq50lOelXwQh+SZBoa+AOgoF/GvDyHxN4Y+JIbsc5+j3/7yD9TkynqUkcK+SNFpR3Cwg5aH4jo4QLobz50n6Obn6RFSts7tAZRPFCHYFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jqr3AMyh; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-82a62714fe6so859373b3a.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 01:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773995543; x=1774600343; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uwKh84aPEwlbOzcwKg41QhnYITbrVcHTcrSie4jnTPo=;
        b=jqr3AMyh5QyMVl3dPZb3wPC5nnsyeUysg9Hc97lBsHpZged46F6KYAI/ES7aU2s6Tk
         n+7jOEUp929s9ZpN4opyWFYTv8yPjm36yaGrZrUzO/z110ArIh846ECzwKeC2rIBleF7
         D79DJllHBvmos4kjQqgV//k2m2AWO/6ZlbSZk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773995543; x=1774600343;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uwKh84aPEwlbOzcwKg41QhnYITbrVcHTcrSie4jnTPo=;
        b=gYH4jdlNOOEgzU60GVPnQ6qb/Qc9RMKVWtQMbMWu6hymNAAUiK3zJhK+0vDyb4hiVt
         u0tFmmBwPnE8j+QtcUwL4f/CHZ+HHkge7+TgVNPUEGlapGrYcKULcNqr+iBJ2POvh0Xf
         YG8cZqWn/Ckue6INtPyWp5yKdRFuTHF5jRIZTWVojLCnQ/FXs4LzK2DQRW7UHHvvpss1
         ZxKfYaZIjdrpxnN2S5lSBMnsBXyauwrxXaNYHm3wWxOEAqrY4zEjmpS5QXdbJgCovDD/
         sJOk5qdDOVO2WWHsZ9cQ+YWJ8g4uDQOnQONdA33YwQJBI/a+tZbt6ITM6KJqlfTCE5rX
         ZQYA==
X-Forwarded-Encrypted: i=1; AJvYcCUt0Jv0I68RW6jhzvzln6j4qHoqnUMVozf54QBgMSMW7bMWJ0+o8p3LRhAA7CE5jEJNmJXrKLFZ+qx9@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6DWHJd50L0Be5i/6bxj3UyUziXwj11u6sMMZhGWToPWbVvxXt
	nHMEupSf23hTeek/ydZ2g7xG6AIj+g0SJleXBrrH/Tv1woezT/gO6wPQyK5c/5cWoA==
X-Gm-Gg: ATEYQzz7JxOghFDEmwrlGxQV+Nmn0l4T35jIqAM9bLLZo94HikgUFcON26qv5XD4IFH
	/l7YdST0dssXXLGBOOsuXulcp7j7A3IvlS9VnW4/VBnt13FT/2lfWXDWYQgEdKX/Aw2P0s4Maqv
	s1z66tq+QDAPS+O6IiMFujeCdSkrUAs9A6I96tsF5bDhe9IexeHUa+ifEEgiQIC8FBO2dNWbPsd
	IC9udhjU4l2pnVBWi4lVdTvpCdW6PjkQQ8SOKQL6WxrgbyAKrFUwTvVB9mBuyPap1xQYg5B+UH5
	n7vMczz4vbS6rRd1xLx3dkxjV25xRMa/TbaYapzps69LKoSBpufc2EGCKEIvsdUl8dI7hzxWVMW
	Yf2IhbnmZ80x6WlRfOooJ3PiITTxhNtMpTUX3PpAWPOK3HOczyhwCvSZIVJLx1k32LV4eSR2ApR
	jed8BKzn+Bd3EdTbzEp9b8gFd8heCxMZsS59R21Pc0ZAVth5h85l2Reo2x3FYp4g/hM9wXCU7dT
	/WNP8OM
X-Received: by 2002:a05:6a00:2e9b:b0:824:3ef6:a815 with SMTP id d2e1a72fcca58-82a7a80b69dmr5877135b3a.8.1773995543605;
        Fri, 20 Mar 2026 01:32:23 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82b040debf9sm1408816b3a.47.2026.03.20.01.32.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 01:32:23 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev
Subject: [PATCH 2/2] regulator: cros-ec: Add regulator supply
Date: Fri, 20 Mar 2026 16:31:33 +0800
Message-ID: <20260320083135.2455444-3-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260320083135.2455444-1-wenst@chromium.org>
References: <20260320083135.2455444-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,chromium.org,collabora.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278116-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.969];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,chromium.org:dkim,chromium.org:email,chromium.org:mid]
X-Rspamd-Queue-Id: CE82F2D7425
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Even a regulator remotely controlled by the EC will have a power supply
input.

Add the supply property name from the device tree binding to the
regulator description.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/regulator/cros-ec-regulator.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/regulator/cros-ec-regulator.c b/drivers/regulator/cros-ec-regulator.c
index fb0767b33a36..aec275fe1f44 100644
--- a/drivers/regulator/cros-ec-regulator.c
+++ b/drivers/regulator/cros-ec-regulator.c
@@ -183,6 +183,7 @@ static int cros_ec_regulator_probe(struct platform_device *pdev)
 	desc->owner = THIS_MODULE;
 	desc->type = REGULATOR_VOLTAGE;
 	desc->ops = &cros_ec_regulator_voltage_ops;
+	desc->supply_name = "vin";
 
 	ret = cros_ec_regulator_init_info(dev, drvdata);
 	if (ret < 0)
-- 
2.53.0.959.g497ff81fa9-goog


