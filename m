Return-Path: <devicetree+bounces-233390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA30C21BAD
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 19:20:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 014843B4396
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 18:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A14412F60DA;
	Thu, 30 Oct 2025 18:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OKK26kqk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AXtjIDlV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7111548C
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761848420; cv=none; b=DYPzG3Mw2X8MgZ7vw/GMjGmUdb5H0ATE7sNKnSKzJBElrbo99MlJ3/MmsoQE81ZRnk26boo0dIt1dvqwgPKV880byeamj+fbL6A6RByj+1hGJpDLdCV+0nYNY8IzwbPaI6WyBCV9YW5OL9+v7n5ZWGHPFlcDfCqRtQ10MP/k+Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761848420; c=relaxed/simple;
	bh=5xP8+4rP7ynBZz/qPycqSQTi5O2NlQ7OMGayAdVqr6E=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=hJmEEckNkk4oUn890ydwZQAhSei0pJ/OY+Twvx19BOC5gV4jYB4zVp1bwtvakPNexWCdA/0LskSHDkKkBsnzmlUliNbDIZxsExoLGqqJFstcLVjfrcYqUWKt5/EibBUPv6XKQw6ReYtBOPVzo6IA2s7unUlLoiAXHvFvyyHh4D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OKK26kqk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AXtjIDlV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59UGYIug1697216
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:20:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=VrqIbmGtF7SrQK/qdTNg8W
	lvealR4T3AYcoZMnwJb8U=; b=OKK26kqkLDvWfhVdvZbcipmSaFSFQ2W+WNLNpA
	duE1WTbhmBH/sGo61YhdfUXKAVvkmGey0qcny5VIzZO9VnEKqKJ74kxfz2P6wv0n
	vSeMQJINgE5cvNMXbapGTwRqXQvAo4QKzEqzPYs6fdnDo96FcvluIX4uT18ZZks+
	2GmPCFp7GYzXt7dZC+Mso16d4v+FyD4zSlYz1iW6+mAu5IGir8D1k1JlNQziDGlB
	E9PdsFRnUJ9bns4Sf5ljH5z/Ee1V/MID2R2TMPWCGvwjorjeMtFxmsFm8d+gg3jk
	VTe6/hmqr540YQ8OAlpjJOYohtQkXSt43+fCBDSZxUxt6+Yg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3trv399j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:20:17 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed18b4c621so24825681cf.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761848417; x=1762453217; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VrqIbmGtF7SrQK/qdTNg8WlvealR4T3AYcoZMnwJb8U=;
        b=AXtjIDlV8UVwpVn04SjTCckw9qZvuYDmn9Kw0sgp1wauy8VALIyQ0QHHtu9xT/bZUW
         bBrDN0tqKyTjwGTg/3hhQH/VEKjbcm4Jerig6NghQd2hiDRONo2+1U71zOgLUFgKqgmj
         D4jQwI6UlaZT/jGAr1FY1KRowLENS4HOIFF13Fhciun4AcybMD8ywBPKk8T0MGfeRbsW
         M1IV93++jwoybX+bojLL/Xx1oypQzG5hvEMNjH5/T2Lf2bhJb8ikpmhCTUKyjckN1V7z
         T2QT3zBeyghLdc7xdJWbbdpbfnQekpz39dQxgLGJPBlh4naJW211WD5/q3dv8VwHjypB
         07ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761848417; x=1762453217;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VrqIbmGtF7SrQK/qdTNg8WlvealR4T3AYcoZMnwJb8U=;
        b=MQv7V7Eqo0pxMHm4Ang4Xqjlpvm8k2DrERNUlWaZTSDsMwZNvXxw2kqpSvPc8f8J2+
         V5Sb5uCdcRqCo5UPX6dJpxyEA5OyHIB1vj+f5bNsEsJiSj9IDykiYrQla5Akf2ciLQut
         hyo4b7gCoW/3YSLBzM34Sl/9dNk7NzusYD0OQ911uYZ9CDlv4E8g9qt+q00fY4J9UuOy
         vHBrGuRSWkuJYXxs8fzN5lsqKh/jDDkRyWhHnHv6ug6Jik/sdDvjVEsJzjVuB3lSAbhA
         7PzATZxbHx3pX6hB1c/RgCfAE0saaaNQ4E86DtwFtWf60IkG+x2pco89d/zhWuOV9rvx
         aiYA==
X-Forwarded-Encrypted: i=1; AJvYcCW2IPuSdRlyhGqGj4TgLAKOnJiUJNhp/wbIt76rYSOw8Cbd7KL2dRNggAb8Yfy2oAmXTy0YSW1XVyCm@vger.kernel.org
X-Gm-Message-State: AOJu0YzO8uKd4NcnmZEJhGusf4pCwfF/vGWgIiTeNg6OzqfvXZUpibff
	XFE1Fd/RqWTneGJhNs/3EMb+r5HDEyM8hxthLOJCsNytEMc0ICCT05n9eZf7BTSE/pbzNF1aUHZ
	uakNw+ipWF6CV3kSfKJxhFV85VkGS3cUzoVrgXUoxtm6JPZRvQxWMsWibUHImNGLw
X-Gm-Gg: ASbGncsEa71VOGIBkGAaTuVnlebxqZcGbRb/v0MimLoCKunaDrMyHtouEF0wObs+b4X
	fNMH5kDXP1/i8AYc9jskinaUX2U9qzfyBsygzoC4DdZ+wuwfKgkTCMRgfky+p8j9P7vxRM40JlL
	3aARGazlfs4OsWXQehT9sOXjh1tB6ZYGO7HIjSdPIDlkziSRfE39vKWTErvZyX3Cj6yfCX+033B
	ABr/l/weaQZP5uHMdhhY43N39X97TFr8l45Wlstk/+PI320qqFmnh+3PzJDQ0DXrJhTqQWfGvEN
	S0CFRxFQQvS/yj9xVtmrY41aL1I49Dg8akmmQcK+MvfpLXe9USkbbSfM30GNgvAODuhpt8tt/Oi
	mBs/9CFxML9fTv691M0YSOVcGeP7oqrdL1RnVVROut4J8zkaOj7fpkZVHCOox/Z8mk901L6jZ1R
	3ZnrCguYepbf9x
X-Received: by 2002:a05:622a:1793:b0:4eb:a6c5:f6c4 with SMTP id d75a77b69052e-4ed218b299bmr52393231cf.24.1761848416786;
        Thu, 30 Oct 2025 11:20:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFoxZiLZSCojQg5w58LesDccbxK5rdGeSMtWV+HOmxw12ucoPv1euhGuvqr4mgLUoXvIx/8FA==
X-Received: by 2002:a05:622a:1793:b0:4eb:a6c5:f6c4 with SMTP id d75a77b69052e-4ed218b299bmr52392891cf.24.1761848416315;
        Thu, 30 Oct 2025 11:20:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37a15c5436dsm3843171fa.33.2025.10.30.11.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 11:20:15 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 0/3] arm64: dts: qcom: rename dtsi files for qcm2290,
 sc7280 and x1p42100
Date: Thu, 30 Oct 2025 20:20:12 +0200
Message-Id: <20251030-rename-dts-2-v1-0-80c0b81c4d77@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFysA2kC/x3MMQ6AIAxA0auQzjYBlMWrGAeEqh1EU4wxIdxd4
 viG/wtkEqYMoyog9HDmMzWYTkHYfdoIOTaD1dYZ3WsUSv4gjHdGi2agxQYfo3YBWnIJrfz+u2m
 u9QOX27KDXgAAAA==
X-Change-ID: 20251030-rename-dts-2-14eb2cadd05c
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1744;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=5xP8+4rP7ynBZz/qPycqSQTi5O2NlQ7OMGayAdVqr6E=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpA6xeKC5fWF/bFE5Lau8y7qphYnMImPnJucSBq
 Eg6nTiaPyiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaQOsXgAKCRCLPIo+Aiko
 1egyB/4vFPnu3JuHoOvl0vqIGRUQwrnuJ/uJch/ssaEQQ1lpv/yPhXCURjbp8wJQOpoBqLp27Hi
 KOIK4CWfmy/GrCUARlMfwIMWZz1+x1FOLoXzt6hdECV/SMnAShMDdQJ/LTRZhg5ApKzbBlZaNcp
 PZ5EkbyxGRS29eJFqz6eV0MGv70SqutqTCONcjCR2xRSLu1Jrj4StyR6MjrUQDziUILKrgCAITN
 G752yOnxplAFzFiMwBGrPgkeVOUd0t0T+3sX+f1lv2i4KflkYGIy47bjj+TsLP2BNnnPRCWJDcf
 XqLDdvhsbv8mU70/xBKzKd452f1mDbmRkw6xNX4ySAx8Mj7h
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: EeWTKBU7pknafSGd8HNaaFGMPaQF75gU
X-Authority-Analysis: v=2.4 cv=D+ZK6/Rj c=1 sm=1 tr=0 ts=6903ac61 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=WSwQQHQvUKblJ0kXEVsA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: EeWTKBU7pknafSGd8HNaaFGMPaQF75gU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDE1MiBTYWx0ZWRfX+s9M2FTRJN+S
 O2SC2IVXmcgW0P6lDkzJee/InTDW5On1o1rUAAOhmhynjJuU8yvT/JDe62dZng80TQPLVKgGhlX
 /WH/kIi+wGISg9xwmouZAZavdsJPw8hVQvlp8QKLjjbh6lcPGJDYsgnWWJB4iQ5TFbXlmloAD7W
 G0NFUdLX9lY+W/aL9fJhWqAjZ0lOHNcd3/rPrSdhkGKxGpN5NQ175yVopVOtsW8zOV9AEbClAuM
 yc9bq7Kq5mxGYlqaBau451Q1IsO4Rse/rGGaKigoB+yXnD+MD3+mjm0NGw8ajhpEQ6UfpjMaZIw
 uKqG29LfS9G+D9sj1i7q2YxBmd/rWwBPgwiqNyCFDMoL2hd6vmPfsjerAiyNiYvAo/cxNFUF5DM
 VZBBEyLLAIMENy2BkU8C4UIykEWwXA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_06,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300152

Follow the earlier example and rename several more base DTSI files for
the platforms where we have (or expect) several SKU ids for a single
platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Dmitry Baryshkov (3):
      arm64: dts: qcom: rename qcm2290 to agatti
      arm64: dts: qcom: rename sc7280 to kodiak
      arm64: dts: qcom: rename x1p42100 to purwa

 arch/arm64/boot/dts/qcom/{qcm2290.dtsi => agatti.dtsi}    | 0
 arch/arm64/boot/dts/qcom/{sc7280.dtsi => kodiak.dtsi}     | 0
 arch/arm64/boot/dts/qcom/{x1p42100.dtsi => purwa.dtsi}    | 0
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts        | 2 +-
 arch/arm64/boot/dts/qcom/qcm6490-idp.dts                  | 2 +-
 arch/arm64/boot/dts/qcom/qcm6490-particle-tachyon.dts     | 2 +-
 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts          | 2 +-
 arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts     | 2 +-
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts              | 2 +-
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts                  | 2 +-
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi                  | 4 ++--
 arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi                | 2 +-
 arch/arm64/boot/dts/qcom/sm7325.dtsi                      | 2 +-
 arch/arm64/boot/dts/qcom/x1p42100-asus-zenbook-a14.dtsi   | 2 +-
 arch/arm64/boot/dts/qcom/x1p42100-crd.dts                 | 2 +-
 arch/arm64/boot/dts/qcom/x1p42100-hp-omnibook-x14.dts     | 2 +-
 arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts | 2 +-
 17 files changed, 15 insertions(+), 15 deletions(-)
---
base-commit: f7d2388eeec24966fc4d5cf32d706f0514f29ac5
change-id: 20251030-rename-dts-2-14eb2cadd05c

Best regards,
-- 
With best wishes
Dmitry


