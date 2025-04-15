Return-Path: <devicetree+bounces-167186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7ADA89A06
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:28:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40589179C36
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:28:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30AB22918E8;
	Tue, 15 Apr 2025 10:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vci2Z4hS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2BD28E5FB
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744712814; cv=none; b=Dj+epH0etrqQkUCfw1E8MbZ+4oENwsAXhQltB+HcQyEp8yLTclaHCTNQOYEAlEyogI/KMfuAKQIAp+SoJLnZ3vSPKJZmeh/MjHsLZuaijQFdBCB4D5gZCJVmxw9MrSGZtZEhn5eSolw/RfGnLaZXsnVowvCugRkY7E0ho+PrHDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744712814; c=relaxed/simple;
	bh=BvBgB4W8ZTcKk/G/OhMfWkB3234lu+MaknAkVorM69k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LhL5UcHOYjE3uJvsNqiAd+BBlZqyQppW/O+Y8hjAEZPqXYYSbwWgmy8ONn5wrqDKFNu7fQCTvSinocFKArBY5cLixEEASYUncI0WMbcakc0d/Ie3GU/M5oG1YTyhEueXhZ1nsOX35TufrEDHpyITVtGBob9+2eW4yX3cWsaduYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vci2Z4hS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tQip005498
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:26:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3pGt5ejzI8IOPpo8hiP+48fCdjrnk/X2xOagmzMPwxE=; b=Vci2Z4hSVZJlXmmB
	YoCWYtcurFtig04+bplOl6oxjC6yX5pjwR/TRuHszX7QmoeI1D8qQl+msIFiF7r4
	ebsmXYzTM0TGQRJWzEkvpRbHKZe5iu2Ckd+SHRqlkTApwJwZhpCG0aeUn09T6uu7
	BZdorvT7PFioHru7B11iEUxlsfJTfTp3qRHQiCM7FbiIsptkpwlEyqTg+DLcCB+k
	+bdg4UusQ+E39lhPFu1aKLLhqolKqXEVadCd5NCIkQoaFL/p5sOM3aII5Y+hVdv4
	DRblV1/YHJXjTWwy8jBw51JOVybL29W5GCQN85GvK0eBUbk2axcehtxA+r32/UYd
	oD1NgQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yhbpqfwk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:26:47 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5f876bfe0so858564485a.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:26:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744712806; x=1745317606;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3pGt5ejzI8IOPpo8hiP+48fCdjrnk/X2xOagmzMPwxE=;
        b=TBIN9rC2vfM+HnAkhqdblVMmq1g9S8xLKb0X2G9JWb0U/I6Qu3IHOj/tVOLJy1tWbD
         FXCnwNEcvYr0kqMZA4/MkaHXjwsgm2poOxS3WazjEaoS2IsK+m9XnU5hDMD6EZTWJ2Gq
         UNgB3Uav6ZxU5lknlS8Zy5urfmQXU1M8Jebe24prw1ucWTRDcCuF+M5XHhhGU17WgRCR
         oUdEqwkiXC/zPNtoohVELgejkGFNs4QKx3+TPycTaO+rCLS3D9WmCzux9EHOoprLJvjv
         YIOmTJq9Bavogw3X4iw0fAvDLQ6p/QmcnBixyg40mUWnJWfgReAEbeERNN49SyWhDsGc
         5FUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWasp/RojFC7X707csIJhjuBauvvQTD7DlVHh49/eofXrAsU+1W52SRyvI4wwjWO54aY3CwGPqIohJh@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn1MnfFFkyiIjwf5Oj9IvIyv3hJOWxEsMtBwCKu68tfVZX98gp
	3ZOZB/kmBRHaD4rj5HVk6+pL0ohCfelgiS6NlGzTh0WrngS7czwjB1rcWtVV4UgLjNNbJi6DtFq
	eQR3nhRnX683/5fqYDmJz72SmBZScKZ8brlsKaLPPsJlPYIwhRjPie0bAmcoo
X-Gm-Gg: ASbGncumVDdi8AvV72HBAFcQJyTWANpVWSpFeSGIkzuIapL1CPGsEyKsY1nsUc/fzp6
	wlEmjiOUJYoqNQnCTTv+8GqMm0IBR5GI/jtQpsT4tkngyj2GStV1NjAvNcyUmTqB6CQWsmTZp2N
	++/jTpIDjk7SLQxjubJznW8HE7j57YAAEzbLlTlKBMymCHWjfHvk58UPshEeSsKDym8OgSlxB64
	1H11MoBFyTiDnytAI8hX5DRxtwtQeahT90rKf6MHkjjKlQa2MatDHCWQk9t39hLeiNNDlrvFHDM
	ylnUoUioJJeLMV2RxB89/DRxaAut9kqXRIpXEgNFku3lyQ8Wga2JAbW9IuWC0StE+u5uNa1VHZ+
	BD7lbwBjJwTV9CgQOom12ePGo
X-Received: by 2002:a05:620a:258e:b0:7c7:a537:7ce2 with SMTP id af79cd13be357-7c7af14f09dmr2260725885a.32.1744712806251;
        Tue, 15 Apr 2025 03:26:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyDe5wBNhK9QU73WviaCdGoqC7M4UvrIy9K5ivvzwHe+INns68EsyslNvyZAiWMQqvn4yf1w==
X-Received: by 2002:a05:620a:258e:b0:7c7:a537:7ce2 with SMTP id af79cd13be357-7c7af14f09dmr2260722985a.32.1744712805954;
        Tue, 15 Apr 2025 03:26:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d5035f5sm1384005e87.117.2025.04.15.03.26.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 03:26:44 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 13:26:01 +0300
Subject: [PATCH 03/20] arm64: dts: qcom: msm8998: use correct size for VBIF
 regions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250415-drm-msm-dts-fixes-v1-3-90cd91bdd138@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
To: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1022;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=BvBgB4W8ZTcKk/G/OhMfWkB3234lu+MaknAkVorM69k=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn/jRbtEdBjv0xvsJm36YTvVsNe+h+E/iNSLE01
 na7gxZAqJyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ/40WwAKCRCLPIo+Aiko
 1QOPB/kBaGMA7eofuKZ0j0C44v0Vri6vRQH50VgMSURlmUzdBXUe32f4JNmWg9EJsBB685VvpPj
 9fFvOKuH8il4YmySfQr/0LJVQ1NpkXQYdDIx5Wre8WTRu3TQmUbC9ivUJ4VeepY1oLADrQ+YFsh
 4H1S3WNGcQiqAyXpyubESe2X5oj1DbA90GhZZVQFY4EpOBtiuLE9IR3IPjPIDpHpzpOFheVDRbA
 ITt1IVAKLtkrHCz7UY7P9xkO0ZDul/p1pdPj8/ZK5mcwinngc+BlY8arM2p8q4uM8fQv2t8+i3n
 kPXbSziUSAkZfzI0ty843AyGL6BbOJnoHa8L3xOH0xxhl/a8
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: pmFca_uS0YKhF68G67mkD6iOdj86GJxr
X-Proofpoint-GUID: pmFca_uS0YKhF68G67mkD6iOdj86GJxr
X-Authority-Analysis: v=2.4 cv=I+plRMgg c=1 sm=1 tr=0 ts=67fe3467 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=sVyWatIdcwow48qmkGwA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 phishscore=0 adultscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 bulkscore=0 mlxlogscore=597 clxscore=1015 impostorscore=0 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150073

Use allocated region size for VBIF regions as defined by the docs
(0x3000) instead of just using the last register address.

Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 7eca38440cd7ea60caa3e8467097aaf0d7928df5..cb70554467410965fcd4307fa5c7b232895084c1 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -2830,8 +2830,8 @@ mdss_mdp: display-controller@c901000 {
 				compatible = "qcom,msm8998-dpu";
 				reg = <0x0c901000 0x8f000>,
 				      <0x0c9a8e00 0xf0>,
-				      <0x0c9b0000 0x2008>,
-				      <0x0c9b8000 0x1040>;
+				      <0x0c9b0000 0x3000>,
+				      <0x0c9b8000 0x3000>;
 				reg-names = "mdp",
 					    "regdma",
 					    "vbif",

-- 
2.39.5


