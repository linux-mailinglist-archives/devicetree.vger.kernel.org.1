Return-Path: <devicetree+bounces-209333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C70A9B35A99
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 13:03:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 869862A1698
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 11:03:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39B592BFC8F;
	Tue, 26 Aug 2025 11:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jsKij185"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C102A2BE62B
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 11:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756206189; cv=none; b=hXyMehgKPI5tQqLeM8hVHL1vUvD+hZpaya95+L13DzadJ1HPVpHd2K7EfSRiooXccCiuvMeUWgacvz4nu8epgk4aK7/y7216smnUaFcMhLYpr+DwrfrZeUEH6qOsxYIgew34Cz5RElLfF0HyzIvhiaXlT12U8vBvL4jrUDsdJyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756206189; c=relaxed/simple;
	bh=jBBl6A3Sxsg2d6MaEgBHO65kZTpSDglRvHQ0xA/RmfI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dvMSBKjdbqWL1WJcH6QMOy/1Adp/wCgtzBj7rVTwtPu5uEajfD6vWr1cd3IORm0GDcGXieWvZ+L/eldlRd4MDPJIqUBgsfbCHGIPhkuHc6VUDvV4JOwtX4y/jrTGatjyTCzguU2gdzBYHHCbVVvZTrtgFm0plFRrE8RuV+ubXng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jsKij185; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q58kGW020343
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 11:03:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Kofxhc8N7wzIQRIEJ2kzWHMlZjkxlt2XuX/b69ntAxg=; b=jsKij185oRIwGFTC
	G06TFUIWYpY4f12Wthm6UyjD6BDpogiHwBR6oQTJqXJs9d6zyTjzlfzacvztGpx1
	6+2gq8uEzZhUGwTY3XUnaTZG2vvLVsix1mimyzh5+WrtbZnAPN2bk0XSZ1/Ehdfn
	D+qKWrXdDwsuWb5GvzzPpwdzoN5pXN17XAvu1HnDL6w1RH2Zbuq74p5/5OGBfVsP
	q5KJ9qOMEo4EOt/n8RoinQMfvEQayXUbxoWeUuu4GkKl93yb65TbPuJDLmqy2ohr
	ToDiFU6Za5dGLHYATDccYyUHHujnEcFUP2lra5k+6MazM49xbMValf447RHkwGQm
	Pns/Ew==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q6tj0hqk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 11:03:06 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-246de620e6bso23198145ad.1
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 04:03:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756206186; x=1756810986;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kofxhc8N7wzIQRIEJ2kzWHMlZjkxlt2XuX/b69ntAxg=;
        b=ER56LwEVHflYgwe739T0bKIySVlfgHCVFuaXImSqSa7Nyz+BOCZPUp1NEJce5awdfT
         5HAXfXEI8OzeAWac9rG8BizAwxhcY9DzT1wgkxd8TOVKjCbOyzLpjkywtLw07bPvxBy+
         NnDj3U9xj+K3pQzUAkQ5cpRvwlnifrEyer4xW/g6Ms86sxwZakB0yYhivnp9lnyCCi42
         OTUhqeedF6q+19AZrabGG48nqPWvUFANdPkFDWIr+pcFPel12/P3cRHDO9Tr2MXdI+vH
         HDRgXCBAvA8tj/S74mkYl0+iAceRyEusnCl1sf2yeb3A4m1njx05gr5pLne79yxD0b2L
         wcfA==
X-Forwarded-Encrypted: i=1; AJvYcCUpx18LRglZrFuNTqj+1Ht3SvU0M7JetDRFdfqARbnH9jxwzfA605s/cEAYXofTtciueZljm1bH6gcx@vger.kernel.org
X-Gm-Message-State: AOJu0YxjoXKWnqR8mCWaP1XAsnW9cs/dSnGSSqYZowxJDLQMwVB/msR8
	8FCbrSM4eNzNSxe7Ta2HzrlODBdIOGHAkndBz2LOE/usVM6oX63jhVtldx023479fKUHIfrDPe8
	/yWHbd23wcMuE2nMVu2H+IWvNhwd0tozFsXaLc8v60D4A2zMy0a24Kgupq3GDUdEp
X-Gm-Gg: ASbGncsKHgcHY9aTQ2gOMqcVGI0q3TPs820eQUEhf3spbEbu6VfIjq5U03UatvFJbzs
	8HQ7xd3rBFDat4ydFre+Qhlrr3a7Dyrh9J/0aWs+jCkh+yrZ4ZnAuL36QR4aD/0yVHb4kTGwzg+
	lm8zM8vHOHNU1gGuooBErvzhLzCaw4Tl/+pV1plGgOD72xKaWBwwk8Nb3133SmowxvljZgwn8hR
	eVysqGarIligu+B1SlCNkwASEd19IOX41ax0kL+JXgxzgf0vZmANqyK8YtbIOXVQ1dalxEnAU7o
	gtug7UHFA0EIxc1FWmt0cB9MSjl+22oXIk4ExHeT2Dc1ozNC5Ur443xntQiE47GB1RNVjPxfnmw
	=
X-Received: by 2002:a17:902:ce90:b0:246:d769:3018 with SMTP id d9443c01a7336-248753a2757mr14868075ad.12.1756206185792;
        Tue, 26 Aug 2025 04:03:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNR5imklYJZBTdqQxwSRi1KNrrUdX7w5o4w6VRejdpd1suCFnhxoCDkM0yPiR7w9hpzP36Fw==
X-Received: by 2002:a17:902:ce90:b0:246:d769:3018 with SMTP id d9443c01a7336-248753a2757mr14867625ad.12.1756206185313;
        Tue, 26 Aug 2025 04:03:05 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246688a5e5esm93207955ad.161.2025.08.26.04.03.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 04:03:05 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 26 Aug 2025 16:32:53 +0530
Subject: [PATCH v3 1/3] dt-bindings: PCI: qcom,pcie-sm8550: Add SM8750
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250826-pakala-v3-1-721627bd5bb0@oss.qualcomm.com>
References: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
In-Reply-To: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756206175; l=941;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=jBBl6A3Sxsg2d6MaEgBHO65kZTpSDglRvHQ0xA/RmfI=;
 b=1sSlBVLmp2op60IIE8JykrDJE0XwehHkU6lVFh/THdWWUN/8OY+3uAMfhq9qj47gOcrJq6838
 saX8h+IJs2zD3adnZjsn0lc2ZPZOrgWNOHOhUL3j+p6YIKzf1F66i+b
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDA0MyBTYWx0ZWRfXxtXiS7dWElTg
 87VhntrqW6uVy6jhia58s0qwH8mM/ZBy9fBn7qdw9+ts0rXDjOniSa1+3niY9+2IJ4A2bf/fn+e
 GlhvtPHu2whzx6RUYMSxX9PcNwbHnVHOOoxtxlE6AW8HjOv/SPgU2EZDSCOIc65Y4b3XJ9XX/K6
 63ZYZa6Qtyhzz4bUKCXtDYuU1BuqNBulCwCCg69rCG+ohzZT4VI+BaG3Jo+48cnf9ESUnRIKF0P
 c/G3wP3qtXamURWYq5L+L7rg5xSRITLNxpj5eMe+dcdewUSZ1b/Q0qiM6FANh12cVX29KAAVO78
 UE4ogtLfNKDchX0p07jQ1uas7weAggb+d8/dUWT8hVdfNyYTLB1GPS0c2oHUxbugTNgo6Sr+R2Z
 DOjk52lu
X-Proofpoint-ORIG-GUID: Mk0n7bGHbnj1S-WmNXsijACxO-3BKacm
X-Proofpoint-GUID: Mk0n7bGHbnj1S-WmNXsijACxO-3BKacm
X-Authority-Analysis: v=2.4 cv=W544VQWk c=1 sm=1 tr=0 ts=68ad946a cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=ly1VyIkaSgMpB_u5KqwA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 suspectscore=0 phishscore=0
 bulkscore=0 impostorscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230043

On the Qualcomm SM8750 platform the PCIe host is compatible with the
DWC controller present on the SM8550 platorm.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
index dbce671ba011c8991842af6d6c761ec081be24cb..38b561e23c1fda677ce2d4257e1084a384648835 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
@@ -22,6 +22,7 @@ properties:
           - enum:
               - qcom,sar2130p-pcie
               - qcom,pcie-sm8650
+              - qcom,pcie-sm8750
           - const: qcom,pcie-sm8550
 
   reg:

-- 
2.34.1


