Return-Path: <devicetree+bounces-114171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B0D9AA005
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 12:28:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE87F286A68
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 10:28:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8E8C19CC34;
	Tue, 22 Oct 2024 10:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eIrO8YFa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 983F019C553
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 10:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729592841; cv=none; b=CiDNzPLjvT5/svfNn/9ULSm9CgBeGVLuVQzM1HomqtFVxF8F8TgTHwOAFTN0rey6VCOoggBlDIoYhMe5saReldN2SPpUFSUBuWLG8MhQyNhlfgsKWb2O/E8qKBahFApdxFeWFQRETs1do0KXUMG+9dcnFphbrB/bVn1tu/FYM1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729592841; c=relaxed/simple;
	bh=mrHNGaLG3wxcFWqQnmX6nkRlD0BXMTk2Kx8fViTviQ4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nchzCb2V20oYhLpR6wpg9NjgrREiOJaqHUjCAo8L80bPRt13jr5hT9VKO0ts8C+9YpS/HlPUPPtFVeNOxy0bweSGhylEX8m1wGuq4SSMKY4zOnHRkCTkVDKaAbOoyEmkvGyeaVHOmQ/4oPIlZP8Np8k2FwXwVY67RuaNCHwtRWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eIrO8YFa; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-37d6a2aa748so3590561f8f.1
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 03:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729592838; x=1730197638; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0uBzsuMo6LCxsTfPDQZyJ7XWfEvmMRhdKl9WeRF5zgI=;
        b=eIrO8YFaCymyE5vSjprzwVb5lWU3h1sSaeH0Pq1r843wkpIuXbu832czoJkWyQVc4I
         GTZOnQmwUjdw7ELidGT+SxKd1O1uf6sNr+BeJK2AiC9QnJ8VTidF9FVtMi2quk6WGGK4
         vdgaueppiUPVProR8DAaik6jjp6SYJ3RV5mSP9YdqmYztb5XSHicAu5w0TkqlasCHqWn
         CPTEvfsK2d8IZ8v9oF53qLK5WHF/ahTsXa6FgfdTvlsoe6sMM54rDHm+zoYdIGVpzoay
         zrbJ7qfR1VGM2Du6CcGupycLhIratifGJUfyfFB0/fLV3lsMATLK4v96eO4PZGciERZR
         IqxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729592838; x=1730197638;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0uBzsuMo6LCxsTfPDQZyJ7XWfEvmMRhdKl9WeRF5zgI=;
        b=md+tf+XyNexCKwjzomEU91XlNCYIueIpxBcZW+BDoOE4i3EXDCe2uay261o4DgkLNe
         AVSekZ+lQMpLzKo7Bn2j2JyWbvqzyyzEirHtkiNH7GcZC4ThxJWOlhzagh5fDxE/IdFj
         L4A3keI19rlio8/Wlj1EmtZUvm57GcJ5+J0THJ77lX7yCB0XD0gX9xBcbJR7A9dNQTfc
         tsEYZBWy+sILee9sTybv1ZwDxcdrMMNQ0GMtWqFjIhr8nlaVPlzWM/uUkKqrBM+NhMS3
         VggHIf1bg4ge6kfsZ8yS4VKS94ADhEhWbpU+6b5mx4RGEAV55fd8tYvyjqyhjI+oMtXB
         S6kg==
X-Forwarded-Encrypted: i=1; AJvYcCVF5mrdbNHC+iOQLZrBcv8LPp+MPe8cKdbULr//Xxjx+AXLQM9wj3l60I7548aSiRJrqTFqaT9kTpEc@vger.kernel.org
X-Gm-Message-State: AOJu0Yzf0k2+TlkAji+x4ZabRzaoZYwPcLGQ2+zAdwmDlSXAgFlF33KR
	CkoUFk1z3rD0/YOq1tEUm0WKX4k9+hbObYLU94/wGJuJnBEzW5qPNOPV31UuaIM=
X-Google-Smtp-Source: AGHT+IG4l1m2EIAOEt2/1mufk3DZ2cVUcOi82fkd9OXy8ldceIrz7ub0LlJEUkMuddyGj3oob7qwSA==
X-Received: by 2002:adf:a453:0:b0:37d:50ed:daa8 with SMTP id ffacd0b85a97d-37ea2164ea7mr7670674f8f.18.1729592837814;
        Tue, 22 Oct 2024 03:27:17 -0700 (PDT)
Received: from [127.0.1.1] ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ee0b94048sm6285184f8f.85.2024.10.22.03.27.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 03:27:17 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 22 Oct 2024 13:26:57 +0300
Subject: [PATCH v3 4/4] arm64: dts: qcom: x1e80100-crd: Enable external DP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241022-x1e80100-ps8830-v3-4-68a95f351e99@linaro.org>
References: <20241022-x1e80100-ps8830-v3-0-68a95f351e99@linaro.org>
In-Reply-To: <20241022-x1e80100-ps8830-v3-0-68a95f351e99@linaro.org>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Trilok Soni <quic_tsoni@quicinc.com>, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=975; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=mrHNGaLG3wxcFWqQnmX6nkRlD0BXMTk2Kx8fViTviQ4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnF339hC5+XeddSYYkfvmFcSaCx/ym/kHMG+FU+
 kAOz2TblbaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZxd9/QAKCRAbX0TJAJUV
 VkFXD/wIzzy/7evBKkBA9NuxieBo+d6aerIf14u2fUfhnLa7Np7lmHkQ0muNrxpeb8B8lI65k3v
 WRGPepcaakEOdZvXMHOfQh7ErDyzmaw+M+5zH0l2k8/lCwxfqQK1oSRDzeppOC+I650YO+ZrUli
 GSYbyPSPfpbd1s9TpimdpKrwMxU5qhLsJEKIqp+vJbVHU7SyLlebWHQtguhAMxh1n4TV8p0MMXX
 0EZfog6e11T2JXDa+pDAAKL5E31lqHQXjRYy2H3GALkI5vhg9BKxqy10nIzFXPZJCXVWwkVn1qV
 f+nVr0IJjZdM3pHkj3TuDhkw88jXgI40CZexljPGI7MbR6Ub02IIJczTHPUp8L7dYdBWcrzaiCK
 UWCt5//TNOVYt4JcIcaIMA7SMcKu0vqa6+Hsf2w4/XTH6TD1U3AA9jmN1Nk2gked9T4yggSBUO4
 4hhp+jihyMGuGJvQANc/pSVTdY278HF9UDehRzNdfng+RplSDLa7MfSl0u9ireVuCGv2DS9yTto
 eCtrkIEZFVyaienUH192uxxo84y0nrLkVGSgoydtgVEh9nYJaS4nbCEmr/VtAPIjgX49DC1mEI4
 2acSZbh3blphS6WApMiwuDtKWpU45SINUELVGvQw3kESrvzJH4NlZ50o23Q8nIv3XRZsmlW6Vyg
 uilZebePu8gZIeQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Enable the remaining MDSS DP instances and force 2 data lanes for each DP.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
index 7cc45a5cd7eb7e70915d04ea7e181b56f693f768..db36e3e1a3660f3bcd7d7ddc8286e1ff5d00c94a 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
@@ -1105,6 +1105,30 @@ &mdss {
 	status = "okay";
 };
 
+&mdss_dp0 {
+	status = "okay";
+};
+
+&mdss_dp0_out {
+	data-lanes = <0 1>;
+};
+
+&mdss_dp1 {
+	status = "okay";
+};
+
+&mdss_dp1_out {
+	data-lanes = <0 1>;
+};
+
+&mdss_dp2 {
+	status = "okay";
+};
+
+&mdss_dp2_out {
+	data-lanes = <0 1>;
+};
+
 &mdss_dp3 {
 	compatible = "qcom,x1e80100-dp";
 	/delete-property/ #sound-dai-cells;

-- 
2.34.1


