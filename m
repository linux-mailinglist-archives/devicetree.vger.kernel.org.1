Return-Path: <devicetree+bounces-247550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 542B3CC8B4E
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:14:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8B7B93083643
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:06:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FD3E3491DE;
	Wed, 17 Dec 2025 15:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Td4niL/h";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bz6UnZXJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C077D347BBD
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765987024; cv=none; b=eaBBJa7vpODMWFeqBX3sB916gRl63sZV0qvQ0FJMDenzmHNVs3HRtN8X2RuYEK2Spnmkbj9+4jsB5TH18/K3TBtSp5vxQNPj447iNTNDFrJmff+WZdWnObE5q+VwMIvTmx1ZXpKcUpZtBymHNqsRbhqzcVPPd3cmELhrpUtAfgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765987024; c=relaxed/simple;
	bh=6vZrxZuGRWDo/M6oQXbZQQ3gJdpWZlph0xza3vLC58c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ATxG5igH43TGTG0ycTZzpawWQ8J/qJXb74e+4fPbWXIegsQ/8L3IzCTdBP9QYq44ILXlT7bYEfECGWlj2BYONZCaxafsvfaide/P3CiSJAAl6vqtVdFBSLOH0idUdSf5UKwktYloMNIzSXN9TWeNknv5ewdJWGt/9eUjGJ7qweg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Td4niL/h; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bz6UnZXJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCL6Gf3001915
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	awIiB2Ey6NFv8oEXBhn79OJVv3KdaerPnR/oXQd2tPU=; b=Td4niL/hyMAL39yH
	Ni/uVJW3QJJrcQz8gRpUXJybjqfAhMqI/cKQM2/rt+juOFGvRHGV6iI1TyYXXdsj
	YLYPhcfLiYOkelWeTo1CUyIe9A77xECtOYRsyT131QhWAZic5N20YofVV6Q8rr34
	uhPgZcQEWRtfJPKPXWwThQ06uT72ttOcQn5ozMEWmEnCSboiIL7JEsAcP4xysCOl
	TWc7ETvhYibM7Ax22Oy4HvQgfex3ZTWZ09Qg4FFNxxukZnGre8fc+LJysny1JAiU
	IvGv8m9nTJOvhtRUcWZhz+9ypLTmJUOv6hEixF+IEmcaDYjGTsTuAcKqsxYw+1Pa
	wzRYSw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3n33272q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:53 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f183e4cc7bso113107501cf.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 07:56:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765987013; x=1766591813; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=awIiB2Ey6NFv8oEXBhn79OJVv3KdaerPnR/oXQd2tPU=;
        b=bz6UnZXJcM+vMM5euI8hcTojIf9seZlv/j7+QBuEoiQ4C41VNj1MzomOyzFX95WyrY
         r18bgzfdfVLB599LZQGciDtxO+kCb8XbEoqR1c3TgsQH01dxbqptZDJsmhADJ7/wxR2Q
         GzInNnB+EyqrVsfjJs7r++06C6QM1lChiv5GtbbkDIR0hflOWWMCr8rpqR22jB3StKrn
         thq9GHMkUKLQqF0nnMAlrabVMRZz9odmpqMmdyFwhfT2F0k15YV9csStrq0PcPPZS7oR
         0CMczJQWma/5Fv7BzTSc6zj1o7IQCn33X3C6FiHmveIUBF6GBNVnyqTtWvaW829m729C
         uGTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765987013; x=1766591813;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=awIiB2Ey6NFv8oEXBhn79OJVv3KdaerPnR/oXQd2tPU=;
        b=oNGIwWacbrEqOY9u71EECE+iJKIl3lGHXWQlabdQCyLAPZpvCUn1y+ZDbKkIHXXvDd
         dfXjs54M/VWizcp6vEV5W+dZ5MgY9cW5lT10qdd25iRR+piToCfEW0GgdU5KCuuj8UhF
         eKeGWjGVtFTk5hBfnW+LoOdbrABgBEMCYPRvm3KLyIisATS33BgzB2wkdVFmq3WV+wM7
         86TANHj96jkheNIQJWJ5xUy4A345ytxy1OLv1WYv+mtNZ6m+F8BYvUvkhGdodmcG5b35
         J0bTcQdSLsFwAYaKxEVl/SZyDtv5XkcKpSwpaU4BKZMq2vZA2FjBeW4qp98HeM9pKyo+
         ubzA==
X-Forwarded-Encrypted: i=1; AJvYcCVBWXYBfDmw39XqzxNkWCSwFjg0q/MaSXyjKYfdgzPOczdNQebYKOT+nQa05tqEf57KVa02SxMHBk1c@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0bTFtI949UBCjCLWVHjltsvuRPAb4gzcOg/B548qVIsFIRn+0
	d+HWlxxI/Fx0FZIleeP3rgeDiRqh3yyBrWg3Au+DDiHskcudUN3HG4qwp2+Ru+Pun9xhSAjJC3O
	yhYTAOVt0SzmeKWitBMXQUXUst2VP2MgC9cjdFvIw/d4+sA869jWzhOXAt86Te4rh
X-Gm-Gg: AY/fxX5nAOVP6sYQHf99FAGc6glS+hblQe5ctOlaD+QSmFooLlyV076hHHXQmkgQohE
	oTTZBp0tNqOlefEoy8RW/r4CyHcL5edR6hezGQ7hDR9n22qvvbk2CKVI54P1dRY8hiJmlPlxjbR
	wg3aJFF3Okrc8D4QjXU4w1GjIm5auYGJzN1ZgpGYzFNWlAJyKYZw124qa9o0vrVCifKj6kZ05sl
	QfstCYFJsmX1IwnbtiPgocBTLYUoSG6lREC0wc6XWBPJukeTEgnOHeCQFucssuFG03xpQGoTDNe
	Zq3dXIbZt8aB+AzliuNbS96zFDae+xRyJOvhp7cN8lwHogVjcn1WCVkqYtpOVWRwzahyjTKKnxA
	xpWAXI6WRQ/2/3fsCM8LICONaTqLzdg8l
X-Received: by 2002:a05:622a:40ce:b0:4ee:1b37:c9da with SMTP id d75a77b69052e-4f1d049ff57mr203494141cf.17.1765987013068;
        Wed, 17 Dec 2025 07:56:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH7w3HA1nu7Xs4FrgEnK5tPbQH2BvNQ0RJ3LInMMAS472Pm6cPw3BTox7C1TqUnlEc6w1Hiqw==
X-Received: by 2002:a05:622a:40ce:b0:4ee:1b37:c9da with SMTP id d75a77b69052e-4f1d049ff57mr203493701cf.17.1765987012555;
        Wed, 17 Dec 2025 07:56:52 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.51])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4310adeeef6sm5439800f8f.32.2025.12.17.07.56.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 07:56:52 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 16:56:25 +0100
Subject: [PATCH v3 07/11] dt-bindings: bluetooth: qcom,wcn6750-bt:
 Deprecate old supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-dt-bindings-qcom-bluetooth-v3-7-ced8c85f5e21@oss.qualcomm.com>
References: <20251217-dt-bindings-qcom-bluetooth-v3-0-ced8c85f5e21@oss.qualcomm.com>
In-Reply-To: <20251217-dt-bindings-qcom-bluetooth-v3-0-ced8c85f5e21@oss.qualcomm.com>
To: Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1852;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=6vZrxZuGRWDo/M6oQXbZQQ3gJdpWZlph0xza3vLC58c=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpQtKzadpK0HKmTe54PLJdi/BemFeEiUXA9qHj5
 VcHIHUNf6OJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaULSswAKCRDBN2bmhouD
 10L+EACFwKxuUBlTCkyn01UJmflJxFekCN2319KFK434xpdD+vfQXAMnOagw40Xd7axvJErNVC+
 B++wPSLzjNHHX3BtFvneufAuwzQH1sGkdo+biiyI+YLPYy5Jb0Bn0r8mdNlZWCObqldORL3y6Ca
 lJFxNY0P5vHI5m7ajxdH+eTcGIlymswjv1QId4LgE4VwehWhj+/8r6eRE2H3oOYD/3HGW/yQGzk
 QnoefTUgN+FfT4hh9GYR8ieGRK3ATSxKEPTIe9tI47M+Q31h/Wcr8W+geyXt0jSfGDmsw/Z1CcT
 ZhPj19IO6SeEIj48QctrgIaWus5126mO+O3oPEXIBKy1Qk8S8MBaE8mGirg3h1I8V0zO67C62cg
 a6axFVr8iGT8oyRYDkLkf6sKLWpuMrCbaqbsxtHPWTv0bymO9p9vc0yYhf7p7eeqfZxzHNs/ULu
 IYRyIX834MTI9mKzJp+g3j2g5Oqll7lLICNIdi54e2IZ1kSTKr932a9CRCFwSVawBmOM2yqPN2p
 xVaYDZXyloZuKB9rFVrM+KXkj2FRQhG2d7IRvjCMZ172HoYJfgZpFfNKmRk3NnZ246NKZbiT57i
 DQlEJJgF/enX3ZFVmS6h8phPd3hPgrrynbC78Q7+ryppYhZQZT4ZK6atv8Z59cogAza3ea+dSaw
 tQL05SnYIZl/bWA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEyNiBTYWx0ZWRfX7gnKXuYdX9bM
 4OsjrcJl+1Xe6QFzWposgbPktHJsoAttsINVKeiwdhupEEdBxllsOs05SFotI9sR5gKZZkqnepN
 BzpgwJ9XaxA8srWdkd0SkdvF0nSNQIhNw2IPkY9fM1shi3xpdXjDcpGPFb/Zv3qDP7WuUN3QJoF
 IFNG0UtayJ94QDYm8A63nTjI5nM1L4+9TM7ouiGp3IEqwqx/isjw3LEIjuLIpn3uQMkH3Mk3hVE
 5bQwlzB8+eakVgjYfLx1/K8ipmo9HmGo8mRVqPwgDEgcq7+eMp1nhi9WYu4iArWL0Is9wrU0esQ
 i/GHk0gvjzAZPzaPMKZVK2e6BqOv6FS7vXOpumqAw8o69GUEg4AYGEy681Yocib8y1U9kkfM9vp
 BuShqzQS7c2MAqdZGFCyThcY8A8e7w==
X-Proofpoint-GUID: Wb6ED-7WoJFwjWlXtMH67MCs73qkT6AF
X-Proofpoint-ORIG-GUID: Wb6ED-7WoJFwjWlXtMH67MCs73qkT6AF
X-Authority-Analysis: v=2.4 cv=U82fzOru c=1 sm=1 tr=0 ts=6942d2c5 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=hmARNUlj3OVxZ3RlbIsQyw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Hly1SnzPtDZhKKQCjPAA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170126

Commit cca4fe34979a ("dt-bindings: bluetooth: Utilize PMU abstraction
for WCN6750") changed the binding to new description with a Power
Management Unit (PMU), thus certain power-controller properties are
considered deprecated and are part of that PMUs binding.

Deprecate them to mark clearly that new PMU-based approach is preferred.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yaml
index f11d12c205fa..8606a45ac9b9 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yaml
@@ -17,26 +17,31 @@ properties:
 
   enable-gpios:
     maxItems: 1
+    deprecated: true
 
   swctrl-gpios:
     maxItems: 1
     description: gpio specifier is used to find status
                  of clock supply to SoC
+    deprecated: true
 
   vddaon-supply:
     description: VDD_AON supply regulator handle
 
   vddasd-supply:
     description: VDD_ASD supply regulator handle
+    deprecated: true
 
   vddbtcmx-supply:
     description: VDD_BT_CMX supply regulator handle
 
   vddbtcxmx-supply:
     description: VDD_BT_CXMX supply regulator handle
+    deprecated: true
 
   vddio-supply:
     description: VDD_IO supply regulator handle
+    deprecated: true
 
   vddrfa0p8-supply:
     description: VDD_RFA_0P8 supply regulator handle

-- 
2.51.0


