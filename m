Return-Path: <devicetree+bounces-196211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DC0B047D4
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 21:18:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 944661A673D6
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 19:18:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6380527934E;
	Mon, 14 Jul 2025 19:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=scandent.com header.i=@scandent.com header.b="U4kyvs3q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC32277C8C
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 19:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752520659; cv=none; b=HG3C2sAMPeXuq3QM1u3ZdFT2HBegxqxFplqrNKhHcuyYne82bQPDYr1AWH6WXwisY6gkMacQufT0EFXC7kxhB+F35TfBN6Nar3xxD8EfJWgIWr3R95fVAhtrDIsD9fdlQ9w3CUFF43IHeDiP8w1XnPfsPm4QvTfG8UnY0UCLVxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752520659; c=relaxed/simple;
	bh=ajA0H0Kbdkznv9eX+mJSjrE1WSDtNhP5sPV9UHoC+Kc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jWKyukUT9dAE9u/c+lovuhDnDpt02OcMELVAH63Xvb6m8EL6ar5lcCv6HJpWfmfH/OV8krEYBOvzJPZ0g2YVBheMMDNxl5Kej0+xbkOJDPuK8GmwbhELvmT4hFTaWGcRToM2MmPzvLouGmDwuoqtshRQkD52Lw81C0sjljRyicA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=scandent.com; spf=pass smtp.mailfrom=scandent.com; dkim=pass (2048-bit key) header.d=scandent.com header.i=@scandent.com header.b=U4kyvs3q; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=scandent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=scandent.com
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7d95b08634fso299356585a.2
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 12:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=scandent.com; s=google; t=1752520656; x=1753125456; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DFaUvrWskEjlMQIRMtJ+VSKoC1NmEmJ9Sv4J3gL+c0w=;
        b=U4kyvs3qGSSKTZlBjGv5agCgS8d9M6/VF+Uqr5Q8EMN0nuyr72Aw0/eelZ80nTiKyG
         LrQse744XrtoObl3Gm6i+zhMAlWntXWF3znNWIAYAcQP3diWedM1imEBzvMsO0edzoJv
         yFyRy8UtydIRFrwPem54Wbiqj8HvrqBU9zlut84iF0sy1Rl4Ze/s/MbONO4+TWsPbsRT
         a40wv+HcyqLry4RJi8L0H8NoIZo2AZ3xe3mx+B8/6vEaBy6je9bsnB4atp6zxEeEdnR1
         HgfCbSlv+pizJxNbMy2T8uSORFlxfIxVq6uwuF3eEUeJrKk4aCsd0QwNPu1lzpqaHX/K
         O0qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752520656; x=1753125456;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DFaUvrWskEjlMQIRMtJ+VSKoC1NmEmJ9Sv4J3gL+c0w=;
        b=de5InAwBv7ldRVRYPmzylsKZmaqqiSMtwN8+wJY+qzseaqefyOgF83MbVYShIUI/+J
         0lo1x+7d9KrY0otvGFXiW9CWa1CFVAoV/CX5oVCahyzFhrIsgaFElw3jOiLy7LD5wmjF
         uqeDqQXyQd7KoRgoPH1VaKadslalhipkc8aI+i5JbVahAAPrjx0z2dUZpf3ZpbTq6uLb
         /m1SwIHzIcBflJKMQkLN38W3QLjUrNWBYCJG+Bd+eHvycyX9o++m8MuKpHcbR/20oyVJ
         11mz8I9E+vemyV6kiDUPsaOBp1f5iTjrmDRApbvalqlOmftepmiFti0VQdVjVfNaVDwM
         Jrlg==
X-Gm-Message-State: AOJu0Yy+5eZIJfouTNbN/24HGRPjdrMwuppVMsatpqCGUMDVshowsoza
	/V4DLvqh6YaBqK1SL2YLRKtlsb1pN78gN8hT3riBcCjPwMrMYXo2lZB71oJYn6XoChY=
X-Gm-Gg: ASbGncs56VhTeMO402bDP+j8v2o27KuRTP8gSF1nyeoAaFkjxPsvLhd5kDRbpkQtYUv
	DBOXi7XcVQ5IaU84caDVmWTFvk5iyu+ez/YDtJ51tvtxKyKm1b/lm1n4lpgFnyTKT01pTvogYON
	/Cf0EI6hv2q5fWwL8tzqgCIqRVLqjqW2GMpn7oNG2unhmEWRDMq2YWgDZE0BiGEOgE/2YnBTQZZ
	gb5yYbkyLiw8tBNTqNOA4J3AehESBWI2X0ImA52h8xpR6Se8yYSxjNF9ibhy0qo4M+OiSRw4lyS
	EKqgWQWuGcqbgpc6g7mut1uRou8nX4kzhXbKr0C/aa8p6JMYyUOXvpOjWCyYsplJJfBpV0YnzDZ
	uuLENplzZNDUlOMGdELBZNo52rwjx04DxRGWgGPx5zXo2lgyw
X-Google-Smtp-Source: AGHT+IHrsHbbxm0SrpAxoF0c4hV0uQgYrBGTUzRv9iZiq/DU11326PFaQC3QWJvvDB74/arilf2aXw==
X-Received: by 2002:a05:620a:17a1:b0:7e1:9c2d:a864 with SMTP id af79cd13be357-7e19c3cebf1mr1063320185a.44.1752520656434;
        Mon, 14 Jul 2025 12:17:36 -0700 (PDT)
Received: from vserver (ool-44c5118c.dyn.optonline.net. [68.197.17.140])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ab801e542bsm1482521cf.3.2025.07.14.12.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 12:17:36 -0700 (PDT)
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
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Caleb James DeLisle <cjd@cjdns.fr>,
	Andre Przywara <andre.przywara@arm.com>,
	Junhao Xie <bigfoot@classfun.cn>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Tianxinwei name
Date: Mon, 14 Jul 2025 15:17:21 -0400
Message-ID: <20250714191729.2416-2-richard@scandent.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250714191729.2416-1-richard@scandent.com>
References: <20250714191729.2416-1-richard@scandent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Tianxinwei is a company based in Shenzen, China, making LCD screens.

Add their name to the list of vendors.

Signed-off-by: Richard Yao <richard@scandent.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 5d2a7a8d3ac6..cba78c531d92 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1548,6 +1548,8 @@ patternProperties:
     description: Texas Instruments
   "^tianma,.*":
     description: Tianma Micro-electronics Co., Ltd.
+  "^tianxinwei,.*":
+    description: Shenzhen Tianxianwei technology co., LTD
   "^tlm,.*":
     description: Trusted Logic Mobility
   "^tmt,.*":
-- 
2.50.0


