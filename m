Return-Path: <devicetree+bounces-225900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BCEBD2138
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 10:35:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A8BC83C262D
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 08:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D224A2F8BF5;
	Mon, 13 Oct 2025 08:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TDe+QfG3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58BD2EAB6F
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760344499; cv=none; b=hHleoFRsL5mxglhPGg/m1oKMSoYAQG6el8rBPlr3vYykjXEmhKz81gr6US4cDrYVQ2kzmGp5VrKWd5PHilMtQzEe6fF/j6WKWxU5k6qzd3ymIrpZpYVJEiLYJhWNr/wj/KCZiRySuuZjSiU0KqC7wWyNeHoiyEIdyXmkyOiK70w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760344499; c=relaxed/simple;
	bh=8N6JuyoDxEqzzX4bFNy5c5k0RGnFdELyNLGvZ2MUVOk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lhnBFKgVKPRNQe/BCe+GuzL/I4ujHYNtPPVhxX5gAgeqxYHyd9DpLhNGUmh1LBtCR/0QlOM/2SeGXeMyUXl+CIfiovXv6qX6U17CSwEq0O41e0jhJ02AZAEK2i4HFSfkkHp8OWddOeKCsMdS78sr2bC8FLzSHA6i73ILOQBuHVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TDe+QfG3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D2nDTi016611
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:34:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=qePY1UHlkzuDJ9kRye75Pn
	muoq1wKjyrBK5aF/cS62Q=; b=TDe+QfG3DSfdqwCx296DQ7FZ0Xx2pQkR823ql3
	Ggmq0pbjmGuGoZKFwUHqRHraEFnt8b/1VKlLUyMHkqUZJoZFQ+z38K3xB9s6ahYj
	eJDRW1BCYe8ysSQMJUvVXzaibBxN1g7u9RTcZR28CqE0j5D9F3KD8Q7GHhjm8Z3c
	lMATX0TwacEeKtIlPQTrnGKF1xfH4EWNBKHrxrWduZPEiQ2BdZNiRxPErw44cI3z
	c/jxmn6nSEAuNSRanRRuaPeUeA4WDtD8PCJUKsAJ1Tjo0Iu+yzd0LvX/oglMR2wh
	HHIr1tRKq6hWWsmMVvJtFv04m6OW3tBHgqspV4fvrbjUV8/g==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfbhuwpt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:34:55 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-780f9cc532bso6307296b3a.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:34:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760344494; x=1760949294;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qePY1UHlkzuDJ9kRye75Pnmuoq1wKjyrBK5aF/cS62Q=;
        b=XkBNEZJGDuntoK2NjBQMOijgdWJjTGQNFZEc1cNtEhmXD0j3zWPLQY9wWm9ulb/aYu
         G1bW/9tmyUq4Tr9fwJQV5R28T/N/+tOuVC8wbYi66Nisdu7USngsCWB1XiUdnbGcY4Lc
         injBnbYBpYLZ0Tj0rv6cyC24jx5UIvgfguJtv87jlV7o0aymsGQMhWnrHnI7LNYtwc3A
         MHiB6aJaCV+Nv4ObiQnnu0y6G8vEwHK7XUuchkr8a/LhV3fGZLvscm5lTNy20YRPeRRQ
         JzKZJY/iMvMgHdIHZmNhqHle5Egexhw/VURQnCPvI0n6a8z0X5YacMfnBW3JPrkAmJxJ
         jhKw==
X-Forwarded-Encrypted: i=1; AJvYcCUQXFPoSYvcIlYR48/5iRj7JUtgzH7PPjKLJk7yWdZwhDjS6IOpKrwzBBs+TW9owtNl86bd01d//bfz@vger.kernel.org
X-Gm-Message-State: AOJu0YwW8ZlHX0RkuYyUm+r0Hi+8wfnPSftLrf/6YdxgTYvax4d/vU59
	slNU5cudGTW04PatHybHAwzegAXObZgS0tXtGiIt4aChNvOGgc4QQQUdvsGEH1JNT0fmyNhSnbL
	9r+PAMiN7YQoLK7U/PQEBJwKZN7slG66vfL30tY9YM0XhL/P7CTEXi/JpSAZOj9QL
X-Gm-Gg: ASbGncv4sBWbEpZXJPJH5vNrBr1kn2bFRELphKyq5BgCSZULWrh/gRCLOM2kiyt692x
	FuCOhIm/hGBk/1n1ujGe2WxDIjqMtr+0GmCuqJwMHHl8CY5w4yZFoWqZJ3OBPCB4n1RrhhSXXUO
	Vvz+2HTZHDCgaorK6Opzin53MP81sIoDstlcYRXssxxstI519c1SgG/N8+MHxyAJX6ObgzJgTjR
	IC0NQx0QvMP3A+CBu9AbyRy8U7SHi6eYCkVEs92jHlmV6oh5qAK3HXgRNwn2R1VVzZnX542fNnI
	wPJC2QPWZz29NcMRMMUW9loHgboT9woUYCL5j7LHei0Fkv33NLjTT0tffdxM0ycnuo4Oc1wEm47
	UpqgUlh0AOwSiUko9hPNm9TZvG2k=
X-Received: by 2002:a05:6a00:a15:b0:76b:ecf2:7ece with SMTP id d2e1a72fcca58-79231df6680mr25873008b3a.12.1760344494261;
        Mon, 13 Oct 2025 01:34:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERV8N7NBi1nNuzIUr3/wdzTu8NLNE5G5dPZcctm7j/03i0JAZc/m2v/3H2x785lew0TsCKng==
X-Received: by 2002:a05:6a00:a15:b0:76b:ecf2:7ece with SMTP id d2e1a72fcca58-79231df6680mr25872972b3a.12.1760344493774;
        Mon, 13 Oct 2025 01:34:53 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d09a87asm10773251b3a.46.2025.10.13.01.34.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 01:34:53 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Subject: [PATCH v3 0/2] Enable CTCU device for QCS8300
Date: Mon, 13 Oct 2025 16:34:36 +0800
Message-Id: <20251013-enable-ctcu-for-qcs8300-v3-0-611e6e0d3085@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJ257GgC/x3MQQqDMBBG4avIrDuQGAyhVxEX6firAyVq0paCe
 HeDy2/x3kEFWVHo2RyU8dOia6pwj4ZkiWkG61hNrWk7a6xjpPh6g+UjX57WzLuU4IxhSHDeW3R
 RRqr1ljHp/z73w3lekvzAfmkAAAA=
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Jie Gan <quic_jiegan@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760344488; l=1382;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=8N6JuyoDxEqzzX4bFNy5c5k0RGnFdELyNLGvZ2MUVOk=;
 b=Dxbu0m74+ExtDuCGfb/jHtefhFrQyDeNasjLJIZgNUvkIyl/vb6yB7Wvpe+DaVF39ceksDB8I
 MVnXQrcNPwVBICQgf0/xKwUdDb/ZugfIQh65tLcFpi6qqOs5HIdCZdE
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX71wI1ybVdI8O
 1arciZhO6ylUc70lkOs9RQoerePb75NNKe0BOrz8RoiKbzQRRdga3h3MBmriajgrnmS2oCh2UdB
 6DYhEyHH1kjdDJdF0164pWgOhat1YwfUJByCDoxzxssWBl5xPgBUP1vr0rAWB/r2uB1gKas+xZx
 8YrTNOY31LJJyJvMHjkQK0J6DmHLsOMkinqQEuzag2KtvzuKKpqLIJpMAPuTTtXL3jmiI1SadB7
 8vWA3jTKQzsaJthpR/SzCRCvQd49ef5AvDfDdHRHPY2rKxL94ccH72PsUa+ZdZlFcqDkSytrXgO
 jskjQOrHaal9QmK3rTgYZtMW9xvO2ihQ9pXjRGFGImh2mjVhPODPQVWrjVke2wvJmHh0BNSt1hx
 8Thz2G/7+98D1fZPJdeI2yOEe3t2YA==
X-Proofpoint-ORIG-GUID: nOCwfyBWHpZ5OQnCqi3GAtpz94ZsewgZ
X-Authority-Analysis: v=2.4 cv=bodBxUai c=1 sm=1 tr=0 ts=68ecb9af cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=YHNf7BNBHiJKSF8-TtAA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: nOCwfyBWHpZ5OQnCqi3GAtpz94ZsewgZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110018

Hi Suzuki, Mike, James, Rob

Can you please help to review the dt patches? The dt maintainer needs
your comment before apply this patch series.

Thanks a lot

Enable CTCU device for QCS8300 platform. Add a fallback mechnasim in binding to utilize
the compitable of the SA8775p platform becuase the CTCU for QCS8300 shares same
configurations as SA8775p platform.

Changes in V3:
1. rebased on tag next-20251010
Link to V2 - https://lore.kernel.org/all/20250624095905.7609-1-jie.gan@oss.qualcomm.com/

Changes in V2:
1. Add Krzysztof's R-B tag for dt-binding patch.
2. Add Konrad's Acked-by tag for dt patch.
3. Rebased on tag next-20250623.
4. Missed email addresses for coresight's maintainers in V1, loop them.
Link to V1 - https://lore.kernel.org/all/20250327024943.3502313-1-jie.gan@oss.qualcomm.com/

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
Jie Gan (2):
      dt-bindings: arm: add CTCU device for QCS8300
      arm64: dts: qcom: qcs8300: Add CTCU and ETR nodes

 .../bindings/arm/qcom,coresight-ctcu.yaml          |   9 +-
 arch/arm64/boot/dts/qcom/qcs8300.dtsi              | 153 +++++++++++++++++++++
 2 files changed, 160 insertions(+), 2 deletions(-)
---
base-commit: 2b763d4652393c90eaa771a5164502ec9dd965ae
change-id: 20251013-enable-ctcu-for-qcs8300-ec83661e5acd

Best regards,
-- 
Jie Gan <jie.gan@oss.qualcomm.com>


