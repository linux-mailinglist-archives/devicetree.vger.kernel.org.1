Return-Path: <devicetree+bounces-219487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2B2B8BE52
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 05:23:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1399A1796EF
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 03:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EF4725333F;
	Sat, 20 Sep 2025 03:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ISlggu6M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D170B2459C8
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758338491; cv=none; b=W8ySYL4fu4cZx6AeavxVHcEy82hX/3zHPhUdtrO2iT4m+d/YFn+FBU+e4hzzhjw/9xLv+aJleOIxyJeG7i5GLmFtchbFxv3wwpVn+fuIUFVU4SYmE6tT3JKQhXeKY9RIImFewSPVOJ938JlDH9HuLov224k9f0nhjovXtSW+4G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758338491; c=relaxed/simple;
	bh=Ftt/PftF28xTllTsZoRGsGveRUaR2bB0qq13ptSWTkc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NKr1nKzboOXvQ32QtI1vwZx4Igyv54FOFTL1EU0sbhUDq7liTUj4cYE+u2MZ5ZMOcGJxjh08NNjQuFFFT31YkXdN3nbU90RcL/sH+DOVGfg7LvEx+bdfuz242aONjWJn2r5zycDn0vnMZTfCfqOMunwiXA0b2jr1JI3VbVwIV4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ISlggu6M; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3LQK1007685
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=kuxKL1PStAu
	Jvwvz2BevRvoak3D7tba15DUzjzxEF+c=; b=ISlggu6MdmJwRtUsXG3GMk/se0O
	tAYwmI438qLshGkuxDTl+CcYaiYGvRjbybK7wZdkWxNhJ/VfzFyME9XYEN/wdxYY
	YNmcD1OpM6ETsSZwXSO3ui7AEcXsIEHTFBBw5XXWK52moZfV2aPp6FGPu7RO0TkW
	ad4t5bxL78cmTlDTyHvQq6HRVk2rBRqHubnNG2XW0iBp3L+60/chun5trfCQ91uV
	FjhqvPdQUlTydnpvDQA/Cj2etFmmMBYKavfWUMkKQlY7hxcV8Vdu7Dq6GIPwYvgG
	odo22MiEfCnsrJbTbi1MejVfM/Dq2RBxjuIOEyUG5mkBGJaoQeOKdwWJi1Q==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k988378-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:27 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-268149e1c28so31121825ad.1
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 20:21:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758338486; x=1758943286;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kuxKL1PStAuJvwvz2BevRvoak3D7tba15DUzjzxEF+c=;
        b=cRYR741KDnTXRatDW2/+CSWRHaiV4vncFxzj0ZkXIDNI7Veeh3tA1Qzn+yj7QXUXl1
         cKzJ/R5nbD657el0PfRx8ADnav7MiO0kqmJjb6dr/Mjxr2wOeJ2raS2kcAvtzfs0F2qj
         6o0rCzFMfy6ZqmFobxweBHs9WseD6W5ZasopVjDTQPet9lBMg4zHbVVntzfbs7+BSJ8d
         Zn6EI1HRsuLYiUImNAnKQfXV4qIkAcWikItFA6X/Jg0sthTy1QuiO1jTrrYllkK94mZ0
         Af2vSoNvYAs+WTDPI/PzKK8ttssN4hR2AP4jZPDIJDMKfb1cvhjUY2KxLOSpTLxDywha
         75oA==
X-Forwarded-Encrypted: i=1; AJvYcCWn9JpZvp6Fw57W5WMNvvt3GJnhHRlftdAX7ds1H7qT1X8ir0ER9QpMzlJgBT8fXEnN0o2XBBQrhYUf@vger.kernel.org
X-Gm-Message-State: AOJu0YzRzg40EMpYu0aVgyxUsysS3E7G4fbAJIxPhHaLWBml5SgsngES
	XqT2i/AO9zVecfx/y+EcN3Xon2o+shaFd+0F8FJMKHeEt/kVDo2PkCVuD/eQq8S6OXyUQXomDJk
	FHXEpeTdfdtWGq9iVGhPsdwa1HBbacMab3HWRlPqwbdtglVObnBMRH2bSXM69klYknWaNhhZP
X-Gm-Gg: ASbGncsa+xLKl0ZQx1KI14ovJAA/wG8B9/T/oev3ZQVOWxeM4IdloDFYyXuAkJ40hv4
	eOsjyqxpRZCVkPe7U6jcZZpVM8QN7+f9O3EjwTHxQJgX5hqQtC4nM2aJCSwuTluEWyma68ng0rg
	IbNcOrYQPclzjbEBbw3FUD4zRuYj1HlnSspCrOFsEEHNWeHRHWgnGth6DE9nSkbOFVftI3llZPF
	FUKQ17wgvUfCfFgS5qTD40vAALl5VOIExS3ujsP27wsksdrBydSKL3gsuusnflXttOAH1I1uZix
	wxuMnKLySH7nnv4l80m940YA+j6FI3xTAvoPkHwExdqWHUQZry9lQrPPt7kaDcx57np5qVkK8Cr
	+r6KuWCD/RoQp8PFk
X-Received: by 2002:a05:6a20:19a3:b0:24c:c33e:8df0 with SMTP id adf61e73a8af0-292727771abmr6193883637.45.1758338485855;
        Fri, 19 Sep 2025 20:21:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmf7ZyY4Qi299dDqNQLCxEkdP0noay2XXf8NGY+wawk7nSpEhPzEhHKehKKQ4CvBpbINH57w==
X-Received: by 2002:a05:6a20:19a3:b0:24c:c33e:8df0 with SMTP id adf61e73a8af0-292727771abmr6193859637.45.1758338485422;
        Fri, 19 Sep 2025 20:21:25 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff448058sm6178807a12.54.2025.09.19.20.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:21:24 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH 8/9] phy: qualcomm: m31-eusb2: Make clkref an optional resource
Date: Fri, 19 Sep 2025 20:21:07 -0700
Message-Id: <20250920032108.242643-9-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: Tbib3yZHS_K_8GxJ8nWdGe7ZY3fHvXCJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX8YTkCv4MSUEY
 UrkKr3yAujUX5Emm2avgxndwxElell4kzeslr0gisI9FCt61gFrGkINvnaRzvg4TRSf1kI/l1lS
 fadOT7xKKbvrb5i0MtLM533/UBo7N611lylYf+iUxocSYFRnq2fa3v2I9haM8UDTmtKmFqL4klo
 1STqTAaB1NmDRpvQZ5DgY/XG7VvmZ3Vg6nBtXJzRZ70pC1XzPfNzIp8MwxNkEtG7melv5AJeJZR
 v+eaYJWERIEfPd6s3jH3qXTGNvvcnznlZLteUgWqejtszP16ONK1EPP3+hM1wHuNEVj7ycfxHHF
 +psVvRqXA95RSCUdBojlsxaVPOIJs0XzQF39Hbs89bIvcE4b6pjOaerKgdxQukTX7izdcpUUJKR
 wKaq6KGq
X-Proofpoint-ORIG-GUID: Tbib3yZHS_K_8GxJ8nWdGe7ZY3fHvXCJ
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68ce1db7 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=8inbgvmG2iPteTk8MkMA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

Some USB subsystems that utlize the M31 eUSB2 PHY doesn't require a clkref.
One example is the Glymur platform, which contains 4 USB controllers that
all utilize the M31 eUSB2 PHY.  However, PHYs associated to the primary
and secondary controllers do not require a clkref resource.  Due to this,
mark this as an optional clock.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index fbf5e999ca7a..f4355d38aad9 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -267,7 +267,7 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(phy->reset))
 		return PTR_ERR(phy->reset);
 
-	phy->clk = devm_clk_get(dev, NULL);
+	phy->clk = devm_clk_get_optional(dev, NULL);
 	if (IS_ERR(phy->clk))
 		return dev_err_probe(dev, PTR_ERR(phy->clk),
 				     "failed to get clk\n");

