Return-Path: <devicetree+bounces-270751-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id beP0KlhFp2kFgQAAu9opvQ
	(envelope-from <devicetree+bounces-270751-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:32:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7371F6D57
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:32:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B3D0331584F6
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 20:30:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BAAF33DED5;
	Tue,  3 Mar 2026 20:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mZuyDt/4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49503375F6B
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 20:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772569832; cv=none; b=YEWT+nIYmeQGkLVcJeZmyJPbPMg01LuZtdklhN6wOUXIK3alaSB5ovCp4PFbe6qRqz7pGXBDVqLQFn6XGVdbZnDC7AF1mhpLB57q11EOe8Yv2SBigwHeo+trw4hcgd24krydEdq6dlCIGOTXfWmnbVS8w+tct23pX9PdJ/gt/uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772569832; c=relaxed/simple;
	bh=RuZaljSVXskqPJY8r+YAxpcHHlm/dbEQcU9B3NPU7t4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DCjSXsK6J5LlC9ifiAq1JRyFCTXdMSZ322B9gH/CPoalQJLA9MPoPlTDJPpE/eluylJTC4mSKTMX8vjBtDm+moYsIOSGLP401WzP/2VxJyk360lQU9Tu+TQZt4MVqqkcINgbGOe2w56kYc+bpcSh2esWbmtrUs77nVshyazJTic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mZuyDt/4; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-8cb39647a70so577937585a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 12:30:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772569829; x=1773174629; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FWVCPo/EwWX5nyfgCTVstrGnhkLqhyh/3/ZgqXOIZ6A=;
        b=mZuyDt/4qjbhf6cyP2YPayWqBC7bFx7i+iRsd+qQIgVngaEh9bjCMeE0EYea2MR6Jf
         UnT7kQL8ywZXxsmNqIovDVUIpvwum5rc+mv/Zt3tPVuqn2Razb5M1ax2YczFVEDkO6c2
         aALnBdliAPJU76bxEglcvd1/jtwS3FdynK28kQ9LH2PFxO28GQ4KCFXbAxLajH9rfjv7
         BjBc3kJR9EtVc8vWt61KD3zfCRlHiE9eygOo1E/1UYs8sasvkaXujK6sbMsHF9ugKJHX
         f4wUOyi4F4CVjCcF6tJC7Pj4I6I2p8Ttlls6cAAHuEm9QJHzRfJTSxetUwtaW1hXwQ/O
         bOUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772569829; x=1773174629;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FWVCPo/EwWX5nyfgCTVstrGnhkLqhyh/3/ZgqXOIZ6A=;
        b=ieAk5jQxxSl57Y1MARs0SSNqOsSjOrH8VrVueJOozgyFVOnI8KeGR4e9QS/+3lrYZW
         qC/sGYBWh5cktRRiV4hLgGg28WgiOUAumljwiFIu1NwptNMrVNH3w+tLgagnGaKITqM0
         W868PXO8MmuJ6tAJ0K9DRCUOQ34Wbs32pmNaGR1LlLbpkctTTaaIHTiBgyWrm7CYxBEq
         7ULToB7cemiUkB1f0erUVygjJaTjUlXj2W0pmunKWJ1W0gJhpk6M6s8UoHQS94TLHg2r
         Q0HGtJ4pbvHkgrAskaA0wogFMe8GNFWMrvMZNMXg8mfUruA59gqHm0GGuiSQ9KLj0bti
         mkcQ==
X-Gm-Message-State: AOJu0Yy40sxzGQ+PwMM2RoPJotCm6sSUcnuink55MjXUpZix8yagbOKM
	rltqBKS12Z2kavPBOobt+CLIIfc/f3ffDlJ5+pOoHHJq/Q/Uxj3PR/qV
X-Gm-Gg: ATEYQzxO9WCGj8uu/j8IQOM7rb2p0odBePFCCO90e3cDSh/ejdLTKRCkmS/ArJTyvOt
	t8EIbpS8osa+u+FqM11rFYypKs38T97W++ySnj94XtlvBbMECox43kbGDVGTePByJVH+07qD0JM
	PCkaVrZSxC1GmoB2kBvRzumcQ5dy1OEC5HIFT75Usni2LV948tE5irlHdd7VmNotn46MzyUvb9j
	/tVrzvTK48opxqGe2qbXzGnkG6UTPu12xQ6M/r9rNQoQQiiA4dRrNSfaMxg1h4ywE5nEjtFvFwk
	hBAc2sNVJT7G7ju7Hd9Lsnie7p7pAC9i2UqOocaNjP0z6ktjGIul+R+ZvuUyPgNtvhm4sBVA0Uo
	jeNhLJoa9X5+32+BhBDwFEknnNblg27Sc1sx96ujUAnVNV1fR3IM3qAYMz2KNgvJbNowuURFCHY
	a6zkh03Z6f47e9d0O7Nw6fp7Ptq4rNKTQcdr8dQglet1dq5J+hDxIQJ4SK2vA7CfI1hpWje5YBX
	+BwcjtXtUI=
X-Received: by 2002:a05:620a:489a:b0:8cb:9fd4:2ecb with SMTP id af79cd13be357-8cbc8e081ecmr2045708785a.54.1772569829106;
        Tue, 03 Mar 2026 12:30:29 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cbbf564c27sm1465032085a.0.2026.03.03.12.30.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 12:30:28 -0800 (PST)
From: Mithil Bavishi <bavishimithil@gmail.com>
To: aaro.koskinen@iki.fi,
	airlied@gmail.com,
	andreas@kemnade.info,
	conor+dt@kernel.org,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	khilman@baylibre.com,
	krzk+dt@kernel.org,
	laurent.pinchart@ideasonboard.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	jesszhan0024@gmail.com,
	rfoss@kernel.org,
	robh@kernel.org,
	rogerq@kernel.org,
	simona@ffwll.ch,
	thierry.reding@gmail.com,
	tony@atomide.com,
	tzimmermann@suse.de,
	andrzej.hajda@intel.com,
	bavishimithil@gmail.com
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v9 2/8] dt-bindings: vendor-prefixes: Add Doestek
Date: Tue,  3 Mar 2026 15:30:11 -0500
Message-ID: <20260303203017.511-3-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260303203017.511-1-bavishimithil@gmail.com>
References: <20260303203017.511-1-bavishimithil@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 0E7371F6D57
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-270751-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_TO(0.00)[iki.fi,gmail.com,kemnade.info,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bavishimithil@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[doestek.co.kr:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add vendor prefix for Doestek Co., Ltd.
Link: http://www.doestek.co.kr/

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe..5cc05d518 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -441,6 +441,8 @@ patternProperties:
     description: D-Link Corporation
   "^dmo,.*":
     description: Data Modul AG
+  "^doestek,.*":
+    description: Doestek Co., Ltd.
   "^domintech,.*":
     description: Domintech Co., Ltd.
   "^dongwoon,.*":
-- 
2.43.0


