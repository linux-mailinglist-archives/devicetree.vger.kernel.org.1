Return-Path: <devicetree+bounces-55240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 035C88949A2
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 04:52:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 62C87B242AE
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 02:52:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60126134D1;
	Tue,  2 Apr 2024 02:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vjkD967F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF85E1401B
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 02:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712026311; cv=none; b=aECY8dYmVh7EtG2jbgFUv0Ljh7S/7t0cnqFKVIZkdNbNoR8QjmNXHH61O1bMvUS1Ymq0SDdZeT5Qj30y5zif/Nfb/ItzoXHTqYYiHISTimIknGXvTR6mJfB5pGihAeQhTQrgXZUqiPhFfYfOKTOAl7dOPpDoSpbHviii/nSTkN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712026311; c=relaxed/simple;
	bh=M5PDgsfLVIKABExlt6TlS2fGlnl3XAgxVoXclxwHIH8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CiQlc6x0za4d/4ZNCy4iOB3wZJWTl4cjmgh4TS/8vPkMeIfbsTyUaKRMk/x1CTonAeBK8uHnroP0ArgCvLXsZjoHGkqKiKcit/xpuqfnvw+JUg6g5A0KXLjxbIJn+a69x0eqj7Nnfd18I+YBoKs+rLKKPE7U+ltvJCEuwlB8+ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vjkD967F; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2d485886545so76941831fa.2
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 19:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712026308; x=1712631108; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bQopQsz++KyAxMIyytKdPL33zkWupusjZ2yKHzV+hFA=;
        b=vjkD967FFn4QHmdRwaWe7ZqmIMkWkPcggUOpKK39gQEG/6cO80Bl0kANVgzks4yFRY
         Ltr154VmJeplZO28O0h/Di8FO6isE/iWMkXKoeFckDioqtTkigJ/KOgCsC9OUT+fvlpv
         /6bOfPIaDTTZoPL25ZskptsloChDo9S+Teqsjix3CZlng9xjUejjnkRfmNew7iK4hbyB
         wA1YFQzdvea+mTeBnpu3PirbvPWbJU+S5pX+FXDyyD6Aw7qEHlg+sBSIXIcqbOdDxlvZ
         iqdqPF4crAy/fmzb8K4HN+YtwRaFxw6uV0kXYo8A8M7fnsOMrUpH9RB1ho293ahTs1HK
         ioLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712026308; x=1712631108;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bQopQsz++KyAxMIyytKdPL33zkWupusjZ2yKHzV+hFA=;
        b=uqJSeHXNkNkYEM3WaI8q6fq/uuJHfTNUKkTJXeM31a5snwJf/aU2hptfHkC2/dLJiW
         u6pyR3TWGhgOtDiMV71Iz+v9zk1zLAJl7KbPwBnLGvJuJDPefzAKrnLPCQdPHiTHDVwc
         QMARv5BdxVru7ChgmhCGM7ji04li5kTaM+6Q1pSFZBaL/UVinVTNawX3q5F4qa9CQxE2
         gGG/oAlvimkkcCeLqKi+bDb/obYH9kQtQ/MG3XW7tVWXuXS6ddwEVLTwyGFOuUDZw7GI
         htJXd3efhiIlWYYpPKMi4L2MPWS/uTdQQxfZfSg8eW1mJN6NNfh1lfpvvaqcm9N0gkKM
         7G9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXh7HLOlcFtXWa8hcGd/EuPz055PSfd1/p0PJh+CD91inh2L3gCw5xnHk8mxEb/QDIGCRJvQh0WWoWYGXf7ZTv3SOMhBiPJY2kPWQ==
X-Gm-Message-State: AOJu0Yxb5WhU+G0oWZYdIR2WWpIB1H0Mh7ebpg+HhSvvNXUrDBy+m767
	NT4rDEVEXtsDe6LuoCzR/sAaQX7DhnJxfNRzfgGBmKaQdqJggC6ZCKCX/4FQYvo=
X-Google-Smtp-Source: AGHT+IGrSyyN+7Ji7Z1kG2TLT9cUTAWr+kwdCNpmHMNaX/aEpYnUKXTWqSsOc7w0mjIyo3IzfenuEg==
X-Received: by 2002:ac2:4e11:0:b0:516:9792:773c with SMTP id e17-20020ac24e11000000b005169792773cmr271696lfr.48.1712026308078;
        Mon, 01 Apr 2024 19:51:48 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h26-20020ac24dba000000b00516a1e2a6fcsm738824lfe.256.2024.04.01.19.51.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Apr 2024 19:51:47 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 02 Apr 2024 05:51:46 +0300
Subject: [PATCH v2 4/4] arm64: dts: qcom: sc8180x: add dp_p1 register
 blocks to DP nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240402-fd-fix-schema-v2-4-39bf90051d83@linaro.org>
References: <20240402-fd-fix-schema-v2-0-39bf90051d83@linaro.org>
In-Reply-To: <20240402-fd-fix-schema-v2-0-39bf90051d83@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1307;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=M5PDgsfLVIKABExlt6TlS2fGlnl3XAgxVoXclxwHIH8=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmC3LAtIcMeYCV8wdzx41rVNpZHdO6Hqdb9Acke
 KlEy0hPopqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgtywAAKCRCLPIo+Aiko
 1ZjECACMIjKtBuev/aHDLstjDyCFgvFtLOdcuFsNWnXJkiuqfXtkj2iXnBViZTI1iuu3SxTOj/N
 /QhUrXojOtplpkT8oJ9Z4JuviS+ecli1R4spJ6s5TIYoyRKmwhyfuTKQHGxwrKmNj/ifrevPDIm
 LDH+Wn9RJltc1pHf29C75SWF8mRhn56piYYrecCbg/mNH+ofXXAmiqTiLzrhVwlKol9I1UGtVtz
 0Q7U9r7R7Uhl73FePEmAEcTXytYDJT+qsjMAOFt75+6Fom3V/tDslWrf18yZDG5utyDVkjI0zmu
 gBUKRHzEsCRMJc+KXVbw+JLa0ZjIiGjCuPHbWzXmty5qcb0t
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

DisplayPort nodes must declare the dp_p1 register space in addition to
dp_p0. Add corresponding resource to DisplayPort DT nodes.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 6d74867d3b61..019104bd70fb 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -3029,7 +3029,8 @@ mdss_dp0: displayport-controller@ae90000 {
 				reg = <0 0xae90000 0 0x200>,
 				      <0 0xae90200 0 0x200>,
 				      <0 0xae90400 0 0x600>,
-				      <0 0xae90a00 0 0x400>;
+				      <0 0xae90a00 0 0x400>,
+				      <0 0xae91000 0 0x400>;
 				interrupt-parent = <&mdss>;
 				interrupts = <12>;
 				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
@@ -3105,7 +3106,8 @@ mdss_dp1: displayport-controller@ae98000 {
 				reg = <0 0xae98000 0 0x200>,
 				      <0 0xae98200 0 0x200>,
 				      <0 0xae98400 0 0x600>,
-				      <0 0xae98a00 0 0x400>;
+				      <0 0xae98a00 0 0x400>,
+				      <0 0xae99000 0 0x400>;
 				interrupt-parent = <&mdss>;
 				interrupts = <13>;
 				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,

-- 
2.39.2


