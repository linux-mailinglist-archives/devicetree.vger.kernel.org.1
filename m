Return-Path: <devicetree+bounces-269580-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPRCJTf5omn18QQAu9opvQ
	(envelope-from <devicetree+bounces-269580-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:18:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CE11C37CA
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:18:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CAADA305E39B
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 958AA3033F8;
	Sat, 28 Feb 2026 14:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nwe/vGj+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 907E72FE060
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 14:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772288309; cv=none; b=KozKU10WqFz47Bp0/5jFn9YJeQ+T9FRg6Oc6PoOlHtMa3gHtImqJmgX+jiyDIvsZCS131VkL8qUZxYngvoiF7pUoaDJRHiNC0zmMWYm6hFKbUSJicvGtNsdYxOVCqx6Ffy2nHotYo7xXWser+sRPiHBENuN3+O0chIn+oLCgIi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772288309; c=relaxed/simple;
	bh=RWQyBn1FSHsoa5cyD1Wi2Kj5838ft5vCv8mMkb3RhaI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WtR/agf+NODzXW27lHl/HcyhSRb7PZzEThM5yI2r489jIpEiMRbpGIdvJW347NY3pxw11t3J04rQ4EbpCxEt8cseNjbUePq7SDiIasdDLBSSpSneNGZwEewEM8Z39A7n7dcZkpL6cOHjqhuzL9HiHCPQlzqGrtqyf53AXxDRp4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nwe/vGj+; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2ade574f05eso20941395ad.3
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 06:18:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772288307; x=1772893107; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IRK4ytllLFpElYCVfnglLAksecVZvWpzoSUosFjJO34=;
        b=Nwe/vGj+HsQTZRT6lTQVGxIpK8h0j1aCXrfWVWzYf6wecGWgJLLPuaGsVW3aQsyVgo
         geybBje1gUlxjPOHUISp0DZ4xQqrBXdPik633SxRs2gdwXgqQ72c3WRluzBzkw+3GYAi
         T9znMvDBHB0CEw5mpHmtQorcQ1GZw882/QWLQBrZCDmxaaUorBGpQDZb+A1AcgfW4KnR
         Wd9GdncXfBdCRBgFUwfc/utRHVkA6Ww4sZmn3vjsHVYyHoLFM3QWv9xEcXfsqve2rRvc
         /hfw4ECSkEcJGpX91vwZfsPm/XoSQ6Do6Xvl2fh5oIuS/Zhe71SCHUSe6Tip21AyWJij
         eg7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772288307; x=1772893107;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IRK4ytllLFpElYCVfnglLAksecVZvWpzoSUosFjJO34=;
        b=nmtoLjYe50N2+fvU62ZDFz+VgfaILQIAEbyYczNV+ZNyueb5Hbq1ngPCJeFXMsyFYK
         R2ePpYpsnKg7lFlVCSCVtKLhNK+Kd6FVkTFoczB6X85MicTQf006c0i1YFHPBLDE/98u
         TTBkgRtP5pONwPE7tTRxRNH9f+m2nVP71Dk3wo4QrhO5nRDlFeqplrMR+4jwH+MX/+X+
         ht3KmmrzslMix27ulkgAEJ8ZpmNDWpokCh5SKEkdEwqwdgUY48+6tquMwGivIiQAq5xC
         WdGjM74dABOZ5XYux7CHbvtg7G2OlEezjL4La5fxAAqpgCv+KIfPCnCeDHjGcT4/j1Qr
         jFsg==
X-Forwarded-Encrypted: i=1; AJvYcCVghlmwxxP5mUaCUkdLQLVlrwKEP73TH/aVmIjAHinJ3yRzxSKSCBRDlZ/HHTE5Hs32LGcnmTGuxufX@vger.kernel.org
X-Gm-Message-State: AOJu0YwU0P8ULJEeIHt/wnYTZIM8Wt5GrHeTiDpZOSRcS0XmFZpHHqOs
	2LJ7gUGL5yzIZS1Lxh5MAG6g0dVQtCcrtZ6A9rHhDKfETh7o6asThFWU
X-Gm-Gg: ATEYQzyWm3bZnuqLsXxrFmWKaYSURobAOd3RfaP6Qkw4ZAlIo4XfXFFSzbIQEB43OYJ
	1p9xV/sTkfpMbyWgGpBMH00D5P08R94S4eH3hGQncnQffWdtEa3+cTTAZhgSxd5aEwlGMOq0IOs
	FMTFwq+VoESsS5U11Ha0cwX8xEzCYDCV7qir4hcXmk489TB9kVT7XefWykeQgsj+dvO/jWU9GCC
	SJ26GPepN9VKM95ybMo2OET89p+sUTpeWI5urw9TbFdpe7fdNSj2lL76PeajAli/A3Dn9P3k39F
	Jx+C1wg9dcAsvou/ZmfMJOCfbkd8ZQSG8PNDd8U3dnl4Hqy3pq2m/zpJJATdMJTMOCY3QnavuWf
	KxCobc1pstkgIYYxwD1IfNKZlIYif4UYZEYsOIS3MTKixEgz/g/NMUzWnRN8gnZihCRexjV6huG
	1PYf8clzq9J4ondPJFDKai
X-Received: by 2002:a17:902:f68d:b0:2ad:e535:36c5 with SMTP id d9443c01a7336-2ae2e4b55b9mr64065355ad.40.1772288306828;
        Sat, 28 Feb 2026 06:18:26 -0800 (PST)
Received: from nuvole ([2408:844d:b08:3702:16a4:72fd:8170:4ed3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae3d1b2c5esm18697235ad.6.2026.02.28.06.18.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 06:18:26 -0800 (PST)
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
Subject: [PATCH v3 1/4] dt-bindings: display: msm-dsi-phy-7nm: Add SC8280XP
Date: Sat, 28 Feb 2026 22:17:12 +0800
Message-ID: <20260228141715.35307-2-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260228141715.35307-1-mitltlatltl@gmail.com>
References: <20260228141715.35307-1-mitltlatltl@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-269580-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 19CE11C37CA
X-Rspamd-Action: no action

Since SC8280XP and SA8775P have the same values for the REVISION_ID
registers, then we fallback to SA8775P compatible.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
 Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
index 9a9a6c4ab..532f37182 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
@@ -32,6 +32,7 @@ properties:
       - items:
           - enum:
               - qcom,qcs8300-dsi-phy-5nm
+              - qcom,sc8280xp-dsi-phy-5nm
           - const: qcom,sa8775p-dsi-phy-5nm
 
   reg:
-- 
2.53.0


