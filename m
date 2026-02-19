Return-Path: <devicetree+bounces-266725-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id lISzGYx7l2nmzAIAu9opvQ
	(envelope-from <devicetree+bounces-266725-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:07:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A95F3162992
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:07:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46CC830817E9
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 21:04:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07110324B1E;
	Thu, 19 Feb 2026 21:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Jb5sG45G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 914713254AA
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 21:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771535073; cv=none; b=uRnkvQ9VnIj/OOpHUTKizxKpMYTiD7KHDxWnHRwtp/3kaxWN0cmt73Qp7H5jQO6moMYlEqF5k4vyy5aqYgIsDVZOvGC9IFa/vNnye3R4EYV9YJbjb9zb6r2aSoHydpjNGsxRROubHv4+/C+WiMXya1bs1fV+8CoJDJa4gLV62yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771535073; c=relaxed/simple;
	bh=trpX+5UlMTYq/zyHhxfWvjqST/R/uh9a912a+PSUHVc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kwLs6Z/XiOEZvBQ7e7lfZkGF7I9xhwr+R8V1E6dQJbt6o8PU9l2fYyatyaRBlB9yUgfChkthYoFLz4qssCShdPy1XLim/CAWLlCUJ1CF+2CK8Wr9ARnVpyIVfIv2jS3rNoKxtSNmYfFebAN2Ke1FDoMyIl5AlzDA4V5h9SBCoB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Jb5sG45G; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-506bad34f51so10677251cf.2
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:04:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771535071; x=1772139871; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oNC2r/k4VYyNvAPrupzATpkdJnOwaq0ecIMgKhToJ2I=;
        b=Jb5sG45GvLhD9Iytl52WK9Hl4bkVsXOteJatuURFsrBstgk1Y98us21jE3gZ9B8wSy
         9CQHTePULBw5ShXVMHdP9I1Ncj57N439fLSFrPWdoQan42lFRBaMG/UWqCEuiS4tJgWb
         0Jn7hrUdeKydjUFYps1YdgmYfA9hU7GEGeRk4iGyJNBaKxZEidWvD/W/wzhhISmjw8n9
         hu6tVTjWHk9uVCQkti/tMMOED/UvAfAmKF4RiCGC+1vyqnk76yP+NgUx0sUoGaQUWOzX
         1rDtM5FCxFzvfJu6O0IrDm4nAACJMwCJxD/O2Qj6zNSRBIC2ak0HjHvdqgV1gzscarX0
         szYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771535071; x=1772139871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oNC2r/k4VYyNvAPrupzATpkdJnOwaq0ecIMgKhToJ2I=;
        b=uuoX9Sc70+Ck3K9Y+o9oHCsTEoF23VrazBfewhncUH3m6MCfmaS/ozLZXI21Hd/9kJ
         HFYCvmrx/WevsrjDxfOvOD2n8+EkFvCpt4SIx320l1XibVOrBoGDrq2Q9qLn7wNx61Nm
         EqtsV/ka0j+gx7ojqtB9PX2JxcXaWzb/fzQrsRAGvfC/OgjuS1Me6qcyp3RHCoyotHp5
         2JKliQHjO7I/dZhFcKcpYNXKHVCuIBLrhPgJAmRE8tE9GLVonIZVsPx2KlaOrXcPzvfG
         ubfHUt9ZdayXOBDe85QAlGziyHy48HGGhijY1SsLFAeoW3wHWBTinGa4rZMVWJSo7fAs
         Ox1A==
X-Gm-Message-State: AOJu0YymjWTvBT/Dk9Odre9K7QK4DtoLuG3TW4u0srR92ht9a1+L0Tr3
	CNnWLWWITfQgwQ8JgAVoastnHPG4qWVw6rnZXpdNLWGzQluUp5NMGx3C
X-Gm-Gg: AZuq6aISSb3J3qDuijeOGc7P5s30FdvBMueVN9KXFouQ8o46dotxspcIpS/hSgg6yI2
	V2htQIjJjrJ2HmewctZzoOTRBdkatwwLWZModPhrSVQjckok1ee3EED8egwxxroDUBGfQBiMuZi
	Oj1DT2nNJeMHUu9pF2Seub4amrfo288fV2TFBYnQ+h8qD22jtolBLdgZJ+sEPEC1XCjd+6RMDEy
	xc2BoRH92TaHc+S9ZwZEVDrGsYqYwgf2Ra6pHr1+s0DHybJn5FtCCcBwBjMUj4XxqjFIVb0udjM
	TJ3WJ2TeyC7HvovW7k4Rh5uicS/cf6vDaGCVAtxLIZkJiBxUniMmboaRf3+USbNi/Ng87pL+nSz
	h8uk/AY6yrjLYlKF3sEA1ps6jFau4/Kr2dpBlyRCWgiRzNqFnsaiXaJBSFBbFUvkrpgp8CwCpFY
	VnZ9NdzI1G64z23QtMY9B7nTzzsse0/2g2bH0QQXLhIVK9+V7ju59omw6w2F9lSIEqF7d1TIa6S
	1GzObyIFBQ=
X-Received: by 2002:a05:622a:113:b0:506:bd04:4a6f with SMTP id d75a77b69052e-506f05ee3admr62280481cf.12.1771535071374;
        Thu, 19 Feb 2026 13:04:31 -0800 (PST)
Received: from mighty.stonybrook.edu (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-506b275d59fsm153971511cf.32.2026.02.19.13.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 13:04:31 -0800 (PST)
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
Subject: [PATCH v6 6/8] dt-bindings: omap: Add Samsung Galaxy Tab 2 7.0 and 10.1
Date: Thu, 19 Feb 2026 16:04:05 -0500
Message-ID: <20260219210408.5451-7-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260219210408.5451-1-bavishimithil@gmail.com>
References: <20260219210408.5451-1-bavishimithil@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
	TAGGED_FROM(0.00)[bounces-266725-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A95F3162992
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


