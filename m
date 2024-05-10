Return-Path: <devicetree+bounces-66254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E50C98C243A
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:02:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A9641F26AE2
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 12:02:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A1C9173359;
	Fri, 10 May 2024 11:59:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="chaiPx2t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CCE016F26E
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 11:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715342392; cv=none; b=fS7f8NhVRd4vS1KGnfz5NLQy+1EVfJ7MyRyaAzVW9D69d0U+7avHhc1QHXCmq3s/KTRg3uC7wexNjh+KB9C9bs/6IGLX2WmD0wNyn+YeRZ5MEKULsEtE/nRe1UQ+ewwFvJ8etkWYMadDWhkxzVwSLejHZwXqOf6Trborkl23H+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715342392; c=relaxed/simple;
	bh=KAn+kavu3FsHnvY0/+DTDzbjChWpqLzdK6RSLCjGkL8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=D2Ns9Qpbqa5M9lNXW46FKtb8M1rZjxSnyNdtmkWQ1XRM3KgHoJizLkV+DeQ0Czabr/7aQTI7+XkB/cjubHDArYBcnqRIQV4f1Ey7uuLMiZuQLdNklom/Pzn/DMU7LxprUG611Zww8Ib2VJrD4jNmuPAESk4u3ovNMSumbSiBc3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=chaiPx2t; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a59a5f81af4so475958666b.3
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 04:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715342389; x=1715947189; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=upnYxftIQgqA8SAtWvBXJGkDwPY3ijyI82SPZyS/G88=;
        b=chaiPx2tqUs2zKn9q0w5aorbYdl6fVW2gIHZLFj3eu0gzxS8YOpmIYkIn1jft1VWUN
         9ra31Ei923w57Xm5arrqhuwxtbtechvcWMzyhGS/uWThCwOaSlAty+3VVcmk9fdUsHfQ
         Q+vIPYU95XPoBh3zERO0FIgFoXb30URgQNph9qPXT7LepO2iCzeqztssgAPANI35X6Xa
         4Yi14B1qc6kIsZV/AaYnKGycO8vXCyvR7a9kDN3dljmNsbbUYNU1klsD7bzSZZZ7BCOS
         zQsJ6KyB6m7YmjhVFD19I4mSq4Im4CQL9M6NfJxlb6vgn8Jv/frRsdSi/UGdnLpoYnfH
         MT/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715342389; x=1715947189;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=upnYxftIQgqA8SAtWvBXJGkDwPY3ijyI82SPZyS/G88=;
        b=vuU/zGJkCl69lXL4sTTn2FARuoW9B0xlJSh8WmqI3Enqvsw3o5c7Vye9qxOQdEodm7
         WF6syVPeLDomVQbYkEVNBWlPELLYkhNqADl6TBUcBcH+VtRdcAxiiVjKlJwzLPCNSue1
         B1Mw3wHajxJc0Arm5EN37W79eemLzjA9VYN+6JU5/vhPdJHxYlSMegQcbicrWybpnLz1
         dl6zhDvPxd2e3yl2L+m4VbTbmJV/mCXfG25X1DgMPeO2kb5abW51rys7Sgh71DzbckYV
         vpq2D3zOOIZc+0SQQEqaz4K5Gj/hdg/i/cKpcZ2DPk5evCaJvNPALfSkAXGEl5P4toKN
         e/qQ==
X-Forwarded-Encrypted: i=1; AJvYcCVEiwx8ybi6etRXmVDF6fyZMq8bs6MQDmXHOMIOPNKl8MI3vm3HV8diiImKdkXvbWyV3ydFz0dHhDyOhIQ0SGaFH6NRv+Prny8keQ==
X-Gm-Message-State: AOJu0Yxhq4c3pK8P83zC5ag69YTxkEqJGLOXEYQv27mntzoSZ76QbFR+
	8Xm8lMy8DIDiGEt2T7atQfUr2Pd/X5trr4PfhxBX/xFadKJkGLLATkvMZ37VB04=
X-Google-Smtp-Source: AGHT+IHY0fWuvCys1QcyAuv+r+TdQfXqlllAZlDO3NVBDN4SQT1xHqodNhNJPz4n3IX1MJ3N5YVL/Q==
X-Received: by 2002:a17:906:6716:b0:a59:9e02:68fc with SMTP id a640c23a62f3a-a5a2d5f193dmr153936666b.44.1715342389104;
        Fri, 10 May 2024 04:59:49 -0700 (PDT)
Received: from [127.0.1.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7df7sm176795666b.111.2024.05.10.04.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 04:59:48 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 10 May 2024 13:59:34 +0200
Subject: [PATCH v2 11/31] arm64: dts: qcom: pms405: Remove thermal zone
 polling delays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240510-topic-msm-polling-cleanup-v2-11-436ca4218da2@linaro.org>
References: <20240510-topic-msm-polling-cleanup-v2-0-436ca4218da2@linaro.org>
In-Reply-To: <20240510-topic-msm-polling-cleanup-v2-0-436ca4218da2@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.14-dev

All of the thermal zone suppliers are interrupt-driven, remove the
bogus and unnecessary polling that only wastes CPU time.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/pms405.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/pms405.dtsi b/arch/arm64/boot/dts/qcom/pms405.dtsi
index 461ad97032f7..3f9100c7eff4 100644
--- a/arch/arm64/boot/dts/qcom/pms405.dtsi
+++ b/arch/arm64/boot/dts/qcom/pms405.dtsi
@@ -12,7 +12,6 @@ / {
 	thermal-zones {
 		pms405-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&pms405_temp>;
 

-- 
2.40.1


