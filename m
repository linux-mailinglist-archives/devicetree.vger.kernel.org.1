Return-Path: <devicetree+bounces-249103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 32178CD9481
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 13:35:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 997E63014D6B
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 12:35:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB87A336EFE;
	Tue, 23 Dec 2025 12:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cAgLW6ix";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MVvTi1T8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486BD33554A
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766493318; cv=none; b=BFSJ0SndkS7Jg+7+AICfwjiSD0uiXj6vz8vEspbGrBgMsbW/p6fy0tQFoAhX20/uhzs1++smkuPTrqSJdFvr8m8UbN86AtUkR5JcZL8etYr2om2mtxQ3fO/y/tSlP/3uRejifYuM/oopmp72TEAFLjNvih1Dho7viMMe/kfBofU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766493318; c=relaxed/simple;
	bh=XObOU1tEztAAXwr8c6+N4w3p3kx/Ap5jdnHQitH8gHE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=p8+GiSosh5WS2OIMCtqL4rdS8ui9s/w+NRripec1nFzh2yRJV6RDZZ2LDNRlX4venBFq/UIIQAWW2ElpN+mgkwG2yMWrt7wwSEXeK0DtYh7HWC8dOc/aguqqC5VuJ871SfkkvgubGBPMSnJSBbTYWjmqJWdIK1Ft9Rl4lCYmCHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cAgLW6ix; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MVvTi1T8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BN7DGPC1630567
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:35:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3besvCe3+rw8IwX8njwzUQkyMTKwMEQbkR6vw3/xUlI=; b=cAgLW6ixYruoNWrd
	ibsU+dchJ5vfjdDxoL8JD2QmijCzl5+E04VKEScXa2c9EOwpahruDRSoIVjyvB2n
	OgVtZRydnEIY1D3letMEuXQi3tBvwA2mJU48I3/Htwp9nif/Dkm/aEb1E0ZkvX+s
	zkwjSkKYlZFmTOnenI88XMXNMVOQO0Av2lvclDrHwOK4VE8ucyUmC/EpVY3WBfKm
	3eg++2CfsYHIUOcpmULsU6XtN9OpO7pdIG8JlEynjpg6OPbMk0PwbVV+s/zE2l8q
	FxJKEo7byvQEWeds+FiPVReTGJHOGJYMhc6lkztRADRiTozkaXpD6qut2gkR0xLh
	+GpX0g==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7ck8jq63-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:35:16 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29f1f79d6afso70793375ad.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 04:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766493316; x=1767098116; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3besvCe3+rw8IwX8njwzUQkyMTKwMEQbkR6vw3/xUlI=;
        b=MVvTi1T81nzqJGablcdmxkMj3SSTFL9eRUw8vfOk7fNqQ9bnavEzZIIOqwJa+p0Y3w
         iq2W1y6eOjsSRc+oM8uWze8O/YAnUD6QC/5i3lvfG5nSgME3+BAajTYmqTxyyoJ2nsYH
         XMHxyW+Gyd+uc1c80rF1gBUld3dclPXRLwjBl599gHKUVl2fPepJv64OG64nc8w0ffPb
         1YmbxSbQEB0/OYMR4ywmDIF4mtWICsFehEk4LJSiShO74FOblMfHeRWbWSn+GYzuiJik
         j6NUgPWCJ4OGrifr3g6rR7+syfJMG4ZxNZNDpGyKtIRcKdEWvwp+K0pbJjyafXyUy85j
         IRqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766493316; x=1767098116;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3besvCe3+rw8IwX8njwzUQkyMTKwMEQbkR6vw3/xUlI=;
        b=BvvIfbEBzx4chMrENIMgjvSfQNN5Aqa0kdu151zsI5WE8c5IwB3+EjxkiZyTPEcFN/
         iiW8na7SYoZTyKo4DcBdJsKpBW0HHyU08GU2umK2Hj8e98blLKy4DwzTrihGLgZTVrvB
         mo0IUDxnbTma+Rs5MZY0zy7Z6xGkM0kPeLmZXrLZdGqbdln+dICyKstpSjVsbAWcvYiM
         F5mdjcRdkfmxRlmdCy9wR0eFBrPQQKvmPKa43RjtjZDBgnXX65X+QBbIUnokBFyJ/2E1
         nYzextdjPO7IGled3XKCrg2Z9m4OTBnk8N6SOVq5vo8MKQbBi005hO0i1hm92zBvcpwN
         IjZw==
X-Forwarded-Encrypted: i=1; AJvYcCXlq6GJZO/mxlpMLOAtf0HA0tcZWJ6F5wH8eYRKs+fTh622TKuzxQb1q4ltzAu5Sw9UMIuSr8LFqXVh@vger.kernel.org
X-Gm-Message-State: AOJu0YwHuzBdBfg5nor9+66wSVJavLZ/Dqf1lPG7nkJpdXByHWlb5kw9
	Dm2mfQblEgN2bwm+ivZ0+mAprJkv28v1K6AvUE13pRsQyoMu626iTxUZnfn/gDoZaM5mLdZPSNN
	v1APo3bQHP//zOJFqhg8ew+59udc6blygCu5brzPF7o4VswdjtSDKpWAbyNzRw2k8
X-Gm-Gg: AY/fxX7KvvRwnFTM5+WWHkqEgxraiNg6SVeGfSsMeCSIqtim5i1jKeD/drbcMDa2kL6
	A058MNNzYdHpXsXIgxqbpkwgaKN9rerhpSRPTnremAP1xGbo5OHy7beJvR3fLZDSvz0A3WQQt6g
	wdBz5Dkj7koOkg8muH4oEEuCWQBsUpRFEFhhHeAfN2OeHLbDEuAgmDAJfQIAj4ujvfZ+M1kAriq
	aZERt4D/H3HoiMdVTN8lzzEixsjRgetAtFGBHbPIsuxXOHcG+3x4NhV5L9Wa6n+AUHsHGtCD1BH
	RBtUzDU5v0L0CNkgVmnhZoeQqE+pGZa2wJgMCrP82j2kwDtCP/BKTBqmX5zwpxnw7+HUk1JTgIc
	372R80al3
X-Received: by 2002:a17:903:2a85:b0:2a0:c1f5:c695 with SMTP id d9443c01a7336-2a2f2223709mr154383935ad.16.1766493315931;
        Tue, 23 Dec 2025 04:35:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEK/WfPK7ehic7AykZDkqMohCsuORpQskp+MgJ/qxEP+NjSVB3+4rmjRKLgNtSu8ssfUpESfg==
X-Received: by 2002:a17:903:2a85:b0:2a0:c1f5:c695 with SMTP id d9443c01a7336-2a2f2223709mr154383625ad.16.1766493315435;
        Tue, 23 Dec 2025 04:35:15 -0800 (PST)
Received: from [192.168.1.102] ([120.60.139.28])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d4cbe5sm128637585ad.60.2025.12.23.04.35.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 04:35:15 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        bhelgaas@google.com, frank.li@nxp.com, l.stach@pengutronix.de,
        lpieralisi@kernel.org, kwilczynski@kernel.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        Richard Zhu <hongxing.zhu@nxp.com>
Cc: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, imx@lists.linux.dev,
        linux-kernel@vger.kernel.org
In-Reply-To: <20251211064821.2707001-1-hongxing.zhu@nxp.com>
References: <20251211064821.2707001-1-hongxing.zhu@nxp.com>
Subject: Re: (subset) [PATCH v10 0/4] PCI: imx6: Add external reference
 clock mode support
Message-Id: <176649331066.523506.9443864112044699350.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 18:05:10 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: Q4C_eqxJd9d3xiKVHJO7jWd4nQezFMl1
X-Proofpoint-GUID: Q4C_eqxJd9d3xiKVHJO7jWd4nQezFMl1
X-Authority-Analysis: v=2.4 cv=asi/yCZV c=1 sm=1 tr=0 ts=694a8c84 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=wbxd9xFQoh2bOL7BUxlcyw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EXx6v-oOm7wFthy7ysMA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEwMiBTYWx0ZWRfX1WcL7lcQP7jA
 DUZT+fKMhj3ukZfyiiaiKPOK/gDeO8S1NxoBfhf0u7r0Ho+8/npH41KcxqgCBavsi+5H7Whb4pY
 h6nNBVWx5je9+RMN/369+8wja5F/McryDL6SRWAQVHfJN7KFPPbDBIR6vKABvnAfz9NL5KnnfdQ
 17jzQ9s3ylKHEQLj81CzFuThmufOuoAocTXQPrCT3nmF4uDSbwAgvQolAirwfXqRcTmorUoyOfS
 bqSvcyjoScjFs/ypIx4cfQNJ37kp3w13tVRvQTJ+U8Rt53gQsEfqPNbFuIpU660nzYf+8QqyfMw
 Wpsdx1amy1rasdWYpZwpb54W4XoWGlyVrEuNg3QkXdTc2MvrrkGKfE+wvI37w26i7uMrPRoVt0z
 eaETJhghFnr6hDZzIrBPrzeNNTlRGbgzbEIWgvbAuDPwm1WU3RDHZ981GYqCcP2XZ1qynQHHwA8
 r28NUYux2BY10gEONZA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 malwarescore=0 adultscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230102


On Thu, 11 Dec 2025 14:48:17 +0800, Richard Zhu wrote:
> I'm really sorry to send this version patch-set late, because that I was
> engaged in other emergent tasks in the past weeks. And didn't have time
> to continue this topic. Now, I have chance to continue doing this again.
> Sorry to bring the inconvenience to the patch review.
> 
> i.MX95 PCIes have two reference clock inputs: one from internal PLL.
> It's wired inside chip and present as "ref" clock. It's not an optional
> clock. The other from off chip crystal oscillator. The "extref" clock
> refers to a reference clock from an external crystal oscillator through
> the CLKIN_N/P pair PADs. It is an optional clock, relied on the board
> design.
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: PCI: dwc: Add external reference clock input
      commit: 418970983059aa06302ddd5ca76d441973b537c1
[2/4] dt-bindings: PCI: pci-imx6: Add external reference clock input
      commit: 1352f58d7c8dfb6ba0fbd2041bfc8b4b3966ec67
[3/4] PCI: imx6: Add external reference clock input mode support
      commit: d8574ce57d760a958623c8f6bc3c55b5187a7bd7

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


