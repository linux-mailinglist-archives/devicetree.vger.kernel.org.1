Return-Path: <devicetree+bounces-169741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F8CA98110
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:34:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 48887188EE63
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 07:34:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1783F2749EA;
	Wed, 23 Apr 2025 07:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZK2NpPu/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD8F62741A6
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 07:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745393444; cv=none; b=ZiwGBrpR4fn9E9VKrdTLXbMaLR0EnIUr9ZV1wNCJiDVGhHY2GvvBz4xtr00YE7PLcp3LJhPcJV2CxCLlBJCC46iITlahCwUthHc4SimcKSwRr3ZcW3RreiB54kZzWfFbdlyf+Elqq65iyrFGtCK3uY9ta8wLQkksx5cALcmbpTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745393444; c=relaxed/simple;
	bh=7HQlkprq76fUgPo7KHD3p5MDWCGUHBE5rv7Apl3+wLs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZfnTIAHF3RmDB1/932FvwkeRQQYrfCy8sonVyqWdtqliioEERivp81jhfjzMTTG1YvJnODAOWvfd5Oo5yietcOM2pgXTlXgGuOEGnFw8k/t74C1BhN0sHij2guaZAGm+ofLBZMKowYu5OPF+TERC0pyqbKwkhvZKdvN2HtN/46o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZK2NpPu/; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-39c1ee0fd43so5494141f8f.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 00:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745393440; x=1745998240; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fs9MzmNL81A60l3iuA54wmg1x6vTbax/gqInUkeJ7D0=;
        b=ZK2NpPu/gpKmVR02zco2Ob46PsKcl83erFD+QyN7rAlbYtz81p9224SOLVNW1WSrYQ
         sRpMG3cTfgL/e3lZZh+MrbltS9dJgiqH5Z0aLMN4L96Qj0vThQeCQjQp5Qagn/fkH/kQ
         iqwZZjm9tbgCkGmCRwzoPAYLnLrQFgQ7hauVFWnszAK1aqZ5dUX/c6wicuroAoSRvAVQ
         44jUH06KhgcwcEDoPZrIpYN09PcsmUlbA+RF6YPWjLF0CubU3JNc/q5CpxygKMQ1jFVV
         ETtKtKokPkdBLnNPPkftSTb7mrSa54vpmYVhBOGqnP+hEUD0/IIqJOPQd8cVYZHu6H+9
         yQKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745393440; x=1745998240;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fs9MzmNL81A60l3iuA54wmg1x6vTbax/gqInUkeJ7D0=;
        b=X16GE6RZVWRd9F8RlA5ppP/49UyzZwHW+VTH7Y1Sx6pwThWgkAouHHI1SP/Q7P9SeV
         yDjQ0Dhb0n673yfcOPfXLANyi6knTjvCVkMToLfUxKKJTcphl/fyu+OynCpJNpxI3W0v
         O/VZ+3pMpSa3xCT+JOAGOMTJ5uenMz2E1pebZLOoJZHEI0ViptAjcDfTdKdInpmgDwOn
         oE+88f37DKZwrkf6vStn7PncmjzSTANOVrc2Kqe5m3UWyislhCTsrdbHWhbyjHcYOQbY
         6RN/IlxZZjBhxA3MpwsFflPaxNdJo7Gds4rm5tqaBNBrz3P8jNtH7IJJiWYclS3utK59
         FcKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhR3gqtNnuGUWjFfNaKjou7RSWhv3vqbGpMEfBGRkVDNY7RB7LCVmePJLxYbaY5B49j4pc2LgwyNcp@vger.kernel.org
X-Gm-Message-State: AOJu0YwyGzEJbSgUPZR1vfugRNIYkuebNHFPhXITqfvCNKh///gcI0Kr
	VAIhexb9atx9DCHVChTvwY+VsXH9VaQYgDooWDS1kohPl/r374KiiaOjlKEEaww=
X-Gm-Gg: ASbGncvFVOwDzjdiJYRkrLGWg54X5A5PnbEd98YWN++kn7y92KKEnER35A3Lm7h9XkG
	Pn7yWGlmD8hWO1oBCHLJD8EdP/AfPbsd4cUb2DraZ1OsPTXgxyIB3nMciwfI+Me5oFVMz6z2oYW
	zECGgGtM+64VGr/9imwuIe/9qCHBvlKb5DfjAZTPfzfSVe6tLmTS/K9BUVlCTTLWQaOX3TrUHgK
	QEmK+g+B9HLX0RweOZohRXSQLsNMm+PfRIT24IBg9HJpvh/vSo1VPfLuAmUPQOnaj8SGhms+ZbK
	NWID0suWl82kOD7wS7k2M24KZsATv+kCrJlcaBRgAu9R9x0KzqVhs7U=
X-Google-Smtp-Source: AGHT+IF085Bi1ya3FOXNa+3yFhq+7vRJ6CjTrUbrgCZxpZbWxZoaUVpqRhez1nOFOdgLjh4jCBDn8g==
X-Received: by 2002:a5d:47cc:0:b0:39e:e588:6735 with SMTP id ffacd0b85a97d-39efbb1f7f8mr14078560f8f.59.1745393440014;
        Wed, 23 Apr 2025 00:30:40 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:67a8:3ed8:e19f:5eaa])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39efa493115sm17761699f8f.78.2025.04.23.00.30.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 00:30:39 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 23 Apr 2025 09:30:10 +0200
Subject: [PATCH 4/6] arm64: dts: qcom: x1e80100-hp-omnibook-x14: Fix
 vreg_l2j_1p2 voltage
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250423-x1e-vreg-l2j-voltage-v1-4-24b6a2043025@linaro.org>
References: <20250423-x1e-vreg-l2j-voltage-v1-0-24b6a2043025@linaro.org>
In-Reply-To: <20250423-x1e-vreg-l2j-voltage-v1-0-24b6a2043025@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, Marc Zyngier <maz@kernel.org>, 
 Xilin Wu <wuxilin123@gmail.com>, 
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>, 
 Srinivas Kandagatla <srini@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

In the ACPI DSDT table, PPP_RESOURCE_ID_LDO2_J is configured with 1256000
uV instead of the 1200000 uV we have currently in the device tree. Use the
same for consistency and correctness.

Cc: stable@vger.kernel.org
Fixes: 6f18b8d4142c ("arm64: dts: qcom: x1e80100-hp-x14: dt for HP Omnibook X Laptop 14")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
index 1a187dc3684a967b42817e44ff0df10202fe3362..199e256743521de82d98b38699f96697c5570e66 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
@@ -873,8 +873,8 @@ vreg_l1j_0p8: ldo1 {
 
 		vreg_l2j_1p2: ldo2 {
 			regulator-name = "vreg_l2j_1p2";
-			regulator-min-microvolt = <1200000>;
-			regulator-max-microvolt = <1200000>;
+			regulator-min-microvolt = <1256000>;
+			regulator-max-microvolt = <1256000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 

-- 
2.47.2


