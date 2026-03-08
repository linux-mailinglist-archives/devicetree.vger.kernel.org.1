Return-Path: <devicetree+bounces-272545-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKQCG+gbrWlxyQEAu9opvQ
	(envelope-from <devicetree+bounces-272545-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 07:49:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B886E22EC01
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 07:49:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5F9CF3014C0F
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 06:49:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE412224B15;
	Sun,  8 Mar 2026 06:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i5epL4Z8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1191E7C23
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 06:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772952549; cv=none; b=njGDVge+85qEzZfM/OClCYLMIVmUHAovk9DHp01IgaMU0q8NQHKrtmKlcJwMzdAeLnUKoM7aFo+9UhStGM/ncamRukljC2aOdFm2ehSFpv1t7Ti1YI+yUMp1DvA0FnVE3rakAf1pbDS1IBbxlqZ70un4OKxfIOpA6STkCRRL44I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772952549; c=relaxed/simple;
	bh=SVaTT9VVB/RsaHe6KVeVDmHl9hoZiBubbZwO1KwYBnE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AQo0/LhXcLPrU4SEwcBLZzVf52EDprYM8nAt/OelIPqRJckN43h8+D7S/4Jra5kn0hJO3bPO8Wzt2J7dbEHs0KpQW41ayfjnuvl4dAXkgY2RdDtPeISJNpOxBmVS5nB7+rFofeaWy8XjW8riXNt+Odm4VjP4+gVuU9t53UP+4PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i5epL4Z8; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2ae41544dcfso84563045ad.1
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 22:49:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772952548; x=1773557348; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aNIHEpkAqWiAErrHYpSRHcsVSQ/YY6yHFTO8cE3ikuA=;
        b=i5epL4Z8zKPzaU7/Us8G1uJAdGVTHGu1+ci1mTslhOUZmzoQFpCnxFwIqEjOlo1I+Q
         yLB8aPUg/mIK/uvOSlnU0kUC+dvAhg0asNiiv+tshGwMQ8V24Fp5iFKUbQFuxtMwdkLw
         PuyPeBzF4pMji8AlhUq6qtSAS/mjS/Gmj62DljaM65lTZOn54FM02FOTUVTB0zYig3p+
         LRTMnbY8VF8CJKiX+DLzO9ORBEPOi4VhRiaFlAMOYXdLGssyT4OkST0T4By4j2/86xIk
         o7d06xOuxbyX0uxTVjFYYpo9DEnLu/6vRv8RbMOHfL85T1P8TdvD47PaTXxBwi5wWYus
         mfXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772952548; x=1773557348;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aNIHEpkAqWiAErrHYpSRHcsVSQ/YY6yHFTO8cE3ikuA=;
        b=W2O1iqJe+ZVwVZtBcRKl09flF9xmqfb/4qKN2pqGo7iiwuN+ZKYQA4OguVz3ATLQc7
         rxIkFZJMiAtO0gIbyIBk+8xxopyc4mJOEGcCknuUQyh8JvxkezlWf50nHMCLCt3I6PhC
         C9InRWF2HVclUOo8vCVbI8o1nTm5Z/wNP5hCHnuFiqgstOrEZJyzLLeEbtUaoW/ejeJM
         NlYb1RPaZ6h5Jeukf71+K7LZadpGjmlJ/IKunvyZ4NNDHYVHBhlmQvIatN/spB3Q8HpI
         oMEmgXSvjzs2vUcCYbXaj7JIB3DcJ4ywIVa7/86ewVk8SIgy6QE46nm7WPPdy+X6TFfv
         wZqA==
X-Forwarded-Encrypted: i=1; AJvYcCU+Fh1MrEOti99CFB8Yls/6RcbDlanJPVy4IHConlHzFri/V/bLEFxh3AuEJh6lnU5EU89fM12DIZtu@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8XMBLR7AQCNmRZGGtBYU2y7KF4wSNa8T8yCdLSZ5y4kLDW1ig
	yqepmoNFvBP/naNwlY7zvRzUkfv8Jspuf7ZrO5y04gw9wlVtTsHUrmz1
X-Gm-Gg: ATEYQzwhq2sJXOChMRxQNDCED9Vk1Y8J8G4zr3BTx7n/IV6MsUSpGk8HcW3pPW4tr3J
	bZfbIHK/A+q2sL6Hx7bBV5laVR03qeA4Rhl2K/jkYZ+CK2HgsQASxGAwk16IPc2GUKvueNfEvLq
	yYHQQ0RqxfqJOAcpVtnqUWg+fuXwmX4w2dCpL0tB9Qxlgm3XuHmdoqaAjRnHP6GfjqfFCdFwNuF
	yMohCYKMKBkgrFBoXSwujZ7S7z1vD0NpM9YGRdXFfu5l0QufqmdV6Suu2JqmOqqoDAg6mg+Hi+B
	7nU53U3YuaPkHhi8goQdTMnPXX9QDf9ozawAUvlVc+iV1NlnCpm8x78BCGloR8sBN5tGnoCH6Mb
	KZeYvm0tyQUcJa92+WJIyJCAq3UlLpMdVT/GzodIqc9PHsM6g1BX6iYJeSilUtY2J4UGGt6lBnj
	U0hwfMqcevl3QeMyInVA==
X-Received: by 2002:a17:902:f70a:b0:2ae:8253:1a78 with SMTP id d9443c01a7336-2ae82531aeemr77776095ad.17.1772952548110;
        Sat, 07 Mar 2026 22:49:08 -0800 (PST)
Received: from nuvole ([109.166.36.159])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae840c9a0csm72503225ad.91.2026.03.07.22.48.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 22:49:07 -0800 (PST)
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
Subject: [PATCH v4 0/4] Add DSI display support for SC8280XP
Date: Sun,  8 Mar 2026 14:48:31 +0800
Message-ID: <20260308064835.479356-1-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: B886E22EC01
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-272545-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add DSI display support for SC8280XP.
---
Changes in v4:
- add missing comma in DT
- collect tags
- Link to v3: https://lore.kernel.org/linux-arm-msm/20260228141715.35307-1-mitltlatltl@gmail.com

Changes in v3:
- add the missing refgen supply to DSI (Dmitry)
- Link to v2: https://lore.kernel.org/linux-arm-msm/20260228101907.18043-1-mitltlatltl@gmail.com

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


