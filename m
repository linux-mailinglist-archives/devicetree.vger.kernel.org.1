Return-Path: <devicetree+bounces-223307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EC3BB359F
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 10:53:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B0DAF7B5849
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 08:51:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5B0B2FD1BC;
	Thu,  2 Oct 2025 08:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CAP2GieB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE802EA461
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 08:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759395187; cv=none; b=SrG4OHWtCRBwpnN2kcf88q9si4ugoO8gA8DkiBPLTtb7eyhnaxZFAxB7g5ISKVo5RHrs8qB5aq0VSy1x1okRvXc8sb4rDOvIOl6aItJSSnSVpQJfalFciAcAwN9CyDbD/1wMHi2SBJe9mrqf2RkWU5niWoxiTHSV03DDpTAe094=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759395187; c=relaxed/simple;
	bh=4HhiCdtPcD/lAuJiiWVZDNzGfAoGz/T6J5k93s3E1eQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=LLKBSoRPU1ITJHwi5GHyl9MhfjPBNIBqs24iZZ63ixwqMWqCIOdCKJiE0Xe3La8xM6wR56BWXjtnbnPJ3DGOq6D+Dc1Q8t0KOvyQ/ZICt35rOhy4ws59evhdbO+HSIlryEFrM0hIQxbGkA8frW9xPfGSrzDscTIpC23cH3pzITw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CAP2GieB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591IcSAQ022969
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 08:53:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=TASzNO6cx4aY4C3+AUINvs
	P0m6HCBQVPuXIy+ecED+A=; b=CAP2GieB3AbnC5uPndtMr2krZegxzNq1Cuuyld
	ESrqYSY9TzqA+eOR97cRjXAOPiMhcToPndkwzI4ZEXJBkH/5el3QRr/4TvvywYW+
	wuroS8UZNwGzeyVFJHGcnH817CxjrZ5M1X7B0gJBJgsfrzZ4SIEcUvN6lz/ndx91
	hs39Z7DzcYTpVzrhTkoSWTsBgdDMsoRaLljXVmAxIplxnRhgsZzjC3XGeJNNJu/1
	b/vwLYfDzoOIA7sh4Rg2VwaDnRuPEsdq847MSydDnt6Hsb9MzO5KhXuABgSFaPf2
	ln+cfBbBG/57CITqw8+oot7rRYuhwmzB4/W4xd9txNpESsPQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59n7n3t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 08:53:03 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e484dccaafso19171751cf.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 01:53:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759395183; x=1759999983;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TASzNO6cx4aY4C3+AUINvsP0m6HCBQVPuXIy+ecED+A=;
        b=o0ecw8vC+sRde31HsexLlHc2aZOzlyiBTr2cQ047lgbPDeRV2oCz3MW7oDMPP6UF1t
         AGt4zly9I00TTLO8fh9mWFGXn4QehbM6FshlMgBsB3P6hnFICIX8GX5rn1Cvmu5XYwHU
         3kE4no55QfK0F/Ipv4tTmsHxwsoxYw9Cz/K6xv5vO9sQ2xHr+iyR8EBiQ+BZ/eOTPGhu
         jsvFw9HeBiUujtco90uP2Ki+CsI9+xxgQbpYah/BedNwQbfgznnlpuRGq0CAtxgyS5/i
         hQVY1KjGfwCvNvtZBq3sB4inPMFnj/CAh1GLXAu8AwrJzVk2R9SNFJIPAtdxMvJpHot7
         0Odw==
X-Forwarded-Encrypted: i=1; AJvYcCWJ2GpuMAxj4X17C98CgfL6xrvItsggULMYd2kCzR7+bgYvd+z7zKvqWBraWJs70bE2dc1GwDFxmcFT@vger.kernel.org
X-Gm-Message-State: AOJu0Ywz9frHSHcBm6FpLStJUKW25SJfIbW43VIi6qIePCrWiU5z9xSe
	BSoFezNICSOqGjazhICbMvhQ/x2YFh7yJBDBHlNX33keq+2DdY1fQ59F9lMoOYxwAn6qe2H+Z8q
	XM9Eu0vAxgczT1nKza8D+Jt1eH6qEjximVhvJ936+7Vo/kRTTse3WLsUz3+ak5K+I
X-Gm-Gg: ASbGncuY+cOndSk3ZoP7SPuSpHyGkVARfTWJD6N8ggESDC0oUizgUCrSoFvfIhCDw2S
	+s5oX0n896fUL20YGucVpLMwOcawDgeQMNqLQJngSvpHR78oBTVd6pzYIlSoQjS9ivOPmJpRAat
	AddUZnVztDk/Hzg3eQ/T2qGk0FSbYf9etWqcf5tnf3HhNFz3kJqUjN8BnV+jOND+Df1CJ4kgd18
	2uTSdriz8jtbwQar4c5Mi99WAC22nmShrPhw3oEla9NpPrvhM6GLRzpgMO5B86n9JBKg722LcHk
	7PZ3fnMXFpzdD/D4NP8S0C0EesKMSFlVY1vNsf8t2uoIUQyMQ/3SJWREyMkEw/hjLNwYrItt3En
	jy1Ahv7d5ROkwBi2pZI70/EAjrTvlDRIiOvCD56/saz6iyiZPKVKUpIpC6Q==
X-Received: by 2002:a05:622a:178f:b0:4b7:acab:852b with SMTP id d75a77b69052e-4e563187a7dmr35617711cf.26.1759395182868;
        Thu, 02 Oct 2025 01:53:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHNOAfQi87LSJCR34yVxacyKLw6xvoldf4BlPcvjoOelxPVg87GKyqRVsbOCBcClJYp2rXwDA==
X-Received: by 2002:a05:622a:178f:b0:4b7:acab:852b with SMTP id d75a77b69052e-4e563187a7dmr35617391cf.26.1759395182191;
        Thu, 02 Oct 2025 01:53:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-373ba3124bbsm5207351fa.27.2025.10.02.01.53.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 01:53:01 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 0/2] arm64: dts: qcom: msm8996: fix issues with probing of
 USB hosts
Date: Thu, 02 Oct 2025 11:52:59 +0300
Message-Id: <20251002-fix-msm8996-icc-v1-0-a36a05d1f869@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGs93mgC/x2MQQqAIBAAvyJ7bkGFLPtKdBBdaw9aKEQg/T3pO
 DAzDSoVpgqLaFDo5spn7qAGAf5weSfk0Bm01KOSUmPkB1NNs7UG2Xv0pEI0yoVJaujVVagr/3H
 d3vcDh+1ZgmEAAAA=
X-Change-ID: 20251002-fix-msm8996-icc-ce1df61ad702
To: Georgi Djakov <djakov@kernel.org>,
        Yassine Oudjana <y.oudjana@protonmail.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=826;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=4HhiCdtPcD/lAuJiiWVZDNzGfAoGz/T6J5k93s3E1eQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBo3j1sHDRs9Wa78xf7Zro3JM+9I5+e4+9JwUjFg
 tK/W9+sH9uJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaN49bAAKCRCLPIo+Aiko
 1edjB/9w0q5npQeXksi6wlcEjIQu25zJ0+LLfiiJgla4Z49TyAgXj6UVL73votEUyO58Gp0OjcW
 Yx7BQMKPhHZu8RQa8qqDJj/m/VBKkNXIxZ+NalS+lLaHbWqI3JkB5i2OZmOcQfsONl5PIG5dCqY
 tEfzjlzaQzFXPzhdCoYHMOXyHTOd59m+PdWFM8Pp9rC177WfRdh/gu720rIDpvNsE1B2Gd8VzMr
 atxAbUY/CPpN5TdEKYzc+EPyf15f64U9HKif0PDSAXbuGo9lcY366BrFL/vkWU5TU/hrlQs+xLi
 7XHR1tqMIgh1kh3FzyGieYKpxVD8MoeTifEk8Ee/0ZRkD0D2
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: RtWwnNCDisis4B9r7YAL51-kONJeCKVw
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68de3d6f cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=tC0vjRaNn0V86lLPGsYA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: RtWwnNCDisis4B9r7YAL51-kONJeCKVw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfX6sdsWd4fCIVE
 7ScCRJ4LjsfJPzIYUMxxB7Wo9HJzlTFSQpRT85pSMpXK9zNHPZSSZqgK1dZRYD90HvvtNEqGMmR
 swJ8UBZAXshQhDp1dt1UWkk2hys8Aap0UzzZmuoePjJv22Nwjh6xQG1ctGtVmgb8K2EFvfECkcg
 ZeBQzWXCQx0tZBU1mYcsZQXOtJYJf1DNhXYN7xSqxxcra36MdOQjRVfqosoFyHwd9bDgqkpZFJY
 1NlL0doCaStEXnKW4sB/3NfAGoI8IlFqP43gH+kfxiCqQcdz/6OS50rDNIaGzYta6MOMDXqSZrU
 Cii4KjCKnwcrUiSDPQhcX4Zd0LbITEiSoLN8eV7jXGBcDpLgHhPnnDZi2Vw2p4kfhk7T/oyijHG
 WbL206RVYK4IwH2TAfHPmm104MwhFA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_03,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270001

The lack of the interconnects for the USB2 host might result in the
register writes for the PHY not reaching the PHY and thus the PLL not
locking up, resulting in -EBUSY errors for the USB host on the platform.
Add missing interconnect link and add interconnect paths to the USB2
device.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Dmitry Baryshkov (2):
      interconnect: qcom: msm8996: add missing link to SLAVE_USB_HS
      arm64: dts: qcom: msm8996: add interconnect paths to USB2 controller

 arch/arm64/boot/dts/qcom/msm8996.dtsi | 3 +++
 drivers/interconnect/qcom/msm8996.c   | 1 +
 2 files changed, 4 insertions(+)
---
base-commit: bf2602a3cb2381fb1a04bf1c39a290518d2538d1
change-id: 20251002-fix-msm8996-icc-ce1df61ad702

Best regards,
-- 
With best wishes
Dmitry


