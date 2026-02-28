Return-Path: <devicetree+bounces-269518-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMIWEF/Bomls5QQAu9opvQ
	(envelope-from <devicetree+bounces-269518-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 11:20:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 992DA1C1F68
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 11:20:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 49E573030E9C
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 10:20:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9516A36923C;
	Sat, 28 Feb 2026 10:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eZfKwZAt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED9C41B378
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 10:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772274000; cv=none; b=lf+FRQ3RBrENrrY9xrL/Gbf3sGJjZDsk0uj61VVK3Sb7XdmjWU3iff8hbMvX6wwATRO60loJyVMyIM8TklXP1f8Oh+uHN8iNSoTvU6PRCK5B33zVlK0Rt9yrX2/IH38Gq0EYIWSor/SivXUHi2EX6fuSu/AjGZl66V5N9QVJJW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772274000; c=relaxed/simple;
	bh=AuJh8jGKKBIFa1R0JpyMLud10fw6HX79HrAVZtflHTE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BscLtgOLo06/EgEzs6Jts50ajcnYYNUK7L5my+f6iJOyTPWYDCJGmH0Mbi9FmDtPri4Udze+8b/y6xQgFFwfsSfHt9h575qebz1od8QpY9/vB8tX5UTErKQTsVqjuCYi+irfwfoNK0zn2JAeR1B1FVKJIsHULN9xUyFzOdlPnts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eZfKwZAt; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2ad4d639db3so13972105ad.0
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 02:19:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772273999; x=1772878799; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W65pIjxoHigfzhiWxc71VWPJjXP9A8eJwpMfks2udRU=;
        b=eZfKwZAtbGh3FJj2E3ZQLIuKKPP1NcTPJUtGXS4M/haBSGNNYmauL+oZmKjOf6FzOA
         OpD4MK95dKbqW2ry/ba6mVT7FFNA5UZCxPcozd167lm1VNBspp2XJVV+4fd5GdY5dnUt
         0mrds3XckHECJ9G4v4zeKJompjn8d05Qb5SqLDcKeGDUYVRrCUd3AOdCMuBV+Fz0CMXt
         k8ch9JLAFVhP03oVz+m6iX7fkg1KTF87khUY/RyhteHIYxqrBylXrvuYh6Oicou4uyM5
         73Xaa4ZYYKXZlr0ntSnP29TAr8zU5J/IU8p0e44GuC0t07/hVWwrprzBeOx2kEmUdOG6
         k+Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772273999; x=1772878799;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W65pIjxoHigfzhiWxc71VWPJjXP9A8eJwpMfks2udRU=;
        b=jDofsfa+SpCM4sQhZXFqS3UUoYscHxk4nfEXlliN0xa1H/4K1jwBAG4owcF7afvo0O
         pyukKxXg+oXCVLpO4qe+uuYcm4sNO4bTfEb5raHzNKb9l3IcSXafB7F3IJmhoZUrcWQO
         33XXCIPfnpKNOPJR5GCgLPma51vB75WV1vWvzLojtn+14TfTZ/E5QXOEZIb5bil6wT7O
         YgSrfz1HgcF7UwKzlCpv1LsEgmqwz6Ks+SUTslXuyfai/Y7IXDbfVuylBqk6I8Qd6GYz
         1J58dQYMCyQoHYYfT/+6BQ589jzuVhtXYrbAaaMlULGOsGAcCEkBnwKHchglgF6NmcVV
         opZw==
X-Forwarded-Encrypted: i=1; AJvYcCV7LeRhIjpKoS8bK88T0iR53Rxf/AAH6BfiE2iIr7tP2QWyCq8F1rhkQ9PLDPT3xWr7MK8hP91wRgSq@vger.kernel.org
X-Gm-Message-State: AOJu0YxZ5y6g6T2OxpODrGv6WGUTmOOnOtSW92UkmCXiWKywVRhZp8BW
	OysS/0m45H8THovG1anH7jcY+GoELNVexmpVUw61O/JI6HogBHT00oYY
X-Gm-Gg: ATEYQzxCGR4XZ8Zgu0UhEe1tkmkhF85YUoh6e7hSTJyi3H2/SP2FqE6hyHGgge08wHi
	uo2FheAeJVKzzsYhA4iCzOideUIR9d97NlYP0AdSa1ba7Cm96U9F3bZkXNgxz+tnqTCXRjHjYP7
	Lw/VrLuE3fZDOPaT6236vCDVLNdPnT4XCAOyOprQg97VeauSB7M9NTDrReFjTcdohqQ4CG2juTe
	/Kix5HLs/xq+WdGxS2trlI6U2vQWK05buXD3Wi/QwzDDNdVuEPJK/gCQwJ1Oa9t8raHV6w3ncin
	qzpwXIcy/LZMi2lxsQtxyrSB0yhhn26U77SBRS6q9hPdd8BmIJKEuTJmt0vE+mDJ8h38rGyYgIx
	3Oku2CvY9RBFS8KtIoqmiX9kvLaI2T0hChTbi6vSJNTmJin1iTIcSVwbghFQsHpCk7E8xjdyDxQ
	duhl7EKvK9N37b4Osy+Hg/Rg==
X-Received: by 2002:a17:903:2444:b0:2a2:f465:1271 with SMTP id d9443c01a7336-2ae2e4bd049mr57192275ad.44.1772273998754;
        Sat, 28 Feb 2026 02:19:58 -0800 (PST)
Received: from nuvole ([2408:844d:a00:16f4:279d:1459:9faf:9d87])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5c111asm82361855ad.21.2026.02.28.02.19.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 02:19:58 -0800 (PST)
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
Subject: [PATCH v2 1/4] dt-bindings: display: msm-dsi-phy-7nm: Add SC8280XP
Date: Sat, 28 Feb 2026 18:19:04 +0800
Message-ID: <20260228101907.18043-2-mitltlatltl@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-269518-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 992DA1C1F68
X-Rspamd-Action: no action

Since SC8280XP and SA8775P have the same values for the DSI PHY
REVISION_ID registers, then we fallback to SA8775P compatible.

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


