Return-Path: <devicetree+bounces-231002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 476ADC087A0
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 02:49:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD4DC401472
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 00:48:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3386F212FAA;
	Sat, 25 Oct 2025 00:48:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gIPVC4Is"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE21200BAE
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761353283; cv=none; b=kNr5QFUuHmtpEWEWCx28DFImXgEPDU3IF9BoCp//TydA/z0UYS4/CSF5etp+bi//fVa2Z7RjQBccPdh5/f9zxUYg6CQA/Mci2WR46NH7E16CZzylJFJUqykbSuC2UlxPXwpmbYSA2eAwfRWiqTJy4/oIRSKrz/gadtmxAhMCWdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761353283; c=relaxed/simple;
	bh=Gc+9GTCwE6Q65glT/UspkMZu20/gwwKg5czwnmi0HQ8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LNt8rr116FKLzyRrew63EEiKIWK2r+3cP9Q/GbsKjSIDUGQJ7GzLqdpJUmHu3sxNgqt/BS4yMuIDk5k0ts7Fzy8Ccu8t38dSH4FfLoR4bgCowIV4WXttLn0e8844uxsb0QIYtOil14zhYEkUK4pQIUYpVcEgN69utLNFglrCKJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gIPVC4Is; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59OI9Ivv023498
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:48:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MqQ7CuFg2uQG1J5bdN7Vc0a8C6p4JOXok+RrLgiol44=; b=gIPVC4IstAIeGAZY
	p3EmUYOi5T3klfJuMPlp5Yc1XMa7YbQ7LjFKdBUfgm5YhWsTYuyGhmxIvBAL1VJr
	TgZLhrQ9+zOlgHnfzEIZMkqixMFkZwk40d5r1htH92nD3oPyXTyBgjNgHbu2+2Ht
	T2WpI1LY3iIww9+8xydDJgJV10/SjhQGGWeT410c0Y6cB/kLL3Wop+Gnn+PygSEm
	YtQki+WIRuWKDflsHnNhepxZ7sWYJ6KpTX7sADLRVdoviHyVcQAi1ygJ0mtkVS7E
	yYUMMtdqFDfUkwlWyvVjgTeXwW6Qaj1TdtyjEHWpWZLhReJLmUqIVwD3zs9hZGma
	2wpRvg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49y5x8qudw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:48:00 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b6cedb7bd41so2002592a12.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 17:48:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761353279; x=1761958079;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MqQ7CuFg2uQG1J5bdN7Vc0a8C6p4JOXok+RrLgiol44=;
        b=uViOFsDLs6NKXwFKjf8uTRhwsU6Q3QRFB9pfmNfgNCUVK45jdZz6Al6Fs/HPYaGjwT
         l971MVuicm8hN8aNm/ekQpi1/v1VjAcGSornR+YhE5X4CUMWmd1jhwoC7aFyZ20UmZ4Q
         EvrybXZxwk5ErZnUr+Qx8o4TnTezcV+rMTRxLbIBWmVSwbrnyQerhIElH2E7LPoXRlpQ
         Jm9srM3/afvY94YvFmIq1Sab9NaPwUlnjv7ZKek1CtxwdGfwG//KIA4K7cYQq38E46N4
         2+5Ubc5JyBaTNJs3pJ1ZOUQbGfZS95RVkYJZRRETwqdvtYEoWRq4vo/HeiozRyP/6jHU
         dCfQ==
X-Forwarded-Encrypted: i=1; AJvYcCXz+LlDJ6gaWhDXVySclp69buz5ES2zkJkqtA4QHM7cAutiVQHxc9woawzY9RVPDvWiBejr0yL2OEMK@vger.kernel.org
X-Gm-Message-State: AOJu0YxMcD2J7Uc/OOTcJiSnnmEE9wnM1YyuPxZlNct73RYuOg6yIUOv
	W4Urp8Oo+ZoH3bxAjJg4nzXSn9ImX9s/A4wJu+mFfoPJBVvpCRSSmdPNwc7BjeNQ24TVk6KBS8j
	fCnzcFkzE92KkOuRGK0Qaf9rsjP+btEQ+PmebiBdDGrYMty/pkhhUHbOf4JsUMDOR
X-Gm-Gg: ASbGncvEx0SZ9G1ZN5n7df4bALsWly5pYBMaNLcr3CLreUWeAwNOvYP6MNry4rEOgXh
	y+U28tUaZaVi873Ty/YQVfIsrvXtUualc7HA5cAfOvntoUEjv5Zd+4DBTYyu1hz6zxu5bAzxly0
	bc6Fwg6E455X3eYgGrp4DkPCNWjtRAb8qzKOcKMnGP8SrLpVwO9eoxpIpFv75+HPgYnjJIEtGYz
	rM3fzZgBWNdz0XLTlUEqXbr579ePMBsqJC43oT7ZNEbH82F5vzPfpl7+z08Wm9DWbUHOzipW5P9
	a2QL2VL6KcWvC/cIgAIJPGj8ZlOFXUaVdu2Vk7xxgQ8pGKJqcHn2pd71uHF+EWHffKRSf4lmrz4
	RookMfFGAR4hcKn5WjdAImEtehlVEW7xdtHDqTprlfRq8tqt+P1w=
X-Received: by 2002:a17:90b:1e12:b0:33e:d66:490d with SMTP id 98e67ed59e1d1-33fd3a598ffmr5633378a91.7.1761353279265;
        Fri, 24 Oct 2025 17:47:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEh+lfmmLQDcK6Q7DNJ2kGNQg7Sd82z6UskjFMialiSd/3Btxw2kiuVr800TtDd5MuGzZwxAg==
X-Received: by 2002:a17:90b:1e12:b0:33e:d66:490d with SMTP id 98e67ed59e1d1-33fd3a598ffmr5633362a91.7.1761353278794;
        Fri, 24 Oct 2025 17:47:58 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed3eca8dsm167352a91.0.2025.10.24.17.47.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 17:47:58 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 17:47:42 -0700
Subject: [PATCH v6 4/8] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 SMB2370 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251024-glymur_usb-v6-4-471fa39ff857@oss.qualcomm.com>
References: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
In-Reply-To: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: O_siVSZqOzUTRmnM1oKgVavaJuimi2RH
X-Proofpoint-GUID: O_siVSZqOzUTRmnM1oKgVavaJuimi2RH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDE2NCBTYWx0ZWRfX0KLUouBXY6KJ
 w7vjS65qP8y/5miiOnRoy6LI+DZB82JZ8aNS9CLpNZDMG/7hET3KOL8FQcfplJK3CNO8niJciJs
 PzzYLpQ9OzwU5uXvU+lfw59WKEr2OgcTp+95gXG2wsV/64nZjbIV4LpxrT615B9iax8LX/KD9Cl
 s50qB2noLXY3pItpARVv/CjB8Bfppt5q/5ervnB6r4jlLUhqSvI2rbyjnVOhLkwNahc/hO0f3YH
 o5SlzODQxDpBkUq89CQhsCJjKAhQV0NT+QGqYvLFAkY6hkUraWQOQGVTggkiO8U6OovU6AL9Vr5
 jO37QPiN2lb7wLyRC3xCp2eR73xCdJ3BonJT8OVlfEg5RIBQ5LNNyV2U1xGe+sQBmycbs1q8SFC
 U0I/D4dxASW9QvlxNyt/sxwk6hIhQQ==
X-Authority-Analysis: v=2.4 cv=UOTQ3Sfy c=1 sm=1 tr=0 ts=68fc1e40 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=9ZGL9VZrYHwIVTkvpzsA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 clxscore=1015 phishscore=0
 bulkscore=0 malwarescore=0 impostorscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510220164

Add the compatible string for identifying a SMB2370 USB repeater device.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 1 +
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

-- 
2.34.1


