Return-Path: <devicetree+bounces-221090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F738B9D2B8
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:31:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B2142E8653
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:31:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF42C2E975A;
	Thu, 25 Sep 2025 02:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pm/x9kqw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6746D2E8E05
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758767345; cv=none; b=Bryl+zDgSCaoX+dBTjE9OdXDhFakKpJEIMiAedGq1MpHFrXWEkTehHT+0EcR2E8pSnyD6rw7Q5EHZeYnrrFGgkditKBgorJGoDdGYNrAPwR29ywS1NLjrrZmhS67woHVYmXiIV4iiEnnrFQRR5uZRd2LtwmRruw9mFq4N+ob1O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758767345; c=relaxed/simple;
	bh=hda2Xd4Mz5OnSn10548Jx0ge0zF0dKZ+ZJ+uSDZXASE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Y9b4hYADrzqgKIKz2Xk401mwrUGprLKyY3seV7n2knyHZWeiUeyc4pntyzqaMVgmT7TfgoX9Yyi7VhvVCHJwUpJ8ns8QYIvd/WxIpnPd1FghVv7KzrQLRv3Smk8iyZtHmrE71s8zFoIkx6lZZNKM3LPCNsU3Kpd1UWpdIGxDEhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pm/x9kqw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0QWlY016436
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:29:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=DQ/0YD5xMRw
	3lWfka6oyOcJAqHz+tEBt1EbVwdyanDU=; b=Pm/x9kqwjXpeuiM+EFdZ8VP4H6E
	1Kr6LbYY4UNfgps55EkFu6Yi0SzhcW6/dABhIM1fQoEuVa4D2QQliEBoZb9Pr+3w
	D3PJl/AJxZePybRFQDRHfRhIrD+wtUGvLqIitlDV5MAhDgwekLQ4oT3Rc/njzGe2
	mMfq37HRf1LZp01RbbCnt/Fue36p+jezVTG2Bg1El09GBdTImF8OxKWvt1zMMgnf
	V6DyvFh7faCMB0GQkjGfl3lvkzG7ptYBOYHduZQkMa9T1xAUf1F5hRU6wqxqHXW+
	/kOyremgd5UuvpNdYDN2XPyhmrRXEhtzGpKG7ekk1alptfjEeJyePtIDOLg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3nyj8v0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:29:02 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32ea7fcddd8so759012a91.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:29:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767342; x=1759372142;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DQ/0YD5xMRw3lWfka6oyOcJAqHz+tEBt1EbVwdyanDU=;
        b=OCz9yh8rN61wh2opcQeAXuq+EqGqmN01eilg28uaOeHjeGsBu8mBhJtio1QnnzPodo
         O1UZDa9XiZBWlkPfkx0UTS1RYK2Q9g885eQ9QCAcAOuVoQMS0LgM7f2Q4eQjjXY/tr7w
         kThC2cEA/U9nHaLwc+z5ZmwsuK3+9CQDjpsIii1WHG7K/ZwXzhhTPVc4nJeL1cT35hQ4
         9CKAI3S0ZCjDabjdMBVGbin7oTfslhdL1AhkTtuzZBN2KY/ybjb7s0SVkWlqAyN1tFWU
         XkTsBvUkftU15m7+NIJOIXPbmgIgRjvFndWA8tKUkIUUe9eDNqNXfr93IhM36YaP9xGM
         vC1A==
X-Forwarded-Encrypted: i=1; AJvYcCV8WwfzXmOUDLvJ6cvtPMqHOMKsW4xWoB36++GXEtqvjiU8dVl7cOuMAT04cs4+aJscUAl/KAafbRN9@vger.kernel.org
X-Gm-Message-State: AOJu0YxD7kbGoOgU/PD4qptKRJJLwtlBT8HdF2F43g+n0YN4OXGW9z+y
	/IlUGb3el00170jtiiHuDkWcvFpsXt5gyv5SCRvv6xb3M/ukrhE9J25mcn3DMmPnSqZoK33NjxK
	ZtZRDIgt4jmRzxBgwWH/Cy9922hlgfsDkXEW6qMt8pPzpHmEvS3o/XWlreEL8ech2
X-Gm-Gg: ASbGncsBIrlp+8+vCwlh5PK5KRoPMV0hGGfmX8nV7/MYIRYtbc2CHd3r/b/EZPJnoTV
	TqaCNKFoFnF6IU835mCknyZbI8WmGq06hDwqnWfKss8PPyTRDsCUZuhh1j4TryfkCS0GcGWpvKe
	p1hqesTFEWNrhU8WFhyJp+OXlbj5ONpKAle7l+EMiT0rpdH7MEK2dEGrhzoxaQxTM/CWmnl6nDZ
	WP3vzsSg2kBIoDQBmcSXpmF2yZrPpAkRGclxqz9RtXrRart/1v40gCNnmJFeKbS6kikQVCiUNra
	8XjNC4W/rKz5JDw6Ra0te26V4RT70oT2ZRpQ4nxV5eZpzF6t2qfmnSBD2h2B0YR7KJWpeY8KVuQ
	pb4dmVJXh3ZnbIctX
X-Received: by 2002:a17:90b:384d:b0:32e:64ca:e84a with SMTP id 98e67ed59e1d1-3342a2436b8mr2376220a91.12.1758767341844;
        Wed, 24 Sep 2025 19:29:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEHa9Ej68o30zwHMqd1RYxe408/D5PXvI6i6Er/fRTSy1fm27Fjs2od49tjoO15fcRaB1IM5Q==
X-Received: by 2002:a17:90b:384d:b0:32e:64ca:e84a with SMTP id 98e67ed59e1d1-3342a2436b8mr2376195a91.12.1758767341386;
        Wed, 24 Sep 2025 19:29:01 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d711ecsm499881a91.4.2025.09.24.19.28.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:29:00 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v3 05/10] dt-bindings: phy: qcom,snps-eusb2-repeater: Add SMB2370 compatible
Date: Wed, 24 Sep 2025 19:28:45 -0700
Message-Id: <20250925022850.4133013-6-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d4a8ee cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=9ZGL9VZrYHwIVTkvpzsA:9
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: 3pjITNzRgrYPGJlPOAO1QTDZLpQr_236
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfX/pE0qGlYRYO9
 eLKTp4/vrABTc5XF/Kcd3807uZyHWpGfL1SjpuQSiK8cifPpEhSBfybMgebM0x8Ks3EutY0I2gb
 is09fw2EBSEu3VWcLEtZlK5SSNcKQAJDd+JCWj+ihZsOm/HMDHt0ch0OF3vxA9SN5d0XStH2Azy
 pRL38Q63EVFCtBe6I25wNc2mfHhYXXsgqYK6xNBL1Pm5F+15Vp6Nh5Kii1/+3LSwc/R4NlZLHho
 Kn4LagCfa25Aw5T3Z/KCCOtt0IkTXrTufh0CVTvinPSl8Zlt6Ph8jqHXyFeKxL3EArhHdoUzIS4
 kgS7eG7H3MeGJL9D9jGOK6ytKhqx8vH0IGvNGbCwUPtHhPyRo4Kgc2bROIlyGQ/ZVg0bXqYEyAN
 +dVMCtr+
X-Proofpoint-ORIG-GUID: 3pjITNzRgrYPGJlPOAO1QTDZLpQr_236
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090

Add the compatible string for identifying a SMB2370 USB repeater device.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 5bf0d6c9c025..0f015a4c2342 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -24,6 +24,7 @@ properties:
           - qcom,pm8550b-eusb2-repeater
           - qcom,pmiv0104-eusb2-repeater
           - qcom,smb2360-eusb2-repeater
+          - qcom,smb2370-eusb2-repeater
 
   reg:
     maxItems: 1

