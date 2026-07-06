Return-Path: <devicetree+bounces-320985-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id C4DdN56VS2rmVwEAu9opvQ
	(envelope-from <devicetree+bounces-320985-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 13:46:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDEA710088
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 13:46:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=etYY2VEh;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320985-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320985-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48BD832F7CA5
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 09:45:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B6CA4D8D94;
	Mon,  6 Jul 2026 09:32:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B8E44A724
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 09:32:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783330367; cv=none; b=NIkCuXgM/25HdQrL1Hlbt4oyMfxQjKxuknqv7rEsTZ9DlcL794iHilfQDcwB7nU8HgwxJ1RLgtFyA/qjX/gFsa3RX56V4MDSl9+P0tkqoSFfMOUzYZAQSWRO50i0REAHuv07k5rNjD0ZYzsUxEq1GevZSgK/lQdqjmf8scoL3Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783330367; c=relaxed/simple;
	bh=kzpkNVHYIKUHVyZbGK6pa3WRAS/uHKJWiKBBr/HRbXI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OT8gfdrMqWjbMwAXKhyH2uyB+hdf7CAh+YL4PabCajaRZW8w0sAYGI8+e1gvyKWiMAUsvA94LhQh36xCCXPqc+fd/K1EGyH0/+7ztq1rmSNJaNq4qLE4JbcHGFi6omDCXFbB4XegITrYKuJTaVgYyuIe5eUYMVZ7REfA0Y2E9xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=etYY2VEh; arc=none smtp.client-ip=209.85.128.50
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-493c00f74baso16899835e9.0
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 02:32:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1783330361; x=1783935161; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l4sV8eYg/ZL+s2Al+u7P5bf0VrRg6z5DzP1Ps8nBcME=;
        b=etYY2VEhxV0DUuy4HJmkTbcG48wwQKwpPDHdQM72HvfDsN/Tah5uU/0Wh1FB+J599t
         zr+Nb5v5GgRD/CrZaXRWS6mFfCLRC8Ax2qG95n0dDewg/VRDv6HYaDNUHC8QST6TCkIY
         VIowNpgsPzpSrsW6VNskMrUU1Do02DDH0ESH0scHtv4yCPmO6MaiNtgWmbB5QvTSv2Iw
         +MxIY+nUT0FcfIYw9ZY5Qkq6SSiIQmCQi6xbZm2CvjGnFCSviicAgUPonCI0BjDccJ8T
         2nof1/YocOZ25zHV7Tqi367snYX7+16gN+WtWVcX6T8YgsPuG3NwhGwBLhWePqBBm51D
         LzXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783330361; x=1783935161;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=l4sV8eYg/ZL+s2Al+u7P5bf0VrRg6z5DzP1Ps8nBcME=;
        b=eZZhV5A5v7fdx8fSgNxDnxMhRoAn6w4IkiD2xfI0Xbaa2UxsTw5FI9bMIqE9YdSTOP
         nJi5hKh6j4wLdUTZIKK8aoGQYh0pLQm11JCgqquL/dkp6kFkElztsRh8vxa/cCP0oZMt
         qXwk8PMWgY1VCVbMTEU9HzFM4ZTC8Q8EBMJn3EekNP7rXF8W8EB4pBcxlJZoRpUNZv0K
         7MxhHvzlSNV8j+QlnktpHZV03j3h4ATwE9R5qSXMYfadX2Zum7ufrhaVdpbSWN+wMbFB
         dMZGxZIQgWdfQTqU0vnvxKFCwdpb09+kKPpRx2x71sLocDEdNmXCDkV22IxGC9vHunfH
         QizQ==
X-Forwarded-Encrypted: i=1; AHgh+RpaUJ/klgCIweIPYHCoa76ojzTvd+WVAVPLphoxM2ae8q7bL47qPTcPDVX+puUFPRIkWFwC1vbaQg8J@vger.kernel.org
X-Gm-Message-State: AOJu0YyXVCdMS+QtJ/S/qJYG9V0ET5tDQ0KpZMtauuPA/wcyrSj+3Jvt
	os45ziMiSZKOqsJkMAMRlkrdVKcw6vVUlewNdRFHEp78Bge2eE3TSL0CuWasFRuX+7M=
X-Gm-Gg: AfdE7ckPXSbytBykc1g4ZMnDWF6wNkoQoWVxzd+wBzhvGqVmvtNqnO2GJvPNAmZyjGG
	g2nzyBKnurjAinJXfSjZx/EPbZZOKFAxiQfTIKoJQPCDF7PQXOLosxFpEgB+sowapbQAitpuUOn
	i8MAmgSGuzD9f7BKdsVkG90URa2ytYnbIb4hFp7RaIEAn8Vb+VK8qRAU++lAnXdh01dR3shRBpb
	ib1mwTIxK1ieTi7fyGsO8Ta2eGgSiFplSvixs3D6Ej7eaey+5focFBA0yKUGooRcrqW4T90LIKX
	TQmDnKmxOxbFER1DJEVW4rVxAPkUCqocwMm1VYgmqTwJrLgrtLfBnPJ30KJC4+jgNOMASll2vjM
	Ogd20PzLG8eXEdqNVljO4yrH1a8Ai424F9iCODqNRdU7LxJ2yVJ1w9BTZ3ZeXiitia4pr6q2VK7
	tMpdXTIWQQAQE=
X-Received: by 2002:a05:600c:154b:b0:493:b6c2:cd96 with SMTP id 5b1f17b1804b1-493d11d9d42mr108969265e9.12.1783330361468;
        Mon, 06 Jul 2026 02:32:41 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:1495:8c97:96f4:dff8])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-493bef1807asm313598145e9.1.2026.07.06.02.32.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 02:32:41 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Mon, 06 Jul 2026 11:32:15 +0200
Subject: [PATCH v4 7/9] clk: sunxi-ng: mux: remove unneeded export
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260706-a733-rtc-v4-7-f330728db3d3@baylibre.com>
References: <20260706-a733-rtc-v4-0-f330728db3d3@baylibre.com>
In-Reply-To: <20260706-a733-rtc-v4-0-f330728db3d3@baylibre.com>
To: Junhui Liu <junhui.liu@pigmoral.tech>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Maxime Ripard <mripard@kernel.org>
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=854; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=kzpkNVHYIKUHVyZbGK6pa3WRAS/uHKJWiKBBr/HRbXI=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBqS3YmfyJmVNfRc9dDNX3FlRKXkCm2eEX+2FSO9
 mfy8XRdF/mJAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCakt2JgAKCRDm/A8cN/La
 hdH3EACDjsiUBV1SbTRjs1G5s78KTZ7oS6GSWyf2BTTtMn2V+5Nd2ocIN7/1OTU7qHO4E9aL3rN
 IMb4bcM6XqK+z8uxaQbFr0DrRbOlRiKi/XmUhyDUiIWESP6KvjBz4nHc3tmADEMTfUurLk4i8ZC
 jJI5yXP5XGOJnxN5gv6H/ys6bWkTwHvLwjtiQ2pt7JhjX9iygJIpSePXEJnUIU+Pqb+NX3VRZ+P
 DIbcyijahmDuqlXmLX9kEGF1ERLFAgkKu/NZxY2mlpYaii62SDIeSyTU08c6lU6dNgBjkQrxDSd
 lIaWjbHZ/aodMn8hJ3rR4fQQsQxH4qHroEo3j04r1zV1EblJSAzxUEZoszz6lVI1Fr7uwVWgauq
 mOvMReWiwP9yClUSeooOR7ImTXwXBAQomS3AymvWdRLuVg8E54+rxShJLJO4bU2mcX8JQbb3sZG
 fNMmPCK3wUYK5T//1e/Zz+UBYDuzWKPCkp+IHcyKZ6S01hoSp0BKHyPEpZUenx7vvXGe1NiKvEH
 Gm5iLLR+PbCJYa5t/+jroacHVeaXyBlh0jZEeg/6BhNaxisiSOcBgH/JV9VR3ZX1jeQxjmDb6JV
 0OOwgs/kUxvIwbg7N2dx8FjWocPUJJKqJGP8lCym5w6a9r/kNPszSOSMaUvhWJQaw0NrtpJhxQc
 kUIvmMxZfVwXFxA==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:junhui.liu@pigmoral.tech,m:alexandre.belloni@bootlin.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:mripard@kernel.org,m:linux-rtc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-clk@vger.kernel.org,m:jbrunet@baylibre.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[pigmoral.tech,bootlin.com,kernel.org,gmail.com,sholland.org,baylibre.com];
	FORGED_SENDER(0.00)[jbrunet@baylibre.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-320985-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jbrunet@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:from_mime,baylibre.com:email,baylibre.com:mid,baylibre.com:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6CDEA710088

The export ccu_mux_helper_apply_prediv() symbol is actually not
necessary. No module other than sunxi-ccu would use it at the moment
so just remove the export.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 drivers/clk/sunxi-ng/ccu_mux.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clk/sunxi-ng/ccu_mux.c b/drivers/clk/sunxi-ng/ccu_mux.c
index 775d396ccf31..1a441745e796 100644
--- a/drivers/clk/sunxi-ng/ccu_mux.c
+++ b/drivers/clk/sunxi-ng/ccu_mux.c
@@ -66,7 +66,6 @@ unsigned long ccu_mux_helper_apply_prediv(struct ccu_common *common,
 {
 	return parent_rate / ccu_mux_get_prediv(common, cm, parent_index);
 }
-EXPORT_SYMBOL_NS_GPL(ccu_mux_helper_apply_prediv, "SUNXI_CCU");
 
 unsigned long ccu_mux_helper_unapply_prediv(struct ccu_common *common,
 					    struct ccu_mux_internal *cm,

-- 
2.47.3


