Return-Path: <devicetree+bounces-227047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id B2346BDE187
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 12:54:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3717D350A1D
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 10:54:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB08431C578;
	Wed, 15 Oct 2025 10:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YUNq05bU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2A831B82A
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760525596; cv=none; b=Ts/C1cAdciTvVPMvM0cgDkXUwvFpjruVF68XHnLy0i+9CUBJa1yYWmC244el1ASyaCB5Ikmn8NM9857KgFNRMZ3t6UkjzqO/R104Zb4q2Xb/En5gV/bToX44KlLxYtUlIDOOyMu1N2EJvUQQKTD//iPTDPMZQ6AV0NoDORxiyNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760525596; c=relaxed/simple;
	bh=MHS8u7sUasvBS9lgafXSXHBip0anTOKGxbuZXAf0odQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HaZhwee5gvN+r2sAwN0HdB5JwOKwfrOhIQ65T7HKqdyLuDAIfmt4eyU7B0qoY/Rg+pynjFS8+Hi8QY2ylO7XAHWNVNDzMq6iJrQpDZJnEnhTFEHx5tV2+qOhtA8zBeRf2x3ryY7dFErOW1d0jnWcRNoMyfwH/FalbYHChPJFOoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YUNq05bU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FAhBtg010001
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:53:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=fQbIeL1NYHf
	9UHb1CwOW+nqwk/PLKyl/Gj01c0nPyCU=; b=YUNq05bUH1CMKlqX7gkwQBuNdhq
	Nxxa8BG+nD44hi1RSxZYTRrVQ+8EHpsevhRqQiSUgJOrkZ5HUWQe53ufxVo274p/
	PD6rlFaJErzlkyhydK9ozZUiAx9lwtCpTSDVqirQGi/ZQ+MIY2s3GQgB5MzAgQ1g
	7KmQ543NQsTsBM0orQM9zx5/3PhpNKSdagHsENMoj0VsvsPTnlJz1K9YGECxWsxj
	MoHpKOZbgSbJc0JKZacBQRLnhdpe2gZdD7ACtnnZNSl4G/3KGUOC8djyYjLGOgeO
	H7f2Ivo99aG/zNCE1rKUd9noBgMzZojQAiIb7rgzInhT4KxF9YU+zJP7gtw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0c425v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:53:14 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b60968d52a1so17597715a12.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 03:53:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760525594; x=1761130394;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fQbIeL1NYHf9UHb1CwOW+nqwk/PLKyl/Gj01c0nPyCU=;
        b=CZvTT/BrK8hzcPtGjAbc6idlEgoKXmSbRJmnMCorJPop1xxZ9P+o7yALzO/ATsNJnQ
         FLrdIBD+kiQZexuylUyl+Kyo+CqHp6jb+V/nLMFBDskpFZCFTTDbKIvyo2BIH5crMLql
         ujS6wjFwTB1vmixJhliQjTRU68hMyr2+wmYflJOvj0gepcEcB+e1FtG/BRwrMixhCtKx
         Sai7LyNo+NvJbOZ8muQyKcfcRoRFa0h28eRN7bXpRomrlDOLz+M8UiQFWyQQ+irR0TFt
         aXwzKF2xURHzBAw0Q4F7Qo3fv5f0ZbgcpaY2x+GPR35iqX/mYCw87XOX5uvXTJAFpBO1
         NSOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOjappC7b/H19/IvmU4qrJc8Ricg2tKSWmfsHnZGhtXtww8cEVdf7EdHhzmtDBD/f/ZeSdKq0Qrijg@vger.kernel.org
X-Gm-Message-State: AOJu0Yz96E4lV9dzdlnCmqNni+0PQbFxtIdtf+OCsyLFZczOz16tlPAe
	088oqmJPBS2JlW8CuHknFiOr/Z0c+FNHQMJeTsNqi3P49SZcU6Wu+tbBBWPqGtQRQbVPyO+dkYz
	2oJXVHv89b/b+q1Cipvc2quMU2N6ZCmvECwwscq0S8fbzg+mbXm7EkcCWGr7M5Crj
X-Gm-Gg: ASbGncsUnPpLJFnFIZyP5wf3KhSuQdvGsYtK7jcJ6V7s2Ki0EQdDSgREmYSYSF10IAY
	BNal4zjk70ysHVKabBYi+qCW9zYM48ruHOkQEfPWm2SqFfSHryNfBq9jmXEpAspE0L+MNxk1beF
	GsuGJHtgswSC22lu1ICaRGzHbZU7pu9QMrRhdHJRnCxIOWsCIkJJKT3nwQmNF9DJQbw89Wf5DXm
	lBOfI+B9GSkT7LEeMBhvTcpknh/2cNz7gLMnJjriVCUzsRzHNXqcejYUyU6po1A8s2tEJKdO44m
	HTxkCd2mz8EuTyYwXjtwk0TtPmJukILI2rK/n30hZXYrsJxiRnJRCT3stFk8dLgx3ZRCWirppVr
	yXg==
X-Received: by 2002:a17:902:c94c:b0:27e:f201:ec94 with SMTP id d9443c01a7336-29027373e8cmr402296865ad.18.1760525593708;
        Wed, 15 Oct 2025 03:53:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7UhX8xptIfvTz4g9frXK+vdn9Ssva+7MAMiKmWuSPnlkk6SggKkRgGndjbOlqjtzyury1Lg==
X-Received: by 2002:a17:902:c94c:b0:27e:f201:ec94 with SMTP id d9443c01a7336-29027373e8cmr402296575ad.18.1760525593231;
        Wed, 15 Oct 2025 03:53:13 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034e20f8csm193698385ad.49.2025.10.15.03.53.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 03:53:12 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Arnd Bergmann <arnd@arndb.de>, Nishanth Menon <nm@ti.com>,
        Eric Biggers <ebiggers@kernel.org>, nfraprado@collabora.com,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v7 4/4] arm64: defconfig: Add M31 eUSB2 PHY config
Date: Wed, 15 Oct 2025 16:22:31 +0530
Message-Id: <20251015105231.2819727-5-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251015105231.2819727-1-krishna.kurapati@oss.qualcomm.com>
References: <20251015105231.2819727-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 05A9jfLC357xk_msgQZR5ujzbZ8H52R_
X-Proofpoint-ORIG-GUID: 05A9jfLC357xk_msgQZR5ujzbZ8H52R_
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68ef7d1a cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=ZS-ls5sy8mnZQVmeZLoA:9 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX5Sp+3Ud7DpHG
 dfUOHNYTIjRMpfvMcAXrCQxIMncuOCUOt8KgMStFN7VcmddTFlAgBVVpCLiHOcrMcov3iBLNlWm
 x6GzqRuxY4nOuz6IVPOCvdFFUfiftuSZRQg6cjes4h4geVDfCXWpSPnaM9WpLYskuOxzLBUoQIc
 0maLQQYXGriDqjPeKaBjce2gJm9RlAYXR8Mfq5iOr93f0UbLZ9pYyQ6lbbjORHHDrLjlqFCid8d
 OcGOzgtDWdMq775NjTiRvQMTjBinyRvfqfHj7IsXCYbPrHrEZgjqHj4HjeKSZFY6NqusiE9RzjI
 iIDY4+/S7lNR+gGm4jNlLeG2zom2UiY181dSy50QrIEIWm6yzh6FWdLvfhnVjEbUepjMcPBn4Ur
 2NwYcHnD2/5cJpTrC9fhkr7Nkxuz/w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022

From: Melody Olvera <melody.olvera@oss.qualcomm.com>

The Qualcomm SM8750 SoCs use an eUSB2 PHY driver different from the
already existing M31 USB driver because it requires a connection
to an eUSB2 repeater. Thus, for USB to probe and work properly on
the Qualcomm SM8750 SoCs, enable the additional driver.

Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e3a2d37bd104..24b1c943a7e1 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1641,6 +1641,7 @@ CONFIG_PHY_QCOM_QMP=m
 CONFIG_PHY_QCOM_QUSB2=m
 CONFIG_PHY_QCOM_EUSB2_REPEATER=m
 CONFIG_PHY_QCOM_M31_USB=m
+CONFIG_PHY_QCOM_M31_EUSB=m
 CONFIG_PHY_QCOM_USB_HS=m
 CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=m
 CONFIG_PHY_QCOM_USB_HS_28NM=m
-- 
2.34.1


