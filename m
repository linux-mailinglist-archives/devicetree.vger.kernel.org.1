Return-Path: <devicetree+bounces-248318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 687F2CD129B
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 18:33:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 37CF030A5E2F
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 17:31:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17D0E31ED81;
	Fri, 19 Dec 2025 17:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eQeto4vi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EZAT+bOr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9239B2EAD15
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 17:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766165489; cv=none; b=swCu3DZEXjPNSQzQrpHyRNC0i0dKmZ5M8JKAadpW0HYS1dI6xabozhhmWW2k6IBuyyjDVlfTz4t/eH/KU1Fe4LzKsF4T+/TW8ZGnYajzKUKs81DjC5FT0ltFhuL8GaeyqByBQtn87bN1qYxewu2OrpwP6JroB/o/4BsvoiCwInw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766165489; c=relaxed/simple;
	bh=qz6pZtrylAjblgA1DeOmmaAivAFk0BsTDeRg6WCp5fk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=XzUcHtTD1AeOg7BLYeNyjsK78ps4PKdvtxijxri9156q4k5a+fTvp4cc5h9lB/GZiVZSYCUe4qx6cfKuL2/OtB/GnnDzVEWuc538RY1392z7+AIbNaxQXLGTN5NFjYQIL7kZPTcQdKhRKZpUkkx++7VZj1+7hxunk0Vo0anRVi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eQeto4vi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EZAT+bOr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJFjWOd1425290
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 17:31:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=y4JtJATT+zn
	ugwSXROWGs3HE8ker41Bd+L89u7rq9RY=; b=eQeto4vihjjCseV9RTj2Lf9p/eq
	hPCZVuRf0FUfEtXYy91afEQ9aL68z73xz91/+aAkAaMw05sw8hzuBP/Wkks3nUdi
	hdTZR6j2EiDCL79tww4URh7Ws0D9sWY0r8sSJbB63rY3x3s9OmsvqBnXAeRjjRgm
	BlyqqL+wlIwvuGT1GL7JFN3Xp1Wrmnlp8vzbhHhzznbTYXSpG2g5j8vwEXaOfF2q
	a/I730oHeQwJBIYlQsgPif2Ro57Vv188hv6Jz7XsaZDjJX/I4ze4MzLv35KNNM7l
	44utb+GZu6RCpZ2sHqbtqo2VPNosPw99T5Lc84Kx0SIm1RibWVvm1blzMBg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2ekebx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 17:31:26 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0f47c0e60so48586735ad.3
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 09:31:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766165485; x=1766770285; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y4JtJATT+znugwSXROWGs3HE8ker41Bd+L89u7rq9RY=;
        b=EZAT+bOribt1btPwkS5c1Ql7l6qIXzCBV2UPeVTuFd4ZRA7pVGapYLBAYYSn1yOlk8
         assrqRgSlHz2DGGBJt/YueQr10BkZK7PHWtaUiap5zUnvXF6GML/cdUD8Zm9EqtvpNmR
         l38487RuwC6zqFOgLEg0aB/GOGULvJp3yWlr2rtZ65ibIgjY0gBta/kPxMMthzxVjtau
         Ph0vc75TN7zxzN2dxq/UIo0gEDJUQ8xFek2lu3+pm3eMlMXzFIy8f/WoWhFu5BnG2iO2
         aJfBuH9NcY00BhHHel+QuQ6GuYnKj5XU5ZiL4l8+2w7Ghnq7DSSv9S2tP7KoHQTbXOLc
         fS8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766165485; x=1766770285;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y4JtJATT+znugwSXROWGs3HE8ker41Bd+L89u7rq9RY=;
        b=W3ejdtmwu+UbXQnmVLFPUNU0v68DBgYBHtBXNBxH9rzg9AmrVEtpTgU9NeTj4h7juo
         s/R0CHTzBFrdZSkpAGt+DP1GhcDE2XOBfcF89ZTBBaZDxGZn5ad8NY1vi8njKI+u+1lh
         CvrBeLfQ9yCPaspc5PJB59TIhRW0tTtAgJpk2dW/aBb3N+VWDw3NwgvzthjpWMkX4HdE
         TGSpi8kfVaqOHEX1lMbZ4o+dXtZGozt2djtKYaW1V4BVR4T0529FGdU9RN5CCiE0+1LA
         xDn+6uGkGOx7p0WhPtc8UQ/nWwfPf91KznX6eAS6+q4S6fZHZrVNVP+GSL2ml2BlLIaj
         s4Cg==
X-Forwarded-Encrypted: i=1; AJvYcCVxVVg7IDY8wYc3R5bgyqdc1MYHF+esFkiSlRBs+/V8tUZ+qWPxjw9twumKNDCISDTh8ugDaprvg0Ib@vger.kernel.org
X-Gm-Message-State: AOJu0YxSJcCxOZBNyKewFbIjdTIBSenhbT2iZebAPs5zBUJv48eMe5gv
	0drGL4Kv5lttNkrhM0LAGXz/m3MwNcTuADF8V4lBpMB7PmEDwusGHA46ElP+TB09CLRsA25ttgN
	GzKc1PJBrU977cfGV2dS/ST4dlvPxBPu51sWKgqVnuRyLyMkGgDvEktl+jQFu/B2f
X-Gm-Gg: AY/fxX4PM1fHvAc3h30mA8bf3qhSHpsEN6apqgDDuiGIJiaYaAZGW3CDjAoZsBtTMVU
	Fm/Zg8j0WP4tM9LGEHszhDPoYfk1U8kAgfxG3D2G1FDWq/4eF8kabuBz59E48RaOXF+ihcdINVu
	2Zt9anFqjfx6RHYCyZDOBMcmteqQeDeuk5A3BczlXBBuMD0RSXvFIpIWNbsuRTWnU9bwkeU0DXl
	0OlJTwMhSQcB6DhnUAiWG+ZHmVkBKx5tQSD3pD9I4c5u+pj3fz+lwZegeqPWoMxCmsnXcLCREk5
	JwcP7sRgAz0UXn13UTyEbTKrDftPo92UDbbPaoRCj2m4/UHfquZMvLAyhT0PUadi5MKa8zM6SeL
	LWJj2ZLrrgby9qL77hCiVkZzWD23eX+A/cTUEvudXyQFaYeg=
X-Received: by 2002:a17:902:cec1:b0:2a0:e195:b846 with SMTP id d9443c01a7336-2a2f2c4cde8mr30440365ad.54.1766165485216;
        Fri, 19 Dec 2025 09:31:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG0ue4HpXY8vYB0mKQdG1pqLFR1JAAfGIxC9B6A6qayF7Q4jSjg2qMDAVUkxJC/KroWOTtT6g==
X-Received: by 2002:a17:902:cec1:b0:2a0:e195:b846 with SMTP id d9443c01a7336-2a2f2c4cde8mr30440075ad.54.1766165484573;
        Fri, 19 Dec 2025 09:31:24 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d5f5dasm27568705ad.82.2025.12.19.09.31.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 09:31:24 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add squelch param update
Date: Fri, 19 Dec 2025 23:01:06 +0530
Message-Id: <20251219173108.2119296-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: Hg5aDfVkhv7DUJzragudNCBtH4WUwDwX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDE0NiBTYWx0ZWRfX8GS0tv2FP2W0
 A8iXnQDP3lKmEcLkQbvLXEI3DGqNNg8oRi37tlOn0RWbTovhPSaqAzRAjSrF9FXwPzeFFSpQIw+
 tnI+gl+wFeVLDFNrwb1WcMBC+fuzzd1pvXk1p+0XUDs7obS+oi4tBbwXqiZ8pBmm8wcuzCF6867
 eVvHO7wjugGFpRd4QWU609xge0h7wWzjcDfW6DSYoDxx57u5lRfAOoq3mc0iuiScM6iLbEZ6NTV
 QH88O9+BXpn3gh+HRJa5r/hhVcVlry+n0r/M++IoAJJ4ddM2xNY0gffzA9/MC5K8loBvndHV958
 UeY9uWW+kHbOBG8mEUs5VGLfuRmlVjplVop6DWCQSu12GZZLyeCQCxrHzrGjQDGPLds+efDg1QC
 fsresFbzZByN+/WAP8IuPUBIE0t4/mUInCgfsiE4qbjPhgg0F0gZ8y3F/XgXBLsWVNHax6oFuYU
 YC4udwCYIgMQuI4krmw==
X-Proofpoint-ORIG-GUID: Hg5aDfVkhv7DUJzragudNCBtH4WUwDwX
X-Authority-Analysis: v=2.4 cv=EabFgfmC c=1 sm=1 tr=0 ts=69458bee cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=HBn9Jitws6tvw3KM7cgA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_06,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190146

Add squelch detect parameter update for synopsys eusb2 repeater. The
values (indicated in basis-points) depict a percentage change with
respect to the nominal value.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 5bf0d6c9c025..f2afcf0e986a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -59,6 +59,14 @@ properties:
     minimum: 0
     maximum: 7
 
+  qcom,squelch-detector-bp:
+    description:
+      This adjusts the voltage level for the threshold used to detect valid
+      high-speed data.
+    minimum: -6000
+    maximum: 1000
+    multipleOf: 1000
+
 required:
   - compatible
   - reg
-- 
2.34.1


