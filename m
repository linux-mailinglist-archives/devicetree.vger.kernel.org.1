Return-Path: <devicetree+bounces-209994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5830B39CC8
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 14:18:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6FF35637BB
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 12:17:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A46031E0EE;
	Thu, 28 Aug 2025 12:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ErOIrdgr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E2330F955
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756383069; cv=none; b=jD7w7AVuSaAg/VLxBG4zJfilGK76swxUwjOtz4ErOVBFOnCian5G7fj59JtzX/9dSEiiPTUeNYXUOuNDdFqk6OZuYSjjDpYGXk1I7wBH4YmaulzkKXq6svFbGiKAz56XBrp9qUtXvVfDj59G9TnqgbzITeZzXbvAFrLL69nh3TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756383069; c=relaxed/simple;
	bh=tq3IuL7wCC29pby6qPkuO/RCGMkeEsQAVfNt3fPCWAQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SDTQtu/CoLsERcn/JKB9LURYdzOu3nMV3W/vcsDtp/8CyYJwJinqFIn4Lr5kkK2Pp+rPrCWxoyRMY5u7cVKalJCkUjW+7oqnKq8kgJrRoQkhFrHRo3ugB1pZQct4GjDhyMooWstM2OSvdJXprMYZnY9aKAJWS3Eg0swcJ7LQxb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ErOIrdgr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57SA6jYx004791
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:11:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PhePwHpEAaOWHj8GxjUD4EtV9ZXNnl5MLU1KHln2exc=; b=ErOIrdgrwTfY3tXl
	y32VFyZbmwxIbH4eBcHEKhNvVwFOlvexYYFNjCmIVygluAkXDzMaYceLP/rHqREb
	JaWv6kBmuIPvNogTo/f4h7yK3G1LxtA3D1wet2NBmZ6ttB42OFkzLhEBE2mAHFah
	drXmeEGI8RZ1FRGXMdrYTu1JHaHQb94GJX6ARX+mKL1n4JCayKnXyFWl+XT718sL
	JzcMzkysTw/etmKG23Sq1i9OJwSkAQw6+RxyB3O7os0Iujokrdk3GGWdEl1z11Jy
	PtmWNqcZTV6feLg+KPUFUjEYFeCYljRKteXouith/glPoRUa8JI0sL3yXMqZ1iJ9
	o1pyzw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q615r20p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:11:06 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3251961140bso894450a91.2
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 05:11:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756383065; x=1756987865;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PhePwHpEAaOWHj8GxjUD4EtV9ZXNnl5MLU1KHln2exc=;
        b=TH05ljJ8KPh2M9LL+VVHQ6Zj0GT2vgabTDUSP0V00UgKvtVNSNekoiCOGL+1J4IxBY
         feYBveRtL4n2P70iRFAUB0c0p4Vz1nmjCw//zeWlN+obvi/FIbMGaDd0DGWPzfdQD5Ea
         ASj+Q3Rg2LPG4k+RkpS3L2eUWW9qISomxnVKnV3GmRmwH4kwu6yrnzMqxu8YubETFBJM
         xivEZv5pkz3h7Rx8kNWs8wuSwyFLUXfGSXrvtMDLN2/l7L3pD89//h3olj6i7N+U6BfT
         AYPbHI6tnTUVvznZOt9EYLZdSD3IMZBlPJFK/WkJuEA92+BgS47r/WarSpwzoCJGF8Ak
         /npQ==
X-Forwarded-Encrypted: i=1; AJvYcCVhIbSb5epjix8nfE3vN80Rc60uQydD5JYvalGHit13y2Ove4wD3ZOgRyaa1Ex6dFxsCI5d6dnGOrII@vger.kernel.org
X-Gm-Message-State: AOJu0Yyec/DnR4QzgbFbbUFOVXxDyJJxEh6vL/c98hH2yOj37qnanegq
	mrs/hA9hqE+sBXVzErm2nm+K+ax/+S5z1ysCqNFMdbhuQiYAe6u2G34Srvg/ASBQ8LN+bvzaP1g
	HP7m3R0WH/9qlOWwTDLt2c2UczL0lRLIdsizBpHZaaela+aiuYT49GALk1bUswqcp
X-Gm-Gg: ASbGnctw5ad8x6t8euZ6/azgTkHJjPKdNpUJnoIx6xy9TN3R4DB9sx/9xVyHNuxOPJt
	c8qV3beZx+jieEePd4OqD2YmlvAtBS4tr7HDS/CfgHZ6g/QtcDDnL5NdlcguBJ7agJE9+T6vr7y
	42iKyGKrWyv+2iJIhJ2xOnYvmkSjpoPH5q0kqbXlpOiWmP+Cjw8UGbavVu5cfGGG5dbx+pugmUQ
	sUl7FMT7EmurEattCkZAFcnoltt+WjmbYfvUMnFyZPdhg1khy2iT0GLMg0kujAf1oo5bZUHaq2I
	qwatfEns6Zdm1aKl7x0BcF30fG20RBCbCLietdu+0FhQUM5xQKSuFOnH1VTlOvgLgZY8evYGy0A
	=
X-Received: by 2002:a17:90b:3d86:b0:327:c934:e5c5 with SMTP id 98e67ed59e1d1-327c934e9c6mr1060057a91.0.1756383065269;
        Thu, 28 Aug 2025 05:11:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFzP2wU+CuvXGok9xOucMGBvgqE6LOekvba8Nillw6XuZ8T4Bb1geXsLXy7ey8/aUya6rM7Yg==
X-Received: by 2002:a17:90b:3d86:b0:327:c934:e5c5 with SMTP id 98e67ed59e1d1-327c934e9c6mr1059974a91.0.1756383064683;
        Thu, 28 Aug 2025 05:11:04 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32741503367sm4019070a91.0.2025.08.28.05.10.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 05:11:04 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 17:39:06 +0530
Subject: [PATCH v6 9/9] arm64: defconfig: Enable TC9563 PWRCTL driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250828-qps615_v4_1-v6-9-985f90a7dd03@oss.qualcomm.com>
References: <20250828-qps615_v4_1-v6-0-985f90a7dd03@oss.qualcomm.com>
In-Reply-To: <20250828-qps615_v4_1-v6-0-985f90a7dd03@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: quic_vbadigan@quicnic.com, amitk@kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com,
        linux-arm-kernel@lists.infradead.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756382994; l=898;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=tq3IuL7wCC29pby6qPkuO/RCGMkeEsQAVfNt3fPCWAQ=;
 b=bavBQG/YKidnGf9CN7mjFGyftQOzvdExbFhBzxCH8ftSQSOg9DBCr7nJhMBt8rLSZldn4ZdKy
 nnFvOpxZRgTDmfvPkhinzKckUm/4tsly1FDV1zqyHupee0Wu6jTglxx
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzNCBTYWx0ZWRfX4fldyL6XaS6x
 Q7iYm6B2VGDbSprTj7ti0Jh7QfXFUiPtIA46CommUpzu/QDK7EgL6lzFJWNr7W7m80EdmVpT+gc
 HhfSRw9pp2JFv5JvmFz70UICCJUbOjaX/fRjzKOi7cGD7oOioMsNghxfggF4tYtwPwDTI2iSLVK
 u5w9KHXM2bPscc7ZsiMGOWq6kWkgPsFtM5JhTjzsCyxeT2t8FAbZ9W8tAK5EC9H7R75uMKZWalN
 NLwHb6GvqD2COdECQk7JJ4OiUtBOyss/33ZX9ZHsWOLFIKwZD4H2dbG9TdlXf/zWs0Gw3k+JnLD
 eOew/xiTEPSA+gBGO4VY90efKwNxHvu0SuyTFEKsB3itBdOyHNv9vY1O/5znj3X3QofKeSMRElg
 2aOOFdQO
X-Proofpoint-GUID: Pt72OGpJrx0CVgzLdqLqAqaLb4xt8Xm2
X-Authority-Analysis: v=2.4 cv=K+AiHzWI c=1 sm=1 tr=0 ts=68b0475a cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=5PcvmwL3LSb495PBagkA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: Pt72OGpJrx0CVgzLdqLqAqaLb4xt8Xm2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 clxscore=1015 adultscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230034

Enable TC9563 PCIe switch pwrctl driver by default. This is needed
to power the PCIe switch which is present in Qualcomm RB3gen2 platform.
Without this the switch will not powered up and we can't use the
endpoints connected to the switch.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 58f87d09366cd12ae212a1d107660afe8be6c5ef..c4cc2903c13c526168b592143a81b5e6333b6c07 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -248,6 +248,7 @@ CONFIG_PCIE_LAYERSCAPE_GEN4=y
 CONFIG_PCI_ENDPOINT=y
 CONFIG_PCI_ENDPOINT_CONFIGFS=y
 CONFIG_PCI_EPF_TEST=m
+CONFIG_PCI_PWRCTRL_TC9563=m
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_FW_LOADER_USER_HELPER=y

-- 
2.34.1


