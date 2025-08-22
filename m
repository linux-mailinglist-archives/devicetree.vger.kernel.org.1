Return-Path: <devicetree+bounces-207864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC242B31069
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:28:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2CB77B629B8
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 07:26:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1671A2EACFB;
	Fri, 22 Aug 2025 07:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YXeN0NDY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D2642EAB93
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 07:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755847648; cv=none; b=k2lFr9uCXoNzKPGUfilFTApZxvEVCqlSJGg4VuQZv6MC7ZKd7Z12XEiOucniy4mU78RzYg0bRSlVvW1vWUHhznb7qAxY9aB4WrswqT3KmNQF9maTEXIi3ma9Wi88jGOlYt03XZCgsQoHW7sJWvr3G8bxFHLHTNtJxTg5Zf13azY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755847648; c=relaxed/simple;
	bh=2PNVuXq+ZYwaLuZ7rUo4rH3IJfNSTpQ7FJZqxFzNtv0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eyu0kTlykQ4RrM/ZCROEasknRRWBVfnfkKrALxBqn1VygXSneJ6Vq+aFg10zaGXEOBIbKGS7f2EkfAYh7N0E4e9zgKt7SV9F24KVasfnDC2l9mb0/5/dSy/YlJYOjXAk++aSpxTy/k8WqEqmyOFjM/MbiJoD0G7TEArqHTG8Wr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YXeN0NDY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M6uSgn020955
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 07:27:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=BrYCSYr4l+R
	GAx5Rr4vA8mbuZgqIc3xnPF8sQ/ZYbOc=; b=YXeN0NDY23TjYc6Osb4Xc1Snjgy
	cWTy4GYkEnPkHjchJKge2Sz0jG7nTeCOy70pMQrr9Xp5ngFMyoTOKKEqpNFMLrWU
	+Hh7gzzMZ1JJxEgsxzwyARvkSxpcb7Equ5PZUGYGhFJigEh9BKK+JNdbhG8GIFWd
	2LySOA+KYlrqq1aO3SUb+I3Nu8FsuB1BKSAi5+ZW+w1Y9G6Xcuu8kM+uFkbX0lQJ
	cqPRABd+ES97dCcMVTESy3/V5JtLtXUPI01lwRclIX/pxN2Ooe+SeryRSO+sVYI4
	oZg40WJ87TbQNk12k/FDljGYu1Kbx6b6dfXpmhsaULWMzyJS+K3AquXllGQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52ag9es-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 07:27:25 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b49b53c9743so735804a12.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 00:27:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755847645; x=1756452445;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BrYCSYr4l+RGAx5Rr4vA8mbuZgqIc3xnPF8sQ/ZYbOc=;
        b=THUFxkDKGQsJMZYxq9GRRju5PQAFyjekKev8ma+It3ycAe3w0ttkZUIfEMaipg0lJG
         oo1vH9wQjM96G8gXNKbyTeWWME3qqO0tlLL6xXsyBvLDMYfIExYLG3dR625osPXzG/M7
         T+7zeToRgeX5wisAh+2uCbGFpFKSjccN3H5L2mwoloCvCuxxOR9E0RA3xqDvY4XHZTcz
         2WoMfX6wDEl2m+YGs5lD6cqpcLSs2djEosbscWJDY2cEPDUAxs8Exr5Val9+dPES8g/6
         hXgbRgL8NJcEFi9j3x8TQbsjBKxuEr72j4KeFqVQrO69T1ZXh8UknsD0HS7652oIjHC5
         hQzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXIannjqYFQRR26xZGxPq/e0jSPnDOUeMErX7ul+ZYWZYdAu31NwXgGqM5CFCWXSdE6daIDSOW1+yjG@vger.kernel.org
X-Gm-Message-State: AOJu0YxNPWYI3JqoGNHm6W9kJB7g3sewPin0ODDVZ9Wed6Kn9+eU+kNm
	/uvggLw/jzQYCd6QYFTi9VojpceK0icw0dmnSLaUPQrj5ZVZuiKqmtBZzpRwh7jARSrZ0Jp5h2r
	7ojUhLyRaqL4aNLE2L5LvIiENYcWt8dYsV9kVJhmrTx291Ijj3GG6MiKo32onrbdH
X-Gm-Gg: ASbGncv6MoqS6o+JvVY4nkx6DCTeAi+0oQU/WUz2XInpvLSLM3ElMSrdJVWVyakqpgI
	SrJlYNjRXq2MSaSL+XZN7C2jC2qVL7E2ps5xD1jKIj36ns+ErO50T0G1FQOnM0UWge3P/q4v4C7
	m+jtV9xhHPlLhMBY6tQJ1LIgfJMggW423AWATeNdXuoiLt714I3/XsviPY7mspT30lZ7hhnASiY
	NQ0f+b+rcuoubJEWheUUiWE3ZCKPWXs5CBqlg4pW8HLQL7OsLzPP606zkDHdnHa9egeN3P7OkKj
	5UmW/gthlq1NQ2aGbipB1WXxNgAR0zde8Wk7rYKNVa8hEWWc3eWvyA1OwUdiJaYQLOTmWvH+ZM9
	+
X-Received: by 2002:a05:6a20:6a06:b0:23d:7b87:2c88 with SMTP id adf61e73a8af0-24340b7c7dbmr2399212637.9.1755847644785;
        Fri, 22 Aug 2025 00:27:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGueuQAtbJyunfN/7SGGX9fsHuG9nFd0VIDf06IMkL0qz8ftPZLBXEwTTKRWnxH8rIeBR3Ihw==
X-Received: by 2002:a05:6a20:6a06:b0:23d:7b87:2c88 with SMTP id adf61e73a8af0-24340b7c7dbmr2399187637.9.1755847644346;
        Fri, 22 Aug 2025 00:27:24 -0700 (PDT)
Received: from hu-vdadhani-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4763fe3047sm6416367a12.17.2025.08.22.00.27.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 00:27:24 -0700 (PDT)
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
To: andi.shyti@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, gregkh@linuxfoundation.org, jirislaby@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, broonie@kernel.org,
        johan+linaro@kernel.org, dianders@chromium.org, agross@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-spi@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: [PATCH v6 4/6] i2c: qcom-geni: Load i2c qup Firmware from linux side
Date: Fri, 22 Aug 2025 12:56:49 +0530
Message-Id: <20250822072651.510027-5-viken.dadhaniya@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250822072651.510027-1-viken.dadhaniya@oss.qualcomm.com>
References: <20250822072651.510027-1-viken.dadhaniya@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: mA_4PgRbkkNNakvlhsLybCxzWy5_eQji
X-Authority-Analysis: v=2.4 cv=B83gEOtM c=1 sm=1 tr=0 ts=68a81bdd cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=9JGZuxy38fRfBSF6gCkA:9 a=3WC7DwWrALyhR5TkjVHa:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: mA_4PgRbkkNNakvlhsLybCxzWy5_eQji
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX3qehy4W/YbMy
 xGjTTth2GwPwv5p8GKfcXHIl8sShx34ZMn7A7bVvvJOWvkFPPL0uKvSFRj9zcRX9azk93IHNYua
 i5586AKMuotAQ3XzOmkxL+88EPqCmaUja76ADjG7EbIExq+qzg5jKz/ohseMwJiHVsFaSmVyUDe
 BZR4XN9CgT4nc219UPVDPIdeBNo07MGolSvVU7cEOks8OL5KuyAOCCUg37UXnGs39edN+mpaMb/
 0wvkfszOFxlZfcylgKb7WqFa88ezrU63vG/uByAz6gz4bGToOpwjXf5Ed2kb7aNZi56YFE6xE/L
 8k8YtV0iUl2SpCIVpjLKTkUhHrxzWjhT3pkZEWKwE2SZKPt3AoJyppYRc6mEwoezKqvbdpUe/Fx
 LYKJGhJNTr9rpYRZfEorQSrtCUWy1g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

Add provision to load firmware of Serial engine for I2C protocol from
Linux Execution Environment on running on APPS processor.

Acked-by: Andi Shyti <andi.shyti@kernel.org>
Co-developed-by: Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>
Signed-off-by: Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>
Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
---
Dependencies:

This patch depends on patch 3 of this series.

v5 -> v6:

- Added Acked-by tag.

v5 Link: https://lore.kernel.org/linux-i2c/20250624095102.1587580-4-viken.dadhaniya@oss.qualcomm.com/

v4 -> v5:

- Updated the email domain from 'quic' to 'oss'.

v4 Link: https://lore.kernel.org/all/20250503111029.3583807-4-quic_vdadhani@quicinc.com/

v3 - >v4:

- Add a patch dependency note.

v3 Link: https://lore.kernel.org/linux-arm-msm/20250303124349.3474185-8-quic_vdadhani@quicinc.com/

v2 -> v3:

- Load firmware only if the protocol is invalid.

v2 Link: https://lore.kernel.org/linux-arm-msm/20250124105309.295769-7-quic_vdadhani@quicinc.com/

v1 -> v2:

- No change.

v1 Link: https://lore.kernel.org/linux-arm-msm/20241204150326.1470749-6-quic_vdadhani@quicinc.com/
---
---
 drivers/i2c/busses/i2c-qcom-geni.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index ff2289b52c84..95a577764d5c 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -870,7 +870,13 @@ static int geni_i2c_probe(struct platform_device *pdev)
 		goto err_clk;
 	}
 	proto = geni_se_read_proto(&gi2c->se);
-	if (proto != GENI_SE_I2C) {
+	if (proto == GENI_SE_INVALID_PROTO) {
+		ret = geni_load_se_firmware(&gi2c->se, GENI_SE_I2C);
+		if (ret) {
+			dev_err_probe(dev, ret, "i2c firmware load failed ret: %d\n", ret);
+			goto err_resources;
+		}
+	} else if (proto != GENI_SE_I2C) {
 		ret = dev_err_probe(dev, -ENXIO, "Invalid proto %d\n", proto);
 		goto err_resources;
 	}
-- 
2.34.1


