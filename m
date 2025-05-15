Return-Path: <devicetree+bounces-177576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA4EAB81F4
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 11:05:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 744491882B4E
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 09:05:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D5E1295D89;
	Thu, 15 May 2025 09:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A6h6YO9k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F46728D846
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 09:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747299931; cv=none; b=upQmp0CF/rjI4OD8OPJM5kzWRr1E4AaQxjKuwTydW29YSFlo+7BfqJQJssG0G7yvlJ/1bmz0qR1a9jRYMdqYpayUFqgWoB5hpxYm484mZN5Sv67JJF27XNAiipqLmRhSMWIjlHiM8xMx+c6Kq0VcUKrnj7nvoXpZDzOToOKHh8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747299931; c=relaxed/simple;
	bh=d/o7Mz3sAp8md6UzDFd0xwUYBNcPpwQbc3zYFVW6fsk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=lyOSLkGsULnDqKZdmNsIoaui2H6yjQz0SuZ9aMPTHHGnFaZABxZZOwGbcgifchEbg4FP9cOnIDzYROz6vTcMOTAW1qCj3AUHsowDhQZuRZwKmWiu768/sRoa1d/rwXnLkh51i42xVjnMalW72Bb5GJ4iiZHvsVe6/6PtH0smpJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A6h6YO9k; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54F7mTLH009124
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 09:05:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=0YoUGwDFzZJBnV+f8ZJ21xbDmwwcBNjqe86
	lZSuKbew=; b=A6h6YO9kEG6PFhPqn2UQS2MlPIOgGgIfWURMZNbMDsJsPMwakAn
	mkR61avif1PXE9zNA5Vzxoutz8Z02s+s5e+jiU31h5uxy4Yt1UosK8eQiH+4MioX
	mdvtQ98XnglIhU+IMIvl7EDxs3tJPdQGXhxbEvXRKv4cGQcio1zfiH01mtdBWqzI
	U9bbp5GYcnx+uadWFmdPNnjwrgAETPeylWgaRRCRw/xX+bufy79Y0uyxoiEOmq2l
	qsd6A9zZUtsBpjc+KPZ7do9rnXr513czMaw/h54ksch9wBGKyjkalZraSgyIPG/Y
	cc4D1upxYxUQugHvLKcSAoUEERl8mxFywyg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcpwjxs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 09:05:27 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7425ba8300aso709625b3a.2
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 02:05:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747299926; x=1747904726;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0YoUGwDFzZJBnV+f8ZJ21xbDmwwcBNjqe86lZSuKbew=;
        b=dzWjRqj69mMo0pesG0srOteYDID7LxmEAezKNp3nKC+SPbMs/82ZixY29uexbpQst4
         /OxWLjcaG2l+d0IWjUL3NOr/Bm3Y93nF36BAcuxNgmFaApvxVkfFmFbahYgLMWgiGrm/
         78lpKszRsCQQWVKZDph6KqOYlFQoouQL0Pq6KaqRxpthxRkbXrPMnqvwLMuFj7HZk1cK
         CPrL2TfwndU3POQ+y9jjWcb9yAvdk0d/hNqMBWpzUV4Rz4UpeFe7HmKOi7mUwqK42lIA
         HoZly+U0azKMdnbcz50DESgmhGFhtKueCV3cLtgu9CfEqKA3i02SqoTPZ8RVDA4kB/UI
         H/Gg==
X-Forwarded-Encrypted: i=1; AJvYcCXYLawxfzVhPNFV5D1aoIsk7fXZvqo0H4ynp7Z2GCt6/S//lmqM1sywY6iZJUsXOgErFsRc4oIJT1Q4@vger.kernel.org
X-Gm-Message-State: AOJu0YyC/3djPBu6xkVI6ydzhTtMF4/mddw+mslI8C4A+g2tw1JsXW1b
	HkgvIDz07VHpEBjgYVTv5AJATeraECzGsT+oWcGwGgqzOvpnb0Nq0CZV/1GAj1HmRM8dsiZYT4k
	UqnZL6If8HqbAHnf3OORuIKx1QvrTD6c3Wy8uXBoBdOWlt73YGw03VAj+kU9F
X-Gm-Gg: ASbGncsIj+S/SpilAAOu1J15MKGn+Gw26KqQKle53fqG0se1TvuwbLHh8SLzAENx8C6
	uLNDVQJnzzfoMCiXiRIRi7Zt9DhAV6GCMC2d6jzriVNJVKyfErlk3e7QGNgqB0kW+9nqa5i/psE
	lOhcMX0Ic5nRZJkHPS1eOiWAhUgtEqQpSxmjl+NhofqCR7I85pxuM3Qsol7Js3hdthMxU8e/LNk
	apizl2Sqf19XBFXcefqpmCdtNonTuY6wHTS9AwKqV6TqIFy7RP1DWUVPNo0f2QNdKbx1RwhgiGW
	c5OIFcSisqlNv4H/6xbrSV8P/1b+g3y3OfuNyRGBrMmKBhE=
X-Received: by 2002:a05:6a00:b4c:b0:73c:b86:b47f with SMTP id d2e1a72fcca58-742984c25damr2428814b3a.4.1747299926115;
        Thu, 15 May 2025 02:05:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHCFMufWAFO9NdsfiHbNKngrTVhvlxFVYN/2LnoJXLvaE75D+Kk58BJpsD/u0hFFioSfscu5Q==
X-Received: by 2002:a05:6a00:b4c:b0:73c:b86:b47f with SMTP id d2e1a72fcca58-742984c25damr2428776b3a.4.1747299925720;
        Thu, 15 May 2025 02:05:25 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742944e32a0sm1378000b3a.20.2025.05.15.02.05.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 02:05:25 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
To: andersson@kernel.org, robh@kernel.org, dmitry.baryshkov@linaro.org,
        manivannan.sadhasivam@linaro.org, krzk@kernel.org, helgaas@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        lpieralisi@kernel.org, kw@linux.com, conor+dt@kernel.org,
        linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree-spec@vger.kernel.org, quic_vbadigan@quicinc.com,
        sherry.sun@nxp.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH] schemas: PCI: Add standard PCIe WAKE# signal
Date: Thu, 15 May 2025 14:35:17 +0530
Message-Id: <20250515090517.3506772-1-krishna.chundru@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: XEeUBt402S7K70RfUzQkULASAqf3tfjp
X-Proofpoint-ORIG-GUID: XEeUBt402S7K70RfUzQkULASAqf3tfjp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE1MDA4OCBTYWx0ZWRfX1uDECUXv6FJN
 n8ilIpHMlfGjMeYTI9RmXuPDaO8Zjp1p6BHy9KWNYZLWi65ac+aKsfKVLgz7wlqQUsbJ6z4hc7k
 zF0NpDoSa30kkWAdSIao4xVOlbWB7v0fFllh3WjbhGk+VABzyo1hAYk6NZZnEvSqUOtswk5VFYt
 KgkljHsimKt02fFX9FtAzbraeX7zKuYVeC0e3W925E866n1U3ud+4Xf1TQqbzD2Osp4OJAMmj2n
 NFhxqyzuno5xbnUDnxLgODcv5QYp61G2PKiokhGNkz2aj07DsbEQYwfHsYm+T5GUvzoJo8n/oAs
 OGqKiWOgtTIGFppLe6imtgF3Rwbk7CBu80i1iKoXsc+WJw1SFwsxeKGwMpQ4334Eh9TyqHaD6Li
 73tkxALN9642aAo63Ku/8jREmhzSheTtQwq1zsX97uHJ12CLntKKXgDfTGIMUh3QnqntxQDz
X-Authority-Analysis: v=2.4 cv=KcvSsRYD c=1 sm=1 tr=0 ts=6825ae57 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=aeoR8HoxK4P27VDVSowA:9
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-15_04,2025-05-14_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=882 spamscore=0 malwarescore=0 impostorscore=0
 mlxscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505150088

As per PCIe spec 6, sec 5.3.3.2 document PCI standard WAKE# signal,
which is used to re-establish power and reference clocks to the
components within its domain.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 dtschema/schemas/pci/pci-bus-common.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/dtschema/schemas/pci/pci-bus-common.yaml b/dtschema/schemas/pci/pci-bus-common.yaml
index ca97a00..a39fafc 100644
--- a/dtschema/schemas/pci/pci-bus-common.yaml
+++ b/dtschema/schemas/pci/pci-bus-common.yaml
@@ -142,6 +142,10 @@ properties:
     description: GPIO controlled connection to PERST# signal
     maxItems: 1
 
+  wake-gpios:
+    description: GPIO controlled connection to WAKE# signal
+    maxItems: 1
+
   slot-power-limit-milliwatt:
     description:
       If present, specifies slot power limit in milliwatts.
-- 
2.34.1


