Return-Path: <devicetree+bounces-270755-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGpEFLBFp2kNgAAAu9opvQ
	(envelope-from <devicetree+bounces-270755-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:33:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A831F6DB2
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:33:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1A16531B1FDE
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 20:30:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B18320A5C4;
	Tue,  3 Mar 2026 20:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OpjFMsHL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F986373C1B
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 20:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772569841; cv=none; b=qkR6c/x7SklUKYgHDleVNkfsJBKdOeToIJIdQK+9ZRtYskjiTj6iXqN/i9/GtwdFBN7DMu+ia63rliQx/Zzp6LClkwRsqEuU8HP9gy7rP8pw/mK0SGam/jWW4MVL8ziYgpeSqVW6e9lEoiEeK6KCnABHk1tCcn3+RW7VuoCl+/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772569841; c=relaxed/simple;
	bh=trpX+5UlMTYq/zyHhxfWvjqST/R/uh9a912a+PSUHVc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Fzls1yn0LoZoys0cU5KLcZh2x6YSQR/ZOfLmu55Sb4I3sEETdVTxFJZw4AXqhWoTYI5GyCT1IHsDsWVyPQrPPBkyspB6fmbV0xTngrQP11enTzk2jg1DmqDv9T36faJnGYe4X2TNCM7CkvVCennw6fafkIJTsHESvX/VrqpW5Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OpjFMsHL; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-8cb3dfb3461so608863085a.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 12:30:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772569837; x=1773174637; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oNC2r/k4VYyNvAPrupzATpkdJnOwaq0ecIMgKhToJ2I=;
        b=OpjFMsHLFvebYM8bZtVYwLuGVIIpFaRaWPKLnHYVzNiV+PzPIeiiBDIpd3y+zy55z0
         5KVLKbwaS508/Ac0LfBGUifjMop89oIFLQZQC6DN21b/MNk2rNecqynf30HMpFOtdnmw
         sOsWVdEajojs4DHyDv/+1emJWeqPL2VCExAhWw+GwxnvEfuh7hOEWQ60EtfgPA8JpSYj
         JhN+XF3IViQpDaqLdy/pPTgAbrK14ZRyrgIzsMn5bRegySyaMmlplAoa5HXLOY3BlwCC
         9Zs2HgCYzLZ2Wc8+x3XyhmmKrrCtM3PEF0K/Ho/vxMJBCoczxRyKr56U2yDTBHUU4UOE
         1KVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772569837; x=1773174637;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oNC2r/k4VYyNvAPrupzATpkdJnOwaq0ecIMgKhToJ2I=;
        b=VY1mBtrSUX5I4Sr+szzoYKPhdq22s+WMWH7aPleU3W1DCoNovE0Nut9wOrXEm8hOcn
         wLayrWZoV0fgJlyuOheM2QFqs2wzDWPNyHkpxZhu4UDqoVne++hDQzYIeqzlg0Sr2JDv
         kIoAZCc55gcC+ncc/jCLNVSrQeJNLNCX5w/ZKoGp2aP3HVCJBjm57zny0n9roGi3NJ2o
         xvFF3iNZh2Fo+SrFgVmR4TimuMJUyEegvzKfDql5YguxPwLatmHgBIzsfgAL40DMTuW4
         IvQnLeppIAjCeG0C/5HPqCsXbDjlI8g8okn/7q88EePJzFG86P5wX1h4WXB+FeWotjVO
         1Pqg==
X-Gm-Message-State: AOJu0Yw0cj16fKleWnHkj/5cG7TfuQ7lJps6q1qo4bea4TtizVrLdtVu
	43uOcGHdjx9BIu8WM8Wf0nsBBTxUQ6pE1o/Fz1UN6gKW/rqVCI1cbS1K
X-Gm-Gg: ATEYQzy5Pif37VwuBJetZN0wxxwCZPY1VRU2MXPcAF7mid5SAqgnx5HmPQo0RxVBa4F
	1MM8ubRVob9E2DkmzuCXBMDjUV+FwPlryFN/KxR11CdlS2zMsDLuxODPDe/bLd5YdoeI+RwLYU7
	znZb4moHWKXK7C727E+/LUev35GV2Zl9ziJKNL5vimRaHlWLDjMIaZGxT81nY6kIROrRIFXVtiq
	cZZjvydHOVsvPg45qhAM3GtQU84r+Wo0ONzOi91flnCt38j0lAl5d+XV9HDocoXXaL2ryUjAJYU
	9TIPIiYYnuTvej5UDTsVyIoyGmaxkhKsc82APU1SoPTKcrTKrpp0t4MWOY9jVi2nCeYEAvDSU4b
	BHZ1ijbSHOnE3dH0ri6jONS6soJTiwwH0URapumMrHTF5T87PZEuvwHW/a7MkFtpt7BWMbMR23/
	xez/NqnCtjfZL7cPapwKTk0pHk+l16Ull1iQBzQ0GO02saemqVUjzJ9TFzEMRmnlCxZAnfF2ens
	wxTWX+JMks=
X-Received: by 2002:a05:620a:1903:b0:8bb:a037:fd94 with SMTP id af79cd13be357-8cbc8df6fc0mr2124060285a.38.1772569837021;
        Tue, 03 Mar 2026 12:30:37 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cbbf564c27sm1465032085a.0.2026.03.03.12.30.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 12:30:36 -0800 (PST)
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
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v9 6/8] dt-bindings: omap: Add Samsung Galaxy Tab 2 7.0 and 10.1
Date: Tue,  3 Mar 2026 15:30:15 -0500
Message-ID: <20260303203017.511-7-bavishimithil@gmail.com>
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
X-Rspamd-Queue-Id: B4A831F6DB2
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
	TAGGED_FROM(0.00)[bounces-270755-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Action: no action

Add samsung-espresso7 codename for the 7 inch variant
Add samsung-espresso10 codename for the 10 inch variant

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/ti/omap.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/omap.yaml b/Documentation/devicetree/bindings/arm/ti/omap.yaml
index 14f1b9d8f..f694dcbf2 100644
--- a/Documentation/devicetree/bindings/arm/ti/omap.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/omap.yaml
@@ -144,6 +144,8 @@ properties:
               - motorola,droid-bionic   # Motorola Droid Bionic XT875
               - motorola,xyboard-mz609
               - motorola,xyboard-mz617
+              - samsung,espresso7
+              - samsung,espresso10
               - ti,omap4-panda
               - ti,omap4-sdp
           - const: ti,omap4430
-- 
2.43.0


