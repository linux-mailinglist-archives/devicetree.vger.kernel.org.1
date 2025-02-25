Return-Path: <devicetree+bounces-150812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5019CA439A3
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:36:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC49E175CD7
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 09:35:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83D1D256C60;
	Tue, 25 Feb 2025 09:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KVpJPcpr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A16B261571
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:34:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740476090; cv=none; b=Y5omwI7Mca09ITR6zs15SzA8w5XxRPrcQhPoHhUIqy5WNq9lzwxsDSOtBXU3etm9JAqb+9iqnQUgEWUBsN8KiV+cXxJZjqX7VKH35kFVHfBsB33sK2wSSZ4JxCR4waJ04A94IuxyMZh02SNu2XjPhz/hiAYe0KHXplgye+1C37U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740476090; c=relaxed/simple;
	bh=oouLjGtH233lwoGhCTipl0h9nbjcJt//bXzApe/ONc8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=F8vuIdwqagj2zq2BOycd07Sj6ON9HHqX+Vzuzs4oNbcoh9D+lX3hAy0xnYlMyPqETslRYWiLZQaBUUbQ6i30hb2QKBMB1lf5IWvCi40P4ZMcN5+H8w+yTRp0+5XVRsDPNbGq9HVt/dyS3x/ZY+4RyXq2WNUdRSH4IJ2ZT6UH4sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KVpJPcpr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51P8qeYn001897
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:34:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HSIJQ7jaFX6kCm1/h4SN9ZCiGBfl+wZu7rF9036LeAg=; b=KVpJPcprwsBl1cuT
	vVLv9LNMlBonLDMlxDG6pufWB/Mwmv9ZgSqH5dPojbcgYbMmWTMHe9IFd8h/eDuH
	IKeNKY56GCt18LglvLoJsoy/GdvQQJa3yl8soECWBnGrPxfCgbnT5ndfDF9sqkXl
	/10l1bqKgwGdyAzSZSqD0DOjBfedlDsegJwDIk4CCDohZsUPXI/0H278p8EfVRRz
	Egth2GqCWEngInIkaKOdHWW6Q2DMBOAAH69sC8EL7YLMu9IZOWwLyHZ+8/EQVXg1
	Zf3GQwjmqXcNtWrPoBm3g2kXbKjJBAE7HDwfni1a+vutafq+gvKfnNPopB5JP+KQ
	HgQUeA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44y7rk05yf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:34:48 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-2fc1a70935fso11416680a91.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 01:34:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740476087; x=1741080887;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HSIJQ7jaFX6kCm1/h4SN9ZCiGBfl+wZu7rF9036LeAg=;
        b=cBvotkeAL0V+ekf4m4B0nz3tb+LrLVcEt5mBUovLPBCWfXLQ+KuINWuKSOjxjiNxm9
         yyQkTlreyHhTusr69KTq0pmlRsqso/074zXWzZcOZCoHXY0GtEQFSXUN+uu9C6Z0Xx64
         6NWbJpgVyeikjRtPQNsA5L3iyAhf4KEwosMkz/WP38j+Rv98yTGNMslx2IgqfpKhtvks
         unEZCZRxi15Sad9+wLflRmxPOAYAKBpou7rkmYo3NGKCTZlpDwMwl2+yuyMO3ZRhxsJX
         qbYi+QEry6rFXXnw/8vLOS9/ZveQkNnBSENs7eni2J03F/xMS2bOQ2DeEVPFcZ05P+pf
         Ztig==
X-Forwarded-Encrypted: i=1; AJvYcCX3Zd/0gdbActLnv4efKza7IeHm6NCJ6DDjJi1n8f1U2+t1XKMZnufdoyY1LAg/J3ptsrbu2FrdgdSi@vger.kernel.org
X-Gm-Message-State: AOJu0YwlamfzVcd9q/1axJZrygGTJF8cO1ZCpD55eMo9U6rERXgmCi6z
	3lRV4+HYIBCnbyvgBfWRGInJuibCFvLcxLBy+Wa5cxs6HYXYJeY5snD7aj1edltcxF4ZObaPagT
	jbodK/JboJm7uv2pKkxNCCR3b2zwsO3iA9vF28ZY7AJm3hLzkOgNYopUOYauH
X-Gm-Gg: ASbGnctlIJW8pZjI3PZooJcqTBOuLxvSXcN4BEC6roUjPuBBcWJ83lGbaQL5n6XiDOD
	GR5Gbs+m+i5yz0Gpok+FE7EY3mHHd4Dw3Kw5LU0bECbczq5b849NV6AHU/d9QRomkp2PNF9n6Ow
	asap8wBOsovopc7WRjaY9XbAYLzs2D7v+QvR+i1J3tFNF7ukD+suZ6ff+mS/ST/aaMFBZBXXPXS
	2HaT6uTZ5ZtnP8UZK9AvpoaVvcwDzYqrEZC2qo53F18xzAO2+37ppNmMMkj4Xq4rUUb+w1/6by/
	z859CamLb9vyQVfuulonilrrTmzjz9BQhtH1nTYhHuJ4JFNYp2g=
X-Received: by 2002:a17:90b:2dc6:b0:2fa:1e3e:9be5 with SMTP id 98e67ed59e1d1-2fe68a2df32mr5100162a91.0.1740476087339;
        Tue, 25 Feb 2025 01:34:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGkTr/zaRhtjk7yZHJlTH42C0GF7O7ieoM0aPS51ydoOaKSFln0kJiX7IFN15MoAYzjjQgltA==
X-Received: by 2002:a17:90b:2dc6:b0:2fa:1e3e:9be5 with SMTP id 98e67ed59e1d1-2fe68a2df32mr5100129a91.0.1740476086972;
        Tue, 25 Feb 2025 01:34:46 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fe6a3dec52sm1080770a91.20.2025.02.25.01.34.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 01:34:46 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 25 Feb 2025 15:04:00 +0530
Subject: [PATCH v4 03/10] PCI: Add new start_link() & stop_link function
 ops
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250225-qps615_v4_1-v4-3-e08633a7bdf8@oss.qualcomm.com>
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
In-Reply-To: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: quic_vbadigan@quicnic.com, amitk@kernel.org, dmitry.baryshkov@linaro.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        jorge.ramirez@oss.qualcomm.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740476062; l=1500;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=oouLjGtH233lwoGhCTipl0h9nbjcJt//bXzApe/ONc8=;
 b=kKjEu1/eTiO/TVWz/OWc6m/yes9WPtkprKc9GkeIFwLfQFox/fnc7PZfPFwrmMqjVb+6o+fPF
 eWQ/SqN4b4hD9Kho7mMMbYbKHrs88VQru2moChKL1jQ8lcE+QFhHp9M
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: pAjiBoU5dpNKLFxHc_mnDFnIfEDetVSc
X-Proofpoint-ORIG-GUID: pAjiBoU5dpNKLFxHc_mnDFnIfEDetVSc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_03,2025-02-24_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 bulkscore=0
 phishscore=0 impostorscore=0 malwarescore=0 adultscore=0 spamscore=0
 priorityscore=1501 mlxlogscore=809 lowpriorityscore=0 suspectscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502250066

First controller driver probes, enables link training and scans the
bus. When the PCI bridge is found, its child DT nodes will be scanned
and pwrctrl devices will be created if needed. By the time pwrctrl
driver probe gets called link training is already enabled by controller
driver.

Certain devices like TC956x which uses PCI pwrctl framework needs to
configure the device before PCI link is up.

As the controller driver already enables link training as part of
its probe, the moment device is powered on, controller and device
participates in the link training and link can come up immediately
and maynot have time to configure the device.

So we need to stop the link training by using stop_link() and enable
them back after device is configured by using start_link().

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 include/linux/pci.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/pci.h b/include/linux/pci.h
index 47b31ad724fa..bbec32be668b 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -804,6 +804,8 @@ struct pci_ops {
 	void __iomem *(*map_bus)(struct pci_bus *bus, unsigned int devfn, int where);
 	int (*read)(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 *val);
 	int (*write)(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 val);
+	int (*start_link)(struct pci_bus *bus);
+	void (*stop_link)(struct pci_bus *bus);
 };
 
 /*

-- 
2.34.1


