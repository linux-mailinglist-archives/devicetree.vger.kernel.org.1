Return-Path: <devicetree+bounces-243220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC81C957D9
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 02:17:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6572C4E24AE
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 01:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 489421E5B60;
	Mon,  1 Dec 2025 01:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="braBkDvA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFDC1CDFCA
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 01:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764551763; cv=none; b=LJp92Ne7u8PHyRwRel19F22Afr3oVC85xNPF0/Hnnb0YRRqzbI/DacayD6R1FKI7YsOOcppSz2hI60nHzOpOR9xd0WSdHMKc5pGSaaPTuLX8Bd1xQBaTgS1IxG1QkssCjW644hp6QJcHus02O97veq3mWxZ/DEUdNCFryOBPR9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764551763; c=relaxed/simple;
	bh=DQZX0aUN3deUMYMHSt3awIN0HT0UN+IAtGAYEYKj0VQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AONOXA7KSCLT4OsPShFiiREL9wIZn67583Bdtuh6Tyl/KBnh4t0YHSbTUD3Zhq/0jVugs1WPwW/Lamap696Vn7dy7s+cyAZp8U20T4tB2v2nDVrTiRvOIpo77yKiiKNnBWjc1Jt+UfUN/HGVCHqwgjlh+jEWLqspV7rysmtXrlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=braBkDvA; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso38395575e9.3
        for <devicetree@vger.kernel.org>; Sun, 30 Nov 2025 17:16:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764551759; x=1765156559; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/vBWJ3jPxPdxJcqHzl2HAKyWXdjwinH4jPFuqseBeF4=;
        b=braBkDvA/sZjIRDpvf9C03Emab5eKXMJhN3NKbFpw+Dpk0idMAC3wahAiIRlaax76y
         Lj2AmB7KfAWonjkm6/emTjk4p1cw/vv9N47Cb1eVvTrmRmt7yMnZbw0Glu+8x3beRqXJ
         FmePu7hoHbrzu2GUT46NOlmI8iCOtqP4Qx8V9MBlBzt0LgKYr+08pSavu9P5Rht/LlJh
         2buZOga+5RtWIJI9CBWcgULquhlcFkzG9RSlo19rGZa+p+vb4ZNS4jT3w1SMw5JHNDMY
         kTx2YjnWV9lYlR/a18JQh8jMPVO1txh8/IGlct6HPJJAxctYIWYFjQXk1fnnSuq2OFqF
         UHzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764551759; x=1765156559;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/vBWJ3jPxPdxJcqHzl2HAKyWXdjwinH4jPFuqseBeF4=;
        b=YHI8jzOBTkVQqBxXC5A/Ze/G6qiXn5nJz/p4Foax4p6xNUgzC3qKfujXZ7Pz0+QlsN
         j+7NENd3e5gLvWuidrDdERTMlwAiyAjeoDyOYXHM+aVW8yuoIUCd3pcM7rzHWj4bnxSI
         ONXEmYQY8W9FIDrWYSkKV36vVRwIv3W5Vec5aMDX4QejQS1iyTf37Aw4zviMIVGywHQE
         Iu9FEBRVjdG2pXE8Za/B8VoJU4ptDJNzs8AjovP4e0YfQzsD6NGCYSVz+7VD+7uEZ+bq
         zMdW6gMx5ERwQ8yAkk/Dbxet4g0SAsw7Z+6J4q1No0JZHxs+7BxIPWGK53Vk7BeD+cfn
         FNVw==
X-Forwarded-Encrypted: i=1; AJvYcCWIHriEFwEOxPIWhtTjW/IBrnZKxuHdU9QM2Plbg98tK7jdYPOmbzXss4x8vsE5NnpaJT+xu9rPtorP@vger.kernel.org
X-Gm-Message-State: AOJu0YwbRhHl+NMjWx0kJ/94vu9gzu2DlAstM+o023Vpo3yT7q11KPHc
	+I6wNThCg0gCJH9A8m36hD+Mx3GCuseysZB7bm02vwj1B+F57YO3UnzB
X-Gm-Gg: ASbGncsuSv/H/UDWWb8FZ7nSpYdRCmkHuKGUvZq6oGI82IXw6bKoqdiYYppaLryvhMA
	j0vTjEEsY2ex1ZIc1DhGnlMiP7f72IRkdZBEcjK1tPNMOnDgW9XH9VnMaArNDXMsw1prBxJ2zB0
	xH33AqyP6wkzCy58owNFwpb+neSniZ8JlXXgcevBcjKx2rDZavVU90ah7mCRpsdXRt5+09WNBxI
	aNT3dDen8xJF6Nd6pWAKJn++Qaa6/YRctvWJqUue8gBz6/Tm8g53itSANZYswwfNyTnvirhQ7k+
	0wnKrltswdPsSJ9qNBDtrSubPUzjl9abJk++++OFoKF1lBw1kwYj7Bba+kZN5c91PbDMtcwJI17
	PGpvT/pPMGcNph7b6qn7iCZ+vS9WTvZzMA4cU3q7HAv1Qo8aOyS9SRzd02xQD8vee29hH/DteLK
	kRJnMNwoOb1M/y5U08l66rGpUeFwKhqlQtWSAVbjK8eN410XTKou/kwQ==
X-Google-Smtp-Source: AGHT+IHPudKEEX4VAjuHNzkSbk45c8iSpRbQfuQpSIb3ohjq0wxflc5C6EoWRIJcTjRDZbjpyIxAHA==
X-Received: by 2002:a05:600c:8b35:b0:475:d8b3:a9d5 with SMTP id 5b1f17b1804b1-477c10d6fdamr360907655e9.10.1764551758470;
        Sun, 30 Nov 2025 17:15:58 -0800 (PST)
Received: from alarm (92.40.200.0.threembb.co.uk. [92.40.200.0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479110b6da9sm216152305e9.0.2025.11.30.17.15.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Nov 2025 17:15:58 -0800 (PST)
From: Dale Whinham <daleyo@gmail.com>
To: Johannes Berg <johannes@sipsolutions.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeff Johnson <jjohnson@kernel.org>
Cc: =?UTF-8?q?J=C3=A9r=C3=B4me=20de=20Bretagne?= <jerome.debretagne@gmail.com>,
	Dale Whinham <daleyo@gmail.com>,
	Jeff Johnson <jeff.johnson@oss.qualcomm.com>,
	linux-wireless@vger.kernel.org,
	devicetree@vger.kernel.org,
	ath12k@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/8] dt-bindings: wireless: ath12k: Add disable-rfkill property
Date: Mon,  1 Dec 2025 01:14:47 +0000
Message-ID: <20251201011457.17422-7-daleyo@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251201011457.17422-1-daleyo@gmail.com>
References: <20251201011457.17422-1-daleyo@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Jérôme de Bretagne <jerome.debretagne@gmail.com>

rfkill should be disabled according to the Surface Pro 11's DSDT.

https://lore.kernel.org/all/20250113074810.29729-3-quic_lingbok@quicinc.com/
has added support to read the ACPI bitflag when ACPI is supported.

Document the disable-rfkill property to expose one specific feature
(DISABLE_RFKILL_BIT) for devices described with a DT, so that the
feature can be disabled.

Signed-off-by: Jérôme de Bretagne <jerome.debretagne@gmail.com>
Signed-off-by: Dale Whinham <daleyo@gmail.com>
---
 .../devicetree/bindings/net/wireless/qcom,ath12k.yaml          | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath12k.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath12k.yaml
index dc68dd59988f..be44b1495ecc 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath12k.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath12k.yaml
@@ -54,6 +54,9 @@ properties:
   vddpcie1p8-supply:
     description: VDD_PCIE_1P8 supply regulator handle
 
+  disable-rfkill:
+    type: boolean
+
 required:
   - compatible
   - reg
-- 
2.52.0


