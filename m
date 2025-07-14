Return-Path: <devicetree+bounces-196246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C04B049EE
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 00:06:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A35B87A69FA
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 22:05:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D475273D89;
	Mon, 14 Jul 2025 22:06:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=scandent.com header.i=@scandent.com header.b="RqMh1n08"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8A4242D6E
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 22:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752530799; cv=none; b=MrK/v24CAYkhlcFqO2XOITyz80CBB7D8IC7h0hPUaaLpYCizkSGHrN9OZzIVBUjbXEBGsq3LE83lXM1Venq7r8vqViIRndJHdLg/3BCkwq4QbJoAUK8vduLT1wD5CU9nnDOfg3qf+BF305wSxMnJk7sEq6zK7xRJzxTUqoY2u3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752530799; c=relaxed/simple;
	bh=NfEbJQ9APBMNxBx8/hFWpXBgQCXsN9BhVcLRIR0cydM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LB+7XC3TJ2IkIF2QFZjCQK0HGeOcjfrhaeZgr+4aUoM0vjwzYVUYROeK6S+2se6mm5ML9X5uKgx4wTL527Lapsf4Wydkoo2POLodtVZf8ZknkRF6B/gY1g7Yb4Wdwszo+n965q4U7ZeFP3jPlqwMK7/KA4abbSWEJiQ2WU55bsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=scandent.com; spf=pass smtp.mailfrom=scandent.com; dkim=pass (2048-bit key) header.d=scandent.com header.i=@scandent.com header.b=RqMh1n08; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=scandent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=scandent.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7e3142e58cfso94127985a.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 15:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=scandent.com; s=google; t=1752530797; x=1753135597; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WIaH38Gh5kKcHJRj8XVnX3nblAGXvNpyNwpxmX14OvU=;
        b=RqMh1n081xWjxb1XqBRTKC8Hz0u/bUWJ00hEdTPkf6gbhch5QgiCqM6k1Gy+23Pbc7
         eyE9C6WKB38Z4wG+QaCc/TOXQ/ZzGciquxBEHE2uclQIeEF8l7XL1xexuxC4v9GoLASW
         zVbtJxLWDf11+0DCHTDNHkfRRO2di7UV7UUcf7zQPzztvDKXbrqXCapieHdUJszxZi5c
         Nj6KPM4XF93lUOHsHQqvnU8feAiExeTO6xvBS0XawtBY0vNFleLNnp8wTRMi3IIKcD7t
         GrpMoNHuM37J1zbwWujyRJe6P8On29OGhNmf7q/PoUJehoUa4wyOAKRcp0c6XM3yUcAd
         Xj7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752530797; x=1753135597;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WIaH38Gh5kKcHJRj8XVnX3nblAGXvNpyNwpxmX14OvU=;
        b=GcP0WfJiVAEfj+ND9zaahIPf6HTexCQdB8rNPEHvddOFqWNlTdzUl4TF8fUN2jeHwP
         ZYyvfU/9nsbguWHc29LTZxm7t63h9A7WBvzKrlvTNB9HqP0tcWfZFNhaGSEaMZZbnb2N
         fO0or1d/T3ho3xEXXGFcGGOrCYsT8od+KfWpnXXk5rBUt6S7vrpUkClq81Q6ZVlsfdWb
         CdAgjdgB+jN5ZBwQD0vjUwjQKZ/4zvpSadsYzSKfHbdS9vNQyWpAbP9ZsDiTcmIB59jD
         pj/wYKTDZdzv/b6neNA1K1pWP7e8e4x3cvsRWeUtxPRNlnc631+0aP+nFyWVRViJ567X
         OVjw==
X-Gm-Message-State: AOJu0Yz7rqMiZS2OEpPe51Mi6Uq4GJiPoTNdUTb+OyTOaA8Hygk0wcSy
	7W613e972idJyNRltKlbJ3NdmhFIMaBkeKQ/s0rI4Iu2Vj7ngS22QqvRXcsRKHUe53E=
X-Gm-Gg: ASbGnctqSuq0CjJV+Bqkg0keIgq8qEyJCmmQwqWu3xCYyzX5uHU1bRokQVSO2q3Gfon
	MAbauOdDG8YffbncIM6ZEwaMSGhacJMA4zJIwUX8QLGf0JqvJahS38sD7YYvSJAa7lpFjh8+GpS
	G863BvoZ51eP/NUQ1gQoSfevsy4Q7Mz73x96WcKO8Vmkh3WAvr/lB/NtrMsAp1x1ci7O4TE+He/
	lPdb0fPId+y+j41KOWlS2Zod1Nx/CMTy/1QFkHdrWtH26Ypkxm58Cn3/iiziD556Ep4abYd782g
	xXUt+A5O7MmNndxYdDsvqDqP54amqTBT53DF04GzPdVEJAiSPJdmWiRV41pv/VtdxCP8gQ1fTF2
	4sNJZJaYqf34LieGChdQ1mtahfNHdpR2JjKLgfsyz/VmxeQZ5sxcIkNNjkw4=
X-Google-Smtp-Source: AGHT+IGo6sk1WOwGd8qfuaMpolZbEey/HPUdTGdDHSrcv6A5rEBSXicgFwOvAcgwkS+TBGqrLBP+/A==
X-Received: by 2002:a05:620a:371e:b0:7dc:8bf9:ee6c with SMTP id af79cd13be357-7de04fafb6bmr2174431185a.23.1752530796908;
        Mon, 14 Jul 2025 15:06:36 -0700 (PDT)
Received: from vserver (ool-44c5118c.dyn.optonline.net. [68.197.17.140])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ab6fdc7731sm13137311cf.40.2025.07.14.15.06.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 15:06:36 -0700 (PDT)
From: Richard Yao <richard@scandent.com>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Akshay Athalye <akshay@scandent.com>,
	Richard Yao <richard@scandent.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Junhao Xie <bigfoot@classfun.cn>,
	Andre Przywara <andre.przywara@arm.com>,
	Caleb James DeLisle <cjd@cjdns.fr>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add Tianxianwei name
Date: Mon, 14 Jul 2025 18:06:22 -0400
Message-ID: <20250714220627.23585-2-richard@scandent.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250714220627.23585-1-richard@scandent.com>
References: <20250714220627.23585-1-richard@scandent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Tianxianwei is a company based in Shenzhen, China, making LCD screens.

Add their name to the list of vendors.

Signed-off-by: Richard Yao <richard@scandent.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 5d2a7a8d3ac6..a2151e2aef4b 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1548,6 +1548,8 @@ patternProperties:
     description: Texas Instruments
   "^tianma,.*":
     description: Tianma Micro-electronics Co., Ltd.
+  "^tianxianwei,.*":
+    description: Shenzhen Tianxianwei technology co., LTD
   "^tlm,.*":
     description: Trusted Logic Mobility
   "^tmt,.*":
-- 
2.50.0


