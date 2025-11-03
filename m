Return-Path: <devicetree+bounces-234464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB6EC2D43F
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 17:53:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 920381895E49
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 16:52:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8527319879;
	Mon,  3 Nov 2025 16:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DOD2zKZA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAEE33164A6
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 16:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762188710; cv=none; b=l4qs6aiqg1aKXvsjLJtBK0sAel4Vp2CH0E7jCrwfBaMEPKw9QMQLu6JUCXhym+4aL2RgRQ/LRKVCRDxtfVrm+msS3QcF3rjX3WmK7KIBXQVaY+DMYWAzVGZpZAf/uSNdOPlL856OM4aIaxXShaCCjVjr4457YP9bSYFA5KUM/5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762188710; c=relaxed/simple;
	bh=mCOZX0wAJCao6Cq3x7gATRPzQuf7w642RxcNsPjVk1c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Sgxl+KaPw0CVVc2Wn6TynPkAuq0zg9iVszrttdD+ovN4dfa0BIvD6LJXT6qloT5W5uf3kdbhiNOqHaCj3LasYOM9FYSUpU3DFLP763Tnm+HOf8zP5qlDDLROh8ZhRHh0Ob0Hnk4mIO1JbMzJY9tLmjdZkc/5jkAoE/sSmXhqUcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DOD2zKZA; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-475db4ad7e4so17560675e9.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 08:51:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762188707; x=1762793507; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DuBHWLH4MeyiYgFUlKB6HBWWuk8YEllgKVsjhOQMi1s=;
        b=DOD2zKZA/GRuAcGnV/CpMXHGv3ljIe5onWkpoW6uWVNF8Eb/G/GeZ6EmRe3rvQlIBX
         0EIFW0J63gNDoSAOtDqrQDUjUWPOywquUTGaDfHv0It0nwamnsCcGZNwSOPIjcozYYP5
         USm+SvRFc9e2ifxfYvewOjzHM53fSYxCG+7L2+OhGzzZYO3tVRzi6YIOYvfgKCCdH/Fm
         7mVsQEmM04G8Qekp4UZr4f/jQ3QtsIXNUD39vS4tGa7m2zJAYuwYrK/8qVFaPDngltr4
         +fM9k6V/9tCYh0dJz5CQkzj6Sguw8VQ21x6fLcS/0/yUKMPCKN4coW3wYjBxP8KjcWXy
         Phsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762188707; x=1762793507;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DuBHWLH4MeyiYgFUlKB6HBWWuk8YEllgKVsjhOQMi1s=;
        b=sHp1dvqIsoncdhTD+KSjBWp1OB1JrHMy9/Mgn4TtQ+1yG6tQZ7JcXGa06c0BgpKYjL
         Srnfr+OGpvRLVSin9hBKciVN77MDH0gS3E97L3CM4iuzS/rzP89JEs0AN3X8pla2q2oV
         Xr3n2IsScqTNAYIXhlYXocR7ntcVaeMzq3ORzs9NGjEWPXuNDYjpRKfXRvNF9nXn/hEX
         Pe6TA2r05/nyXbU6xLmKNtvzskMCQo47TV4YgxHr3OqhPBmxuvdiL783J6A5l7ThrhIy
         qsLmp+E6AX+Id6PRTurHlvjoBT8SVvTxRSU+IH7BIe9dkbZilQywbiEutcBaLIln9ldf
         q5AQ==
X-Forwarded-Encrypted: i=1; AJvYcCXAHzRdQroLHgOXteoEbLI56OAWNp8hj4115+SfnC9iuqBH00ZWJQJfHe4pXYdNSOiDzjYEi2zrdXG6@vger.kernel.org
X-Gm-Message-State: AOJu0YwvTiqqPx+ov7Ye7RIkulk2oXFyj74QNbDCIb1kZcGTmNh04Ft4
	7KqaAtEQJplyOtwZwIz6BkRtE8X644C7aZaxBpmGon6sTpQbmVW/Ih8VArD0fDXRhE0=
X-Gm-Gg: ASbGncszzsFTA17EiEEuImhecuvwMYGRsl5Btef8/+ujtSgFyQ1qzhhAgVObsEq0siU
	ZSCe4iIJb1owbINjaDWwOyrtgAJ9MAwpFBVLynOBcPrG+nI3eMQDWtUykZx+T462WNE8VHBkm4e
	Q7JjDMfd0VKfoJmaPHdrNeKnJmsTT4HUWNMPQ1cnJJVYeE5gjbWBrDM1pIB2XrPfukZ1rTeO0Du
	j+pTNf9i3P800EBXJ/L8IuibU+X5Pv2leWU1oWUobPKa1Ww4DpD+jEFLiTRMKQVtL5TF55OFytl
	fUXUHELA7gqdjoIiT0ULC5djA1B4f/UPVrc6+W29xfbzorYnDCGUz2fmuFnQ62tBUpzN1wu0uGp
	wp/74AxCNGHvcUCRM1BR8y/Mqd17t8zrcZJY3Nkad0s1QmOBGFWs1Hn8P12YpBiq+ZO/Og3icYA
	==
X-Google-Smtp-Source: AGHT+IE6YBQgAIUyCMmv2fXm4jqDB7YrnBx6+XQ1hEz+RwoSFkRkY/PGM3YRCiK8RTc02JrsHVFtVA==
X-Received: by 2002:a05:600c:530f:b0:477:1bb6:17de with SMTP id 5b1f17b1804b1-477308be7a8mr124996755e9.30.1762188707001;
        Mon, 03 Nov 2025 08:51:47 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4773c383ba6sm164881105e9.10.2025.11.03.08.51.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 08:51:46 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 03 Nov 2025 18:51:40 +0200
Subject: [PATCH RFC] arm64: dts: qcom: x1e80100: Fix USB combo PHYs SS1 and
 SS2 ref clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-dts-qcom-x1e80100-fix-combo-ref-clks-v1-1-f395ec3cb7e8@linaro.org>
X-B4-Tracking: v=1; b=H4sIAJvdCGkC/x2NQQoCMQxFrzJkbaDpqKhbYQ4wW3Fh21SDOtVGp
 DDM3Q0u33/w3wzKVVjh0M1Q+SsqZTKgVQfxdpmujJKMwTu/IXI9po/iO5YnNuKdI+cwS0MbQsH
 KGePjrhhiyJnD2m/3CezqZUbaP3OCcTjCeVl+UPbDhnsAAAA=
X-Change-ID: 20251103-dts-qcom-x1e80100-fix-combo-ref-clks-bcbffeb4269d
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: Taniya Das <taniya.das@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2612; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=mCOZX0wAJCao6Cq3x7gATRPzQuf7w642RxcNsPjVk1c=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpCN2d6wRo3jUHyyHoEVWtG0ycbnkTwZ1Z+kYj5
 kZlpSasa5CJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaQjdnQAKCRAbX0TJAJUV
 Vv89D/9s6zv5SbSr+1MAPxB2blSpgwOMWOShCAZWWqbuQZDH7HnNiAsHBhaYqPaQl3fCsu5PHev
 22F9OQJPGCPiXk4NoJ1fGJkjas8/fH5KY1EcvGh0q1lzytN1jNY03nqv71oynUG0o5RfWevbFkn
 LCXXQVytoIUPuZsD5to7GLyEV8mKt+Al4RzDHtHTGbX8LKFAfA3HR4yjufmvpZvKldKyVAbg2RP
 XAe3sL9p0G0qsmvhEdmi9kMAdbfwm36QTyeyVFREbiNBIW/94mo3XPlugLpwIB5yzY2GheKw20/
 TBsijFFKyhQRF1srb/BgcwiBbBro+2Uo0RtmDBWRIjoDHijtoSy3jkl7Vc5iRVsSVEyxhEbHfWe
 ysSbV5WqEFxd9vy2JZnjuoCa5SpJOC+7YTEO7InlJctZv1vdT6hyjExSJ/IdipNrStARnmT3fdP
 83nq9bWsNsBIweSL0R93bAFwKqOyPqpfgOFR5jrBgT2uVndkqM+ceQ6tqSGTkckgZgpoAaX5Ie1
 oNFTGguZBDs3rhpkgHp/EL3bpOuGNKVZzxoq/AEicB/9i3HlR5LJvxud0sA6Az/5kWATDG1+ONi
 Eac/2iYwmtcC1zHKK6qua6kHFAscHJnwUl3Lz6K8g283ALiDlO6QjwuOzSRTpDEh2UKpDpuOuv+
 B5MLqUS4KM4piaA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

It seems the USB combo SS1 and SS2 ref clocks have another gate, unlike
the SS0. These gates are part of the TCSR clock controller.

At least on Dell XPS 13 (9345), if the ref clock provided by the TCSR
clock controller for SS1 PHY is disabled on the clk_disable_unused late
initcall, the PHY fails to initialize. It doesn't happen on the SS0 PHY
and the SS2 is not used on this device.

This doesn't seem to be a problem on CRD though. It might be that the
RPMh has a vote for it from some other consumer and does not actually
disable it when ther kernel drops its vote.

Either way, these TCSR provided clocks seem to be the correct ones for
the SS1 and SS2, so use them instead.

Fixes: 4af46b7bd66f ("arm64: dts: qcom: x1e80100: Add USB nodes")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
I dropped the clk_ignore_unused on my XPS13 a while ago, but only
realized now that usb_1_ss1_qmpphy (the left hand Type-C port)
doesn't initialize successfully.

Traced it to the TCSR_USB_4_2_CLKREF_EN and then checked the Glymur DT
patchset. It seems it already does this for the SS1 and SS2 PHYs:
https://lore.kernel.org/all/20250925-v3_glymur_introduction-v1-23-24b601bbecc0@oss.qualcomm.com/

I think replacing the bi_tcxo is the better option, since the bi_tcxo
is already the parent of every clock provided by the TCSR, including
these for the SS1 and SS2 combo PHYs.
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index a17900eacb20396a9792efcfcd6ce6dd877435d1..9c9e567731556ff532fa64c7595e2570b0597da3 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -2937,7 +2937,7 @@ usb_1_ss1_qmpphy: phy@fda000 {
 			reg = <0 0x00fda000 0 0x4000>;
 
 			clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&tcsr TCSR_USB4_1_CLKREF_EN>,
 				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>,
 				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
 			clock-names = "aux",
@@ -3008,7 +3008,7 @@ usb_1_ss2_qmpphy: phy@fdf000 {
 			reg = <0 0x00fdf000 0 0x4000>;
 
 			clocks = <&gcc GCC_USB3_TERT_PHY_AUX_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&tcsr TCSR_USB4_2_CLKREF_EN>,
 				 <&gcc GCC_USB3_TERT_PHY_COM_AUX_CLK>,
 				 <&gcc GCC_USB3_TERT_PHY_PIPE_CLK>;
 			clock-names = "aux",

---
base-commit: 131f3d9446a6075192cdd91f197989d98302faa6
change-id: 20251103-dts-qcom-x1e80100-fix-combo-ref-clks-bcbffeb4269d

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


