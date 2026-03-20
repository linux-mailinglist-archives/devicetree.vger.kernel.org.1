Return-Path: <devicetree+bounces-278220-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BHsLmoovWkG7QIAu9opvQ
	(envelope-from <devicetree+bounces-278220-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:58:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C352D92C7
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:58:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D60F3051C9C
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BFCF38D018;
	Fri, 20 Mar 2026 10:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iFdCflfI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6451D364E83
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 10:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774004317; cv=none; b=fkeYio1xGSekAz3F7rtrXYxtYvARrsXg3OCtNpbw/JDZFUBK82CxqXKte0dZawGs36tW8TwAbySnWyUMHqNwzkEYTcRyqZYPIrzHEMvFURMLfaLiio4OBK3/49FwmyLY75Go9BgDpULv3kWby3mgdDXW1IHInlJAOGcyYubdBiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774004317; c=relaxed/simple;
	bh=R/WTuKoioN/MALKxrRq6ZKUm+b9QuPIUXQYTj0zsudY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FW/1B3HRCvEdsYiZwAJbXn30K45DqdptRX32gbNdgbkhqtrA7eRTGCdnE/16klA5OUb4YRICYm7CE3WEGfALSFD5nEkk5DPi4nDbkQbtQYO/hcWRnqaear+Dg4t7ofF6hP3kKYzY6mEmCfEqraDV93bfXEp0Qio0B6pDAtXtV3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iFdCflfI; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2ad21f437eeso16192385ad.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 03:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774004316; x=1774609116; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3D1quXe5qk7PQDdd6d34BRnWIV3Fq6CvCxgOKw7t4LQ=;
        b=iFdCflfIbvJOI7o74xiOhO7y5Oxn9RzVQcjQaHWdYLqfSDZ/2PtS4FiJbln6F3USQo
         vzyz9ryYM1XS2V/qjgoNj3FGVVcybCxwm/TGLjIZ8k8XHie4euEmy3KgxQ70eyjTVfzV
         sLLrPsIFoIUtWzvmPbunfOxrJ6JNp4Ygxzkh7VYsvLJ15aXeXpi7viTNNK4DQfKdZy0/
         Yw2rgWbKOZvlGYc3prWauAeivliDssBvMS/I9gt8Qwb9sD7xtIePWg1ncmhzGKnX7aFE
         alDmxfbYzqUlSwza0iKJb/SVqjTVJ2L9emiVhSHPnLAmCCroVnlml/6JGemFayxGHMo2
         IOkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774004316; x=1774609116;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3D1quXe5qk7PQDdd6d34BRnWIV3Fq6CvCxgOKw7t4LQ=;
        b=rUbfFiDotpZv824WAWzSKqocTwf84t7N/1xZ1TDV0KjbdY80+5lttKehqTrgRDL6bt
         oQFWnhCA6/viY5FpHcElhMbH/YmTbrkI+WClGHmzUNXP7Q33AcjMcRF477/R+V27uUOA
         cUgX1k75OcggL2DxnNAKnbW46Vf17OuEL3T8+JVU1CkPSMgrEuVDIz6CO2yM+102mSQU
         ZUv+yBydqX5bi9EeNBvpawXK8yUR9Dqof1ePhdcEdTanWwwAmX0/3O4xvNDtKxhS6GMT
         9iHF8hEgb1jrUCiBLX3hP169em8f8LUcdrFdwjf8Eo4FcSdGEJdnxUpYIGkG86i/GQ+t
         L0lw==
X-Gm-Message-State: AOJu0YwJKPS9ozu/TrEAPdI7ncLBHeMnIajxixM7SXQZdbr7GtYA4J1Q
	fdpIABMESMSYgFEmF1fTmP+Hzaju6px2iM+VvqUinAMGHVpcs/J/wW49
X-Gm-Gg: ATEYQzw86c/fX8nxRhQnM/heonfyrG4GNEVkjfEv+pmfq/Hja8D3DTn8W4lbj1Bt+xB
	KjZTSI66jqmUvXjI/dSgfKyYy7wynGgS/5GRrCX+kHgmtshZM2P47xsRjrNN5QeBMNfIuVwzPFg
	C4lsoVYQpo62zawprPG5znyALzkbByPDFBm4l1eY2vZGR+Lo78eKsrJtRUo1jDCwdu70LV38aQX
	VBuKF1SKJCBHllnYWAPSD92U4eLfqJxf4nYX9D8CTkumTmONEaABxHznt+4WG31JHCe6rTxlgEQ
	3LCH587j2NW363JLp/eEtOAqaYFVoMkm7LOFOZCxb1Yb9dIwRk33YRXH2+LfdmWjBBNTE6UXY0a
	c+cPeseaDamY9EvzSYsYEpxxeFRFqPHpowDv8wxXaMTkzkijSxHkPqfGmuOSEHoSuxiuRZ+y3Uo
	soB+Q3xIM54tlzgHTjnWkzba8Hk10GIqpuYf8jJbjM0Sxw9lYJLHy2Tm2300WCrozkSvXDUZoNa
	La9goc=
X-Received: by 2002:a17:902:fc43:b0:2ae:5628:a180 with SMTP id d9443c01a7336-2b0772186bamr52147315ad.25.1774004315676;
        Fri, 20 Mar 2026 03:58:35 -0700 (PDT)
Received: from buffalo-ssd.taila54753.ts.net (M014013071096.v4.enabler.ne.jp. [14.13.71.96])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b083516eacsm25636405ad.15.2026.03.20.03.58.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 03:58:35 -0700 (PDT)
From: Akari Tsuyukusa <akkun11.open@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	sean.wang@mediatek.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Akari Tsuyukusa <akkun11.open@gmail.com>
Subject: [PATCH v3 0/2] Add initial support for Lenovo YOGA Tablet 10 (Wi-Fi)
Date: Fri, 20 Mar 2026 19:58:20 +0900
Message-ID: <20260320105822.447337-1-akkun11.open@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278220-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akkun11open@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.653];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 24C352D92C7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series of patches adds basic support to
Lenovo YOGA Tablet 10 (Wi-Fi).

Like v2, schema validation still reports errors in mt6589.dtsi,
but this series does not aim to fix those pre-existing issues.

Changes in v3:
- Add "Acked-by" to dt-binding
- Remove "mt6589-lenovo-blade.dtsi"
- Drop UART node

Akari Tsuyukusa (2):
  dt-bindings: arm: mediatek: Add Lenovo YOGA Tablet 10 (Wi-Fi)
  arm: dts: mediatek: mt6589: add basic support for Lenovo B8000-F

 .../devicetree/bindings/arm/mediatek.yaml     |  1 +
 arch/arm/boot/dts/mediatek/Makefile           |  1 +
 .../dts/mediatek/mt6589-lenovo-b8000-f.dts    | 40 +++++++++++++++++++
 3 files changed, 42 insertions(+)
 create mode 100644 arch/arm/boot/dts/mediatek/mt6589-lenovo-b8000-f.dts

-- 
2.53.0


