Return-Path: <devicetree+bounces-188919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 904D2AE610C
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 11:43:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 12FA1176083
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 09:43:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BC4527BF95;
	Tue, 24 Jun 2025 09:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GbnLvBGB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8D8727A12C
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 09:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750758187; cv=none; b=aTPb8ytczifvgv9wROAZCYydPfJqn9c4JUAm1RdL2ShvUUOgU0aCnmSiRZRXtNOhGIIq6ysLSbcBlg5v+mgNyAa6gLIcl9IftVIDJ+4sx99qVfkd8qQapAf8PsZoUH1owR411BPE3BZWtL4ed9vyYAjUjJ+VZwg1+XTLFRr0ynI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750758187; c=relaxed/simple;
	bh=aKVHs9BNm/mooH2PzEQj6OMW28srDvk9sw6OOEomA0I=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HE8ALUwjT/MjXYwR574QwwNLreJ1YjSnTn4SdIFn/dRKSUGWvMlVuQq7E8ByTjTgbmvzzmJPhyy2fITn27UIC9e7KbaIyk0xvE/pXXthhCayh7TOyP/zjvhDmuIuxo2+cmRsreJpyVycjbg26b5jIkW1oCroUA7YciyKhle4Rgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GbnLvBGB; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-553b9d85706so701254e87.3
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750758184; x=1751362984; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JRW6Y0n90vxkzJFGPiB+J4F9Eeo807Rauzaf+xKHkvQ=;
        b=GbnLvBGBUBr+olgx6m4XhoB9P19Laqkpz+OsvjbelfYAjfdrbedjuBXFY6kdIo7M6E
         G4WKm0HELQDdU2ZoS4923Z66mPh5UYW5uJFovx2dkyIKg1PVPoGpewqVg3EZNMHjV/Fe
         KzsskYdS0WeF5/3l8/lPsmNhbMasMRLfH3UOn92EMd4HvFDAdWZa3yKJPPzMY9qG3+C0
         409vEmWlwK3GLQbXVcMpGoR0ELTyAh3eo3kOdVYkXoIRrwZrCna2RMEpjb4Jem4QUXJw
         C6bUPRbueuLBQAJmqVfL0FygozRFX7mPwQEr0Ry//GzQDSupyXcab3v19R0Mq12JDuuI
         1Qkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750758184; x=1751362984;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JRW6Y0n90vxkzJFGPiB+J4F9Eeo807Rauzaf+xKHkvQ=;
        b=H7AEh+EVRcvBqSN6x4Idk5QrdIm76Q7zTjuhlQy6vav0Y+IFD5rfYgQfEpTBnJNZXe
         mR8Dl2AQOdWxgtOtDMcqaSzJ1RMkzZq7t6KuDO/ME1sAau39KM6YhHbBsXPo2aBOGC7w
         WUhJGOPaRRe1knnETeufjVEPo/6Bvlvg8M2W/xQjr8BWWuYZcZ8dpzrEi3WF0emDZy2z
         nv9iSp0/jWIn4C6fYzxmHAksLc1RElPZUH4MQOrguYUccbvYl5b00R7KvWv/c+Dw8Ykr
         MB6X+U+1hRsLXSQnd2xnoXaDfJ9T8YsbW8FNRGfIIJQtB6r3atdxIap+k4aLhOzROYnk
         iMyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWU1qfhTPpmBWDvKFrPl/Yl95+t7dmiBrt0FpuyQKVi5+2vgbqltoeaRQ6jH4uBZ10bpI5o+Gzplglc@vger.kernel.org
X-Gm-Message-State: AOJu0YySRxpObFhGCelNoSNP52I7sn737rNiLT1ujLmGOOrbn2bXnG7t
	QtxvGNIQLujQc87o9JhzJ2ASHJxfXXF77GFSgrn1LGyjR5voYAJgWU+h3FYHqhn9HEw=
X-Gm-Gg: ASbGncv4RMTiIMxHB8tcneG0KMN7mXGMYps4PiC0fzUt3yse48vp67/jcLMG3l7RnL0
	fjG9h2Db7TH3WghO296n4aiC4B3i3up736M76SFjX8vdce4VV1egC0jmd3JoVlTs1M/XW53TRB2
	MDqw5heypg6yW/JOwG9xSH/PPYsC0ppygS5HLDKDBlaXVjSaptSJJfKLTlFwN2Bn9ESc/I22fBn
	JzVxF7B97WinQPINXZ0YUwtmQo9IE7wc9/zisVUj56WeftOR1m+xMfco80JfKpjiqDW+UNq4wIo
	AS4K+824gnGtmKi7mMvWIebu/DsT4hgIm2cRKl0zQ7dtiJDjOVUlsNxWuP2fU4tc9Le0NfS6gsQ
	q1zNB3wU5rrDC5ga1oSXETdcFulb0MX7WAhYOUv+s/W9nn9UXff9xnAnd/XkN8A==
X-Google-Smtp-Source: AGHT+IEcjSc5H18Vb1fNysRQizg1q9F6o3XBgWlbmq5FEa2B9vx64nrRzhnJbuDe5ORvipHHhEkPtA==
X-Received: by 2002:a05:6512:3e04:b0:553:cf10:e424 with SMTP id 2adb3069b0e04-553e3ba74aamr1549856e87.2.1750758183755;
        Tue, 24 Jun 2025 02:43:03 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e414445asm1745793e87.12.2025.06.24.02.43.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 02:43:03 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/2] dt-bindings: media: qcom,x1e80100-camss: two minor changes
Date: Tue, 24 Jun 2025 12:42:51 +0300
Message-ID: <20250624094253.57441-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The series contains a couple of minor improvements to qcom,x1e80100-camss
device tree binding scheme.

Changes from v1 to v2:
* removed Fixes tag from both changes per discussion (Bryan, Dmitry),
* added a note to 1/2 commit message that is an ABI change (Dmitry),
* added Bryan's Reviewed-by tag to 2/2 change.

Links to v1:
* 1/2 https://lore.kernel.org/all/20250610083318.2773727-1-vladimir.zapolskiy@linaro.org/
* 2/2 https://lore.kernel.org/all/20250610083318.2773727-2-vladimir.zapolskiy@linaro.org/

Vladimir Zapolskiy (2):
  dt-bindings: media: qcom,x1e80100-camss: Sort interconnects alphabetically
  dt-bindings: media: qcom,x1e80100-camss: Fix isp unit address

 .../bindings/media/qcom,x1e80100-camss.yaml          | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

-- 
2.49.0


