Return-Path: <devicetree+bounces-233971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AE30BC2773E
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 05:01:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3184134C1C4
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 04:01:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48CD326560D;
	Sat,  1 Nov 2025 04:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TuXMLO4M";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZHUvsahj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF2E260588
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 04:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761969611; cv=none; b=lp9Bq0gSEHjcHvHhqsNHByCy4CuAzljxWWfP4UHkpakiDmmsmlNUIY27sBNdGU7favIFYkj5PCNDy+15Lm6N3xH3t19bb7Wde0aCTfBCVS7TSDHPpoXH9ZbUIcIKuBmq6c1WdY+5+FtYLglJhFG4XkXhopP/ips6knPgKjeQIAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761969611; c=relaxed/simple;
	bh=/rHGDiZUdOdrl9DYepaOQeGv1VtjtTYXi/+ZkT8cb+s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SFxfID4Cijj1FRXX1rfxgMjGTj5HUaY8ijePxc4Y7i1RqEgS+fB6+bssFpoxGbFT31x9w+W6h+9FLZBHCPmckIhrLppOu8wElwEq+WU2bIPdxQLa4A9whV5xB+pq/qJqLSmnFVSQ1yxxvaBapwau+vPN//2ESHGrl0+iqpCUzZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TuXMLO4M; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZHUvsahj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59VHvYE1898808
	for <devicetree@vger.kernel.org>; Sat, 1 Nov 2025 04:00:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TUun8ttkoQTOkHeDhGd/NSYDbZVcwe4JABD7MBbYCrY=; b=TuXMLO4Mwi+OQcmI
	M6GtmmtWO7xl/RyIJhOXNW5/k8NraVBPmAbcFzs1LpGUCW6X/XAqFgOmP/D82J29
	2MNGsBLpyhR7k4KBQQuSVMApYqYz4xOJYsxh+t0GOc7/u+Q5nm+mO/aC8DsYlgLW
	7K/6ijmu65Ht/Sx00jW8VbIxsvuSLVsHy5p3oz6t9+a+Qww0dphE0m1xLj57fqYa
	L13h/AotM1493JshZcymzKXUquvAq4hl8FyOwj9O4FZgT4qeBTE1lnBakS1zUota
	V9E7sy6ClkN0Is4+vKzI4/mFBRX+sw/ACafGj//B9E5iCqG/CwFn/N5i5Q27QbRF
	ojEYFQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4gb2414g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 04:00:08 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-294ecd3fdd4so31116185ad.3
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 21:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761969608; x=1762574408; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TUun8ttkoQTOkHeDhGd/NSYDbZVcwe4JABD7MBbYCrY=;
        b=ZHUvsahjt/knFgGJui7oDPL+E6OmvfRgp1VLICdckZAatL0KWnyq4osHYCLP2/rjsP
         J6pGGXd3g6o4UAjrzE8OhNpdmeX+ILXp4VaYscMgirJSxuDUqFtNEIku7ASPsT+FM4KD
         IWrBtiVNOUUE4T8nYvdpDB7+giqNzT9Xy3HODxbX0044LhKZ8ZH4xOeW2H5j9yfbClip
         zv0te9DMVy8J3siv0fxy2elEF0DRd7j9mVn5kGYNuwFOCF4IdKiOhF+QEefd0PsNT9wh
         Uk5S2/zEMWkbHsjaUlDFHttWK11Wm3j7auuSx+hW4gbgX8d9NbZUrxJrMPzY3XRVoY0x
         xU4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761969608; x=1762574408;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TUun8ttkoQTOkHeDhGd/NSYDbZVcwe4JABD7MBbYCrY=;
        b=WV9Vc125MDxfoas9T50Vk81w/JC7jENStIqJLAqlnD3yA9uiMCBvK6UiAYgYLkMVtn
         CWT4wouvxiFCZ4eLBh7rG2nZqHFBASWIEyeJjjKWd8crWk0uc5eL3CdMy7lfgIYGtG7C
         h6CXwtW8mSG2cRHAS6IO3zgbZJ9SGbNl5d3u7eEI8rIx487uRfgsYSMmalBBvuL1Ow6y
         LVFAzaXLWLYjEXi1C4YoGBATUQU7noY0ja7FUBFZaLOnmJQ67NIWuS3EnvYP91mB/nyy
         cYYbZGIjvEZR+3wtjM1yh6XRMKfynJmmOe7bzF7n6grx88WNkFz6b6v8cPRjN/hJwfkn
         TrgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWs/DnxV2uIAwCW5v8isBj1gHxLA91fvrpWzTCm3/X8ImFyktUQ2XDsLKVjsbEO2CHCaxWTEQvUZNT5@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1/3GlOVqPC4kBkF6jUxJ2mE/gwqDKzVtKLbx4FNvx7JLEEdXz
	TRcQt3zI8StFu+n50APF1JJgbUZPl8V10ozq3iL/i2p1zVxNkU0Bu4Q+4cA27kkops5HogDWbVV
	kca9dr6ZfISiZirgsv9XhGufaasxWpfUqgGspOWp7zxH6w0H/m6gMyxGbDbAWryX1
X-Gm-Gg: ASbGncthoJAo0PpDeSc6HLtMK6AkmBWRKmT9M6zHdQlLry/jIaICyvZGX3H5sBsZz2N
	9C92HQJ5DleTtBYG0dS2m0a3MpUPfymiWzWLcIrOndo5w7H3lOY852jd1TkieyEMbpn3Glnp6dY
	UdVOYYZfxkgxpVSzA9GW/CKWuqk05r56MzJmkq1YZMQcLs+s6/rkvv29jmETR/KkY7rCm12jsvf
	c+tRloMrzzDE0kQX6M5qR9+xBHDmAlWxW22uYW87JYcc6BmVrJkI/wKva4zCr6HCQd+JBKzTE/4
	tpYYV9TA3zpcoRn0lUXLpfrnM0td37hhSvhNuVzhid8Eodkz7JbBlQ2MWX49FYfkeQwSLl3+7Uf
	RmIvRQ2llx6c2p6DFVcBaHf/cG2KGHAhMBg==
X-Received: by 2002:a17:903:185:b0:290:9a31:26da with SMTP id d9443c01a7336-2951a37a3d6mr76863595ad.16.1761969607640;
        Fri, 31 Oct 2025 21:00:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGKAAec1m6KMSQ27zZIpV5w0wm864d/cFqrgqxQkc3z3RS2QIMzPOiuhWEcwaukQDzGofo9Eg==
X-Received: by 2002:a17:903:185:b0:290:9a31:26da with SMTP id d9443c01a7336-2951a37a3d6mr76863085ad.16.1761969607071;
        Fri, 31 Oct 2025 21:00:07 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295268717ffsm41490725ad.2.2025.10.31.21.00.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 21:00:06 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 01 Nov 2025 09:29:36 +0530
Subject: [PATCH v9 5/7] PCI: qcom: Add support for assert_perst()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251101-tc9563-v9-5-de3429f7787a@oss.qualcomm.com>
References: <20251101-tc9563-v9-0-de3429f7787a@oss.qualcomm.com>
In-Reply-To: <20251101-tc9563-v9-0-de3429f7787a@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761969577; l=1479;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=/rHGDiZUdOdrl9DYepaOQeGv1VtjtTYXi/+ZkT8cb+s=;
 b=Lnb0kzer2s2KLRgW1R4m1XdeYI6aM+xYc3kfH0jbPdg1zODFUgULpywmccRH/RJ5i4TyZrvs3
 TXDDygSCY9mCnIuEfsxGuYCrfV4Vk4yQ7h8Y6FivM/7Si6SgkyZQjwl
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=efswvrEH c=1 sm=1 tr=0 ts=690585c8 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=j2XxTBISUlk66HYKGUMA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAxMDAzMCBTYWx0ZWRfXylD07/4Gj4H8
 CV7PB7sOQFeoo+sYg0XqnTOu0ByAjTHOyzfbgYEcgwapjpreqnI1xOuZPGGiNy9jDYk0d5y7ciK
 y8Yy1qyzaMc0Me1RdFjfSLxaJr772ysm+tIvq4F4JitbkvGuUyFAVVJtYz/MCK6Y9dNlTKm0Q8b
 qVjrNZ/akiVYaTRPx2qXMuzfzS1Ok6ejLyf8zCv+4wooHznZAa0Z2uPuoJKOH1rCHSaW/Kunkrg
 gxVFzwokRw4A24pRpZz4LS7eVS8I9KdTtPIE14P6Glsi4Rb3/mb9iHKXBS1lod+17dPSqgXvx+o
 PHxUw0fJj/Wy4wGhkz/W3KM8v04RRmSR3y3cRF94h3DtLiii9yzYB2M6GNE7XphxlHINhoXHuen
 zeJ0hKAcdbEeMXcDicjdv0Bxx46qXw==
X-Proofpoint-GUID: Z3PMxoAEEIEBmJ_RkauRuePyA-UUS_6c
X-Proofpoint-ORIG-GUID: Z3PMxoAEEIEBmJ_RkauRuePyA-UUS_6c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_08,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511010030

Add support for assert_perst() for switches like TC9563, which require
configuration before the PCIe link is established. Such devices use
this function op to assert the PERST# before configuring the device
and once the configuration is done they de-assert the PERST#.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 805edbbfe7eba496bc99ca82051dee43d240f359..cdc605b44e19e17319c39933f22d0b7710c5e9ef 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -696,6 +696,18 @@ static int qcom_pcie_post_init_1_0_0(struct qcom_pcie *pcie)
 	return 0;
 }
 
+static int qcom_pcie_assert_perst(struct dw_pcie *pci, bool assert)
+{
+	struct qcom_pcie *pcie = to_qcom_pcie(pci);
+
+	if (assert)
+		qcom_ep_reset_assert(pcie);
+	else
+		qcom_ep_reset_deassert(pcie);
+
+	return 0;
+}
+
 static void qcom_pcie_2_3_2_ltssm_enable(struct qcom_pcie *pcie)
 {
 	u32 val;
@@ -1516,6 +1528,7 @@ static const struct qcom_pcie_cfg cfg_fw_managed = {
 static const struct dw_pcie_ops dw_pcie_ops = {
 	.link_up = qcom_pcie_link_up,
 	.start_link = qcom_pcie_start_link,
+	.assert_perst = qcom_pcie_assert_perst,
 };
 
 static int qcom_pcie_icc_init(struct qcom_pcie *pcie)

-- 
2.34.1


