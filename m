Return-Path: <devicetree+bounces-36262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCA184054B
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 13:46:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9DFA41F238FA
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 12:46:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED996629E5;
	Mon, 29 Jan 2024 12:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t0If1H5z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CE8627EA
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 12:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706532365; cv=none; b=eyDZYBWnguJ913SW1ScVVqvWM3M9sCpBrOccAePUMdqROrodQufTAOTFmHfvszGvM8UxXJizcDNRIMJyPCAJ3EGId8wYtc7BnBtywMeM2U3GYUFtDurIrB318G9Yvjaxt9sHDxF7fhlW8AY8ujeAWjVFDKAW+iL4O7Iv4mIwxvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706532365; c=relaxed/simple;
	bh=TcSH6PTQ+XJnw7PPfCZDpuCKVk8yXAt9SaMXMBrCZkA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lpkUAKdXaEyuK5AT1+oYxxeMGcMsLBAmrLdUr8ztAw6osZ6ZErGgpXne++3TYEIcxbgjKX1h+HPd5++nRyJ2zS65gsZnpiKcy8DQLFU/dSgZ36RsqTsZZUowoekbt/Xu/7vnRVDLoy9Q1GLO6MxOVVGlrFIilJzrvXgrVslkdMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t0If1H5z; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-55f0b2c79cdso934073a12.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 04:46:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706532362; x=1707137162; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tYDA92LfZ0itUlh8YMaZwnv54pbCjg8ilHywXWo7zrM=;
        b=t0If1H5zGpghSzFLihLsH9a6ZumcjwQqfx85LsdGDFbGcjHzxKmuySW4y744lDduaT
         T//CU0jPKnxhKBYpPQPEg+voDXG5mKnpoLgCJ7BqSI+b4HlbOed1MTa5SFfapdoyghKE
         kxTTm4ayeGb8AxLltafrcQiEP+AAp2wfjCOsdRZSIWvczw5RdGZ9qaYbcOFmccSybH8+
         dLNPMEY0aZlN2fOEMaO/ajzsqdMLhbs9mNrxhFOyTt9kAkZH4Qvte4G1YBzIXJywy7wf
         OiCNfjo1QQmWFqC4eKNdXvy0bSdHBlciVNzd90Atenj0ma6QvnY0GQw5nvNo+MojkwFo
         nspw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706532362; x=1707137162;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tYDA92LfZ0itUlh8YMaZwnv54pbCjg8ilHywXWo7zrM=;
        b=GkyBsMYPPIhz0dbI8ViNAeSLWrYq2DMvBMzEOUA9Vt1zwnkHHmSV6kLhKrnLij7+IZ
         hpnYaGX+IHugXk1n7q7vWJGNS2wJMG5oxxoTpSfH7FshHugDVHl0bh0pLOOgJLZJKskV
         uTEjp0dcTu++2rm4axCSQ6ggdPVXaTimBJFXaZC1y5nYFzo10sjx6Z1Z2mgJvVdDFINX
         YXbYHW7Ovyjlsq9PGVXcnM9gPsYbekcnAzb0W/V7qKJNEJ4I5TFPa22Z1RdHIgMXnvGM
         LtstqBf8QDMvl7QYCph6nUvW4LjDjDPKgUA+WTUR4LVtl9HSxLrKiNxDM679en6OO543
         o2cA==
X-Gm-Message-State: AOJu0YwMHif+mZtu4nPM1ia/jeLnDNjf7h/7RMM2vO0IkrFhtQJmYSzm
	nw5zv8jQTB0DJ7Xcnr7jZQvC4+RnqXZEQ4hgreDT4gVffwFFerrODficIDzj+Ji3QZRB70EexSJ
	K
X-Google-Smtp-Source: AGHT+IFG+vHXui2FAjK51UJmxwGbCeTs7i7kkmH1+nxcJXNA8xcpbqa5Ho/ZX/2SZPwqeUtzeNsr9Q==
X-Received: by 2002:a17:906:1b06:b0:a35:9a1a:620c with SMTP id o6-20020a1709061b0600b00a359a1a620cmr2572688ejg.45.1706532362191;
        Mon, 29 Jan 2024 04:46:02 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id 20-20020a170906329400b00a3527dba974sm3041495ejw.35.2024.01.29.04.46.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 04:46:01 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 29 Jan 2024 14:45:35 +0200
Subject: [PATCH v6 03/11] arm64: dts: qcom: x1e80100: Add QMP AOSS node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240129-x1e80100-dts-missing-nodes-v6-3-2c0e691cfa3b@linaro.org>
References: <20240129-x1e80100-dts-missing-nodes-v6-0-2c0e691cfa3b@linaro.org>
In-Reply-To: <20240129-x1e80100-dts-missing-nodes-v6-0-2c0e691cfa3b@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1127; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Q8J4vtmwt2/riBkSH8HC4PZAyD7bl2d1ez2isASmfa0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlt536IeSZOwzsaTqgGH9SznRpkkEMUmxUrw52H
 QbD5HI7rHaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZbed+gAKCRAbX0TJAJUV
 VqTvEACm5CwcWhpybi8NaxeeUbM1yS2Lt+frG7MuLniJUQe7Alem4E4SfVncTG1JyMFK1ZGoXwA
 akAWvUY4TlwCn/YnZCQNYJQ3ZvUt7V7s7JaG+1Qn62xf3S9iFevmXI0xsizxkORrVNPvBCIkFY7
 2k4HbjPWoGw5AymUzJ/KZX6axsFT/FAH647QAReXR8OfusKDyGyv7ExM52BXG1W4PYxK9JTNAHo
 ciDN1CxXZR68miNzKXrwnHqzZ4nKfh6L+MmURetNB+vrLHMOrHEOfOxyhRs+E2Q+2VC/dBCg7kn
 yH4fmU9RMcYwuDHJ49aRtwzbGKhbSdTMk4ZOOFeNz+Zk69D7WId83B8SOOyp1dkcW6X3LR5NnTP
 R3yP+iT4anxTR6zF6hEiGTA6DBuUX4IFwdsoiFGPswgNZOCy4jy7+fXws0knxNf6PBUWNTe0Dkx
 Th13y8MsjBvmnx2CGMZnTbgT4rRGztgUPRrX6oc7X+l50vBYVDatfW96OavP0NdFgWZsSldSZwJ
 Uiq1PjW4ISytFkHgJf8gqZEnycvSPSt10MH96W3A9dIDd35SP0puO+N13w0257RuN4gqgzO6e9j
 h2PXus15eXbfbPW8FOF589vYrdSq/5X3KmSpE/Hj0Jx3kYHTaEh+LYb3GSBTIteDJxcVHRl1y9f
 2/SiYexSJR5udEA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

From: Sibi Sankar <quic_sibis@quicinc.com>

Add a node for the QMP AOSS.

Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 1210351b6538..3790d99eb298 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -2663,6 +2663,18 @@ pdc: interrupt-controller@b220000 {
 			interrupt-controller;
 		};
 
+		aoss_qmp: power-management@c300000 {
+			compatible = "qcom,x1e80100-aoss-qmp", "qcom,aoss-qmp";
+			reg = <0 0x0c300000 0 0x400>;
+			interrupt-parent = <&ipcc>;
+			interrupts-extended = <&ipcc IPCC_CLIENT_AOP IPCC_MPROC_SIGNAL_GLINK_QMP
+						     IRQ_TYPE_EDGE_RISING>;
+			mboxes = <&ipcc IPCC_CLIENT_AOP IPCC_MPROC_SIGNAL_GLINK_QMP>;
+
+			#clock-cells = <0>;
+		};
+
+
 		tlmm: pinctrl@f100000 {
 			compatible = "qcom,x1e80100-tlmm";
 			reg = <0 0x0f100000 0 0xf00000>;

-- 
2.34.1


