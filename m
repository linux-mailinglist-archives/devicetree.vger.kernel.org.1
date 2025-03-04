Return-Path: <devicetree+bounces-153769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 70973A4DBA3
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 12:00:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EE5AA1891AF8
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 11:00:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AF2620299C;
	Tue,  4 Mar 2025 10:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u5qYO908"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E2220297D
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 10:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741085893; cv=none; b=MMmC06m3XO/5JT865RvoYKIv+lY3NVP0etSJkeQaN/MTbf991EVMaqZsZXzubyPiERNNVaD4FJpVxfahW7hteOnYCiJAFBCUxbnLXuURkzQtYa6vvR6sKYLw+KjFMxkIjGqNkCvEL3S62eNYdwdR8Rn4e77kR/qEuul4j3L8cPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741085893; c=relaxed/simple;
	bh=95ZioWTOFYyGeCgq7GdjvtNHse8rEA2pxGA2e/BaNy8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qc4F5BuQGT3Is5F4xgQFGI0PFNUMOFCFUPr3A4xqa/trfdy3xZAi/agxI3Aj6cV/NYz717hnTez8JVmav1K8pfTb6S7iYmugSAMVmxcC2oskP9Gps7KWpV9Wvmen1FU95Cp33U1V8u5mhwkdDnJ8ycm8MeaKV4H/gBA8sKnaWCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u5qYO908; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-abf518748cbso543833666b.2
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 02:58:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741085890; x=1741690690; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JkQiSZ/wmeIK3Ln89KuiJp4g0swVb994H9Tz4aOmNUk=;
        b=u5qYO9080uqddyn4hVisTDfmbhR+MST14GMcGkAaKbIqZYUTSt/AOP+QfD625X8ONb
         HAXo6x21ugbn55RfPZOGkpdAkzpbM+sWjJAdG5HVIdk7GJtaHpS18WAm772ZDVhyFK82
         WD50g+QMAY6aZhyEWBzNhf1witXoqJAiwxVnO7jEnTRXr70P85rg5O3OPJmPug8gxU1x
         Lzn+iizmrmiXtlI7zYLlIHRBfs4HeUfsj+Z/1LXt0go/bcuUT/jr1ugb2e2KFVVC/6sF
         DxkGimQP8CM35FC+SxkngldATKTxaVfUfFt/rOpNCBSmz5w+bOaKvkJx7tihy4pBAQ1a
         lyeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741085890; x=1741690690;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JkQiSZ/wmeIK3Ln89KuiJp4g0swVb994H9Tz4aOmNUk=;
        b=emIrq+yH/6lS4R9UB5vdAQj54o6RH1rnDsMhMFh4lsbr+QWWDWzVVP4IAXSXx1No9A
         xe5NlalxhiCxFiZpQwzfNrJbF/h845IQr/C+/mMOpCM2FThE5nYMW1pdRsny5NZe1iDq
         3YqstIV6VOfFcaGyErKU9wZFBK/KNEphFzVpuYTdFAn8gnfnHVSa/2oGauWAGwCJlCgj
         688Nb6sdpWoNRC5u6BWnelvy48tVUKnupWIH74zJojAaQA3J5WxHkgJIlZIdJBwSw+1+
         b7umIjz1twpYS6IV3OuZsVx1xmTtpVJZ+tf8ny+AWLimrB6sDzicllNgGihF2kkjSliX
         URxQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3ZyKFzGeVotKx4RKMubdpf4XWlQZR+jMO59nNI4nkERcEvjrMzuElrHmAZjQ4soInb+9xktR0QM5X@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7swtSFpnCEMWdyO3km03lprxmlyHhlP3HeEmiLkzpDPf49oYd
	rs0SckDLevDcinT/Bjxv1jI26BaNNxKjE4wZOXE1CrHC/b242vBKEkgD34E0lg2ojCjFITZePcP
	O
X-Gm-Gg: ASbGncsdFhTQojMXaeyJqXvqk5/bUC4wh8J5dFpGx4zftwv6kQqbtiap4UdLpt+sgIl
	7TDqEal21EicIbprCLzU557GeToGJXkq8V8C1oXDYiDO8vKj5FcWWVTkD1fNcpFP1qVoTr7kpYi
	t+OOH3I0JHfiU/6z+123n6TQYzttQ8D5cwDf18DGBSrS7N89Tj9HllM5FDRmnNVcSmLc23HFGjW
	IEIRA+5dzODsmUD7gJymCndWTsavpOjqyUfrUK84znHcFC8GVm2QSPDzgDX0H+XzgxSS9y8BlVF
	cq4eqlaTg/zw0Jng4D/H5XowHVXqzzVGHzinCfsXjaw=
X-Google-Smtp-Source: AGHT+IFlevWIsVV9QpmLVmSKI0RDAqmBsSPQlBY6GR6iTVQNwReaXcAb8Esi43q7fS8EvqvXaJbk1A==
X-Received: by 2002:a17:906:6a14:b0:ac2:13f:338b with SMTP id a640c23a62f3a-ac2013f37d0mr56922366b.55.1741085889677;
        Tue, 04 Mar 2025 02:58:09 -0800 (PST)
Received: from [127.0.1.1] ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac1fde3f585sm38973266b.53.2025.03.04.02.58.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 02:58:09 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 04 Mar 2025 12:57:47 +0200
Subject: [PATCH v6 2/4] arm64: dts: qcom: x1e80100-crd: Enable external
 DisplayPort support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250304-x1e80100-dts-crd-t14s-enable-typec-retimers-v6-2-e5a49fae4e94@linaro.org>
References: <20250304-x1e80100-dts-crd-t14s-enable-typec-retimers-v6-0-e5a49fae4e94@linaro.org>
In-Reply-To: <20250304-x1e80100-dts-crd-t14s-enable-typec-retimers-v6-0-e5a49fae4e94@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, 
 Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1400; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=95ZioWTOFYyGeCgq7GdjvtNHse8rEA2pxGA2e/BaNy8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnxty5tnc4mm2cJL42Y8k/gxcQiQEBOFLdKb9AN
 qvlhiLPXbWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ8bcuQAKCRAbX0TJAJUV
 Vt1HEAC+bgP7BwSGqeBs6xep8USVAdmKde7YNd3q4vyossGxD8kR2AoS/cLZ8OvF6uJUjqFUg1R
 Cc3Mq0PsHMRkkk7gNkf/1qVWqraeXAOCq2pIMb9ihMB2VXzwwYUX+mJcrgtce2D+d8EYSQ25dY2
 ut+ZSicEUSz+ESEsodc81SiKzXz+3LYSKH4zzjQ4+Ni3xjtwFmIUSNPZVHvFzVfTl32wIFeJ8nu
 9ddXJ0Ot2HkirGCDZuvHyr+boFm69ejzZG11sswWOHTzF9O+KDCQFmMnXucqlhuyfxz2825L9iJ
 EoK2KJz+OudxNLDOIj5xWU/GyFISHJxDt+I5GeNMdIH2JN6KSuE7HlUhbK5z/PwW8IKEBf/rqEM
 v1SD9Ifac/ckXoq2Qjw3HNlIKsC3wGYG1AJXrx+4GUsS01RCE7uFaTav4cQPN1Vt7u27TEP7oKP
 xsaM4Z6vcqaRG0IAvtZQjyWT+CBg8OHHEzuaFXvqjbzybvkdxTqi+SpwBn288t3DFzFiLCY2QCF
 GiETw4g1LPz8CD4EEyJXN5QEjnZJ2eJmzjFslqKC2NU4Mmb4yMFQ1sX1vupVY0SkueHMvNEIffL
 99zHOPuG88xsNzE+4/1s4IVPzbjTRkFJZ9+NvDjHELclSIdIgD6OEaWiGMAqJZTGiA+EPkv5K7l
 m7zHvqEFEPBBR4A==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The X Elite CRD provides external DisplayPort on all 3 USB Type-C ports.
Each one of this ports is connected to a dedicated DisplayPort
controller.

Due to support missing in the USB/DisplayPort combo PHY driver,
the external DisplayPort is limited to 2 lanes.

So enable all 3 remaining DisplayPort controllers and limit their data
lanes number to 2.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Tested-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1-crd.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
index 34e203fb7a4bfd781cf268429b3e4174e8d19bf9..53f329c320190afa263fb8d8028828022464fd99 100644
--- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
@@ -1117,6 +1117,30 @@ &mdss {
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


