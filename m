Return-Path: <devicetree+bounces-179888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1895AC1FAA
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 11:23:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B4273AF45F
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 09:23:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B73E5D8F0;
	Fri, 23 May 2025 09:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Tahc5Wqo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3AAC224256
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 09:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747992202; cv=none; b=Dwjuauf+uiiXCKIKYm7tTEJe/3abYC6e3v0vdqRqdrczcB0V5Rwebg4VVv0KOZkCNnVzsdS/HM3jNO0X1CLsIq65EaLaYtF1i+1tKcN8FLTff2hVgBAo6LVp+ceuui+80KoDYV8O3rGSPcbj3UInc+ytjo9TaqavcRPs34m7wP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747992202; c=relaxed/simple;
	bh=XV5QgUTBjjCaabXf5Gk4PbSR/cXXofci/Q3D/+uopV0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TkRNJ3BqdmcMjX2A+KKOAGjkGXSOs6036QivBMs0FvxM9/yoQdAUjNTXZ2IWNLcgEtwS/iaPL6R8nB+OXnnjCEv3GhlhdEaPI4kTmQ/UEpKimLJvbvzAHFOEX9C60NBW/EFB6+/w4VnHoJt9t0uSXzB6zxKnCfQ+8/WHy4lBGd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Tahc5Wqo; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5520da57108so294382e87.2
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 02:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747992199; x=1748596999; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VVNvqzNDRM4iOeWFWzPDRj2DrvmnE6bu+I8ugM04R6g=;
        b=Tahc5WqoNgBXF3iUlOunc8EuSsHNFUNJqcos3iY7GRLAGAkg9S/ETVtqlBl3yJz134
         6xmMt/d/Db0O6yr+cvb9Vnx8CMcS7O4p7qSCYnbixXezWpHKIMi3YVN2B1udNp9Deyo0
         RqLEWmGgQ7EpAVmP0vJliMmX1dih5crfPaSLQEjBa0P4jzHGm+kZEh7wjRGq/8rLN6br
         Lou/QWSOiIJoCnwl4g7Q2j28dAsgdNgXe9UR9zD20Xt3aJrMhASzry9nZ7DWF6C0luwF
         vmSVLaGWXQ24LIiLsAYztv6a0YuaZSl49Iggz8YejNIKVgJtkHZEXIuvvoc3ojEBHwXD
         gSIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747992199; x=1748596999;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VVNvqzNDRM4iOeWFWzPDRj2DrvmnE6bu+I8ugM04R6g=;
        b=JbSihYSUTn/DdmgXFqE7iFnNeg1wJAE/A1sdi9C7pwJ4Vr9MH649eKyrMRbb+MlgIX
         A5Hezz0xzCQwxluupwGIiqVI8VxGF9VLZcewWt4T9loDElJFB3q9PWW7SMUfJ4B0r6E7
         cIj4Z3XS9mReGoZEaFBnq92YbihGQ4lKhAFdQtUpnqG0Em0kAbyJG+neZaMDKWyzfz0F
         icEGh8nQemVtPBqADeWDY8yqK9RQLLh2nMiUbK7iz33q7B5AIy66QY8VSTXcx9XNM4PW
         dRd4PXZZ1ulGy3QKFMOZwzi8HT6MtDS+/drV35CEGH8rQHa7qKVO4gvuDk6G4AfXA43C
         XtEw==
X-Forwarded-Encrypted: i=1; AJvYcCWopfZlRn1K5NiY0JPGPiRGrcl6DwJ9b/ovMrKCRyoG1Q7g+r5vsPi2fvWFW4UqavyJWEagdZqx2+y/@vger.kernel.org
X-Gm-Message-State: AOJu0YzFRtbp0q+vHsPYETAKPy/Xk0L3gGGEAQltqH7KYHlfbDh7wQTl
	VYzK9rnKJ5DHhg7ZftJZzk475VkAucl7Iafk+SQV4C3FX8s0mNHd0JbEn1o6vxvlnJw=
X-Gm-Gg: ASbGncteKM82a5/kjxhk2GkQygmyAmth/Yn4vy7+ml+X2bsdZU+KbpvkGklSctj9T0x
	AmaBnRe0OLWF01/HVA98AE1eK0Wn8ADgC9QK3Att/fGC1oJGsf9t8VLPlekYS7nPSb3Cvfvp63a
	LnaBmwE4faD5KhAYqVRfYi6VcuJyn3QWJju5NQW61t0DeNfAADz9G4i93ndZI4dW3pgjq1/fhxF
	ySpzXTFfpRyj1qNidS0UExZpHKn4X1ZxaFzohwWd2nDqkEE/92Zr3Og0qgJloCXWzVyBapN3DDX
	4i//Ajg3H2riHQ5Vi8D8yeKGS9YMmUuZIHCgNUpAZcbWqMgcBExQS4iR4kvVRaYjs4BJqiSw/xN
	C4EPH/B2o8bxaf+SDakmPc+sowWPV+01xd5q03wca
X-Google-Smtp-Source: AGHT+IHtARSYZOYllV2N93GB5w8SmaiIgWAl+qZ3xuUPxiHEDse7s8CrC4EJRY0GcIs9HUYVK02Znw==
X-Received: by 2002:a05:6512:31cb:b0:54a:f6e8:85c3 with SMTP id 2adb3069b0e04-552179fce10mr159980e87.4.1747992198810;
        Fri, 23 May 2025 02:23:18 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f15d9dsm3779228e87.38.2025.05.23.02.23.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 02:23:18 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: qcom: sm8250: enable camcc clock controller by default
Date: Fri, 23 May 2025 12:23:12 +0300
Message-ID: <20250523092313.2625421-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable camera clock controller on all Qualcomm SM8250 derived boards
by default due to the established agreement of having all clock
controllers enabled.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index f0d18fd37aaf..a6f9b78c5226 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -4653,7 +4653,6 @@ camcc: clock-controller@ad00000 {
 			clock-names = "iface", "bi_tcxo", "bi_tcxo_ao", "sleep_clk";
 			power-domains = <&rpmhpd RPMHPD_MMCX>;
 			required-opps = <&rpmhpd_opp_low_svs>;
-			status = "disabled";
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
-- 
2.45.2


