Return-Path: <devicetree+bounces-233682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D72BC24BB4
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:14:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8619D4F55B7
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 11:13:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E350346FB8;
	Fri, 31 Oct 2025 11:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="l3Fkzy15";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BTGGtahD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553CD346FA5
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761909149; cv=none; b=rcJLx28H6/ll+TQwBG8qHhf4phud85hcynMK/fK5EeUbYhsKAozM7FT40EhC5Om/PMysdo4v1HJyOqkCr3hGPTwk597Qw1kE1KQ0gOuAltFyD63M/0TdKfVurrD28JPkIwSnzVHWcqfq+e6k+LAKxhnfTjJXzNSONhDVU5UIfdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761909149; c=relaxed/simple;
	bh=Cpg3+E+77cgaN8CmBzJQTZxMkFdRoEwVVkKgFdeA8+8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p8Quie52qQQNXJRVfLNaEsUpoJ5s6KQe9UGqz3+nrmGXxcCaoDe0FZLO2HNjN5ZP9pgSgEFJP93xmzZdPpeVk3dZFaC0UqAY9F3Y//iIoYhSbm+ehraKwqh3rmqONy3XlF3I1bAWhZUAV+iMnUDo+jI4j+cbdjzQuraGh77Zs2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=l3Fkzy15; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BTGGtahD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59V9kOYV1416946
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:12:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GlcIk8VGLe34WMvbqxhiaOvLED3wY6vnyW7vFGcSUZs=; b=l3Fkzy15ESuU4uR7
	Cgfs8CSukRFuCmycic/BfGA1Srr9AIIvLYW+vabob1MrZTOSdEkhS0ZsaYbltDJP
	8p5+TUo79WNasulbvmoBYhETNE0KINz/q85DqRGvCKQt3QpF2OYvKT/iZ+72SFPC
	7kbzALVNonYZRmXmPSKZSkrfDKvAsTnx/5m/p9OhkkmA26JGEW2ZGGEV2y5an0oh
	YxF++wS7AzXjwUJrPN0LTfkD0dRI1LytLInF0FCDUUSVMKGl1mllkS6O+tn+srvm
	lZKj5EgYB5wBzHpXMxBG74GBndeMSQXBTrVm1OZR68SZWJuvo8AtM7V/HibBkyui
	c2ourw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4k69hhbh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:12:26 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-336b646768eso2276207a91.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 04:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761909145; x=1762513945; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GlcIk8VGLe34WMvbqxhiaOvLED3wY6vnyW7vFGcSUZs=;
        b=BTGGtahDVgJ+MZ38Ygy+YMRCIDGSylZVblonq/9c5vJuv7TAI2UkAVB2zOU69rwqMz
         NaCJN4ol/yOQr2B7ruZhZ/ofHYUEsgDFJf6g8J5LswZhf3KToKOMZg91YBpYYbOYoCwJ
         YVTP7vk3xU3lIzhodn2xz6r4eGg9zvNIHk11ZMoMh0EXqQ4LkUq6LV6mzWPQgLx8RKg2
         HGGnkj37/sc54EPy68T0CY9VDW2nTdSDfU7K4M1xj5ORqVCT6khEQNyS/1V6GSaSXgv9
         n+l8yPD/7Rquwti/WfbDeXFqBaoy4h+5pm7gVKZbvwXEWnU/VeX7OyPFsfqksVxlJmTG
         gv7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761909145; x=1762513945;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GlcIk8VGLe34WMvbqxhiaOvLED3wY6vnyW7vFGcSUZs=;
        b=NF/P5ebgoxS/V3JDHixE6qbbxphyKJdM+kT6l7JM9chHxPCE+Lu4dzSLbnRExVYCFH
         anZ7xS5U/q9FtXipV23vYrG2vdvsz5LMSrK4ZVJxi3HJqo2xEeAj5hzqW0+MmEcJPsCy
         s+uLBi4S7XG+mXo2SAdHg7IiReeAuElSkhIK4UZlRLjIVnqzihdcUV8aS7Q6fSQ3MUXo
         Rok+u7R7j1JDIo0BcHVWGpZeD2uiUoTFIegXaoL7IAi8JpgakRz/8yhkcjeBn+ePdqkd
         cTUveEa2ylNp80rvxE5xWPY96AvXqKTspx0sntQbGKSYhnWMjgYdtFUbfXITsEcIOO0h
         34ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCW84+OZwx95wxK59gs/1o2grG5aVrp0njdpy6F4jdFFLe97VC5PHVvqxehTyXS5hEpaenr/YaF54qWn@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1EIJq2mlbLMC3syMTfn1IndJ1ClXPcVxxWYKf7Ow71gGen5l5
	/f+6Fr7mDFvQc8KupFXZhkBYzymqtBHPPi/HFArnNosOOZM3XR/ckQ/TSykLqsKAZ+s7UYJTSeH
	HV5gjWdYG7KGvmNDjTcBpgnRcH5jf3+uwlGo1zPUjz+k65K5L27RslIdo+zgvRRFX
X-Gm-Gg: ASbGncum0Rkb1zNf0zGNtoUfNMQmAfBuL7BlNm5zoU8wFOXwBbBk5+uc+qfekhHoxDx
	63Tc7QTkaPYiRooFX8UxLGUOQSVBVsX4muVO5rUjT6RqPx5G4dNEIUNGgtgnSFVDNsTviqrX9gp
	FS51YOPHB3bKigR3drUJ6g5RX5YyViQkrLlCBN9+S9EjMhOeuKJfOfz0yQsyPP6Hf51iakxulvC
	c4zYgS8qn14mV1M/BcMLVbYAtPAAIKXbuta0LvZnXNYfjZkhYt6ZaY0923ZjaNrnIgD+rDbsLN3
	Lx5syY8Jgntam8q8UYhySfkkBSQ0SZORz3ZIiATc7BgbLzUDXwSJFcgvHeavhJQCrO1OCD1ZwW3
	9GjckqRNsBxUEbjPF6MqZwPR6zNffpxtlzQ==
X-Received: by 2002:a17:90a:dfc8:b0:33b:bf8d:616f with SMTP id 98e67ed59e1d1-34083055a66mr4429858a91.20.1761909145264;
        Fri, 31 Oct 2025 04:12:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2ST7ootNOsSdE4YhU21tYljL3YrKuXc3saWzAqhR06PAK+Ghh+MoVC+hiJ9vhboqoewtliw==
X-Received: by 2002:a17:90a:dfc8:b0:33b:bf8d:616f with SMTP id 98e67ed59e1d1-34083055a66mr4429812a91.20.1761909144819;
        Fri, 31 Oct 2025 04:12:24 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7d8d7793fsm1887363b3a.25.2025.10.31.04.12.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 04:12:24 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Fri, 31 Oct 2025 16:42:01 +0530
Subject: [PATCH v8 4/7] PCI: dwc: Implement .assert_perst() hook
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251031-tc9563-v8-4-3eba55300061@oss.qualcomm.com>
References: <20251031-tc9563-v8-0-3eba55300061@oss.qualcomm.com>
In-Reply-To: <20251031-tc9563-v8-0-3eba55300061@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761909120; l=1221;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=Cpg3+E+77cgaN8CmBzJQTZxMkFdRoEwVVkKgFdeA8+8=;
 b=A2apmLQWjrpCddCAoBMYspOGbY1QIo0TDIIU1w1angVGKY6uhitwrodwrhHFadFXP76rvNBG9
 lF0Z9T/66d/CNKEsVM2Flb0Jry7Ll4C5n6750sqoZXiAgJw3h21j3OJ
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDEwMSBTYWx0ZWRfX82rLgotKsVSZ
 ky1PdORNQzKy1KKoVdlgG6QT2M5r1ZcWfhPhdYKLvuQLwbkjbu4ucfVDKJjidlIYlGFm04A1foA
 BLfkcc4IbbNenD4NbWhZx13RJl1opwayC/0uk/X2tRNrg3D2MFtb29bfFEgwApMgOLSWGAB/q64
 b4Ayv2ZixWO7jfSVUro6ZdIisUTJ9cXId3wXie5Kh7in5Klrn+ep4aZU6yl66g/PMLJnS0OcSv1
 AUzfldRUYizRqStuWliuXk4HI/ph+1TT6fwNJurXxIXYgXACDGNrG5CGgiXxxYb0bhVd5sNYvsz
 Nx4ZqcVPNSD/bixEUNciLvomj0/JQDFBd8h5NWMNEuDGKJ0IfCIcqOVn8ZA0ejyowdF6ExOPZ/O
 dBiXrM20G3687FxOmN9c+9DmbnJfBg==
X-Authority-Analysis: v=2.4 cv=Bv2QAIX5 c=1 sm=1 tr=0 ts=6904999a cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=dSOQ3hK3KXaY1HoqDbQA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: aW6pGaqBamf1U8Nu3a4RTqzFAK3nWF-p
X-Proofpoint-ORIG-GUID: aW6pGaqBamf1U8Nu3a4RTqzFAK3nWF-p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310101

Implement assert_perst() function op for dwc drivers.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware-host.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index 20c9333bcb1c4812e2fd96047a49944574df1e6f..b56dd1d51fa4f03931942dc9da649bef8859f192 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -842,10 +842,19 @@ void __iomem *dw_pcie_own_conf_map_bus(struct pci_bus *bus, unsigned int devfn,
 }
 EXPORT_SYMBOL_GPL(dw_pcie_own_conf_map_bus);
 
+static int dw_pcie_op_assert_perst(struct pci_bus *bus, bool assert)
+{
+	struct dw_pcie_rp *pp = bus->sysdata;
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+
+	return dw_pcie_assert_perst(pci, assert);
+}
+
 static struct pci_ops dw_pcie_ops = {
 	.map_bus = dw_pcie_own_conf_map_bus,
 	.read = pci_generic_config_read,
 	.write = pci_generic_config_write,
+	.assert_perst = dw_pcie_op_assert_perst,
 };
 
 static int dw_pcie_iatu_setup(struct dw_pcie_rp *pp)

-- 
2.34.1


