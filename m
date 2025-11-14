Return-Path: <devicetree+bounces-238766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 496EEC5DFEE
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 16:52:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F23B9385BF5
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:07:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6088433BBAD;
	Fri, 14 Nov 2025 14:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QfxLfM/n";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kBZ7OzDO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0CB833B958
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763132239; cv=none; b=tDuOtNeDIF4B9swq4nyseu5OnR2gwiSZPF1oumfUED0ENcXdzOIgyARAPWc6OLy9pMxNnHopkCs3nbwMHtMNfxc3g3rAmH82pUoVEe53vLzsxi0c0TZu6t1T761eBab++dyVJMyE5WnwaloV4ppOZw+9mQCW9Du1xpD/njzgsy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763132239; c=relaxed/simple;
	bh=2Tps5f1Fyw8EQWXWQD6thZKjGk5FwlpUaqUe/ah92YM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=axuuab2QVsu/yS/heeVx2dcwpKnycHfMibTgbicRE4AWtdMM6wrdHNk2o1SyGR2RY8yySa+nMB0hGmVSTmFvei4zHp17MZoKpxmk9E9NKuvFz+Ux5DvOlaeI5mGLV2Y2dHAdEbxkjy6BimSuILrFEJqmSIKK9bhFR1VIuwrm+iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QfxLfM/n; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kBZ7OzDO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8Uk1p1432568
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:57:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=g65rZQuL+DW
	NmeD3XddH64dFlYKY4T/kqk9emttSerM=; b=QfxLfM/nMmqDYpNzlt05IGvZIml
	3SIS49rg0gpKaNFQlFsoJKgYfWEehTA7kOGxr1P67GPiaXI3wTcd36FZ48Wt6dpY
	SXSonze2ITw5e4vH7iYi5vZb4Xl4DvgwUIGPMmKBfXeFdtixmj02ySDXn34CJ0aZ
	jjhjt527siatmUWsbnXODK8aGE266J7x2+Fm30S4QbpFGs2tAaEFCMBu0Z9sLONO
	VLGo5dtDi8PTa+JovBxgmP6UhaQYbT/y7zdeAzJH+9DovaZ9oxHjpDA660JbqMa2
	/DL0KlNip4J0kHn2PVUcc6wsX6PfV4zO+yxtMIYoA93bNvPWyvVG4bwc7kA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9g2g8y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:57:16 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2982dec5ccbso49213875ad.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:57:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763132236; x=1763737036; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g65rZQuL+DWNmeD3XddH64dFlYKY4T/kqk9emttSerM=;
        b=kBZ7OzDO7JGjQFemqiqkS8gIwmGPWOG2aWKU4gpyy98LJKDoRFREzVyigCGxcFJP6h
         GzuPwwobZOvjosoWUjTqfcYY9BKpDYaggZmJ2E+Lt3i+bqE4ghhY3GR512zVnJNFlSwu
         bjULnz0eWE4Q54bVOaYWqqll130vKB5mWfa06TbeSaam1QOKT28d1MY7tobawZtXrBVh
         +PUM2phejmSNmYPa4aHFTa5LRDUHTk0aAlXt4yq5oXWMRLLHEHk1lgjXgmrcwoHuL2lo
         yhTjHufWMeY8bUq1ciPpzjY5sTVe+JLUsbmc9bLSqIGwO9+RIRh5tIcDJ/Fk2/wYAAq8
         MqHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763132236; x=1763737036;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=g65rZQuL+DWNmeD3XddH64dFlYKY4T/kqk9emttSerM=;
        b=c5AD1IlQU/Fu/vc/1PPzzhE2onkvfXb1c69avW9d0laFfd9W55UcNaY4y0PPDi6SYV
         HNG4uUL8eLAlpiNj3UGW5ns9cdM8uMUOWU41P4AKRdjQIYWsfRvcPNJ+TTO1Dc17s9b9
         5RS7VbzA6rfYHhACZyNeGY3XKMvjElK3jESdV0JuGTj9gllKJWJOlxFNqUKhN3mj8eq8
         1cNtiBGNofqLHz6PQ/OZvxcVRaKCPKwJgjPkSoPgyxwHR61LtjKwMf9cZSnEczwdd3Fy
         3PfQn6nNQMPHqsX9kfUfoa88fLMavtwFFZgFdtQSRIazoKN/C2w50tEXVt7C9rwUoW5D
         6KeQ==
X-Forwarded-Encrypted: i=1; AJvYcCVqYYInO3xDvcRkTecMONTwUJm/kval81839PKh6oQsPXQsEE49PlT+fhWAjIbwIgG1c0nwJFQZuByH@vger.kernel.org
X-Gm-Message-State: AOJu0YydVJJL9W1/B5u/fGsITNAUue99JYpUhT2+nHOcNeeQXoQnoGPG
	7ICNMumHcUbn+1/RqqTibscE0rm6BzY8X07Zg9XyoXnhkKXZqYFYQWOVqr8pgTxHWWR9ODg82R3
	NuwsP4Ahi4HPLc27UVPIW1WzQzawNOt5ALZDuihzpR4MwZIXB9dQNUSZhL3U2a+8L
X-Gm-Gg: ASbGncs/uMDGREdnHKFyZJXI06nWIxdtayz6AfzGKnMmsPWFxOGo7kMZDhkyikSKtfu
	U64HLd0gYr42kMJ5XtVP4H9tV1I54s1sTeXaOa7uQANg+DpfBFL1eTbzftocpbmD08PhaxnBTPW
	dH1Ua5dvEO7akMfuYr2Wp4VBvCr7YgFx9HhpkZU1OjG4Oame0rEKWFp6M2gEh3QAgus4TiWW84u
	1pHdb7RFYH1XCoH/gDSfM+XtTyF4YFZTCRE9kWQPp4B9IPXY6enrPiKGRby1th4liLoJQZadK+Y
	MCUwwkM2U2h9jzEFYKVJwKgNV9Ws6wMPVmiWbEVp81zHoGvVuv8AWU0G5gilSAfNJqUfXXJHYEw
	bfOCvEOQtaRip3iTkQHgsxf1/u/KHdw==
X-Received: by 2002:a17:903:1aed:b0:295:3eb5:6de1 with SMTP id d9443c01a7336-2986a7414d6mr33995155ad.34.1763132235500;
        Fri, 14 Nov 2025 06:57:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHcURM2L9I1+OOyvpvUoXTqdprgHqwKbFhDjS5ARa2c04S0kA+aBdyLlgE7Rc9u1AAr9SgIRQ==
X-Received: by 2002:a17:903:1aed:b0:295:3eb5:6de1 with SMTP id d9443c01a7336-2986a7414d6mr33994885ad.34.1763132234969;
        Fri, 14 Nov 2025 06:57:14 -0800 (PST)
Received: from hu-rdwivedi-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c244e13sm57548015ad.29.2025.11.14.06.57.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 06:57:14 -0800 (PST)
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
To: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, James.Bottomley@HansenPartnership.com,
        martin.petersen@oracle.com, ram.dwivedi@oss.qualcomm.com,
        quic_ahari@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH V1 1/3] MAINTAINERS: broaden UFS Qualcomm binding file pattern
Date: Fri, 14 Nov 2025 20:26:44 +0530
Message-Id: <20251114145646.2291324-2-ram.dwivedi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251114145646.2291324-1-ram.dwivedi@oss.qualcomm.com>
References: <20251114145646.2291324-1-ram.dwivedi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=L+AQguT8 c=1 sm=1 tr=0 ts=6917434c cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=52jqHT57hFt4fz_33zkA:9
 a=1OuFwYUASf3TG4hYMiVC:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDEyMCBTYWx0ZWRfX7MQZEtha5yOl
 W7ZOMpCCuR4qEfpT8tjBLr4bPjfwwuD3z5KnDxycV6vnoXuh0H8f8yyBDtVhXodaXk86wGtv1ao
 iNA3qZ4OwcLI+l0mjV+E6aMtc9cjRrWZ8DXzBwIbXt1hOGD1eiUglTdECjwLfQEkOgqdpTE4ia0
 tQGCOIJZEqOuG9K/egeOSkLxw9Nr/6vCMbjtOG063hlW2HniaMjCHEgp0mtVWZBsBgvu2Yqfin6
 +DUJ0qcHZRGcXdNyGZBP44zAvEntYAev/i4mY8NOUSdIDoeUoWJaaFtSMTOf2U3kmabJUzXLZYX
 k7WDMSEMPVDUqjvDyPI0Nz54QUGu9gX9nXLXPeDQM7B2gwNQclOC7Bqpc7wxSnBT/UcsOZwN6/I
 WtJy8qEEioaR9xELZncwB4uOfl88eQ==
X-Proofpoint-ORIG-GUID: 9iKy0bz8FpHPdb65HOklpthRhVbO_hT5
X-Proofpoint-GUID: 9iKy0bz8FpHPdb65HOklpthRhVbO_hT5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501 adultscore=0
 clxscore=1011 bulkscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140120

From: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>

Update the file pattern for UFS Qualcomm devicetree bindings to match
all files under `Documentation/devicetree/bindings/ufs/qcom*` instead
of only `qcom,ufs.yaml`. This ensures maintainers are correctly
notified for any related binding changes.

Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 58c7e3f678d8..2d6a4ed4b10c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -26574,7 +26574,7 @@ M:	Manivannan Sadhasivam <mani@kernel.org>
 L:	linux-arm-msm@vger.kernel.org
 L:	linux-scsi@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+F:	Documentation/devicetree/bindings/ufs/qcom*
 F:	drivers/ufs/host/ufs-qcom*
 
 UNIVERSAL FLASH STORAGE HOST CONTROLLER DRIVER RENESAS HOOKS
-- 
2.34.1


