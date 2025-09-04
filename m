Return-Path: <devicetree+bounces-212950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 104EFB44348
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 18:44:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A60C581748
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 16:42:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 839D0322758;
	Thu,  4 Sep 2025 16:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CjiH6mer"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A30F430DEDF
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 16:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757004008; cv=none; b=OcMKHAU44rq3rHrVSKiLJffAhqPukkrzvO894sMFl44HoMNMCdDxgwM9v0GBw76qTka0AYp5mt8FrwG9qQu06bmafh5bRiWRx8a+PBY2vKRyLfs8ZQVpxMD+xqoOBGVllxc6ucpx2Py9IKHvA1Mzsv7qDe4Cm4dAwy9oyxWzqGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757004008; c=relaxed/simple;
	bh=27FWMqFCDTUwpqfJlNc8jFyWyreHhp7HJeUXTzNfhgA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Mtvy3jHMWvkB7hentYS3GYV11KNGIBk7Q6PM3qOkTEB0GIGTvetVq+3Kd75K5F2K+j/Oafb9PMzMbFS19qpCfvaZ2bcayQ67bdMEUslg4DOuPePSCcvkk/vgY8Xn2hZvoE9B5olFj9vNruF768w6Qv10tmtFkiMGGI3SComxnOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CjiH6mer; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849X90v007619
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 16:40:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PBnsv8jIHnwgITCzKC089k9TiBqBMjIPeobN0jq972I=; b=CjiH6merx45R7pQw
	E/yXR046uZfUs/pwpo2Tc5v+ssI3QmcYcpwnz7YXR7mhmGKf++mpfXAJAn+/7rxf
	TcRogn7XQZAbpfd3868VtqvPU/Hb4nhk3h8Njt5SUMLjlKpuDC1nwbVsDokj4wYp
	LmAHXkYRzZAoVEylirfVRY+KZFJUrexiBmMJ9O+zXjwRlnKC95791W00q+tB4CBY
	OK+VdmEjRuTmI5VDZ14eEmYwyn1fFz6ppbUUhK7zeonJnPomYRnHykJE4JgAsjoI
	hAhUyXM2/5BK0fm7FjjlzZSBFvsb/xiAKu74cDRHgwSX2c4/hUbYfgxwfifJqny1
	KsfccA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura9041a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 16:40:05 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-324e4c3af5fso1129306a91.3
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 09:40:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757004004; x=1757608804;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PBnsv8jIHnwgITCzKC089k9TiBqBMjIPeobN0jq972I=;
        b=kTek16BMPu60jQcEpxzyYJlYcx80nxMo4q1Q+vtbVI07jlcM1hxyYwtKh9ixl01RX9
         BPltxpVtLkEodKTVpKGoUdULvthiKIPkPezrRJQU+3ql+1PD3F0lh75KNn7m4tFLVDZA
         DVeBvoszv4P+PcYzYkILOHtIiZkcIxcH/vavRvL2OmDJXBeGM5V0bGSp3i2Unqvj8HEI
         sOV/0FIZYMgEPHsnGMv9mS/mxnVnKthOf+yy0CO6tzTwdZVn3nE8+xW4yNR3l6eRQMjN
         m8U3FUUMxUlFYTUXQ9sB6CIXuhC473c34K7UEZQEasrUrb9rPbldeLa97n6jsDrw2FLE
         41mA==
X-Forwarded-Encrypted: i=1; AJvYcCVCTMFX81bNrUwYKVP3rDOaAgNFRk4oSJJf1kA7Nz1piFVNmpo/Afq9ef+gWeMbFSZEhSfvR0CPocaE@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0hiEkt3LmBXUPYktVwhtYGPT2/oQ+UneX9nUUxJlhZzWFf/y7
	6CUm+arFgc/n97VOtYgckynPIQYlRbc//vs3MLDR8mp+8RyMC168AZ1cNl0X4utYA/9gg5Pm7Vm
	X6O79fPhvOekTnYFKTHyFjYNf/KlbxsUVwV/NIpzaWuW3tx3IExfOblubwh8vJlxn
X-Gm-Gg: ASbGncuLDxCRsPtBqW5/Cha0QTslPQpPVUWWRXNcHZ1MxCaO1eUmcNRaQ66/2UEShvQ
	EMTUiYVITAT7hXGPkBvT52vzWl4UDVMHDY500DFcIwS18UZrH2WYwsVU8F5VgJbK3UOTMYenzsf
	Sq5TF0QCLW9NYgFlGjz/eNq3UhuTUHoBvhCx7/cwCftuSeoE1Pshuu/DfpwCv3T8QeFVhPvrO3s
	wHNkcGNJ5+EMU555dt5nsovtRzbGbdqJco2qFBzfNGbIVQRZukaa2KTCvLqf961GPHes6chd/Hv
	WAkNEwF3nR4SaWC25FHxVPGoW/szOiNoqYpjfB1Mm3AAfDZDhhMySZaXjw7SbQ5UXO8K
X-Received: by 2002:a17:90b:2790:b0:327:8c05:f89a with SMTP id 98e67ed59e1d1-32815412e9bmr26511479a91.4.1757004004358;
        Thu, 04 Sep 2025 09:40:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IETLbiF5LomcDMPddyH+6eJjA8N15yzTu1sZbM/gaEcwfgyKS7gkdIZOV07jqV2Iqp5IGsQEw==
X-Received: by 2002:a17:90b:2790:b0:327:8c05:f89a with SMTP id 98e67ed59e1d1-32815412e9bmr26511431a91.4.1757004003710;
        Thu, 04 Sep 2025 09:40:03 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4cd006e2c6sm17346371a12.2.2025.09.04.09.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 09:40:03 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Thu, 04 Sep 2025 22:09:05 +0530
Subject: [PATCH v3 09/14] arm64: dts: qcom: lemans-evk: Enable Iris video
 codec support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250904-lemans-evk-bu-v3-9-8bbaac1f25e8@oss.qualcomm.com>
References: <20250904-lemans-evk-bu-v3-0-8bbaac1f25e8@oss.qualcomm.com>
In-Reply-To: <20250904-lemans-evk-bu-v3-0-8bbaac1f25e8@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        linux-i2c@vger.kernel.org, Vikash Garodia <quic_vgarodia@quicinc.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757003953; l=865;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=LoxKYvMXT6w2D33TxA4UNVzhnQ1bXXJVAz3sDICoZRg=;
 b=cn9950aoCKHCLBDJ0YQwZZ3VOYSNkIexa6YkQadyz2LdSJ6QJLVSeQY/Et3Cb+sit9kRExVnW
 ja4vkVqHBA6AP1YylmP9vi7DIKXoFyrKl97WqVPitioS8TxvugA4hap
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-ORIG-GUID: RR1Pv1BaQARvvIwcUui3HVw9aTlMnSVs
X-Proofpoint-GUID: RR1Pv1BaQARvvIwcUui3HVw9aTlMnSVs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfX3YADy/q4pzTZ
 2RxmgZizjGYSe/26Aw5xrYgnMz6ZukfA9iSTsQ5yInub5aeCotQiz/ub8eYm0s9zBf6/AN5vXur
 yFKOOv7IHtG72kfBAUc/d5Sp+tgIDCm/IREuE4OZBOQUCrMf/52FgyNFl/B+CG4wa/cJqGH7A/N
 G4tcG8t6z6DU62nLJZMmybfSnOkED8AvVw2FwYavyCj3zCxRt9rwwZKWaW7R2HhrN3WDCOtjgwZ
 VMCNWJoQP/pkyoN/MdRR5+MR1Yf4Hv230qhcamA+CErwd/gq/kTHcQiThcbTAezLBMvhqnFYxs8
 hoPXzKeTqzbIGueGpkcs8cG8NX2a0eWKQLFFbuengTV6GeQcVgzMhBTiekP6Rmtfo4llpn8eKfm
 +LrLlakt
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b9c0e5 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=9guL5b7EFFMc6jyTlUkA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_06,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020

From: Vikash Garodia <quic_vgarodia@quicinc.com>

Enable the Iris video codec accelerator on the Lemans EVK board
and reference the appropriate firmware required for its operation.
This allows hardware-accelerated video encoding and decoding using
the Iris codec engine.

Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 1ae3a2a0f6d9..d065528404c0 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -333,6 +333,12 @@ nvmem-layout {
 	};
 };
 
+&iris {
+	firmware-name = "qcom/vpu/vpu30_p4_s6_16mb.mbn";
+
+	status = "okay";
+};
+
 &mdss0 {
 	status = "okay";
 };

-- 
2.51.0


