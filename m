Return-Path: <devicetree+bounces-269519-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCRjFX7Bomls5QQAu9opvQ
	(envelope-from <devicetree+bounces-269519-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 11:20:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B51281C1FE2
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 11:20:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D5E24304022F
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 10:20:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36F5B41C2EA;
	Sat, 28 Feb 2026 10:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZcVqwmgI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0850A41C2E8
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 10:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772274014; cv=none; b=e9hU4Ptvtv4Vr5I8jxK8DG6VXUoTGLmmAT+EwY6ZYZ397Twbym2ugvG89UEmIytgJCwybQ99mIQOi8WRVCSkVFFHiH+lQDTMnr9R+YfsTY5onA30Nc+z87cf15ig0MgoOfAvldDwb08FYjUGOb/t5Ie1KUaRFpqRr4eVEI3syc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772274014; c=relaxed/simple;
	bh=1x+yEo+WJPeaUg2iqLovDoJtSFY7lrzzMEON//GNxJE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BqElch1eT2yVcfr6JlXBpHVWQ6ha9/D+7Gy9Ie0mGP7ozsqgibad+Vh8EwNlmPjMXMlFNXiD56rGClO3vIOvrk0JCUH/fVtMZJ/eB+hPMY4d5sCA0U3vh9ZKwOr56MeoinmXV3dFF9fsJYceLzUEJNwGZ9Cj0u4hR8pW1/vUsUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZcVqwmgI; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2aaecf9c325so19341865ad.1
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 02:20:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772274012; x=1772878812; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q9q4+vzHqt/9/I9Wl5SgvfIE9/kAMERYBCx5YTj2gss=;
        b=ZcVqwmgIxhZzWYXhsCjUulWFRUFc0tZ7KR/SORwoUSA/YITsO0cm+tU6GzmQjz3H9G
         K+zboPxdkUHrqemz+NUheB/PF0U2/rmulwthfQWoDHvvX4ZV8FEtiW10pJIWKuMzddYZ
         N6a7dsodLuNFBnBaw0NCNqdTSy4zWU+aYMh7mcDxPvs11MveBi++jCGE6MyDA5fEIPAW
         o9ViVVPa3llw/HS9wPyA66nnOC15v6+hOrYPwUVl5mda8z73TSvdQVRKIh0joBGSnXx8
         d4Jl4+2LGRDqZpROK1b1ngbzSR1jovFYeHPY02qmKXv3Z7YFqwomEdSqgwG5qeA9wjeN
         ZKTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772274012; x=1772878812;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=q9q4+vzHqt/9/I9Wl5SgvfIE9/kAMERYBCx5YTj2gss=;
        b=jhOgG5RUL6p5wozUBSLbOb4F11JUWRBR2Q/TiSeevGhI488bW898F5P6f5GOL5D8ud
         QMwGy2BCAzBlfRW91N8e3e2t8vmuh8WalK45HVWL/+43TKluk2zLdZbxsfkliR1wAfZC
         I1EB1Ika+js6LaBnZPMOfEGTbTKGXIPipwWoflfsyhNiqCSuZfcaWB6M92Lp5206ubG6
         bIEOKrWA2ve65gXVfXCj3Bg7hns5Q9eihq4TupBk8VlEXIvzOtyD+maXrosuRfv/flb6
         zA5+cWKE+XvRhtNA8YNbMeMHPBilX6Lv2avT5zwb4aF+QDxbyq5PYiWrfzKT2eo3Oi2y
         eleQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2V2fyymBFOUbppZhLD86HZmVRmhkw8UzzBHv4hIUTRgQPrKjRHcGY/fhiTTxTXR3BPy91S9botVvs@vger.kernel.org
X-Gm-Message-State: AOJu0YxtA65tEqQlpfFq9Y9SwPemfUlTylU7x9CrjhECXx4441CCrRM4
	7eTmAGJxQc1gPF5/HI/gQ7xPYfT6vlzb+sAuiOPFD47RpnkXZDpVwq/G
X-Gm-Gg: ATEYQzxRs0p8JLBB+QCch/n85wWkRtQdSNdzTBfEhARITpM2H+2bTGlYmsFSKYWzEwW
	/oxHndNb6yeNfLp3yvcRrvkVGI6Q9CTIcuyJKgMEUGA2hc9+vRqH5BA27h+4SyV5z/J+riwXm9T
	qxYDmcx4tSrFrPhr4AMR6Es9RMrb7yb/v7Cc/2qRvCZMPaCka+qfp9i6vHIK+uDc7I+uc26xuas
	Lult68z4yY4d7+rEIUorl2WgVK7AFsgryH+gE5xxESTNKkn92LebUJjDtulbLBEG6A9gk604uev
	UlrCpFEgcNCWNkxgk7ZsBP2FYgCkRd0PYwbJdmbd4plpfUgFtPMxWnFRkl7fUvdSyRVJzgbe3WI
	oCe8yZo2d8Y3UkzJfUC4PfhI3BEzolppvNn2/UzR8KsA0JLmssmiltAYcZCnMnnX+qxE5NcaKZl
	SCzQzf98pYSPXlXYEAOwrgFkZLjT1b43Do
X-Received: by 2002:a17:903:2f46:b0:2aa:d2f4:9c11 with SMTP id d9443c01a7336-2adf78db637mr98480975ad.5.1772274012379;
        Sat, 28 Feb 2026 02:20:12 -0800 (PST)
Received: from nuvole ([2408:844d:a00:16f4:279d:1459:9faf:9d87])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5c111asm82361855ad.21.2026.02.28.02.19.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 02:20:12 -0800 (PST)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krishna Manikandan <quic_mkrishn@quicinc.com>,
	Jonathan Marek <jonathan@marek.ca>
Cc: linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tianyu Gao <gty0622@gmail.com>,
	White Lewis <liu224806@gmail.com>,
	Pengyu Luo <mitltlatltl@gmail.com>
Subject: [PATCH v2 2/4] dt-bindings: display/msm: dsi-controller-main: Add SC8280XP
Date: Sat, 28 Feb 2026 18:19:05 +0800
Message-ID: <20260228101907.18043-3-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260228101907.18043-1-mitltlatltl@gmail.com>
References: <20260228101907.18043-1-mitltlatltl@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-269519-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,linux.intel.com,suse.de,ffwll.ch,quicinc.com,marek.ca];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B51281C1FE2
X-Rspamd-Action: no action

Since SC8280XP and SA8775P have the same DSI version(2.5.1), then we
fallback to SA8775P compatible.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index eb6d38dab..617dd110d 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -49,6 +49,7 @@ properties:
       - items:
           - enum:
               - qcom,qcs8300-dsi-ctrl
+              - qcom,sc8280xp-dsi-ctrl
           - const: qcom,sa8775p-dsi-ctrl
           - const: qcom,mdss-dsi-ctrl
       - enum:
-- 
2.53.0


