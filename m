Return-Path: <devicetree+bounces-233978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B7EC277B4
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 05:31:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 411CE407ECF
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 04:30:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3981728C00D;
	Sat,  1 Nov 2025 04:30:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RecnS/G3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CM/she/9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9806D13790B
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 04:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761971424; cv=none; b=LkqFED7zjlKTBQy1Yzu9XOq34fM3s56rcCY/27utU1jwjJ/f7pdL5sMTiGA8/Z2DxfEfC10TNN/SXuqT6vopXJnjyinjwtoEzcsLyji7/EeePZani6E9DwhegSIKC3iR6pY20Qgdhp+PhkdUDYb8xTKzahj3aDoqbTVeGlHTZR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761971424; c=relaxed/simple;
	bh=z6Ma1tu8vEZQke3NjkVPJHb01xM4bsdEHhx7cBiREVQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=smX+CjnyC2/5k3hl1l7jqHv/2ikQQTv4KGfNM0IkTTCuXMKr6HxIZWS2atady5+YM15j57qP3L7agODrj8BPhcdLwma+SKF3ckz6GbVZ0ifxK9iFSQxwfS8TDmRVLKH0fIOPFsi0sbY5iZB4Zoaqpf0DQ/MjJZMraZCVeQSE5Iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RecnS/G3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CM/she/9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A13ZIL6429879
	for <devicetree@vger.kernel.org>; Sat, 1 Nov 2025 04:30:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/qVs9Q8bbIIjhgXIhLzUmZHcUu/XIpCZrPOB7b/VeVM=; b=RecnS/G3GBUtr5sn
	0pgi0zH4N0oEH5hRWMkSNXc/6hZzq5ceyfpRNFy7Nt3gTjsVNCYb4uAFFxZZkkzU
	o3vUIkg6nZ3oxH9EIgBrYqKEAaOJbkaRquqZgeFNSNvweh7dWRkJBqcJDl1DJ3V3
	5qw+dTA0Hx2N/wrctsew1WbkBVhWpcg1oLhX17KmPwXugMUvr+bpYiD/ZgOQ8x32
	0AKKl/88Ju94SEkZ/xaSqWhzWd/e2GF78B/06lRImmUY3OXRNO5a8ce7j2VXBDw5
	SZSDZGRUJ4UE3vsCoWtgfsdwA+hMyGEZ2aDsBaLaRkDmmbWtfszTkaEqklbGvYvD
	/vfZ5Q==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a5ae30256-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 04:30:21 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2955555f73dso3090895ad.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 21:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761971416; x=1762576216; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/qVs9Q8bbIIjhgXIhLzUmZHcUu/XIpCZrPOB7b/VeVM=;
        b=CM/she/93Bz0K+pvTNrQ9NXuVFmDsxQkTKwiaQQ26JwUypTZ3Ki/2M9VBW2vSqBRN9
         gOaVEIGgT6JpcFawKtkG2OsLaZ8SJfgj8Eon59B1mBKESVgLpn8/Ij9qvH18BrEN3C1V
         YM9o2rpd7oq8VPRYBTrnRUEYZit2z4Cndf4i9B50frzu7opH8wl8SspLTt4RpmjYJ1Ih
         UE3873Uux8CMddzC/KEEUtwpPNzyrVHtsTfTlyce+scHZXl52P950kDddGPzKhCg3F4K
         fXDLOjVZtXft7zP9uHhYEjt2a5vSbPgmrKHcCXLZo6EjvZ3AJ5nyKymsCll5n6Lu4KNA
         lefg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761971416; x=1762576216;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/qVs9Q8bbIIjhgXIhLzUmZHcUu/XIpCZrPOB7b/VeVM=;
        b=uifewUfPGJ8XbRlyce7nqmjfCVbgb6I2GvgltQGBkYiBDx1E6iU3vcR4tOYJsDx04X
         ncPkfH7CqtOKjfl10Ym+EJSAjYeoc52R1+ZHirRWPLlqRhQ0EqhnpJij0LLetpX87SZY
         oRBe1FtMWXQCtqMIc/LLYocU65KHEM7n2dwB69/zZBE8R7xXWIrwzyAPc0hMAGqZhVg0
         +Sk9QoZ8Ul+vpARFhm3X+AuXlfCfBr43KThkxH2OnApaKhxcqMQl854q53aXUnWsl8C8
         BgfNDlw7sklN4ao8iy+hMKIUFPntsz8M2pz0rqb1TXZed7/9XYzwvAty3nuhIjd87BPY
         Axiw==
X-Forwarded-Encrypted: i=1; AJvYcCVRA/JpZAxQa+nBwstbSa5sdhbXV4qcfpbo5motWEwBjw2ODxpC72m+n9ENjcF3rpMWmp3Zt/EnlzN8@vger.kernel.org
X-Gm-Message-State: AOJu0YzxASlTPYlKDuy4naTmrhsrANn5srRDldU24oyVF8Dq0YO/B2IN
	UzlzqlVYwv1Ebur7Cc9U7KbOkwKQ4yGioi4JXDNAYpRMYbI8cJDbRx8xhF0foCTsRwgRTI2XUxl
	GK7kVxUYHABEp2SADBpepKdlvridQcHkUnbbVRx5py5K5In8V8pMfy5yppME7qGIf
X-Gm-Gg: ASbGncsBFdyi279a/lCAl22N7B7QTPgvqPjym4abGNBQss142syDJatRgTYUzXztX4+
	cmTrrmKIrTSH54jlMabjUSLc3De/+ufHEGCPAJTGKMk2tHsp9IBQjeU/SPIDN8to7ZgCONTUNha
	4UnA+FjbuY6zipqT/5H7HsIoLJgzwBVutDvWmuDTocgjNzvHF2Ab9GtUx1wS5hj8facZKmXe+E1
	ZYpY4o/M35txKII+5ZTFIMeQ0ZepH0gtXgffo7m3oJZSD/Yr4Kx40N/ZJwEOEFETyATPWKiLZro
	t3Tf2sRvybTk0zXHKzHc1w4D+Qrri7v8fFMt4gq9L0oN0BAchj1ffZtv/ySH4gd0N/l7Q1CPsEE
	rQyA57tAk6Mp6DczE9wstPK2F
X-Received: by 2002:a17:902:dac7:b0:295:2c8e:8e50 with SMTP id d9443c01a7336-2952c8e96d9mr46357475ad.31.1761971415818;
        Fri, 31 Oct 2025 21:30:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERXDukIavO9PR4//phPyGJduf0lbjAG/4vEikdn++zQ0+zjHP/5yiGYQHVqvMFXMVQNa2R6A==
X-Received: by 2002:a17:902:dac7:b0:295:2c8e:8e50 with SMTP id d9443c01a7336-2952c8e96d9mr46356885ad.31.1761971415224;
        Fri, 31 Oct 2025 21:30:15 -0700 (PDT)
Received: from work.lan ([2409:4091:a0f4:6806:9857:f290:6ecf:344f])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295268717ffsm42273285ad.2.2025.10.31.21.30.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 21:30:15 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Date: Sat, 01 Nov 2025 09:59:42 +0530
Subject: [PATCH RESEND 3/3] PCI: meson: Fix parsing the DBI register region
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251101-pci-meson-fix-v1-3-c50dcc56ed6a@oss.qualcomm.com>
References: <20251101-pci-meson-fix-v1-0-c50dcc56ed6a@oss.qualcomm.com>
In-Reply-To: <20251101-pci-meson-fix-v1-0-c50dcc56ed6a@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Hanjie Lin <hanjie.lin@amlogic.com>, Yue Wang <yue.wang@amlogic.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Andrew Murray <amurray@thegoodpenguin.co.uk>,
        Jingoo Han <jingoohan1@gmail.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        stable@vger.kernel.org, Linnaea Lavia <linnaea-von-lavia@live.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3414;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=z6Ma1tu8vEZQke3NjkVPJHb01xM4bsdEHhx7cBiREVQ=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBpBYy++GDC2FdF4Z/6/YuKrqvsPRDzSYzArhNo/
 +csT538cMWJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCaQWMvgAKCRBVnxHm/pHO
 9Wl9B/4lJRWgp4jLVDF1SYqDPGUDzcb472y2yeMmk2rkFfb2Uv1hlk/XcpOEfQgBpX/u8ZpXBEq
 T7H5Bx2EFq4Soc4HdtjIYaui17kadQmI7NRJFmmxhC1xko8FftZXxZfEtoP7KnqUP81m2N60jRI
 lMArC53Nmr1Sf+hjpHeorOGbMovA2mC7P2H7k9M4hLM015Lj6soWc5ViRjg3fdJyHkz/sZ9YvNN
 uoQp8w6yVTVJW+fZ5JSvDDRb/4HVStZmmu0VCObZK3EqVhOq8mGy7HXd5724d3JaWSl+0Ldj3N6
 zW3Xk0bmCRmxWBjbPLOoTUS+M5L+oB3GOZ2L9kk3WUiDVkYR
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-Proofpoint-ORIG-GUID: LgPhAr1n8DCss997S3ku_fB9YXdcUk5a
X-Proofpoint-GUID: LgPhAr1n8DCss997S3ku_fB9YXdcUk5a
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAxMDAzNSBTYWx0ZWRfXxS43lnpkoyzH
 O5blL61H9NHzXqUE7/uvCGMSnKo7Sj/Wrqf8csSMu5bF4/7b9VLpLvwR5AQBFrHOlfhbjW9ZhZL
 8EBzcNZsQqWxShdodB+ky0PL7N4lN7Z3cPjeaaYcpA7IXFvxTbVz4OCoHATB+bANjmXK132fbTm
 sjvi0BUitImHtKKlBHyRHT8vE+syVImO5+w5kwqqJbvsSrv49FmBW4Fg+98iCHB4vTLbamN41HS
 2gx0FZLfpmVcP01Wu2fH3gZGLWDtcfSxmJABgejQENY7ORMmkdd4ank0I84YrBlzJB19K9yiG1g
 whW9NBmfSMUJrampe9aZRshtdOG15Hqj6qJsp5Dgud8FmC8pMC/568JKTP5K3BHT+m8HCvUO8I7
 HpptYC7Y1sbB4hqQc6+Q4Jv2bxLvjg==
X-Authority-Analysis: v=2.4 cv=CfUFJbrl c=1 sm=1 tr=0 ts=69058cdd cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=UqCG9HQmAAAA:8 a=Zk3OmFfbAAAA:8 a=EUspDBNiAAAA:8
 a=szRsftEmMXlY6Mt0pVQA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_08,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 spamscore=0 bulkscore=0
 adultscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511010035

First of all, the driver was parsing the 'dbi' register region as 'elbi'.
This was due to DT mistakenly passing 'dbi' as 'elbi'. Since the DT is
now fixed to supply 'dbi' region, this driver can rely on the DWC core
driver to parse and map it.

However, to support the old DTs, if the 'elbi' region is found in DT, parse
and map the region as both 'dw_pcie::elbi_base' as 'dw_pcie::dbi_base'.
This will allow the driver to work with both broken and fixed DTs.

Also, skip parsing the 'elbi' region in DWC core if 'pci->elbi_base' was
already populated.

Cc: <stable@vger.kernel.org> # 6.2
Reported-by: Linnaea Lavia <linnaea-von-lavia@live.com>
Closes: https://lore.kernel.org/linux-pci/DM4PR05MB102707B8CDF84D776C39F22F2C7F0A@DM4PR05MB10270.namprd05.prod.outlook.com/
Fixes: 9c0ef6d34fdb ("PCI: amlogic: Add the Amlogic Meson PCIe controller driver")
Fixes: c96992a24bec ("PCI: dwc: Add support for ELBI resource mapping")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pci-meson.c       | 18 +++++++++++++++---
 drivers/pci/controller/dwc/pcie-designware.c | 12 +++++++-----
 2 files changed, 22 insertions(+), 8 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-meson.c b/drivers/pci/controller/dwc/pci-meson.c
index 787469d1b396d4c7b3e28edfe276b7b997fb8aee..54b6a4196f1767a3c14c6c901bfee3505588134c 100644
--- a/drivers/pci/controller/dwc/pci-meson.c
+++ b/drivers/pci/controller/dwc/pci-meson.c
@@ -108,10 +108,22 @@ static int meson_pcie_get_mems(struct platform_device *pdev,
 			       struct meson_pcie *mp)
 {
 	struct dw_pcie *pci = &mp->pci;
+	struct resource *res;
 
-	pci->dbi_base = devm_platform_ioremap_resource_byname(pdev, "elbi");
-	if (IS_ERR(pci->dbi_base))
-		return PTR_ERR(pci->dbi_base);
+	/*
+	 * For the broken DTs that supply 'dbi' as 'elbi', parse the 'elbi'
+	 * region and assign it to both 'pci->elbi_base' and 'pci->dbi_space' so
+	 * that the DWC core can skip parsing both regions.
+	 */
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "elbi");
+	if (res) {
+		pci->elbi_base = devm_pci_remap_cfg_resource(pci->dev, res);
+		if (IS_ERR(pci->elbi_base))
+			return PTR_ERR(pci->elbi_base);
+
+		pci->dbi_base = pci->elbi_base;
+		pci->dbi_phys_addr = res->start;
+	}
 
 	mp->cfg_base = devm_platform_ioremap_resource_byname(pdev, "cfg");
 	if (IS_ERR(mp->cfg_base))
diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
index c644216995f69cbf065e61a0392bf1e5e32cf56e..06eca858eb1b3c7a8a833df6616febcdbe854850 100644
--- a/drivers/pci/controller/dwc/pcie-designware.c
+++ b/drivers/pci/controller/dwc/pcie-designware.c
@@ -168,11 +168,13 @@ int dw_pcie_get_resources(struct dw_pcie *pci)
 	}
 
 	/* ELBI is an optional resource */
-	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "elbi");
-	if (res) {
-		pci->elbi_base = devm_ioremap_resource(pci->dev, res);
-		if (IS_ERR(pci->elbi_base))
-			return PTR_ERR(pci->elbi_base);
+	if (!pci->elbi_base) {
+		res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "elbi");
+		if (res) {
+			pci->elbi_base = devm_ioremap_resource(pci->dev, res);
+			if (IS_ERR(pci->elbi_base))
+				return PTR_ERR(pci->elbi_base);
+		}
 	}
 
 	/* LLDD is supposed to manually switch the clocks and resets state */

-- 
2.48.1


