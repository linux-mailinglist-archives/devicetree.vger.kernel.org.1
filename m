Return-Path: <devicetree+bounces-223717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EB8BBCD15
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 00:17:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A482188DDEB
	for <lists+devicetree@lfdr.de>; Sun,  5 Oct 2025 22:17:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71CC12248A8;
	Sun,  5 Oct 2025 22:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZysN6W3/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0C623AD
	for <devicetree@vger.kernel.org>; Sun,  5 Oct 2025 22:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759702627; cv=none; b=YTsypLC4D5Zb2uqenokQa2+7CCUyvZrKOGTcPWrRYRe+jLjfx0F9BaTFdBKkiX3Ote/FBdrcWxmn9KBKUtz6/zBkbTOD1s52rcrsgv2m/FYuCJ+oXRLAmLoRDi/Od/UGqmse0ADGDAJaNqQcmY1KWxXYeK81owgMhrSHUrl4PJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759702627; c=relaxed/simple;
	bh=qMqj11SWPNJRQxFr6SvpFmDhPvJ370KIAe+tEdqRJ5Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=oeT6sN2l6MN0nAosL+t8GW6rBcZG104/zoo0jUfOLf+RIsc97hsMlOhH6nCupJSaZPgh7XfRF+WcmnzL7ve+2ityCrG0DTMnmoez/ZWIPXTT91F3htWEvJdk3LnnI1GNMvwkIsSZDNXg4e17kjQmlfncJAu14qk3rgeadR4HDtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZysN6W3/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595LaTY8021254
	for <devicetree@vger.kernel.org>; Sun, 5 Oct 2025 22:17:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=h7EiYCqL5A0A82Nx/mmgix
	ln4PixqDfUlvDspjDnbAU=; b=ZysN6W3/YEAzWURt89UwYS3MONZHdsX1XO3jTi
	5Jz9EKYpntzoGM2JDqL9uJwjdsraVHqJ1W9DLDhbbplMuEW7tluU8g/z16zzqvpN
	RPLYJ9vojz9+4cHEA/X+xkyYdAv0teWuqOUpsGU86bQ81j5UMYa0bgOHR1OXUo3U
	urpw30kSEDWKWbkwpHMKdQx16WQmEUdKcnHqxWhxa26e9++i58mBziBjADT7EIX3
	6/x9lFVfOlKgbuPa3c3Qa6Akfc/fDNYCPXjxq2A6yw9b4Xm1ciFPn1CnMjqWowaA
	YitbQeG/wIy5FzRwHRcdJn1NDgD2zbGyMC2PjVxLKthQ4rCg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49k6bfhpdu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 05 Oct 2025 22:17:04 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4df80d0d4aaso58098451cf.2
        for <devicetree@vger.kernel.org>; Sun, 05 Oct 2025 15:17:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759702623; x=1760307423;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h7EiYCqL5A0A82Nx/mmgixln4PixqDfUlvDspjDnbAU=;
        b=hqq4X9U4bTAbm/tgSSsu0GPyGtJPVzGGp2cWGo2XJygiHNOhCvkswZqMnvRyg7WAXo
         RJ74I9DZK+NctyvtYmOnXQxpg2pIqGok7aQNHS2tJPa+QBV5G+acnyD1j7Xum+iytZfS
         CDsogBMm+hL/hCHi858Hn0WTmLBrjXtpHrLLWKudtKHRa7k61DSTh852+0CHjpB5sA7Z
         muxpTzFML0xDQRe18zzCIwdNFZQiG26OzK1gcwTKaRkm2S7eJq2AwKO/ZemfMyRryFPI
         MHGJbqfvVHcFyuXdTzT5jrUpC56v43ns/eHqiBBlfSnfNxlmDzkBY8iJF3Ta1a2ppVXL
         s5pg==
X-Forwarded-Encrypted: i=1; AJvYcCUHMNyd1zLtC6Ht8sa9BFtGio0FTu/BhFnBiLafK2HV3Bk/AhEj/47j1DS7YRg2px+Shh/93WByyOIG@vger.kernel.org
X-Gm-Message-State: AOJu0YwCbq79OfzpXEfL5hdDpPO1kkAmuAKhOcc/1zPYHRaaoBFOj7rF
	qOt6KdCliM4oZdfaBIPAw2f0bk7IWAPVrm+a/ptov5yzogBx3ws45RQp4UVM6yKawG5HNItB09i
	ATiZrJPsSoAPbZs9L+3dPUmi8Ckf2PpzpjRRGzHPFLx0ZYcCwn/vsGtcA4rabXpJa
X-Gm-Gg: ASbGncv+4WjJOi5PCbeHVOC5UwRCm3v1WQHwR7WHCtlsKz/8KUdkyqH3X6aL5O+k74v
	DkaOGGdp/BJAzvlR0sNgC6FouMzg6WJb6W1vN+BJlRnKhBf/dqUBVDIOTpwWc2k78Z4gP0T+pvG
	KxaUPBC/Dhrj22SrLHonuV6LB1zgcC6d7tufMGeJSqOSdaG1UgOnNmESFpPj2ZLOnw/EF5dtfRI
	JdHXeSE2QAtD2J7FUKmx18kjVL99u8g+5Dd/jvBOIx7c6Osj/MgrfDEBgjDAFmUorJGNa5O5Ggh
	tiNEyhgjZFMXbECRniR1VlxR93Xh+fI5kwfRV2msg6iMA4HGfnkRBSMt9j9OlX1HX+nBEi3lG+y
	mYXmTAHmefEyXHlCXKwmJV/VIkaP/TihgTHu8awbcpTBSFT8lXGGJi46wIA==
X-Received: by 2002:a05:622a:1808:b0:4e5:6cf8:29b with SMTP id d75a77b69052e-4e576b04021mr144346521cf.58.1759702623018;
        Sun, 05 Oct 2025 15:17:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhFA91HnAuApn9xtHNjvvCjTVTjvyFCJ+nZRb9rxe2DO3l1dO2JQu2jXcNUfEckhnOIS2WHg==
X-Received: by 2002:a05:622a:1808:b0:4e5:6cf8:29b with SMTP id d75a77b69052e-4e576b04021mr144346091cf.58.1759702622358;
        Sun, 05 Oct 2025 15:17:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-373ba2a536esm39621271fa.14.2025.10.05.15.17.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 15:17:01 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 06 Oct 2025 01:16:59 +0300
Subject: [PATCH] arm64: dts: qcom: sdm630: fix gpu_speed_bin size
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251006-sdm630-fix-gpu-v1-1-44d69bdea59a@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAFru4mgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDAwMT3eKUXDNjA920zArd9IJS3TRLcwuzlCQLAxPLRCWgpoKiVKAU2MD
 o2NpaAFfoFZNgAAAA
X-Change-ID: 20251004-sdm630-fix-gpu-f9786db8049a
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Konrad Dybcio <konradybcio@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1365;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=qMqj11SWPNJRQxFr6SvpFmDhPvJ370KIAe+tEdqRJ5Q=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBo4u5cPRJfGaNsZtd9Qvp+qpPh9EN4Y1WNSjZ9r
 MSIDUPzaZuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaOLuXAAKCRCLPIo+Aiko
 1Rn3CACug0nQjghlIxZ6i4PwxOH97pL34a7gXFV1DRNTsz4Jwb2M6o7xbkU9me/HN5EVAkBuAjM
 3ZCimhhAaVkCDA8zQYQeC8dRCugJkNqWF+yDA9tPHUX7YXW7R/seeNFdyHTg2pR9AaJT8BX0rSp
 4BwnJ/q+YhmzH4tarL/y2rZzdVWOHdfTB3dektpyb/ajW7J6X/5d1bdRqlzXPr8l36qdr3iXyr7
 ryfe5Day6bucqb1rz1sX03mjk79/1JEGUWhSrdOg5PF97KFPeZkakPyIOp6N0ITw6MAMRZkurZD
 KKSFPURrWIEAb95hwdMNxjNMYsPY2QOI19nOomTPWXtdLieX
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: TpwxQCu_KFQnTGfI0fqdexxiGmIdVqDj
X-Proofpoint-ORIG-GUID: TpwxQCu_KFQnTGfI0fqdexxiGmIdVqDj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDEzNSBTYWx0ZWRfX+SLq5czIfbi/
 UyztMxZtJ8YjHs57mDc/jzmdL9ld8eQl3GczD0ccGVx8tLfvlWB41eQvxvjXSylsAKQa/OAwqAw
 R+YLsV+licRHosBecpGWz5WGwgiWrrNgIuJbL5jMyTksqWSqxwQAlFYdMthh/qv55R31KL8pRJT
 SL2I1qVSoq8/JHSsWC1rqv3er5jfegknX9kXpHuZW94nnsncmItQPuz6R313jLlswUF3FPbEPyM
 5celUSR4kwKtLmgbLwXKsCWqkHwLSMJTS62x+vmqhZSQZzs9CvvtNGqkBFxoK9OJVgWKmdUuHD2
 jwK83KEJl1J3ppOVwrVXCS9NrnCPgKGYe2XB3IJSyd4V3Mt67gCCo08vbKBhQegysJycTO7YxwT
 KXCuBvIt7ezUH/IOI8PhmXeNV7mwZA==
X-Authority-Analysis: v=2.4 cv=Hr572kTS c=1 sm=1 tr=0 ts=68e2ee60 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=0OtPct3eviVbZUrawKUA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-05_07,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 spamscore=0 bulkscore=0 impostorscore=0 phishscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040135

Historically sdm630.dtsi has used 1 byte length for the gpu_speed_bin
cell, although it spans two bytes (offset 5, size 7 bits). It was being
accepted by the kernel because before the commit 7a06ef751077 ("nvmem:
core: fix bit offsets of more than one byte") the kernel didn't have
length check. After this commit nvmem core rejects QFPROM on sdm630 /
sdm660, making GPU and USB unusable on those platforms.

Set the size of the gpu_speed_bin cell to 2 bytes, fixing the parsing
error.

Fixes: b190fb010664 ("arm64: dts: qcom: sdm630: Add sdm630 dts file")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 8b1a45a4e56ed1ae02e5bb6e78ca6255d87add1c..21f7dcf60679026e45202c6ce137ca0463c00d0e 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -598,7 +598,7 @@ qusb2_hstx_trim: hstx-trim@240 {
 			};
 
 			gpu_speed_bin: gpu-speed-bin@41a0 {
-				reg = <0x41a2 0x1>;
+				reg = <0x41a2 0x2>;
 				bits = <5 7>;
 			};
 		};

---
base-commit: bf2602a3cb2381fb1a04bf1c39a290518d2538d1
change-id: 20251004-sdm630-fix-gpu-f9786db8049a

Best regards,
-- 
With best wishes
Dmitry


