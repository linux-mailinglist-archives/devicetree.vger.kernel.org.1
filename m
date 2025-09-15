Return-Path: <devicetree+bounces-217335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 57AC9B57594
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:07:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8DAD67A28B9
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:06:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 438C52FC897;
	Mon, 15 Sep 2025 10:06:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WnZPJ9uO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E420C2FC00E
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757930798; cv=none; b=kig9j5l8Lb87m7OnI3eQTy5MxG1msXLSpDvv+bxPBHJ6bIb1rxAkCoowIQ1eL9ep1YBJD9s4TUnLQcwiCHtuBd+51m5F7GpiagMuUdSxTt7lyLhFDK9y9nFwjyuSXI9Do8p6i7YFg9K+SytQXlnud1k9AhfCrWdIhRWPfAeZBfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757930798; c=relaxed/simple;
	bh=FVtDEyhzivEYDtBzLVu6OvECCEHWfcGcJe33uoqzARs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GOsnxouHEpM40EtVLIM9QJbH6iZLKm9p4Yro9RHLPvtiOgjnMGEDSgxtrhBgQivsqYr7/dmXr7bQ/MqJymUoMEKKGMQyzTxc0VSLh+kB+sjtQIZlHOB/mqpfizEKUJ0kR0RME0PzRT8DVVietLVCf+EAS3fzjOsjxThmoFALUEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WnZPJ9uO; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3e9c5faa858so1431410f8f.3
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757930794; x=1758535594; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XfRiNO2xJ79Pmhqk0PZHjgXYh/6g/9bHAaBBwhGvRmQ=;
        b=WnZPJ9uO0Dvtzv3vXbgLwdfbJDGAnqGpaP2kME+dM2r1ehaGba3Oky4HHDyVcVWsec
         LeEdgjsf7t7UD+O/3SbYwGB8yYRvEWUd9LoamBc1QAuw+8Z+ChQuDOO3KyUoahBIyZPt
         4n4dUulyyHw6W3lpYSQ4nMhJGTVOd+GJV+V7Unmuls0U83S+UOnNqTBopvqra9M1sa5C
         vR31uYUjgLNq5+3CNtlM4HbITW8DoD7F6qCKHcJZytuJXdGLO5Ud5rnyW77PIvQqVaSZ
         HjchyQ1Q/wE0MDuJeJv6HQYHGB3wPLo5anxVKblcP28dADgK3UyIP3K/ZzGJC2qz3/lq
         J/jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757930794; x=1758535594;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XfRiNO2xJ79Pmhqk0PZHjgXYh/6g/9bHAaBBwhGvRmQ=;
        b=Y0BpS71jzFXCODOOxOoELk/HwEFQFeY4PdqHfIiebWlTfkqZ6+T3GNI/zDu3ttRg0D
         g9iFB7ZOSn7wIf7VxZsdhH1XqD/fo2oGGznBVIdRVM0NiVYZ3KIahSfiGms+Sr3NM/Lz
         rW+hucJliN77AN603MjLm/6tRfYfl13WRz/IgROmWbxyyUgvBvd6gmVa7S+CWFw9NGcf
         qsMtnFES0sBEGZhmsRyzNMEbs2Ua+DY8l4/FwUP4CSV7kbdLCWX203g7gq854zOIy9eh
         TpKBplQtwkvfy+RAcjQpqhd3Tno+Gy6raKY72ElEujiLgh0u5eTK8McKgRoJBnZ4TPqb
         4N/w==
X-Forwarded-Encrypted: i=1; AJvYcCV1QKoPoTldfJEZlVEKWHsa1vDNPoQDrLbsgYTS2ajzJFl5DTtiGkS4dZfdewQXZzv5E7LZuT4Sm7ca@vger.kernel.org
X-Gm-Message-State: AOJu0YySPKwzfk7H42xu9beJPHiOsf5sd8QU0YqXxjOeV2xIz1xcliVK
	dYEWqdgqNDXyJGov9j/U1t5d+0EGGh5j6wwKzK/+BYLI/AXeRfKEOLlEgqRn6WvGE4s=
X-Gm-Gg: ASbGncu367pwRIShzQ/nrCvib7Bp4eJ2F5MpGyrCTk/pGQHteI0caLpWmtPVr6KCRu+
	LxWzGZSBNCc7M/J7A8o6uQi4Ro6HgHGM2Fb29MXpxIDbMpQPNkGOL4YUNK5mos+F382KIwGMRZq
	q3vviJpOjpn8PbdP9XkXVouFrcXX8t6xGbdFGszEKfoEdqQwocopkY0myeVgEatHJwFDehwXT73
	j/Ow/rO+/O87Hg8fhENSA3BSwqxp0bpBwE6T+QCrFZ8P2AbuWnXG8xZUk6LTK3YGmvuPZ9fUcss
	FoIYE4WX45urGQQrjcpy3b642R+vnkFEabvcTG1U4NHDjeBkd9tU55V6Zg6KQ+gnFgABTrDdMBy
	vZcUBdEbeif9rdsu9RO2b5D+CEYKKKghOhgE=
X-Google-Smtp-Source: AGHT+IGnBbR22+yZ6wbT0d5fNLxs2hPWBuABHC61EZiUtaPF807vYAvhobY69/kXqUXh8/m2svgb3w==
X-Received: by 2002:a05:6000:144f:b0:3d8:1f1b:9c9f with SMTP id ffacd0b85a97d-3e765a160bfmr9984479f8f.55.1757930793955;
        Mon, 15 Sep 2025 03:06:33 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:41:eee1:5042:e713:2e9a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd4cdsm17209127f8f.37.2025.09.15.03.06.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 03:06:33 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Mon, 15 Sep 2025 12:06:18 +0200
Subject: [PATCH v2 7/9] arm64: dts: qcom:
 x1e80100-dell-inspiron-14-plus-7441: Enable IRIS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250915-x1e-iris-dt-v2-7-1f928de08fd4@linaro.org>
References: <20250915-x1e-iris-dt-v2-0-1f928de08fd4@linaro.org>
In-Reply-To: <20250915-x1e-iris-dt-v2-0-1f928de08fd4@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, 
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Alexey Klimov <alexey.klimov@linaro.org>, 
 Anthony Ruhier <aruhier@mailbox.org>, 
 Stefan Schmidt <stefan.schmidt@linaro.org>
X-Mailer: b4 0.14.2

Enable IRIS to allow using the hardware-accelerated video codecs. The
firmware is not upstream in linux-firmware yet, so users need to copy it
from Windows to qcom/x1e80100/dell/inspiron-14-plus-7441/qcvss8380.mbn
(just like GPU/ADSP/CDSP firmware).

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts b/arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts
index f728d298c72f4bf2ee151698e36108fdd7a8e5a5..cf2a7c2628881e44f093d73e6496462c22326d9a 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts
@@ -37,6 +37,11 @@ touchscreen@10 {
 	};
 };
 
+&iris {
+	firmware-name = "qcom/x1e80100/dell/inspiron-14-plus-7441/qcvss8380.mbn";
+	status = "okay";
+};
+
 &remoteproc_adsp {
 	firmware-name = "qcom/x1e80100/dell/inspiron-14-plus-7441/qcadsp8380.mbn",
 			"qcom/x1e80100/dell/inspiron-14-plus-7441/adsp_dtbs.elf";

-- 
2.50.1


