Return-Path: <devicetree+bounces-251727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC70CF6353
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 02:12:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CF2CD307A546
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 01:11:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57FB027877D;
	Tue,  6 Jan 2026 01:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FNtmA+uq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kgf4kCnm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B711C2FFDF7
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 01:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767661290; cv=none; b=TmKoDitFEcNu4noZZuNPH4dqErSpQ1aXIKRv1vnNDat6sCW9UTbTgj/5ObA2FbuTNWE8OKGh/lJ27/BLPPyXAgBKzzWC6UDoMVkfFGwmxATPcn2QGzLjGevCFmqeSo9Qj41zPbTsK54EAc5+RyVOvSFdc/kF1LS8BmD+XjaH8tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767661290; c=relaxed/simple;
	bh=dsdXZ95EeYH9C3J7omxSTW2//MbnLXvg26+sdstW5a8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RJTHlJnwc+R11BjCQ4+wuWH9VhQnmtKjTKSS+sh7udhBiY07WQrrHy5+f02DgdVEzeZctrqUplctnJdr7ZPRRQlrkG7lHWINTN1lpzZb+KsJa9fGk0eGjIfzWaKyQrLpOZpBbQRTQHjSBOdwtaagnRFuH4vwAtMzMlsbb3RyoaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FNtmA+uq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kgf4kCnm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6060nNre2943636
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 01:01:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GaHFmXFU2LgOEbPPkpReuSY4xCJ4+sCSY2NisbXzuSg=; b=FNtmA+uqDXK2qSBS
	BUWgcuR3OppC1hKq3nWeBpTUXK2T71UtYJ153i/xIEdbjpOBSlBElqSkfok6IUUk
	KoVA0XQ9sC3PUqboONYiMsz3575kuXR9XQ+G42Jmn0vzcEy6JL1pzQHC10Pcwjbm
	3lm84sMxioth8bpYw0BwhsxrWKSIZWYmmmF1xlKUoPyxwB4LuAdZ6TBZxMrtt2qW
	Cpcn4fG20r8MMhitTzewqb9YWMYMga/g4vGl23tYeR2ZBYMC7O6AaX9LfaPR0I86
	ps+zRRoeK4C76VlnfjnrTj7SDESx7BT99udzguI4W4jp7S+fzHWmn5Kuxyn2N0MF
	DwzfGw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgfv01ewc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 01:01:27 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88a32bd53cdso16831776d6.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 17:01:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767661286; x=1768266086; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GaHFmXFU2LgOEbPPkpReuSY4xCJ4+sCSY2NisbXzuSg=;
        b=kgf4kCnmDKT+i0KmPOr7ZGIWFoiEtbxsOUhaOZk+gImN4PjWbSngKj6lzh7rPXz14T
         fkv2jMOQcykVR1nTDW+8vhmHM05omT2PhVgHQm/8swMgTaz6zSGXD0qWgIDw+g7dabgb
         QZhhtsklJYHe9L5sO/0yJDnVivHOv58JasGGS4XgKTmfUhRn+1qv0ekBytck8vJ6cxAo
         CD3nCy8XTTkjcdH4hT59V8rWNxxk9ty6ozWcjYfmi2lnY7kwct0gEAIl6FpGk8uhKquW
         dCx2MkZ5KwB6hLwmpixllbDBq89jCaSyea9hKksDlMdVjVe3jzXrl41hfp5p+hlZ7uLB
         OQSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767661286; x=1768266086;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GaHFmXFU2LgOEbPPkpReuSY4xCJ4+sCSY2NisbXzuSg=;
        b=ZncTwX7WOEvjI2n6+UsIzCS+9Fgpfzp/ev05MX+wY7YHYvKHDqEThooHPtAZO4PfTc
         Q0/9YtUYji8dLEF+K5rOHDQQWq+5al1bIxBVX67Clc0T4QOU04StSiHW/kIPxDTYnBaN
         8ONsbEJNwRqs0usw/CY6RXUzHyYjNXKTZz1at5oqpCtq6dl3eY+CcJFQsxHRdKSXMqVw
         RvBrEfeimAENugYjyVRCOXBtJYSlP5T0DeIVvP7PRbCjGwGRwr5DlwhN8ToCBh7Fp3d7
         9BE3nVo3imfNe5qG/jsh/x4qcWzwFA9e5vzzsyjUW4VbNqtprxEC210WUfxUsKYft1wd
         cDyA==
X-Forwarded-Encrypted: i=1; AJvYcCXW7x8NQhd2kn9GarfEmpkHACKUY2LZBOZJDba3WtZIjUZj/a8yrgvQjMjYa7kGpcA8/guc1lDUcS/j@vger.kernel.org
X-Gm-Message-State: AOJu0YyrwsgDIX9IJ0SS1EsIZTjgAt9gqjQuuD1SdbwUJfWYlnnvJlrU
	ImrFJtQLnrNZkJali+e+cJi+7cqcKGboMUjXC+8j2f7DLHFFhKpGsL4dTsas7X4hkV3N3H1R7xQ
	b3otSLzNfLI4eyuE82ripTJVmxgr5P0RaIK7YeYOH/uC/S4tE8W+d/Y6JNhKdl29K
X-Gm-Gg: AY/fxX7NCJ/ZCNajlP31/oN2Ka5kmNY37yWGsuzWPwyN0xAkuDCt/WvF2d59Og9M3gm
	kF7LcA5wzFzMCF62XyUnLNz8dgxyPMZh6FlQig1ULQlQAJn6/+Qa2k7OMYjCoJkcKM5DWThu3nz
	HFYwBehPVwg7b4JhWTqAqWAqIfyvodINK1wcKTkm+NSXsKulBGWIL224fUKbeCh+sjEOIU9/d2Y
	v+jwDDnHSVbgzTeXf2T5+C/l4qugMT6kiCSwFimN3Y9iE4kLTBam2A8sR4AZy9H1l2gK+5k0ZmR
	+NszZoxvC4xDaG6eUV4MV2LHk+fiba5nL9kpT7c/cRFpreCZHdgcepCqVg4jCCy66iynHtg9hx4
	MXvKNjSdErpynov4CjSY6w07lJk7KagdsDpdL7hYLjcEoq6dCb9pJ8b+MoqQQtmW73YfxTEKlBe
	LRMM3gIOYxPbXPUfotuDtWAYw=
X-Received: by 2002:ac8:5d08:0:b0:4f0:22df:9afe with SMTP id d75a77b69052e-4ffa77afd7amr21506491cf.51.1767661286384;
        Mon, 05 Jan 2026 17:01:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHs53x/m4TYSBTf7oNnfpXpWQiTG4FUqY7QH3p2oA8FkA/fqepE9/ee56v4AUWgte/Y03Kz2A==
X-Received: by 2002:ac8:5d08:0:b0:4f0:22df:9afe with SMTP id d75a77b69052e-4ffa77afd7amr21505131cf.51.1767661285458;
        Mon, 05 Jan 2026 17:01:25 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65cea8b1sm181082e87.6.2026.01.05.17.01.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 17:01:23 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 06 Jan 2026 03:01:13 +0200
Subject: [PATCH v2 03/14] Bluetooth: qca: fix ROM version reading on
 WCN3998 chips
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-wcn3990-pwrctl-v2-3-0386204328be@oss.qualcomm.com>
References: <20260106-wcn3990-pwrctl-v2-0-0386204328be@oss.qualcomm.com>
In-Reply-To: <20260106-wcn3990-pwrctl-v2-0-0386204328be@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
        linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1411;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=dsdXZ95EeYH9C3J7omxSTW2//MbnLXvg26+sdstW5a8=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpXF7YJdQaWvZTNPcWs2gdp9XunrWj6EarCWIme
 3YqpUhN4W6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaVxe2AAKCRCLPIo+Aiko
 1cTICACDFkWrMGC3XZY++CL+qe3yvTY8ryAmNeucwr0WK34X9AKvFdmwRsb6nQ3xCCyBuf/Zxrn
 LrU5qZ7i8x6M3QXeiHcWuEJ55n2SVVjslkCCSKRHJNSUtXZl5SzJ95eOwU4EHRRjzTiY2XpHv94
 fdzBvHkP9YoJlKY/OJFfDFHt4gCOnVZYqNMnMd6/BP+l52Jwst0YJVYLBZHubi1eb+GZ24dOHh9
 yJ0XVU0rS2ENYJj4BE9SpRR/HKSI574v7NDOmJEhtdWhrajQKiEv/iutve/w5HbftIFoRipT6nc
 owAWMs+FBiKwb+rGVEMGBWHljRYcQSGLPf4wK2jfRlAJzbcO
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=e9YLiKp/ c=1 sm=1 tr=0 ts=695c5ee7 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=TaVSYX7Pq2PjI-6xwy8A:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: scNgfutWIuMtDJ29AUjMrIn_8qLZ9ubE
X-Proofpoint-ORIG-GUID: scNgfutWIuMtDJ29AUjMrIn_8qLZ9ubE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDAwNyBTYWx0ZWRfX7+PgNMxHrcDR
 5/udDKy6kBAEysAqZ2bsj4DPFICsdMgWdtEy+OmYccRp9TjDMsITqgNOtzPzlxz409O/6AkR/0L
 aFsqRvtG53xOf+nfu9EL0nOjmny1xGXFoPqMhuPbYmZgZ7h9vyz9YEXUm/94RVBj6hx9tUqw9v0
 BBnoIgvyRowXhaLjDB40zgZ3c8zMdL5xLmQqb+uf1ORD1Q4VyKbLe7OyGS+6ltJvTxn7rFzPa1I
 MHB1nB6O/DoYoMm+3Le4N604VfpJqe1EGqwZ8GuOmN+XVPXwjoLL9R7ppK7gkbEckLa2/Vo424W
 SOFFx1wTtEnzZVNMT8H8+ZA/xziP197Pstr3PWF22a+1BF5C+hLgh9bXOHtLchAsI9F/xJMS9sk
 x/vT1FZpOmEdHaify7NJNJMNRwNYsOwcxivgiWtnR6Fof8NZkGG81B7k6FOyxt5oFgyF3g6Dkvj
 dFyq8gHhsiR0n4UloIg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060007

WCN3998 uses a bit different format for rom version:

[    5.479978] Bluetooth: hci0: setting up wcn399x
[    5.633763] Bluetooth: hci0: QCA Product ID   :0x0000000a
[    5.645350] Bluetooth: hci0: QCA SOC Version  :0x40010224
[    5.650906] Bluetooth: hci0: QCA ROM Version  :0x00001001
[    5.665173] Bluetooth: hci0: QCA Patch Version:0x00006699
[    5.679356] Bluetooth: hci0: QCA controller version 0x02241001
[    5.691109] Bluetooth: hci0: QCA Downloading qca/crbtfw21.tlv
[    6.680102] Bluetooth: hci0: QCA Downloading qca/crnv21.bin
[    6.842948] Bluetooth: hci0: QCA setup on UART is completed

Fixes: 523760b7ff88 ("Bluetooth: hci_qca: Added support for WCN3998")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/bluetooth/btqca.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/bluetooth/btqca.c b/drivers/bluetooth/btqca.c
index 7c958d6065be..86a48d009d1b 100644
--- a/drivers/bluetooth/btqca.c
+++ b/drivers/bluetooth/btqca.c
@@ -804,6 +804,8 @@ int qca_uart_setup(struct hci_dev *hdev, uint8_t baudrate,
 	 */
 	if (soc_type == QCA_WCN3988)
 		rom_ver = ((soc_ver & 0x00000f00) >> 0x05) | (soc_ver & 0x0000000f);
+	else if (soc_type == QCA_WCN3998)
+		rom_ver = ((soc_ver & 0x0000f000) >> 0x07) | (soc_ver & 0x0000000f);
 	else
 		rom_ver = ((soc_ver & 0x00000f00) >> 0x04) | (soc_ver & 0x0000000f);
 

-- 
2.47.3


