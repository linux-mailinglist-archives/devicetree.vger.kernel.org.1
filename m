Return-Path: <devicetree+bounces-196250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C325B04A6D
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 00:20:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B8AE6179C54
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 22:20:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E618427FB07;
	Mon, 14 Jul 2025 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=scandent.com header.i=@scandent.com header.b="b0VnS6a+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507FA27BF89
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 22:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752531496; cv=none; b=f82qo3bQoylyMmS3CkC26rYqCOs+/g5cdbjSO6Z8GbHI9lxeqUBo5xL61lW+8bmdACVqxKo2w4Bi/Zhly6ftvFfrvnHYABDilNP41+PcAi0pREKP5fKbSDDzViZ/AQoIpRCGGYJnKd/EvzyW4xtZjipt4yVcWVj0jSVCDr3qS6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752531496; c=relaxed/simple;
	bh=NfEbJQ9APBMNxBx8/hFWpXBgQCXsN9BhVcLRIR0cydM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SmOJZGll5O0hWfegzSKzOcRkz4kYSqzQFcIfLjZvS6wyP1AA+gbs4FLbHIDKqW8ooqNVMaoP5YtrZEKVFoq/naP9FCh5oHimAKV6mwytx+tdTJW8Y3noGnbeoenAn5cfQKMT3wNVVrqPpV1iaaqSrcO9A//O+QNdZsVEZJ0pz0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=scandent.com; spf=pass smtp.mailfrom=scandent.com; dkim=pass (2048-bit key) header.d=scandent.com header.i=@scandent.com header.b=b0VnS6a+; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=scandent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=scandent.com
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-4ab5e2ae630so22421721cf.3
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 15:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=scandent.com; s=google; t=1752531494; x=1753136294; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WIaH38Gh5kKcHJRj8XVnX3nblAGXvNpyNwpxmX14OvU=;
        b=b0VnS6a+rCpnmDrq0kKRMhImO9537Yw1x1jvH8isXr/G/m6ld0JiJNP87Pit/w3Ctr
         3Xk6CF2hC5bo9/h5Ri2f4vzQpngKm5+Yh4y7Tr1Ndbr7wOGV3bdUo2XUGCdV+S7x9ge7
         6AJ2xwYcvFtEhgAjnhI6GzqxXMCzMTsvfWUXyz3SVwvJdwXRx8NSUaKt4KSaPEnvYIuF
         i0EA2WgDOLsVdsytCXFMebZu5hoNpYgsGv2eIUUFKbc5xfC0ZOvYqau8LFPE/6XGuCEI
         jMBdyxFJpSI9T8DLfIW3BgtdZDb8mdSZdosDx/u6SaoJz1lbv4ZuK2dw2gyaofTl9rY/
         UoXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752531494; x=1753136294;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WIaH38Gh5kKcHJRj8XVnX3nblAGXvNpyNwpxmX14OvU=;
        b=jodVRdoybnVBFwQwqIQIhuvAxIX/OOHLKmmAnqNcSrMntayM0n1l7LdRBRIPuyU+5a
         SqamIeFeGRE2M6Eu7thvSdaVvpafVsdtGROM8FpoOBmvjeuRY0Y3aG1n8mGorJ3Raj/K
         HYQOIUTWCsyv7Iu3XuI8oAz7UFVrI+0X44SXijv5rKq1OZxcsPZuQa1wfrK0QAl6he2q
         tk3JzghAlR6UTVoC0/r+Puqu1nb+e2+Tfjd1kZexHakYDkReTbxdhVqoFrNl8sUIhtiE
         sUD0ec2RU8jr0v+KnV9VUKd1+b0vV3jLqJfyT6mc0wUBG6zLSXGuqSagz7a+aUkaiTaK
         Yahg==
X-Gm-Message-State: AOJu0YzgAvjNs4I1SCSM+Zh6CWL/JjT2IzsCROrFz5EyW4pcAQHDmu99
	nLu/6yIbAdP9C2layTHtXfY3Qv/QsoAbWG3oqOTIA/rzQD9ajv6cWX/6H8JsipX5wIizCHSlxzT
	B5XcsmWI=
X-Gm-Gg: ASbGncssgSjIDcvHPuHJ5dPA34v7IOP4Fqnu6Z+tyK0aP+za8ZF5E2BLpBvdIelZh0g
	V7H2zm/RRCm2UzrVzv+wYRTyaV1HBLbMbtdkVK8MGL9VtlW5kYNKVZ21HXHsI6BINXwuN/8i3oz
	Vm3IYke7HwK4c9op4DeQe4ux9b/v0ra/B9tKFu4NwjoDysQemyLeR5ekHMpr+0JsXmGAItUJumJ
	hK3DqUPZH9232Cheee1wo1qhQ2Y2xKeJk+MR25y0QdH3Q4/SUs9jq3v3g3LfP6Jpwdy8wEKu0QO
	hjRC8FLkV+lPtym3gFEvfppBiMU8W8oBK1vxHHyrnDXW0tzo0qpI7tEuR69qaI98m+3hVFgma40
	5OEIaJIMLtJWObU6kpGS966cvNUPcL7eVuwtoCcLI9EEB2MWq
X-Google-Smtp-Source: AGHT+IHF+khwSUVbi38c6jhWBuadogmIeY/qCFpX9uS8IQMaxlml1sIb3wH8o1wLSvvGA3Y1kGkIjw==
X-Received: by 2002:ac8:59d5:0:b0:4a4:3147:41d6 with SMTP id d75a77b69052e-4aa35ca9258mr235602601cf.15.1752531494043;
        Mon, 14 Jul 2025 15:18:14 -0700 (PDT)
Received: from vserver (ool-44c5118c.dyn.optonline.net. [68.197.17.140])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ab3a1ceae0sm37822021cf.25.2025.07.14.15.18.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 15:18:13 -0700 (PDT)
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
	Andre Przywara <andre.przywara@arm.com>,
	Junhao Xie <bigfoot@classfun.cn>,
	Caleb James DeLisle <cjd@cjdns.fr>,
	Kever Yang <kever.yang@rock-chips.com>,
	Manivannan Sadhasivam <mani@kernel.org>
Subject: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add Tianxianwei name
Date: Mon, 14 Jul 2025 18:17:59 -0400
Message-ID: <20250714221804.25691-2-richard@scandent.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250714221804.25691-1-richard@scandent.com>
References: <20250714221804.25691-1-richard@scandent.com>
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


