Return-Path: <devicetree+bounces-35460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2267983D7F5
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 11:24:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C1041C2E3C7
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 10:24:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A305F5BAF5;
	Fri, 26 Jan 2024 10:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d7YvYV34"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04265B5CB
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 10:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706263244; cv=none; b=cPGnYWnKFWguATGbhTVYMaXJ6pOPprbYgUF02w8cJLo3gJf/s2qM4mvGgic9o0d0hjyo5wllHUC0vCpzEbfe5xxm8IwsCpdlMYbME+BgVJbgHZpLz8DekNwJtsLZIjzM69MvZx7qyh/j5tgj+BdAyRWjworzvrVDFHNM2Fq3PIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706263244; c=relaxed/simple;
	bh=Z42Q6xkOTrQTsmOLrP2Z5e9O464q2Y3rJZ2PkdjxS0o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UkSPO5wVMLdEvRkQ5rfL92mBF7NK2RRqAeDlhpg9oO1ep2EOlvRHHYX2Ey9qMdgK7bq7Vpxw0mFuA5Ha2Xnyg3HfCDN6yY+3aW/K7srhlNMabxOnOK+NsDDgMCsk5kMnicGd1iE9ETPWnxMRlzRxJrOrhHxMJnRZofHAHs6qpbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d7YvYV34; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-40ea5653f6bso2934165e9.3
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 02:00:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706263241; x=1706868041; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+nSUoAEGodpT/nnxbj3AEPT4VUq3C0Xk/xRQ9kzlaI4=;
        b=d7YvYV34bdx+tYZ8um+e9KreHkK1NpO6GIyEW2TMGwjhPVNXb9gGuso2b+GpuWx3yP
         K9SX8ZfkUoHJARB2JOZgs7cHjCo3qF62CYfTqvQNKdJrrNO+lH9X/q3Ek8UZ9V9jCeAv
         4eEi7R9Slsn+8bV/utXkFp+baJXQJP92be/uI3NQ1pFzRZf7qQwjVMNTvlv0oJfmsp+j
         ZJa7zFpxunduEFFfAW8udFYXAXMG1MWmNN6Ny+Xqk+PdmGxV0HJjLfgTmiLmAWfy2TTi
         GgLQpmtj2RWY5Shn8qyOCMQL4z59G83Rl3hyzktHOUuRYsNA0E5Dg2jx8TWx3ASuOpBC
         F8SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706263241; x=1706868041;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+nSUoAEGodpT/nnxbj3AEPT4VUq3C0Xk/xRQ9kzlaI4=;
        b=V08goS39AAeyLfSXEV7L8uXyUhBtVRbdzVGh+xZXCsXj7gvET8aIhpYOr5CTrHxhhU
         Ew95zF2/BlydGzxLxDZpQNCZxMR7UygeEOUTjYGlBGvu751T8mN/DHLtFnzyumK7/bcO
         h0zrinxt8EsbaIQYBs1Wf24PWyJ8mWGAjSW0DMk93qL7BAssgkTWPBee56O7/4HsG5tq
         Tttiq8AhequLxrxRn8jUf5+Le8ls7/uUMvWRUoHnAE+uG35dAIAMApZeyRvPCKrjdzRm
         faZO2py1hR2wVjSwNBzvh3S5FrjGF6e9uOhyONmstuE9QZWkdpi5PbwFCZwqb5myf9IP
         4VMQ==
X-Gm-Message-State: AOJu0YzrCjeiH0rQWveODXZ+SPvQCTi0lPWBhdFqdnvAHIvG6M+0t9lB
	rBKZ0K3DbjF/0gMEJBDjvKrk7t2hOWfQ0sm9C94313CEZBhxiCjSNADJ0OVPZJk=
X-Google-Smtp-Source: AGHT+IGF0lh/BjMDFjwiqlnPgjhfikFTSXO4GdmEqRz8dfIT3DB12kx4UNfvScOsh5Fxki4u97IH3Q==
X-Received: by 2002:a05:600c:3b23:b0:40e:50f8:9acb with SMTP id m35-20020a05600c3b2300b0040e50f89acbmr628167wms.134.1706263241035;
        Fri, 26 Jan 2024 02:00:41 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id ox27-20020a170907101b00b00a3221b95ce8sm448494ejb.77.2024.01.26.02.00.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 02:00:40 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 26 Jan 2024 12:00:16 +0200
Subject: [PATCH v5 05/11] arm64: dts: qcom: x1e80100: Add TCSR node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240126-x1e80100-dts-missing-nodes-v5-5-3bb716fb2af9@linaro.org>
References: <20240126-x1e80100-dts-missing-nodes-v5-0-3bb716fb2af9@linaro.org>
In-Reply-To: <20240126-x1e80100-dts-missing-nodes-v5-0-3bb716fb2af9@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=873; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Z42Q6xkOTrQTsmOLrP2Z5e9O464q2Y3rJZ2PkdjxS0o=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBls4K6dFCNim0hLeFcmf4Sff0uy0/G75koMej3a
 X9yuODi/5eJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZbOCugAKCRAbX0TJAJUV
 VmVID/439CcXx93PwIgmZjVpz2rzxQTOTof1jy22jFQr36ThZwRBwDVZFrtNDPdhwboUfXOfgv4
 KMzF1JsuMaUVRyHhFV4t31s/WqbwZDViHNkbLauhmPpK2IeO00IuTouNj3cdpNxCq8B7KxME4uJ
 t5hjgjm0lpwREBUVMmojJO9dkptzRTjzwpZCsCPYzP5eLdKq2xdQn9QkiTvMMdpITEJx8kWG2Em
 bi8YLRQFiTzeykGgP4nZbUP04l+l9ngiFJtyzo7Yt+tS2JXOVpjV28Mlo7ipeIsgik/fjpOLsBp
 lSKt3Z7dX7mgTPnbbl2w7+EadxL7nM4yomTxX1JUrFBzZPo6EP3vu+ilrNiTlvwJPViNZurdhD+
 6dJy6Ok8AnB4q5py6vQ3hBIat2e8/zFqu6yJsmKFUOAZH6Nrn131lxvsAGPgwPvYbzBpo4tK2Zc
 +mEG2FyFxjyAUcf58vd4EGJatyibJJdM5wQjaUezbojnMHpLpwX5fI/8QQ7cCerIpNF6L5efIlW
 kATfminZl8gEF4GM346L7TC9VG1SmZIMHu76+CcNqWfAJNWj/6QdqiDbMsnYO9CvSyP8Tz1F2Hb
 jc/bgxmyGhe1ayl0+E3uu/8hFqYVCImSEYY4U4cexkJvL/bVObGAInM9+EQA9c/j9FxWXVKNQbP
 n68y/rEHzH/h8zw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add the TCSR clock controller and register space node.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index be69e71b7f53..2b6c55a486b2 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -2606,6 +2606,14 @@ tcsr_mutex: hwlock@1f40000 {
 			#hwlock-cells = <1>;
 		};
 
+		tcsr: clock-controller@1fc0000 {
+			compatible = "qcom,x1e80100-tcsr", "syscon";
+			reg = <0 0x01fc0000 0 0x30000>;
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
+
 		gem_noc: interconnect@26400000 {
 			compatible = "qcom,x1e80100-gem-noc";
 			reg = <0 0x26400000 0 0x311200>;

-- 
2.34.1


