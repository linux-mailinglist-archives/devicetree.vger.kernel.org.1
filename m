Return-Path: <devicetree+bounces-236616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E246C45DAC
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 11:15:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2F8724ED501
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 10:11:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91BF43043A5;
	Mon, 10 Nov 2025 10:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gY+zLt+/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RjwUBIfs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2051302CCA
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 10:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762769477; cv=none; b=PJuSdFQ22Ys32mqWmVJw84tqn1q+yhOudGUIobkDRuFxbqYWItnkvITPAzcHAzrtWoA4hhbqTy0HyIERFRY5nOrRGIPAbbDbB12q2vzgqDPqljLRk1NeNAwL+cEbz6cWZ3Kgi9MmFKRUAF7b7xovAOhVm9XHBJkFDzI8RGJauLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762769477; c=relaxed/simple;
	bh=/4jBah1ZYFQOjplUTfS9BagKtVZTMkugu5wHS3+nU5Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ERsQEhM/ATEORc2VGqgV5EVXvRAordOrk4d8KIKiJB5J0n+SljZYQ/i6cuAJfvKShJyAMRkwwGxyOHWnMhhV8GX/jVxtUOGXX0yAjys0Gk6wZEKjw+bzn4j/xr0jSW9WkHU9sttbF6YXZxfBQY6baN9805lJtCgmnRjNjRXNNnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gY+zLt+/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RjwUBIfs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA8smAN1811815
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 10:11:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=fxcXNLRndCS
	dBKrzLj3PXcds5y/egE2lHvpkckA8XEM=; b=gY+zLt+/QHUgTzNDk0lzHKH6596
	kxUOjSSeXyW0Ys0GxssliMGkKfaKUPquLFLFT4MJLISQpVzpGmTI8ioNqO3WY4uY
	bJAzBc6g0KvE51W5VMwnEyz83RdxQwG3eYA9445owA5odUvO/srUj7M9PYJRbu7O
	cMq/R/pqomTQ1m53LzdP9s5XomruskdovX9TQsylDf8qPtcpDdbd9JAGgj9QjTcO
	ei2MO0h2HgSOw7Dn9q0o0qpAR7C3f/7mtKdJR4yPUGzLgQ3WlTu0r49HetiVhc/H
	NjYwdxNCKFqs0PKQSe3COI5wYt5Os5S+cCAauCUhd42fVRHrDCDtzoiT0vQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ab5m1heub-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 10:11:15 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2956cdcdc17so36809225ad.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 02:11:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762769475; x=1763374275; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fxcXNLRndCSdBKrzLj3PXcds5y/egE2lHvpkckA8XEM=;
        b=RjwUBIfsj1+3SIuNqmMjx1MfPiu6RRSndI9yNQMbWcZPb4Jrw30wnooYuyLtMeP4rs
         d8hlH+OfSUCnTVP+O5zLUFv7rcAuRvoa8fBqiW2J3o3hXzG/nG+Ok1ETuoRcY6WUTyXH
         OoKh1sV2qpzQ3x4vBWRVLpUtLmQK2SPxy4DHtxuk35P4osCTF8QxUje+eTmtaswAgaZe
         GJe8ZBbJoN7RwHIM4YfA+pvQLGCMzl7ScYKSwb4fMLkuaputNWYc+HcmngKKyezOINfa
         EVGCq7yWRCi2arswXi/1KuXFYOzPZxMG/n+YCe7fSRPw9M3IVV54SfUC9wvdcxpdh15s
         DOpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762769475; x=1763374275;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fxcXNLRndCSdBKrzLj3PXcds5y/egE2lHvpkckA8XEM=;
        b=sy9NTEYHe/xWwXXPXXckfVro0Xx/xgQM7BRGcUgNUYWqwNkVOrvS7jkoZ9ZKfJeidp
         wD/c+rRriwG2+t2Cq/HvjkP9kGxfHsRl7Xp2E6Gk40r0h/p8B0qmFn+51Fh+ct18ZW36
         Otf3pNetoUSO3KQu3FD3NRj6DmwuC33dAv0gLOPc1s6UPFmJG4GCfWveNGOgPLzt0/3H
         138h27YXrs28Ek3NHZfzOtBaM8kWWgIE5HkhiCGNaNt9GQBQUmTcXK35c/yUKtdRohFT
         yF6XyuJHNTurP72iX61hS2ELBbIVGe6+mn56e9kV6sHUsG2xGkk4Bk0h35tYcJ7vRZRd
         BFcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcJ6wkiwqV2CDg1270UdLvhR1o4x7b+0cbMprU5vinB4T4nyVzWJzQBXKj9l5KlmPRtGVh0CS9oqBi@vger.kernel.org
X-Gm-Message-State: AOJu0YzRaZgueStkTUPkURkcNYyaBHl/auAWqxBwdGk4DYSwHHCAOvGk
	CkzTzwXtImG0/Pe/OxXRyMFEofYlbyisJEehYyo+XPdcBhuslxg3Px57BtBB4ZUmENWMjmHF00i
	I4OdBxRJS5+PqBNEuDmwRqVQ/e3v2yc9OSRzpmu5L9Kc74Y2xFX58galwPI6rQTWK
X-Gm-Gg: ASbGnctQIM+iWGFl+OPwBSsB31AAfBsFSrJ8B1bnQ5fIXwPoKa1530PreXgZubaDHgM
	DP7o6jq6xd83gGz/kLINPb7TiYHY6ldt03pWtnPAAFzOPwIXJObI7FMidm8fZwGY1hhT9TxpW6d
	WPgCaQc01aU/dtnvYtRew9S0kOzmvfxX4pcepRZ2Jo/2z3cYFSHmvLuh5YAKvk+iLbSN1c9LMHR
	byheCLOIwyjjHvKW6g0Bg6VtS6PzMf+1TX84pot56kOrrcJOg2YNH9eh0lykjPkga1WrnbIPqvn
	QaLYoetinBjWBhNKvFEx8GFfDwrkGuaWIVDqxNFd+sdSQr85wX3N795sMS1/CRQ8e1elrYp/Dxo
	NfU9ytvnjNlP7JTTAwdPIm/QqH/jiy10d
X-Received: by 2002:a17:902:d485:b0:295:28a4:f0b7 with SMTP id d9443c01a7336-297e571abdcmr104668565ad.60.1762769474083;
        Mon, 10 Nov 2025 02:11:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFBi9O94fjJjAQcnZiBxSLEqKhzjpQEqnNAAKZJzH5cnIKsD+wOOBbY1vP06qkGJRhThmrAew==
X-Received: by 2002:a17:902:d485:b0:295:28a4:f0b7 with SMTP id d9443c01a7336-297e571abdcmr104667965ad.60.1762769473441;
        Mon, 10 Nov 2025 02:11:13 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-297f2d9c971sm60180395ad.55.2025.11.10.02.11.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 02:11:13 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jiri Slaby <jirislaby@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-serial@vger.kernel.org, alexey.klimov@linaro.org,
        krzk@kernel.org, bryan.odonoghue@linaro.org,
        jorge.ramirez@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, psodagud@quicinc.com,
        djaggi@quicinc.com, quic_msavaliy@quicinc.com,
        quic_vtanuku@quicinc.com, quic_arandive@quicinc.com,
        quic_shazhuss@quicinc.com, quic_cchiluve@quicinc.com,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Prasad Sodagudi <prasad.sodagudi@oss.qualcomm.com>
Subject: [PATCH v1 2/4] pinctrl: qcom: msm: Fix potential deadlock in pinmux configuration
Date: Mon, 10 Nov 2025 15:40:41 +0530
Message-Id: <20251110101043.2108414-3-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251110101043.2108414-1-praveen.talari@oss.qualcomm.com>
References: <20251110101043.2108414-1-praveen.talari@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDA4OCBTYWx0ZWRfX/KyXvNkaO1LR
 NjOeGBkhco0Q4Ur5ecPVQu3KGar79X00RWvypxxPwbZPgAmIDzRTBxd4heR28R1YyyMHQSi3WlM
 ONNM7eZMhKWp0T6YpBn3YJIm1dXVnpnX/LoiBsGoExCWtuCepN/zycnUUNloxlb0uRoqtfO03PV
 5XpuFBg5fqePpNPQtFNP9ATK25JS9AkEART8piFCq5+JDOOfoBs7fyDsTVKgiLRR4ehnJcWiUJb
 hLjuYF3tcETGo/8XaYY4rJp+myUKnIkvuHkfJuhdydlS3nmefgnjvAKZ8+5ABPxr93CTXq+Y5Ei
 JauWh4LobIbljtVRCTq/XQ+S5hvTnk8B0JdVua52VspDKYUAzVcd5olmPnSTQMcukB4rYvxveEa
 /WhdrvZsSrzQNX2o2+REfWSi+N8Hqw==
X-Authority-Analysis: v=2.4 cv=TsXrRTXh c=1 sm=1 tr=0 ts=6911ba43 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=hPkvY_wpCyZqdAZ5voYA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: d_TwGl_z3pa-czcA9mSXcfEN_Pu3kGkn
X-Proofpoint-GUID: d_TwGl_z3pa-czcA9mSXcfEN_Pu3kGkn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_04,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 clxscore=1011 phishscore=0 spamscore=0
 malwarescore=0 impostorscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100088

Replace disable_irq() with disable_irq_nosync() in msm_pinmux_set_mux()
to prevent potential deadlock when wakeup IRQ is triggered on the same
GPIO being reconfigured.

The issue occurs when a wakeup IRQ is triggered on a GPIO and the IRQ
handler attempts to reconfigure the same GPIO's pinmux. In this scenario,
msm_pinmux_set_mux() calls disable_irq() which waits for the currently
running IRQ handler to complete, creating a circular dependency that
results in deadlock.

Using disable_irq_nosync() avoids waiting for the IRQ handler to
complete, preventing the deadlock condition while still properly
disabling the interrupt during pinmux reconfiguration.

Suggested-by: Prasad Sodagudi <prasad.sodagudi@oss.qualcomm.com>
Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
---
 drivers/pinctrl/qcom/pinctrl-msm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/qcom/pinctrl-msm.c b/drivers/pinctrl/qcom/pinctrl-msm.c
index 67525d542c5b..e99871b90ab9 100644
--- a/drivers/pinctrl/qcom/pinctrl-msm.c
+++ b/drivers/pinctrl/qcom/pinctrl-msm.c
@@ -189,7 +189,7 @@ static int msm_pinmux_set_mux(struct pinctrl_dev *pctldev,
 	 */
 	if (d && i != gpio_func &&
 	    !test_and_set_bit(d->hwirq, pctrl->disabled_for_mux))
-		disable_irq(irq);
+		disable_irq_nosync(irq);
 
 	raw_spin_lock_irqsave(&pctrl->lock, flags);
 
-- 
2.34.1


