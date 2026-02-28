Return-Path: <devicetree+bounces-269517-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBpsHUXBomls5QQAu9opvQ
	(envelope-from <devicetree+bounces-269517-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 11:19:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF421C1F20
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 11:19:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C34B3031831
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 10:19:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4936E41C2E3;
	Sat, 28 Feb 2026 10:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cxS+MmMI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2628136923C
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 10:19:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772273986; cv=none; b=iBar66a+8FrZ22HEeN7B20y665vGVEbvyMa4GfE//rSJH5DxU/n6mSsdxkEGvMqSqRZFCT2lI/pELC6RoueEBOFsfj4vJVelxG2gH070h3TBIqQOexpbPQGrG++yhqBBkt6nSWkIT89QmhY4yvkbU6Bp3hIq4ClBkCji64qnhho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772273986; c=relaxed/simple;
	bh=jqcQz9pi29KpxpJaeE8kTl5uMwNoTZtobvvStfZFf7M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uvEofb4dRrIjdDfI93cpPDd08SDIxoteeQX7l4rx8xvtAG/7Yk2WWuvnejKdvyTzjKLFfVZUtbpX5c5vOne45bOlmu5bRYRufNj/wBwUHL3a80f+IZW6vhV5DMUYrFaIyTLUN7i/Jrzi1SRTmW4yHBXrEJRtauMlVnl7uFajC4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cxS+MmMI; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2adbfab4501so13282165ad.2
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 02:19:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772273984; x=1772878784; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZRVqqul3/pfy5o1UTViOLOTR76RCMcD2+rnW+WmI/mM=;
        b=cxS+MmMIyBIBSepZmLjzB+EomzS9nr9zGGVbl+d4twilMG5UjEBra02Dd7Py6IhhwZ
         /kZPcariXs6y3pti8iV095T+edu8/X43WyoCc6oi4cu5LF+Fp8G4JutP63oISJu2ZOWI
         qZDfCgfoRWV5ICogRr/kPSSgHfnj0KqEyZrUnJzAlWJ4WaIFKTidtXtGCxcX1uRZIvG5
         XLMOjCKtD7Kt7JlIePUJw4LFMKNBSVrD+tqzsHNIUoCe3SGWvEzwjyXYoJ++IVQGyqSA
         rHa9s0TLgxGBjxmnZF64ZF1hs2eelHb+VnfeOJo4LVvtaaJYXKooxF2ZIs6LgeufsD4j
         GugA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772273984; x=1772878784;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZRVqqul3/pfy5o1UTViOLOTR76RCMcD2+rnW+WmI/mM=;
        b=JxqfK4dE62mAb8CflE/jeW2cU5ckU/IrhBNsMCldWYYu0JdoOPlugw432XrCvsMck+
         R0k+5eu5f5+ApJ/bdRBUBo0+HVfufKMqBTRNaWyp5cTiODTMio4hdmnTrekdcGXC6RVd
         MgCwo9RURz621ASuAmJ2qeuyeXyiCQ8m2CkBq/xBZKSyP5khQUbzeGaQ0Yyp4qukSxZV
         EV4TcHEHP/5tOMBkXWRi/GDpSU4h28EMlnL2ZpoXfTKJcAGxA1RtOa+jtWSM+NjYqDH/
         wJ+cfWMpHFTuWrdsmvxsAEZEFXVfvMQcoisIDulf+AsBXh3UsEW5IMpY1aSxap33Xwc1
         SuUw==
X-Forwarded-Encrypted: i=1; AJvYcCUqLuYk/PX1qOxisDEkr5mjW8y5xXIl5sBMRPAyDWkJHcqUxp8XMb0rBCVbBPN30nF3TKKSKYLkOc2X@vger.kernel.org
X-Gm-Message-State: AOJu0Yxkcg/eZwfKQjYCbBPrC2Qi/S47fGVgC0YiGIFLNdvxTMpGLEIc
	LsOfSZbw4iCOFA//8WxGmyKUf9J03isoAv253B0UWnx48ZNRnNvLsQgW
X-Gm-Gg: ATEYQzyoyVilJugm0ScoSbWF12Nni/EuxLZsKRwY54qITRAohanxvB7bCbcw5GmsC5A
	R8feVXoc4V/uepGs6NmD0KwD6qd0YUQi5+lk+UIvqdmPi7V24PdMGUr+VbJok+bKrNoK17AJkcz
	mpzuLkGe6xdfofcGiycuUaNCHasIDIn7bTQ1LzijTnss8r8/hJCBWR8H9am9uJc250CE+wSYPS6
	EUEYl75VhYAQSLEKefkK467LXydkbT+R08ykyby6mBz+eRa/CUh31Au84CdYLJJMAQhPsq5adjm
	K8tESmIBZUZKnZqO1gLSPmwPWLZLGlOmJRrMGt7tEQjpPc3zP5L6wwg3ATvkxZaFpe8TueQ7vs9
	d0kzwJYNvkXxm390CZi0faQWk8puVCIaceKHPopoO+nyLYjqpD6BxN/UQp81OAkd30IHaEnCRsl
	GIouMCoUWot190+Ul5SV4+sw==
X-Received: by 2002:a17:902:d483:b0:2ae:3e4a:3cb8 with SMTP id d9443c01a7336-2ae3e4a3f61mr13106665ad.53.1772273984400;
        Sat, 28 Feb 2026 02:19:44 -0800 (PST)
Received: from nuvole ([2408:844d:a00:16f4:279d:1459:9faf:9d87])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5c111asm82361855ad.21.2026.02.28.02.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 02:19:43 -0800 (PST)
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
Subject: [PATCH v2 0/4] Add DSI display support for SC8280XP
Date: Sat, 28 Feb 2026 18:19:03 +0800
Message-ID: <20260228101907.18043-1-mitltlatltl@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-269517-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CEF421C1F20
X-Rspamd-Action: no action

Add DSI display support for SC8280XP.
---
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
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi        | 396 +++++++++++++++++-
 4 files changed, 420 insertions(+), 8 deletions(-)

-- 
2.53.0


