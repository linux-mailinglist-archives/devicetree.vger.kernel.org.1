Return-Path: <devicetree+bounces-238594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A05C5C963
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:32:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B8B674F6C21
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:23:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2372310655;
	Fri, 14 Nov 2025 10:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HCwPMqUT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MJsMPwSW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A767310625
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763115772; cv=none; b=mPT8S9vfGqi8/X1IzoO6JM7GQTI4XUGYtNM3i8B6svJremznHTlqvBI5O/W7g4yGv7mJ+2a2l3xF3YQ26bclgkfzAP8OMEvbEwwM8PxGDZMq9xVmtrkxvepyw+vcrC92yD9Kta7wBvR9IrHOdr9DosehU3HqIjaVY90V3Q9jizw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763115772; c=relaxed/simple;
	bh=k3nnJASyGzjwvyMuUxQFV6JFb1OmNF6MwYd2U70py9w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BDIXEHwkzY7s3hgQ1qw8WhaIOpaqMpDqu99rNIKc9QAidRdQvpgWgUvIpu48ffz7gfZHFLUn2XqzfXezx4QIR+wlD6UT7PQJGC58Mh8TwelH2sqizNX9MbrSg5gQkhTGXzkz2c/gpdrsnFfg1FIK6RXPMzBJct8od2xMXsRH848=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HCwPMqUT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MJsMPwSW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8IOmo1689971
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:22:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ahWiBjMc2fo3WP8rF99Mw4GcS3iUglJWkT5uYMXPyOs=; b=HCwPMqUTwUNRWF4E
	u0ZGfTiYpzvQ3tb0ucmstDJkS/3ZNwPz+VVXwUWJGD5eqh3i3lzJgFkajsxvxp6e
	AgrUEDx+GnJsIdq6qaOOdN9FBTQozBsKjAvEzxJ5cXHcsOQWdkm5b2yABIAEkE53
	B0x1FsVnm+8KwWG8k8enKItScKckXKEpP68ij/tadSKMcSvOebc3rIRYXIrlhrPa
	KleZlNPN0g7gVR/hMq+hs6gLoKRyn+yfRD6cK2OGXecBhFGXBW2Jaj95jIy3VVFu
	MyjEovc0ooYtlbfwN3ZIkkNzXdP4lrCsB5CgLmQXk3drwKOHaJrGNdJKLnkKT49j
	nGDolw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9g1sra-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:22:50 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2982dec5ccbso43833415ad.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 02:22:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763115769; x=1763720569; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ahWiBjMc2fo3WP8rF99Mw4GcS3iUglJWkT5uYMXPyOs=;
        b=MJsMPwSWjyDOz9LvlTGuauRyJ3pk7uB2eVKY+BAOtrF9JdBQA2hrhzSaFShGd3usUp
         h4Z9/xP2FODzcmacyxaFWPp6AlBdAYA9R2w1ZhGOZJHChQ4bxjHBk9zbHJnYoJvjOQSk
         0EpgmLvr7Wj+8BkpbeGJGNKtaP+IfmPWcqh0D8vJ0H1df1ziwiFLG3cs0iXjyZk6dFcs
         zVTkThEiOhn2Xy3SeT6epcjxRxjem6Bsk6dJ2PnoAoy4IVZ28Sy4oW79rrO7VLXpOyoq
         dFy5fRUlTvvUstFUyoi9golbZIMb77chjRfVyB2lITxLNRGwXWNmENPKNX52oo8/ZcxS
         m1gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763115769; x=1763720569;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ahWiBjMc2fo3WP8rF99Mw4GcS3iUglJWkT5uYMXPyOs=;
        b=uKZ3yWNOoYGqtov8oZCS3/oh4TN3BD7C5g4s+5/WI7lMjAn0NKtGM/0380HfftdJo3
         ErT5a6rK68qZxlkfJkgPNDw5XEdX7Dod8/PMlTba7Ymvb+ZK1LmZyLyDU5wLucaf5e1r
         nVR7pQud2D3yeKXOBFKmQyTLItw5Kv6g1qaP+6JDx0OXKUWJ6peeNpj0NnG1nCpTbmme
         BWLsfDCgizx+a7q7FyWcRX0zTGaZQOtftPt2BoS2XwbBQ6t8hVZ9t7KO5KX5un9ab/Ab
         4MneURBgS+3Y0M/Hs2T014ZdGokiDBtZ1I94nW6DLEFSH0BMsKPwKzyUWprwLkeApPmL
         SngA==
X-Forwarded-Encrypted: i=1; AJvYcCWrWICBa+WDuw7+VBTG8iqHurrxel0RI1EE1Jk81nxs/L+ncXAMynx/MKVA2LFW2wO8gHMTdaT6Ez2C@vger.kernel.org
X-Gm-Message-State: AOJu0YzeLhUtq6MywyzEOATCOo1sM2AkQr+Sg+F/f+7LPWzvlVpj7kFf
	AM7wdylDm+RKztyEswQpgc9wxX4A4dmnjBUhH4uGxMS3OcwVQF5XNiplJBu1FZTKcBkoP6Dx1mW
	MCzk7RDW5xbu1Fo6d4oFYXnxKfTtqLYV2cPXxmo50Ko/lC+cxDlseonovGKfwgMrt
X-Gm-Gg: ASbGnct7O6l4LdUlE5N+G88UwK9J8Ub2ebkhmQXCg5oZMQLQgSqZudPKA+1grQaH4WJ
	kelzsMZU9MbQjOvkTfcIjCT7URAsf6iIY7f74oa9m678nC8tCvN/1tBp1RT6OqOnck9NEjX4l/t
	RaW3Zy6/gTlmaEqtrXptsT13tuMJVOxFF5I0BmpXmczSkZ7vRgOvV92AmRS9k2jkP2h5/yqNsoB
	/sP0bqSyrRkYki74xZKSzuHoOM8x+sU0PugsH7NoF8ERHOGzd+H7vAbfUDgnhzK2tT9XH9cdUmD
	o1pxSAhnAix5IP2T9cSS6DY2CwDqKT8QMlV4kNTwlaiQcHvllGqKDbiQUANQQnFZQMlz33srEdF
	9QBw0nPNxKBdg+c5/WkKZ2BUBPA+Z
X-Received: by 2002:a17:902:f54a:b0:294:9699:74f6 with SMTP id d9443c01a7336-2986a755558mr27623725ad.43.1763115768534;
        Fri, 14 Nov 2025 02:22:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHAYL4yAe6yDVMwggNZYuI710G44ZijcHgePARCZdvnUFPU4HcL5StexME9kyo5opZ3RwNdRQ==
X-Received: by 2002:a17:902:f54a:b0:294:9699:74f6 with SMTP id d9443c01a7336-2986a755558mr27623385ad.43.1763115767997;
        Fri, 14 Nov 2025 02:22:47 -0800 (PST)
Received: from [192.168.1.102] ([120.60.77.228])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c245edasm50883705ad.27.2025.11.14.02.22.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 02:22:47 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 15:52:20 +0530
Subject: [PATCH 2/2] dt-bindings: wireless: ath: Deprecate
 'qcom,calibration-variant' property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-ath-variant-tbl-v1-2-a9adfc49e3f3@oss.qualcomm.com>
References: <20251114-ath-variant-tbl-v1-0-a9adfc49e3f3@oss.qualcomm.com>
In-Reply-To: <20251114-ath-variant-tbl-v1-0-a9adfc49e3f3@oss.qualcomm.com>
To: Jeff Johnson <jjohnson@kernel.org>,
        Johannes Berg <johannes@sipsolutions.net>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
        ath10k@lists.infradead.org, ath11k@lists.infradead.org,
        devicetree@vger.kernel.org, ath12k@lists.infradead.org,
        Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6347;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=k3nnJASyGzjwvyMuUxQFV6JFb1OmNF6MwYd2U70py9w=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBpFwLfhfLZG7hwNQalZFkaKtKe3vWWu+Xk75X+w
 3YQ7r9LW1+JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCaRcC3wAKCRBVnxHm/pHO
 9RzaB/97wv8NzPTBqYcKzOK7mewrlHPXfc4PuQvOcHEq+C6zeuGwE/6GKb6es/Yu62eOuhB6Hie
 GO8peTK4ZSKZ+2ofnCcGa8ySrZ5V3I9QFVvdNi+kRBn6R5FEj5NwSC8iH4o8Z+7NSjycB3mMJ/Y
 DqtNHur05DpfSrHGw4JBJr5X59dTQ68J7Dulq02j/28f1Ee1zsYMYh65CHoHBj26cDYDf2tbwLs
 ONi3hrlOjc39Dd1qKMRvvYwKR3gi3Tm9PJSvBNOWdQ8EVF1JXnBTVTLg6Jaa2ruxKdvZyXVgh6T
 07ZlWPoJTAtwEjRrKRJOG2LdsVTYfG3gny5Nm8dY1HWW/+zl
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-Proofpoint-GUID: rU4njpnlI4Ic1Lbcr1IavME001Pyw6k9
X-Proofpoint-ORIG-GUID: rU4njpnlI4Ic1Lbcr1IavME001Pyw6k9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA4MiBTYWx0ZWRfXz+rocKnayeKK
 BRAEa74ZvaLgikEJxZgRoGX+EKju1w4NJ0sqrPPOKfvte5tKm/De2ARhR7q0P8Y1tyI9e33kj2z
 38p+yZoC9d4GGBiDUUhJS7/Ppdqkw4pZQoF8Ut/VEBn2zLc7gUZM2CV//sw829L8Ht1Red6G3Cj
 mk+dLVVVO7UQqWIGoZbXnkZYGXX8M5OHFQRU1wCzVP5vKx+jtdASJ2HApCnyVNSR1zB6UdKt0WL
 uzi3n5DIqRTrOeK6+srx6sqrXsncI9sy622FHlaQkbFwUbmsNCv3aKpBKs9EQ4mRKnXRPZziVyq
 w2FEE8j7TIiV0VQCaLjPvJ1X5x+Bfkky3UWVnNpIM/a49yS2YFX7cRQf/VGNW7DkIO6vWltYVF0
 7avwfe25laphLd/ZhA2qJNRBsVDqQw==
X-Authority-Analysis: v=2.4 cv=IM8PywvG c=1 sm=1 tr=0 ts=691702fa cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=9R49FEQIXN7mQozuOwW6cA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=SpmQgKv4x172yhoqWS8A:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_02,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 suspectscore=0 lowpriorityscore=0
 adultscore=0 impostorscore=0 phishscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140082

On devicetree platforms, ath{10k/11k} drivers rely on the presence of the
'qcom,calibration-variant' property to select the correct calibration data
for device variants with colliding IDs.

But this property based selection has its own downside that it needs to be
added to the devicetree node of the WLAN device, especially for PCI based
devices. Currently, the users/vendors are forced to hardcode this property
in the PCI device node. If a different device need to be attached to the
slot, then the devicetree node also has to be changed. This approach is not
scalable and creates a bad user experience.

So deprecate this property from WLAN devicetree nodes and let the drivers
do the devicetree model based calibration variant lookup using a static
table.

This also warrants removing the property from examples in the binding.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/net/wireless/qcom,ath10k.yaml     | 1 +
 Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml | 3 +--
 Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml     | 1 +
 Documentation/devicetree/bindings/net/wireless/qcom,ath12k-wsi.yaml | 6 +-----
 .../devicetree/bindings/net/wireless/qcom,ipq5332-wifi.yaml         | 2 +-
 5 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.yaml
index f2440d39b7ebcda77db592de85573bec902fb334..efe11bdec30dcdb6d48185b68093ea8c247b8c3d 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.yaml
@@ -107,6 +107,7 @@ properties:
 
   qcom,calibration-variant:
     $ref: /schemas/types.yaml#/definitions/string
+    deprecated: true
     description:
       Unique variant identifier of the calibration data in board-2.bin
       for designs with colliding bus and device specific ids
diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
index e34d42a30192b80311a4c6bb41bd3c8ffc66375f..df7d7aae3343168ffa92bcce16a0b429a6d7bfef 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
@@ -24,6 +24,7 @@ properties:
 
   qcom,calibration-variant:
     $ref: /schemas/types.yaml#/definitions/string
+    deprecated: true
     description: |
       string to uniquely identify variant of the calibration data for designs
       with colliding bus and device ids
@@ -139,8 +140,6 @@ examples:
                 vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
                 vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
                 vddrfa1p8-supply = <&vreg_pmu_rfa_1p7>;
-
-                qcom,calibration-variant = "LE_X13S";
             };
         };
     };
diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml
index c089677702cf17f3016b054d21494d2a7706ce5d..45ae5d3ca73b75b0755466f4dd92df1625dcb4c1 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml
@@ -43,6 +43,7 @@ properties:
 
   qcom,calibration-variant:
     $ref: /schemas/types.yaml#/definitions/string
+    deprecated: true
     description:
       string to uniquely identify variant of the calibration data in the
       board-2.bin for designs with colliding bus and device specific ids
diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath12k-wsi.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath12k-wsi.yaml
index 589960144fe1d56eb6f15f63a2d594210e045d27..cd6604eab5f3608811805d204a4c59ce1dcc060a 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath12k-wsi.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath12k-wsi.yaml
@@ -54,6 +54,7 @@ properties:
 
   qcom,calibration-variant:
     $ref: /schemas/types.yaml#/definitions/string
+    deprecated: true
     description:
       String to uniquely identify variant of the calibration data for designs
       with colliding bus and device ids
@@ -110,8 +111,6 @@ examples:
                 compatible = "pci17cb,1109";
                 reg = <0x0 0x0 0x0 0x0 0x0>;
 
-                qcom,calibration-variant = "RDP433_1";
-
                 ports {
                     #address-cells = <1>;
                     #size-cells = <0>;
@@ -146,7 +145,6 @@ examples:
                 compatible = "pci17cb,1109";
                 reg = <0x0 0x0 0x0 0x0 0x0>;
 
-                qcom,calibration-variant = "RDP433_2";
                 qcom,wsi-controller;
 
                 ports {
@@ -183,8 +181,6 @@ examples:
                 compatible = "pci17cb,1109";
                 reg = <0x0 0x0 0x0 0x0 0x0>;
 
-                qcom,calibration-variant = "RDP433_3";
-
                 ports {
                     #address-cells = <1>;
                     #size-cells = <0>;
diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ipq5332-wifi.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ipq5332-wifi.yaml
index 363a0ecb6ad97c3dce72881ff552d238d08a2c12..1e6ff8e7a6c20cbe4abe31cacd8b25a78af05f4c 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ipq5332-wifi.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ipq5332-wifi.yaml
@@ -151,6 +151,7 @@ properties:
 
   qcom,calibration-variant:
     $ref: /schemas/types.yaml#/definitions/string
+    deprecated: true
     description:
       String to uniquely identify variant of the calibration data for designs
       with colliding bus and device ids
@@ -304,7 +305,6 @@ examples:
 
         memory-region = <&q6_region>, <&m3_dump>, <&q6_caldb>, <&mlo_mem>;
         memory-region-names = "q6-region", "m3-dump", "q6-caldb", "mlo-global-mem";
-        qcom,calibration-variant = "RDP441_1";
         qcom,rproc = <&q6v5_wcss>;
         qcom,smem-states = <&wcss_smp2p_out 8>,
                            <&wcss_smp2p_out 9>,

-- 
2.48.1


