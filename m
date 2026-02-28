Return-Path: <devicetree+bounces-269581-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMImIEP5omn18QQAu9opvQ
	(envelope-from <devicetree+bounces-269581-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:18:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BA01C37E1
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:18:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 11EA0305CE29
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 632C33939AA;
	Sat, 28 Feb 2026 14:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X7QHUKd3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E553371048
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 14:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772288321; cv=none; b=MR/fatLuh2WwyblXINCHXyAlD21HB1v+V8fCWdSmcKovxrfMbm099ZCTIdZl9aYi4IwpD4qpI/RM0Cygo9DuCVhuNalpmcR83QkopIn8ckbj3GUorZx0+cezh4GzMTz/q073ZWP6dQpNz75wplHleVgCJbWWsacTBxlyI9XFOHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772288321; c=relaxed/simple;
	bh=1x+yEo+WJPeaUg2iqLovDoJtSFY7lrzzMEON//GNxJE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iIG2Q3i1etlxprMo9sMDCzG/MyTh/+ZUMwQV8cSu2XNljBcpN7YJGdhkzyleUSwYRh98o99KUSryP7GgKAEFsjuzFd7E/639ZMiwNgvo2Z2TCzbvOo6xY/jWJJU8/mzJB+JtxW0tkXjwVfRs2xhM75jZ34aHcyB/u1q8qyDq/b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X7QHUKd3; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2ae239bd19eso10445055ad.3
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 06:18:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772288320; x=1772893120; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q9q4+vzHqt/9/I9Wl5SgvfIE9/kAMERYBCx5YTj2gss=;
        b=X7QHUKd3WKjtMRJoUclEoxH+FIXRsfpDP1xbXLgR/96/S6QmDlUHpP8xWvhnYiniu6
         gG4FiZgntSkaCgwIRDqZJeLTVrJNgWMWTdRJ6F+4CLcnWQufYBx/cLPd1idgz+BN//I/
         uLr2y+mdCq/cmRYVerxOov9NhmM5ScKD+yp+fmhjgypLhnUj3WEdvi+CL1oYfCS7eL6+
         +BCUs//FDT2VXBzL8l9zrClLvoBCn0ri+eWZo7iVEhJRhDmHjZ/ENj7wavi0EUq/wwLJ
         QQ8ceJWWfu4Fu9TZytAtZcQATD3AJA/cUlgXWeDykuv0TvlfATUmw8NtFqe8vQdYut9j
         +Fdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772288320; x=1772893120;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=q9q4+vzHqt/9/I9Wl5SgvfIE9/kAMERYBCx5YTj2gss=;
        b=TM2ShSUzV1B9ZvR01l8Fxke6bV8YpY+3kMVPiB6VXBy+TNF1kGk1qJa8bOQ7ZpuuNM
         4NUcUQxJE8qVL7D3pEe+SH/Mr1c6vDoPlz8JLXGV+9kV5o5YCcv6k0P8sOtvUQz8qIqn
         RgzeQPFzLKhbnwemGlKXW1L+iRu20SG6SmFDiNI2We6ei0pTL+4NoS0BTTMGyUbBh9U4
         ihznSCUQhNNLi0povZt3vGK/KvQ6y9SyJrZe30tmTtDqxhS+9Td197k7z6fekC8k9oT2
         aa97RNO2mojMqPRjiAWmoCMlHGReCnudhziC25d5zfNonWr+X7BMVldipHccV0XiZENb
         Irmg==
X-Forwarded-Encrypted: i=1; AJvYcCVSXei64HWHfR+2+JmPyJOlI3jppPS0+cqkgV9F/63nfyNuTVJySp6ycqOWzy2H3/fYCBkt5uneGeGV@vger.kernel.org
X-Gm-Message-State: AOJu0YyYhez6dSWj9wyDuJmh+z/Lwt0zma2XoVOwP+u+udU1SoNfd+/a
	+y395mXpzxu9y61fHmMHxg7FdViGs/02JwhKmKwsiXQOh7UUO4YAu3K4
X-Gm-Gg: ATEYQzzSoYIb9YUVeMZitnK8zaP5BdLJKVOwKzrvvFO0FBiSSF5lGW6mZqgLtwAKFO7
	/y6aaJvVS3EhyCjxlYljkumiBifeiN1u12/HcgWSQWf9UB1ftNDzddz97mXXl2Ee3O/kuLKdDBz
	kMuEBedERBAVVzIJwGzmjytEJ6YITz7u9k4kqA+6pz+gwp2XZZqQu0txb7WOjf50q8Wq8UHFXZY
	WReBNUkOk5uWpC0eeN+le3rLq9IduLsYOlLrT60aeZmN/Kp+IdKDVanvUqGTzwYt2ZSVM1civbw
	SLEIoqVPeytHp5vL/btyjzV3OSEA6ZsCadwjBczSvt3/eG3SsjSGZ1+pLrrh3Xj6fJWx0qhIakA
	WrcdFljWtvoE96mvtbEPWBsKSy64v3I5EVPq6YI0SPGTOdQo3mS4hkezPHS6JNPAZi1+fQcUiTZ
	5az2B2tq+XquJ79rQcO6mH
X-Received: by 2002:a17:902:ce11:b0:2ad:c337:5a32 with SMTP id d9443c01a7336-2ae2e4b0d31mr59227405ad.28.1772288319526;
        Sat, 28 Feb 2026 06:18:39 -0800 (PST)
Received: from nuvole ([2408:844d:b08:3702:16a4:72fd:8170:4ed3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae3d1b2c5esm18697235ad.6.2026.02.28.06.18.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 06:18:39 -0800 (PST)
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
Subject: [PATCH v3 2/4] dt-bindings: display/msm: dsi-controller-main: Add SC8280XP
Date: Sat, 28 Feb 2026 22:17:13 +0800
Message-ID: <20260228141715.35307-3-mitltlatltl@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-269581-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 14BA01C37E1
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


