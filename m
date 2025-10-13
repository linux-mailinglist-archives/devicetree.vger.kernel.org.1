Return-Path: <devicetree+bounces-225825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 110F8BD1650
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 06:52:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C81E94E26FB
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 04:52:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BAC22C1584;
	Mon, 13 Oct 2025 04:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b="YSXy7hse"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D1F92C11ED
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 04:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760331125; cv=none; b=tvvfB35uBz0UlC/YSQpGyriDJDeJKjXx/aZ+Kg0nVX8y/xD7ydyOIzvQADNDC82Wtt0RbdEN6tY/xu4Rcl67AWLNzFU3EAEnZ2fIr1Get+yuc4lNKIMs20k7w4lEEdo3MbuFxfEqDrgXvmkic/HOgSxmm07/qhvEnEfRZNxeyHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760331125; c=relaxed/simple;
	bh=IOVJPSQB9UddTgT2CSM8tZBiTnGv5I7cQsEI2Mnqx5Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Wb2iDZPwqhhLn6VeQxuDdvw+bTeNJjTFTD8KnzIlPHgZ70Qn+TBekBJIZ4fPlDpRX77JdwQ/9je7Cd7GWqzI6Q2Pd+n9NECnmaYDiN80SmB2CvjdT4l1Q/riZLsDpu5F2vUorh2GvjATxFcTGjj5taKcCeMFUua27EU51krLPX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de; spf=pass smtp.mailfrom=posteo.de; dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b=YSXy7hse; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.de
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 61ED4240101
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 06:52:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.de; s=2017;
	t=1760331121; bh=A8xy5GX94lG82ROmOcYX5881JUaslKSWPPxTNb/G74Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:From;
	b=YSXy7hserwtI7UiH0sGS/4G5zVA4AbKpXSYEUwWGz1EsNKYBXMDabJbtQu6fQvoSZ
	 /dMnywy5hO0EpTiDGjqEk8EzFepmGoLmuHdiG9Gm1C2QwmjmpmTEUZAfRUrKSfVfrs
	 TSDfvOCE6qrFrj1c3Yy0U/Lea7syq9Z9iM8qLcqNzFtx49WAjo8T65frx8hn+JyCRp
	 w/2AfxRElupbxWKVvDkWqmTrsIc0AGQBqTvfYQ2YE/l1KynzUrdGLWsaF6yT2bTUyY
	 h8KDFplSXyz6m4kPqXiTE44Oe4d5EBDEhZ+ULyBpbmtP0Hi2DEl7VraL2Jb71amnHp
	 xH5PMHlD017Rw==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4clQ1X2yfHz6v0X;
	Mon, 13 Oct 2025 06:52:00 +0200 (CEST)
From: =?UTF-8?q?Martin=20Kepplinger-Novakovi=C4=87?= <martink@posteo.de>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Martin=20Kepplinger-Novakovi=C4=87?= <martink@posteo.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: iio: accel: update Martin's contact information
Date: Mon, 13 Oct 2025 04:52:01 +0000
Message-ID: <20251013045152.14555-1-martink@posteo.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Update surname and email address in order to be reachable.

Signed-off-by: Martin Kepplinger-Novaković <martink@posteo.de>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

v2: thank you, Krzysztof for reviewing v1
- squash the 2 media subsystem patches

v1:
https://lore.kernel.org/linux-devicetree/c38e8b8c-34cd-4894-aa9b-fa47cdc7cb65@kernel.org/T/#t


 Documentation/devicetree/bindings/iio/accel/fsl,mma8452.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/accel/fsl,mma8452.yaml b/Documentation/devicetree/bindings/iio/accel/fsl,mma8452.yaml
index b0dd2b4e116a..91f73872ff60 100644
--- a/Documentation/devicetree/bindings/iio/accel/fsl,mma8452.yaml
+++ b/Documentation/devicetree/bindings/iio/accel/fsl,mma8452.yaml
@@ -9,7 +9,7 @@ title:
   triaxial accelerometer
 
 maintainers:
-  - Martin Kepplinger <martin.kepplinger@theobroma-systems.com>
+  - Martin Kepplinger-Novakovic <martink@posteo.de>
 
 properties:
   compatible:
-- 
2.47.3


