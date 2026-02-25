Return-Path: <devicetree+bounces-268120-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIr4NueMnmmPWAQAu9opvQ
	(envelope-from <devicetree+bounces-268120-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 06:47:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F602192299
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 06:47:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 70962309526F
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 05:46:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF3792DECC2;
	Wed, 25 Feb 2026 05:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UvGl67J1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94EBA2C08A8
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 05:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771998369; cv=none; b=LUloVPDwSHrxjiYNaUbskCGsp9OFDZWp59wzkWtL67eUKj7IPH5XXRz6HNz7KLDgr8AfERMCn9t0kVXx4K3FucrzrHoiEdikgRWEf5xTTaLD3zzpADWWZLH9Zhprdttv5H+oBqx/dUqh+C6r2nVE9h1IwF/1vM5ajpXpAr+S6Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771998369; c=relaxed/simple;
	bh=f4MAmLndA5dXtp/7Em+VCHsCsHtOI15mvjAHUcTywsQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XLN5XLN43coIzKlY59drbtx9OhU+5tEF8SnuPoD3G7a9iM3pbEXbSTx3obV1Ln1ebnanmY2Pn5U51pBg6fUQxn9S86TwWB+3bCEJpNy3LMZGZb6XDs+6BQPvATW4gY/o29s6ucLJdkzsCgbue3OlGBRysgBWmqYzyXAUxroecnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UvGl67J1; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-c636487ccaeso2363279a12.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 21:46:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771998367; x=1772603167; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EKkr4eeTfN7wADREvjdWZpjwmy9o6+cZb2Ap/abwYj4=;
        b=UvGl67J1da/2qf3DJdQ7lBwWLMe3KLKoHsCu/XK81jWGhKgrWA6tbJ/hWxDbY1DwF9
         LyuB2drehq33RjxREQc3ErmBSlchdHxhxkmBVf0CboWa6QfmJKjA4zYBNv9NvImxjTHA
         yFgZCE1oWV7w+J3RKDo5+mxe2DVG1QdC//1UcG6+e/BmqEgKzuHE5iM+v/dUnAz9zcPj
         Ar0taIS+7fo7moZVyhM0SvpdWqX3ylLDv2gUjDJjxG986l84PBX+5x/pduCt8dXnxjV7
         yL12k58JB0aQHQSkR21wdUda/TmJLdaSc74nz66+ZOYBvlPjO0MofgYKRt4poq+Y/c02
         prBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771998367; x=1772603167;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EKkr4eeTfN7wADREvjdWZpjwmy9o6+cZb2Ap/abwYj4=;
        b=HuXh7k86iRVXPqgGvjyCXMv93gNxnBq3YBGgS2LTCsok2iz1W1jzicQCpZmKk0K2qC
         M3Kw7leXDa2Fo/JZq5v+tPJa7nB+XUCKvK6uBUk06nChv0/52xl/N5PWgarcDHeupBXd
         VEiWSyboFC8u9BW2t/WO73PfqkOQgusdg5z4wrc5Kez/dUBhkrFPNN1PXz2Ef515uutt
         9t+afRru8cnJeQGkz85fH+mmW2YNDmzbjc2UG/DFqu/GCR7U5inEe1agnqsHWqv7kmSG
         OXDsPIEgEg63OdKRiQ1DjTRup3vvjXFleoWYt36lrJ9PnIf96yvGSDIWwamolhdILALW
         Z7ZA==
X-Forwarded-Encrypted: i=1; AJvYcCX60qzMsfya6F9k4SPOeGplWEm8WekuCOoAjjSrmplrzmEvd5DgxD/aeGuqJRV+AZHFXJIoDp5N6M4G@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/AJIYR1Vbq6g6FcLk1dwZnh7Be/V5Npntk6gOXueRrkYvGjHY
	ulxFWK3hy9dXfZggCLHkFAeYYeTBIbQUq5Oj3gJ3N/cSWAai8kHhaAcr
X-Gm-Gg: ATEYQzyrJIUO9o6wc5VclC32dQ+Uz37z+LsUqKT6/xXNnOiGcR0Gf6i1XRk8NZHi5Ws
	NoF7kw6hJCzDqO6egnIGrOOYQy7ZlA9XpQB/wRkBSZqbmjr4TSay5FDVTzOcrlZqiTtjvGzovJn
	8jlYJVLswp+gXxkEU9HX+aXBOLYGm6If/Jo56I9J9CXSM+2d9DOdddicwy7k13aMgTEUOZzDWqr
	l+sHje+jo2xjTnQmKXjb/+NtUtCvNJBH4z3wFwIO5LpRT1Z3JQ8brmY0K9lNTw3AojTn4c4nxr0
	YGmiOD/ExKTSma/kymh8AA7TLzKc+kXqChpDmfjx9o0eUX4CoSBFu95MwNoy0z98XNpTZOF959s
	tmN/OJkfkx8BC78OlHXJrOblD1G53h6e/nRfR/tq/1ZEG7o2RG4iyavLRub+5S9H5setVHXqNn4
	Jh5am0Ew==
X-Received: by 2002:a17:903:1210:b0:2aa:f9d7:68a8 with SMTP id d9443c01a7336-2ad74511d60mr126836005ad.28.1771998366891;
        Tue, 24 Feb 2026 21:46:06 -0800 (PST)
Received: from nuvole.lan ([2408:824c:a17:8230::c83])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7500e318sm119665295ad.43.2026.02.24.21.45.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 21:46:06 -0800 (PST)
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
Subject: [PATCH 2/5] dt-bindings: display/msm: dsi-controller-main: Add SC8280XP
Date: Wed, 25 Feb 2026 13:45:22 +0800
Message-ID: <20260225054525.6803-3-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260225054525.6803-1-mitltlatltl@gmail.com>
References: <20260225054525.6803-1-mitltlatltl@gmail.com>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268120-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,linux.intel.com,suse.de,ffwll.ch,quicinc.com,marek.ca];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 7F602192299
X-Rspamd-Action: no action

Document DSI controller on SC8280XP Platform.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index eb6d38dab..e6aab0e6f 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -29,6 +29,7 @@ properties:
               - qcom,sc7180-dsi-ctrl
               - qcom,sc7280-dsi-ctrl
               - qcom,sc8180x-dsi-ctrl
+              - qcom,sc8280xp-dsi-ctrl
               - qcom,sdm660-dsi-ctrl
               - qcom,sdm670-dsi-ctrl
               - qcom,sdm845-dsi-ctrl
@@ -340,6 +341,7 @@ allOf:
               - qcom,sc7180-dsi-ctrl
               - qcom,sc7280-dsi-ctrl
               - qcom,sc8180x-dsi-ctrl
+              - qcom,sc8280xp-dsi-ctrl
               - qcom,sdm845-dsi-ctrl
               - qcom,sm6115-dsi-ctrl
               - qcom,sm6125-dsi-ctrl
-- 
2.53.0


