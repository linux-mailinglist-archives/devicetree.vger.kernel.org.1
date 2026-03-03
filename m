Return-Path: <devicetree+bounces-270753-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KH47BX9Fp2kFgQAAu9opvQ
	(envelope-from <devicetree+bounces-270753-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:33:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D1E1F6D85
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:33:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 436E630D8187
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 20:30:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A33437C908;
	Tue,  3 Mar 2026 20:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bB40iSUd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E753750B5
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772569835; cv=none; b=TLCUGfK1ZLzz+DbvZendBYn48amabbKsmfqMViB9LG5W/hArra8sIcfCaIBSHm9fIeTRK5bvPB9zh5B/VflGEf+lIK12ftKWuFDmxYs/1NV33LD+b28L0RZiFOHvKf57UK0TZPjpJceXV2BPrrTSv1QyordODisrEG+7vFBjf7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772569835; c=relaxed/simple;
	bh=cihNYnflN3AVGRiDEm19DGgGttXrkIyvwuts3JIQy3Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RiaMPvkLApMc0FZdELh/0/96s8XdbJ4oD1ODPpR8++irrQs44IsCSBYJcwdYXas70B2FYxsXVqqK+8VEunfXCSrnQa9cD6vOclIUdvU9jSfXV4/kOKHbMYg4rIMXS2xxyD4jLRnKl4Cusw9vIstVHmBgMyo3eAM3AkTFeR4OmQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bB40iSUd; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-8cb5c9ba82bso1020121085a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 12:30:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772569833; x=1773174633; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1IVPvbiKHqb1wJCwFPWETEeAl2aF1oAt9knBh3vkK+g=;
        b=bB40iSUd2YYMnEc1artiZlkJMWDwELXDwaLYUxSoHXRYm4MiBCp0/8596DzGPH6HoB
         qDLUWMqGHCRgbXbeP3V3oxu3Wzgr2LS3Uv0A53d8OXTjQO1m/1sEi6ivvBiaJodoi8za
         xy2wvg3NBSrrsDbWmJ3vGb3tPcds+Sav03NPgh2ta9J6i7VJZwG2wvi0q9UC2jumBJdT
         B+VsHS42nXXG477uoiIwRQepK3DI0fztZIKE7xAKqyNr0Q5HnIpT2eJpDf+fp2rL4MDd
         KOYzIWV32fmhMqY5pmKnhG9efafPeVH1G+Mo3n14zSYHRE0lauWXL+XtUSfh4ix4eQC8
         YChw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772569833; x=1773174633;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1IVPvbiKHqb1wJCwFPWETEeAl2aF1oAt9knBh3vkK+g=;
        b=noUQKNxbedCwxSIcVrUX6sKckSWOf83z3V5MmQI/5lj71MJh4Tz4cbSt/OFbMCPKUV
         dqiRHyMejQmgREwmiPsGWZNCEF+l6t0kTrhkwXjEh6+fttZyZBVM0xSzXOVCby/aqmTa
         hIdOn5q9J03PohhanOqc38laTTPnvxndmRpLgg7CqDFKeB2Ma6M5fi0HMtE0v0TI3ZcM
         80bAMvxeTtc3qs8nEW43c7d+P1hXIzKeC3s1BtnxFwP2TVOuT4oukwxG8dWLf8W7i/7a
         RgvL8bDzBJComED2Z7qwwGsT2V847X6ahYsawLh+sA/I0G6EJx0bp91KkQzLfv64hOQm
         8ekQ==
X-Gm-Message-State: AOJu0YwqVsfNrrUPfK7hIF4QtRB7b5s6LaD9/kHaG/h4evbTNt7z1jh8
	1PBZtxL7JOij7Hqxwo8dRfBW/wBBaLpXUj1VFtwcFD1qgYk9DTEfWKbs
X-Gm-Gg: ATEYQzyOMVrd03eHZtEsVCkux+j1xXnIgtHj01SQhevWcLccSD6ATZjDX3pBA4ODRb9
	9+JoPhg6wBYbjkjVfbAan4yXTaH5cyBeoiRRJ2enoedsEpM/+4kCZaF4FVelFPumxGsFVsrhT8x
	c2B9NymuVdwwO2mOsEbaELbRErm6UTFKmmKVl1RVvxgeHktz4hYOfox8dzPFnSaEz/uDjM/zQyr
	eJErYcllLOoxxrlsbYcZw5u9m7RDrOCSbL/tAZF4UqNSnUsEjkc8cWiMoAhFmyVSuLvido8zSTa
	CwEloeg9D7Zq7xaPmqKEWiASptZlMhSXZZsJrFh231Ey+beefqoW5MHwgOhNh4o9EdRd6Z6uoZs
	ED6yb7qHxB8iXS5PA2wH2itpo/Pz1YcD86WvcznvB376q0hZNEGPo8fn9PCseSoLN1ZIRv5oruk
	phoDsaK+vaRJwgTDpD5REGp9/EZ1u1YtnsrgnR5yhEDi378VbqK9DSmHn3BaJg13+J2p3D2xKdq
	TOwtK5X7aw=
X-Received: by 2002:a05:620a:444f:b0:8cb:c043:4592 with SMTP id af79cd13be357-8cbc8e91d2fmr2385763185a.74.1772569833106;
        Tue, 03 Mar 2026 12:30:33 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cbbf564c27sm1465032085a.0.2026.03.03.12.30.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 12:30:32 -0800 (PST)
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
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v9 4/8] dt-bindings: display: panel-lvds: Add compatibles for Samsung LTN070NL01 and LTN101AL03 panels
Date: Tue,  3 Mar 2026 15:30:13 -0500
Message-ID: <20260303203017.511-5-bavishimithil@gmail.com>
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
X-Rspamd-Queue-Id: 73D1E1F6D85
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-270753-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

The LTN070NL01 is a 7.0 inch 1024x600, 24 bit, VESA Compatible, TFT
display panel
The LTN101AL03 is a 10.1 inch 800x1280, 24 bit, VESA Compatible, TFT
display panel

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/panel/panel-lvds.yaml         | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
index dbc01e640..b31c67bab 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
@@ -58,6 +58,10 @@ properties:
           - hydis,hv070wx2-1e0
           # Jenson Display BL-JT60050-01A 7" WSVGA (1024x600) color TFT LCD LVDS panel
           - jenson,bl-jt60050-01a
+          # Samsung LTN070NL01 7.0" WSVGA (1024x600) TFT LCD LVDS panel
+          - samsung,ltn070nl01
+          # Samsung LTN101AL03 10.1" WXGA (800x1280) TFT LCD LVDS panel
+          - samsung,ltn101al03
           - tbs,a711-panel
           # Winstar WF70A8SYJHLNGA 7" WSVGA (1024x600) color TFT LCD LVDS panel
           - winstar,wf70a8syjhlnga
-- 
2.43.0


