Return-Path: <devicetree+bounces-167133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 812ADA89845
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 11:40:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DA0816C0CD
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 09:40:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E42528DEFB;
	Tue, 15 Apr 2025 09:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Crry7EYQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E435289357
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 09:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744709987; cv=none; b=Nqo+hfOxkYxnmDOVY1rNaRTXu4oiNPa0Y1Z1MD2Y/Blc2ZMQMeacz25rhjPU7HRy8hdMoft8E8FBBcCD2jMZtUdSLe2tE63APwLyEZaN6L/wWKuIlpwm3iMQkYLwSy0sks7vwv9Wgg09kKMozD//LoNgZlZ5RQzbyEZ9EkVcwM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744709987; c=relaxed/simple;
	bh=WwCvGbKN1UfpAvbEF24uDaZkMcpdSei4ppmMTFjiumY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FAc0+viOAMaEUVdB/fWUZyNHZ8vXj38Z/l59V1fchPEFnPyrzyy3DH4vFlW4rQGC7P8EKK0yUUN3sFG5vmDUzpUtRYPnVL4pfziSP3g3AxPr0YBpIxzaBqsp51XBnJ2iGRug0KhuN6nqWiurqjYi2neSeUxaA/9Q3mmCz68n3Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Crry7EYQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tMZZ005952
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 09:39:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	boXGEJ9vm7laFVs45kpF+i7DaEsEXFuWOHSJOklGi48=; b=Crry7EYQoQ7jclKC
	t2LkwXKWi3UGPmFyK4i1sqV1VOjGoUvZR9vAP0XeSwg8+YsbGEnENEbXIQRzeEV5
	BMh9agY8PrayU9Uty3JzPLhIj7uokz0VvnQKnaOhxWj8mVMFkh1Iv321fTU4QF5s
	4Il9Pf/tIFhmokJKlKT8DbTW0jLbGkb2/5GGH8+RTBfnuLWmlkALWogr79m0h4x9
	wrPjuNzXSHfBXb6PDKc0qCqFmGlPz05aWQMCeobtH+OBbTDKFttO5zoNgnUWAmcB
	uFWyEZ+MWQ+cgVahOmCINpKvW/+oQS3bAWvAhTnwjRwcSR2Kmyd/g13CbXAT+a7w
	ML39aA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydvj7qfy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 09:39:44 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e91ee078aaso92050706d6.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 02:39:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744709983; x=1745314783;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=boXGEJ9vm7laFVs45kpF+i7DaEsEXFuWOHSJOklGi48=;
        b=cboR5iVNvY7yuf+7Nj+vkfttbpSgA+VkxHY8cCM+R5K0DvfaPOASbTz/ko4h/WvYM8
         IN6IgzNYezGfp7kWnzTY0WKV9L6nTL79EoqJDBAzjshSN0bN0VGnxrKwOE9S1zCRkKGT
         aiZAgQGjMlVuKMnWbf9T3KCbyoWNK2BAH+AL9wZIXvTmeYiQWNsWMVsQCGS243UY8sA7
         gaxxWcvxqKBfZKWtLQk4/Bq5z+1U+Dr7AhIMqRTgsuM5gQGDobvz7dnz+ghvJipzRMY6
         bxZR6NnYjopfY2nTL1JgWL5bb9M1chKIU1YhhyP/i1R9kyda2M+viTKHXQY2DqKFKiNq
         3qTw==
X-Forwarded-Encrypted: i=1; AJvYcCVjbjUFnD5/fRIWC1g16yHMBfVgQt5oZ0rZ7psNm+dVNmKpDPp0tcTGEpntpSCHfy5muew+ojWyjrL3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywrzuw/p76mDzIHHDZWdzE644tVPbtf45ISq9jDlXMaQeWkD7ce
	dXzp/19NPQaSy6ie9S8dQ+ZQsBLlyCQopyjYMwwh/ytrBST1N0GcOgLJUD3pvApx5+OEPDriYov
	tJhNWa3Dhrl2Eu8p7TL+oTLKRzsTBex3FNyVk6iCYAMsds1YFEGSD+3zuLTWu
X-Gm-Gg: ASbGnctWSkxIFZ/RbzhnsSFV5RUDPollnD0vi+jZhPM/MypDP0zWxfHXguT+RaByttu
	PfQDUL+SyBJ3M2Q0cVNaNi4gEb0vjcZ+HVgAhXP8mClqnrUz7FhxDTOVQBTKvq5rWyGu8fjPfqh
	7RKAEtxpYqilqotgzCHuevPAWhk/UNBzEr1HEvP3fj5ee30r7gh3iEfvMuZigulH3LaNwK7cnYr
	eyF+pCoaducz2YDputH5YPo/R9amcDI3www7lUEtgE5BLJB4+9vxPduHXUJF1/bZJ6RLXhXAZRt
	EKFmQFqaauW2kZrVJkorL9e0xNVVXL5DVRKznf/YDs8ucGSs9NCQvTYvIpMoF7PdB5nrkzeWB53
	GoE9pxYQMlC3sRAir8j+uFLHK
X-Received: by 2002:a05:6214:cc6:b0:6e4:4011:9df7 with SMTP id 6a1803df08f44-6f230d1a647mr271627466d6.16.1744709983542;
        Tue, 15 Apr 2025 02:39:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHgv+l2YW7FLqgyNzvGDxI7BnqBldiXe67Jqf8Q0JmqBPbVtUaiY4utPWnf5VS4nhStjkZWOg==
X-Received: by 2002:a05:6214:cc6:b0:6e4:4011:9df7 with SMTP id 6a1803df08f44-6f230d1a647mr271626936d6.16.1744709983180;
        Tue, 15 Apr 2025 02:39:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f464cbc60sm20141901fa.24.2025.04.15.02.39.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 02:39:42 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:39:32 +0300
Subject: [PATCH v3 04/10] dt-bindings: display/msm: qcom,sc7280-dpu:
 describe SAR2130P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250415-sar2130p-display-v3-4-62314b1c9023@oss.qualcomm.com>
References: <20250415-sar2130p-display-v3-0-62314b1c9023@oss.qualcomm.com>
In-Reply-To: <20250415-sar2130p-display-v3-0-62314b1c9023@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Bjorn Andersson <andersson@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=934;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=IJ0quqH+dI7r+sJavUIADWzzAqD1L2X/CIVzw9kCDtE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn/ilWDCo+pRdd0GrlabWfVcz8v6zf4ozWEeLZA
 /Fu3nJWwiGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ/4pVgAKCRCLPIo+Aiko
 1ZCmB/9c4hLwLkqR989lkSnfX7RFd+RyXe2921PtOP8h3L7D9zPDDrRiPBsEIoM2IWDEgcRu29V
 TOK54ArIZFVtHuBzxHBrMKjeGTaEit0RHjeaueqX/uUaeFVZY3ZekNjO95YrhwBjDam3HZh5c3P
 KM6XNV83M1FHTLgDV4JtQyPebgUeMio3Rkb431dyZ450VyePsBt408lhO6oM08G1dvxgHIZ2kNH
 sGaQTCgD/TxOiRxM1flWQ2L1ost0uIylgYTY93Tavz3lOMs7y5XPP72eGnK6y80sGhBIcEll8cb
 FXyLoKPZm5mLpXx4et9YY0hagzeFfwiWKhu7H5nZHb7ecY2x
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=ZIrXmW7b c=1 sm=1 tr=0 ts=67fe2960 cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=P0d4iQPpJQof_2lRNe4A:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: xFup4RVZW3SnXgsN1dXThlaht58ON-EX
X-Proofpoint-ORIG-GUID: xFup4RVZW3SnXgsN1dXThlaht58ON-EX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 mlxlogscore=888
 spamscore=0 impostorscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150067

From: Dmitry Baryshkov <lumag@kernel.org>

Describe DPU controller present on Qualcomm SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/qcom,sc7280-dpu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sc7280-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sc7280-dpu.yaml
index 6902795b4e2c249c2b543c1c5350f739a30553f2..df9ec15ad6c3ca1f77bebaab19ffa3adb985733d 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sc7280-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sc7280-dpu.yaml
@@ -17,6 +17,7 @@ $ref: /schemas/display/msm/dpu-common.yaml#
 properties:
   compatible:
     enum:
+      - qcom,sar2130p-dpu
       - qcom,sc7280-dpu
       - qcom,sc8280xp-dpu
       - qcom,sm8350-dpu

-- 
2.39.5


