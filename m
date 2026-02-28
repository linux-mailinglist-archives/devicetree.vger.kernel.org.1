Return-Path: <devicetree+bounces-269579-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MDrXBCv5omn18QQAu9opvQ
	(envelope-from <devicetree+bounces-269579-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:18:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8F31C37A6
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 15:18:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1BC793044B4B
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:18:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8A52306482;
	Sat, 28 Feb 2026 14:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Eg5lJ0ao"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6CAE3033C3
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 14:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772288295; cv=none; b=gYPS9TRlzo4UHcdBVNqi95UC/euU+06hTSLLY6w1qFNU4nfHOCwgVGJ40JQRxMInlHDXyjpsZHgtPs3iNVEeE8HVUb/iLbDvR0j0Pta/Wv6Pt3BUk97dzXN8s0jgo5VLJQdsW0l5thl+w6JPDQgOGDiVDLaDDhpDvYeEzzgvcCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772288295; c=relaxed/simple;
	bh=vT1sjH4NX2oRMhLpZYQIpzkbaxRT5wzSfNuNo0OdZyU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QRyJIs4hfLetCARqvtLXxtAPPkhllB2blrzgzbu0AYPe81s8uvswz02x8iSw3jBtMGDwAimZwvzahxXoDnYDH1gkAZqcgsvM6GFKjjCk/AjgEd+T9X7I4WhxHMDVpjPE1MGkg4/enAfpjHa60Bpa+iK2fAk1KBHeEOlN3OPJNJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Eg5lJ0ao; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2ab39b111b9so15037895ad.1
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 06:18:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772288294; x=1772893094; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VGK+4J+9vPRIz1dRy0JtbK7lizI0aiu8a5dzBxpbALA=;
        b=Eg5lJ0aov1oOKCFVctyc5K0zh7K+BC3HWcBYMXEvbuoLmdlC60EAlGI6BSbmLwKLfn
         SPfR5vapzNj0+hUejNbqRmDMGnF/odZdW7eLbY9VKheUx8fO//i01PvrZAFo9bhalY1N
         r5d20n4zjaHwK7DtAgQy7xWx0Fef40tKKYIPIb5GX3paIeSnA7GycIMHJNzDG1QqrCYm
         ftgz6DWHAanWciqtOfImtOAsWO+9XComJXu4kjfIe1mvPAjoRFg0os/c9MZqa5xjbyaa
         1IUP+JX6pC1ycUmlwJonzJsPmzbo6lqMJXypl5KJReRSKbcot1U14mdMDPVl3wVxaflj
         7Kgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772288294; x=1772893094;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VGK+4J+9vPRIz1dRy0JtbK7lizI0aiu8a5dzBxpbALA=;
        b=ADbbrTJ8QbXYbtqsWV6lCpcpPDBS2svsoJQan8TqgmzbPwhUrtTCFog1VZkbWcc8ue
         Xn4lpChAl3iX5i+EIvKTdwybpVlXsco3ucoTL3dmwc7DRHnCPBLYvvsbR0OJwD74Rf7K
         pIWMtNlSkIwKJ0qzdTymBIfna2DlykveDgnTGN6bUK2/BqXGJkYT4OmUqYQmD8Tn37qL
         K4QrzJ+dIUDPQ8iHK+BW80oV+vtDsu2ZWfJ7MIOmdLeHs02rrle2XPFZSwGXIB6dYdWh
         DshulRK/B9cLz9q53jjUfPKWjHoupoTp7gTVyV9km0qChQoDiqhL7DiIwceP2FwOaPgJ
         OFNg==
X-Forwarded-Encrypted: i=1; AJvYcCUIuPj/cbsvctywPzmoUX0yLucf5oohYSMrqROHuZutB9sZxFJj0lQMY01rPcZZl+a3H4S4zAQ+uli+@vger.kernel.org
X-Gm-Message-State: AOJu0Yyg/JC6yshvxSccYn6zkz2Gn9doGW0lAU/6ENKsJh5HHh9fogoT
	rSYHRR/modpCV9iBhjzuOwvuPmYOiknfTzyAUVnjAj6XYO8ztEfUzKrd
X-Gm-Gg: ATEYQzx7imd64Ut4kmMAgvMdUWPJBY2dBXsVU7o+g2PH7OF9ZZ2O5W/kE1w+ENrxgAm
	1Ajb3o9W4QmuJ8o/Y4nqa//1hVDlEzytgc732+MWjcSz019yQ+ZymjiVRlKPhq82bocWBwoIT7w
	D2WoXDBZ3rxDXHR3/H6A6RK8h+509QHHJGMeza1HyjY5NoMEgfTFmxG1j9ARF6MrbsaXoBiaLIe
	AZx+Han/b66wLGyMHHy3Kx3EHQNzSxgf28AvWQ2eoAHVpuI5TJBbgM6M9+2ITFlKRYtdn/HA0f+
	agWS5f/xdz/vO81+YtUAMObPO9+PQ3jq3EXoPEb7F0dRXNYkE12vMC6T1qZBgckpylu1o2d5bPH
	ITYPs5MKWSjY1Q5fXV6MIxVW6r3Hsm/JT5btDrKLBa7NVxgr6C2sZlPqVHqsbu93tIKvT5bDbTz
	bZRYBVwTltLWdcwXVJ6V+H
X-Received: by 2002:a17:903:3bad:b0:2ad:9b86:ddc2 with SMTP id d9443c01a7336-2ae2e401fc6mr54787835ad.22.1772288294134;
        Sat, 28 Feb 2026 06:18:14 -0800 (PST)
Received: from nuvole ([2408:844d:b08:3702:16a4:72fd:8170:4ed3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae3d1b2c5esm18697235ad.6.2026.02.28.06.18.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 06:18:13 -0800 (PST)
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
Subject: [PATCH v3 0/4] Add DSI display support for SC8280XP
Date: Sat, 28 Feb 2026 22:17:11 +0800
Message-ID: <20260228141715.35307-1-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.53.0
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
	TAGGED_FROM(0.00)[bounces-269579-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 6F8F31C37A6
X-Rspamd-Action: no action

Add DSI display support for SC8280XP.
---
Changes in v3:
- add the missing refgen supply to DSI (Dmitry)
- Link to v2: https://lore.kernel.org/linux-arm-msm/20260228101907.18043-1-mitltlatltl@gmail.com/

Changes in v2:
- fallback to SA8775P compatible (Krzysztof, Konrad, Dmitry)
- fix DT styles[a newline between property and subnode, property order] (Konrad)
- use one dsi_opp_table and all dsi controllers reference it (Konrad)
- resize dsi_pll region to 0x280 (Konrad)
- update commit message
- Link to v1: https://lore.kernel.org/linux-arm-msm/20260225054525.6803-1-mitltlatltl@gmail.com

Pengyu Luo (4):
  dt-bindings: display: msm-dsi-phy-7nm: Add SC8280XP
  dt-bindings: display/msm: dsi-controller-main: Add SC8280XP
  dt-bindings: display: msm: Document DSI controller and DSI PHY on
    SC8280XP
  arm64: dts: qcom: sc8280xp: Add dsi nodes on SC8280XP

 .../display/msm/dsi-controller-main.yaml      |   1 +
 .../bindings/display/msm/dsi-phy-7nm.yaml     |   1 +
 .../display/msm/qcom,sc8280xp-mdss.yaml       |  30 ++
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi        | 404 +++++++++++++++++-
 4 files changed, 428 insertions(+), 8 deletions(-)

-- 
2.53.0


