Return-Path: <devicetree+bounces-241539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 818F7C7F9BE
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:26:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 73FC43A21DC
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 09:26:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B17902F6583;
	Mon, 24 Nov 2025 09:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jsFdks+g";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="U3Dhe8wV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2B32F657A
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763976372; cv=none; b=VEBH6PJfr+iGRn108EQQTf8dGFAW/C+Jsi8E6AaXE8nl1Q+zcn4fsY8SuM988cUY65tYyAz4uFebBTheIaDpgiV3ajAIGpcoz/Epnwnhi4DzvgsvuGSovAE1ibfYjNiAui5HevNRk1ZSeBDKbg64TQ48iBAcHuA1j9u+Xs9St60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763976372; c=relaxed/simple;
	bh=oAMGitWIAgfVFPtosAScIxBCMBHgKBga2T/t+cTzfqE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n8J4eOq/8/xzZHmAPCGG/T6X5M/fdEX+FYTq2XWx/IQCZg9VIMLh01ivB8baPy6cJN1BXf8dpHpLzaiZPu6UDKqubqMz/XrFLJzD/BqcQoJ5YAoTaVv2hn+JBw7DhkxwVI3GKPRyeCgTvADwAQOdFZLhcUN3urUOjv38QyUtMC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jsFdks+g; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=U3Dhe8wV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO8tJ8X2479491
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:26:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NkR5u0Ko85vl+TubCEviuFZl6vNlDg51wIZWE3oBrtw=; b=jsFdks+gOdnsOZLH
	7p0ZT7un7OWYLwUC9X+9t0w1M40HHKCUeXS6MXyWg1kzRmOr5OHaOr34MFq5+3KJ
	lSHF/vH7rBYz59xaoSm7bLp7iGnxm8XvwKVg22pL4KvyoADKa7jROUG57NYHCqzG
	VgFH7Yx6SMOBPHlnZ6h6dCSsrn+d/s6AJnT1C2ZMWEVtu2ryWoKBxc74j0QP4q2D
	YIFUiexdM0YB34zaDDa2Yg7ARTv531PewfpZ0KlktZKFbS5ImlhJW6qh9KBJfvTG
	lBrX2mlOcNyYYcBoAw8im4yE6xJ7/dlRg4C81EV/C9O765MVW30cnRuwdzdgCQW5
	/nH2Mw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak68dvekb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:26:09 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-297f3710070so102076315ad.2
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 01:26:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763976369; x=1764581169; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NkR5u0Ko85vl+TubCEviuFZl6vNlDg51wIZWE3oBrtw=;
        b=U3Dhe8wV1vysggcCMYGYlkZXqmkpvIb6+fkh6CQowNJ306x9ayX8GaQDFYUR4DAsI1
         tEboHTQZS9+mSy59MX5S0v3aRXXKwe9qrwc2QAgtq2SrdyWNemqcuTql0v45KpXIkPx3
         QBl5fItk5Mw/nYbC6PnLHdDQwNcit/8AUy0EUTMhYb++tkqNVAL38CeU0goLE7q1b4hM
         m2+4V1n2z10CVZTo3amuUjhk+U7GOHrVqMxexH7XjEXGtPHOEiXdnX5bn2wDhi/1obU9
         XtiHKr2QvTIVyQ36jeTFBXaf0gAaibQGm98zZtNut/weiB2R0Qj+Jg0mNgcSIfS16rb9
         0llw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763976369; x=1764581169;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NkR5u0Ko85vl+TubCEviuFZl6vNlDg51wIZWE3oBrtw=;
        b=Jb3Gu2dJOV47yeDp625PDqwG7lOg3xH7yvdsTYR3lb/JOALkG2xaoh+epqrKJY/JqL
         c38MMLm8+gI/I8TkveFrdVK7+UL8nqWLB5OMuSWlNvuoCkSp8wVn8Mlv8zBDNp07cSDh
         SjZN/KMZ8PES1cGpiNel0Xu7pZmOWxwhaXekiw8uSWYVIOtrHF+O/fUa+1h3OSGT+bM3
         4YDSvClflZ4//8OQaj3TqU8EFBpWcRa+xHn1l8ub4DTeWXpH9jMQyPskj1ZaCq+nC5DV
         HZCCZcLiYzYsW0YqYhajyL2emovql99SLq/cN9JVvgVGgpZUiPWYeU9V1wlH4MtSW2sA
         isUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVSp4/lo/J8S4iepBvj+EIowq1nOn/pmJlp8P3f2/ykz7sz+z0WW39lpPV4rnCHqkkFCSisicvV9SLE@vger.kernel.org
X-Gm-Message-State: AOJu0YyROPgxwzPzY1aiBfFBXuwuc99FepsuG/hDZN2mBMUNLMIna07D
	mfulp+fvduSKmzkLklcqP1dlPoiMLcIkRVyn2OAlnoh9wcxvcrpiljCn0axFF387ayFdal/u6pP
	2iflWhvINmi9Tc2PgYXkHKuhzGGMxQHKmAgxN2+ZTy8mjyG4lJFc0iNn1kOMo4zG+
X-Gm-Gg: ASbGnctwEBgZDS5dT9N+gZt6D69yLvBi2rQEgk1kMtXuLmgQ21FnewuqMw9xBmJFQR9
	uJqDMr7MJRxW35tiRxIkaJKHHJQnHc8JAtLUc4wXCgu5KuIxzxarIWqg/4ggcpSz8LlbTL/bFlz
	/Moh0Z0hxJbm00lTroYMXrt1ceNl6jlwRZnW1FIIj5L+OkjmFCP+H6LxQxFMZjYk4jEZUHGrUuQ
	ODWYanHl+m4D1uQVeIpdKA1D2GzHR4vyoqnMk2CThxLEq9923uyTxWLMYthuHa1S2wha/5speyo
	283GMnlVOO8OL85kws42aMB6cAnO9Pswr1APLsCeFC8oE1bSOt044lL3hTfA3jwjoVRHXoMc0l9
	thEDHaTy5JsUo5fuO+RDrbUXwrH22oQkwyHohOqs=
X-Received: by 2002:a17:903:2ec8:b0:24e:3cf2:2453 with SMTP id d9443c01a7336-29b6c6f1d7dmr117208415ad.61.1763976369094;
        Mon, 24 Nov 2025 01:26:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFL0Aji0TqRSkyUsUgyFYkIRXsgkNDKqDb4CChR/dGgKGO2yJ/tiJxfM1s2zq1jIYw+2WmUXw==
X-Received: by 2002:a17:903:2ec8:b0:24e:3cf2:2453 with SMTP id d9443c01a7336-29b6c6f1d7dmr117208115ad.61.1763976368603;
        Mon, 24 Nov 2025 01:26:08 -0800 (PST)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b29b1c2sm128444675ad.81.2025.11.24.01.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 01:26:08 -0800 (PST)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 14:55:19 +0530
Subject: [PATCH 3/6] arm64: dts: qcom: lemans-ride-common: add additional
 SerDes PHY regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251124-sgmiieth_serdes_regulator-v1-3-73ae8f9cbe2a@oss.qualcomm.com>
References: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763976350; l=914;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=oAMGitWIAgfVFPtosAScIxBCMBHgKBga2T/t+cTzfqE=;
 b=V9wP2UHoUmX59aIYgCIuhLtnMyt9fWYCXBzo8KcQrxxZuoik44ltwreFE4ro7M6T89N88ERZq
 n+R6EJVabgvAnwcr14sPpCtygPr/PDQbidvUO5nZgAzo9UgQILYQ7tK
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA4MiBTYWx0ZWRfXx3INe2HjdJBV
 Ku3E1sZWpJAd6ezO8JQcivzrHlwnnr+cszxxArmjkihZkEgqrywEyo9a6+LJmgX+/D9OC8hUXnn
 4klFuyzSoDljD9CcyfILzMTgf9AgTsAR9SEfHzXum7XxOJsCLaU5uXRSmdP5a2lE0CqLNlmCGD9
 jQg7am2NvgRgMRjO+wNDSOMvJzTr9OZ+OdqWqmfEThknlbbttFxKEvqBhwnyCulpWTwTChK6irv
 8aBWfsJH8+6SxPFyVKiVY35DcIatY9XTo5kZTY8IiH+D43Y8Ruw8lrMlMlU9FtSqSiKFS4MJlc9
 BxxsY1dhEGpgDF5pqb7/LTb6J9jYS9NtoTOQpsz5a1a4DGG8k46oeBDJW/36gd/mwnjBDSfC8MG
 6XbX/u8aQ1iAvDuUf1ZzYzDgpdp7Jg==
X-Proofpoint-GUID: 3XIysflbyky1buTHacJlyATmuJFo3XV8
X-Proofpoint-ORIG-GUID: 3XIysflbyky1buTHacJlyATmuJFo3XV8
X-Authority-Analysis: v=2.4 cv=UsBu9uwB c=1 sm=1 tr=0 ts=692424b1 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=WayAn9FBvrSidyY0FQcA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 suspectscore=0 lowpriorityscore=0 clxscore=1011 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240082

Add the additional 0.9V regulators for both of the Qualcomm SerDes PHYs.

Fixes: 5ef26fb8b3ed ("arm64: dts: qcom: sa8775p-ride: enable the SerDes PHY")
Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
index c69aa2f41ce29f9f841cc6e6651a8efc38690e19..17b5e79036161212f60e9f1f728c1af2448d1b4e 100644
--- a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
@@ -779,11 +779,15 @@ &qup_uart17_rx {
 
 &serdes0 {
 	phy-supply = <&vreg_l5a>;
+	vdda-0p9-supply = <&vreg_l4a>;
+
 	status = "okay";
 };
 
 &serdes1 {
 	phy-supply = <&vreg_l5a>;
+	vdda-0p9-supply = <&vreg_l4a>;
+
 	status = "okay";
 };
 

-- 
2.34.1


