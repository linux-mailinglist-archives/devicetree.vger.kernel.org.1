Return-Path: <devicetree+bounces-221088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE7EB9D2A3
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:30:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 095673B6B27
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:30:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CE602E8B96;
	Thu, 25 Sep 2025 02:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GLEuSDg2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD102E54BE
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758767342; cv=none; b=iPBS8JUX/ZfIZ1Cd+m8gBAIJjGgkDKQLpbPG93T2qnZyC7nehCo0XMw+SqTQlfir8gw/iXEoKEi2RIVO4nmhxcoU2F74XrCmC+twUF6mMZcKrX0rAQF154qWwDReU0PPVKDhTcZzms7KsLZ0nZZ50RCSkhRoU70sF0atK7u94aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758767342; c=relaxed/simple;
	bh=cfM3s21T8CQ3sOfi9Dc1sx2mJ27UuKxMJmEc0kjDpws=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JSPJ+/gz2uoB0NZLuJ4wcnV1kpjRwxrICA4TxUuBc+QrIrvdEG4sANRMPECHhqMVltlJVKIyIq1VzkKZeuFQzX0s6v3Dmm3GXXtXI1WO6J6oWCbrozg8xQhXvByjo4BWMG0Pcao06Xs5W3Wl9Da08TtO6I5MYzFwQL1y0lC4kIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GLEuSDg2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0Gk9u021655
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:29:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YaQd3cF9DM3
	ZawONJKkUUZT5oOk1utb/PQbw+Tb9ZII=; b=GLEuSDg2D2l2imPwwOKxcHG5RCf
	3pvFxukmFNL9hd7KvDTHqNF5rvMqKSneewhFuCGoEvdofpScpn0xgwi1HPt35xdM
	/Lvro7fTaE1qGDcUn7Yd95xSjuUIbr2k5ZLLEKm7RPgW7+eQPPqN/dr2AHQ8Bcet
	C8FuvmI8Q55mqm5WH5BPflPw4y7YBjcPLpN8R3cY2bh7XfcSm9Jy7QnKvIJb5NJ0
	hB9S357t1Etab66DQWHl50BrYvfyTZ5iVRuCDdT9trV2psxZldWnGmAXctWe7nQn
	WLXNDeto6/SFWUsFm6x1wHIuJx5wns5z5bAfNgtokAtu5ceFQzF5ExeDyFA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budae0cm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:28:59 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b521995d498so329416a12.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:28:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767339; x=1759372139;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YaQd3cF9DM3ZawONJKkUUZT5oOk1utb/PQbw+Tb9ZII=;
        b=nlhtSvZlmnDH0H5UMhZVFORDvI955Nh3hANNYZB9BZqcOiSJ5iQ/dQ98tHrdkBgR8Y
         t4acSTyyHmeo0i5OV3fq7hXIxvyAmp85FNLGgYT5ckAjvBHNzo3BRNvWP11JJe6QVcIc
         3fRUDkQ9EwbE5JlMxAUS16BUsP6UJNngrhykMz8FUfB8vVbbJq9PMTSZk15o4BhIxUb0
         jeztOT+0Yi3eCV3jG1XbEnDi1aax0QAKf/SSADWc7fMJ2IG1a/LhBhXqL9oGSytwBFno
         VDGZzglcFDEpyrVw/Kql6bbWNv9h3P+ZoLhYu5qajNyqz30DTLFONt9FQE8zg9p2K0dO
         6ESw==
X-Forwarded-Encrypted: i=1; AJvYcCWSrVbqE2+ZR14f+Dwux8nw+1ntgS3ViCAAZeIkibXQjlUw074mjuO4bzHsZX0nnR9ocHzpw/lPb5ii@vger.kernel.org
X-Gm-Message-State: AOJu0YyBsbE1R0ewnhPlOpUFYdk/Rchik/PnhyMaOXwqf7Cf1rPFV+ru
	Af43roPOHZ5tEIfWbaZG3fFoUmzg/W1B9dkGTyCeawF3TmlSUuhGQHZYPT8ye4T2hyfE8lcxv4V
	wltlmPvjQEN/LFXXRo4TqhygiCiTiyhC9+U56AN+e0e3AUpo4tgOUtkKNwpQq1tFY
X-Gm-Gg: ASbGnctdKMa6rlB+RawuazRGvEEglak1wU8vqKYu68DwMO6mHhNst9TTgr0t7cKJJS1
	hWs305i8GXkUx98rmQ3bnuZuAiKQKO00KgN6IXTdQEK5PdAc4F4XJlGaPNOIu2gkPNsD9uEDTeR
	CLDT7bpaBDYlKuk8hsyTVUI8BwYLL14F7YXRwtxVN4y+nI+BThCauyTvOI6NiYlExT2BCylMz/z
	Jq3zkYsL46TEhgy7707WEhScCxClK5FZySiQlnXWvMs3o+utvF/0EGV9kffQovxiEZcJpKKK6qj
	aU5TIbgm1H8v+SOViJh419xPzXoXHtyyJL11UOvgNp+42uzBi7G1GEkJIyuc5dmnBVAYildfCRh
	dqDT7uFRvV4+X08jt
X-Received: by 2002:a17:903:4b27:b0:269:603f:420a with SMTP id d9443c01a7336-27ed49b3138mr20415665ad.5.1758767338547;
        Wed, 24 Sep 2025 19:28:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGbOCf6eNz+virCFfRlfopKZjO6IPzC0hVd3s5Sj34qU3xiaSgJy3D0qcDZ+fhYb/Vg25O31Q==
X-Received: by 2002:a17:903:4b27:b0:269:603f:420a with SMTP id d9443c01a7336-27ed49b3138mr20415285ad.5.1758767338063;
        Wed, 24 Sep 2025 19:28:58 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d711ecsm499881a91.4.2025.09.24.19.28.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:28:57 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v3 03/10] dt-bindings: phy: qcom-m31-eusb2: Add Glymur compatible
Date: Wed, 24 Sep 2025 19:28:43 -0700
Message-Id: <20250925022850.4133013-4-wesley.cheng@oss.qualcomm.com>
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
X-Proofpoint-GUID: bquNNQ9z0s642hBZdafbV6_HE1kcRXkU
X-Proofpoint-ORIG-GUID: bquNNQ9z0s642hBZdafbV6_HE1kcRXkU
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d4a8eb cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=dJG6SERxbJy7wEyxA2sA:9
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfX0DfFFC00Rf/p
 VHT79xlADNXONL7kgJHSKKfBGSZg7LZZM/LkbYGG3HRWkYRnlRpf9QnQZp9X4Iuyfv4dnw/cwDY
 h3zoT4iEwfD5JuRieplDEY89eHkE4Sp90oNWvOkXynmsmsnkGNs1JUShGP/BW43fQDdIaqk0hGv
 GwAu2BfqYscnf3LBp5k6HQjO5clr/UUwxgmAsL5akoFI+cfD4SOgccPdpVW8nTQK8Wy9XyWr4Ev
 OeGeETXsBWF9d3Ou5fViTxgVXoqUr/dHykBK6aSzzHUTVKJvq1jMuM+KBkDb70jX4gJ33FGFwwu
 v6+PBKJupPDDe+qifRiaCNfADgAVzhE3aSMZIBsfkm2b0yIbWZt5UNdFHDmE0n/5RzsvVrCzDT8
 oYLK/kuz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113

Add the Glymur compatible to the M31 eUSB2 PHY, and use the SM8750 as
the fallback.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../bindings/phy/qcom,m31-eusb2-phy.yaml      | 21 ++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index c84c62d0e8cb..0d5db71e0ad8 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -15,9 +15,12 @@ description:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - qcom,sm8750-m31-eusb2-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,glymur-m31-eusb2-phy
+          - const: qcom,sm8750-m31-eusb2-phy
+      - const: qcom,sm8750-m31-eusb2-phy
 
   reg:
     maxItems: 1
@@ -53,12 +56,20 @@ required:
   - compatible
   - reg
   - "#phy-cells"
-  - clocks
-  - clock-names
   - resets
   - vdd-supply
   - vdda12-supply
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          const: qcom,sm8750-m31-eusb2-phy
+    then:
+      required:
+        - clocks
+        - clock-names
+
 additionalProperties: false
 
 examples:

