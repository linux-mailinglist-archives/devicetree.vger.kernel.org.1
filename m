Return-Path: <devicetree+bounces-127551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 583C19E5B7C
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:31:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 501BC1884ED5
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 16:31:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16E6921D5A8;
	Thu,  5 Dec 2024 16:31:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CjfHJBMF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B30F1D4332
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 16:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733416310; cv=none; b=MiqrKemXkWCJxeIvkFW+5vz6uP64CgxbK17XqR1l5A+wVWP27PdRzzk37giO1M+b4zT7/myppwEpXD6oCQQmVFrzJnqOiovvaGnvvU61r0ZWahzshmLYnjiZUntg3ZIIB/D7TwWZYoml1wkCyNe+twbea0Q3Zo+li8gptGCsan0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733416310; c=relaxed/simple;
	bh=J3ESyanQrh2f4eFh3WJ4pYGGoFIoFUQGqxlSoVenKuo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s/s1IYGxCt3h9rg50vmAaYqCKpNvrEsSF7d1OVa/+PNZ0/SPiPyxY86noGTqnWVMoqdA9M8WL5ZvmbE79+CZiENANPyYU4H8+2ZXjRqu7STjDSAf//XzdLfyBnvD5Ule8qZ2/WyG4352UNZHL7gi50i3ZN5ulkeAN5iM1n5ZHms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CjfHJBMF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5GP89B006572
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 16:31:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OO3PETOsyEKUmVhcQ82jscTslmU61XklmW+TguqESPQ=; b=CjfHJBMFUQDYgcWu
	dbdvJhA6QcbkojJBpqdlxbcG+BycUGL7rRj43yoUCi6vDh00vJKL9XRAOee2eC10
	BPJR2HAqaKPhTs7frhroVh9U6rj1WjLex2T2JIEU/pHHb9xd10swNo5Ad2yb1dzN
	NPbEH23Ea8Im7ne+nGwkMTIQlLQwU1rZiB+veQPTFP8MLgGxtHZ1habswNJPInHm
	D7d6QPcey63fWlyzxpEsWEZFu7CoVzFxyUGF2VhEWW059Fsht55IlffnqDyTVrld
	n/C13IbvcNqzEFZjKDRzZ1jQvtReP8odynHXyYnt3zqtZTTsSiW+ahJ/DUrRLLEk
	bfIXmw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 439w3er7g2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 16:31:47 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-466c4b8cab2so2854421cf.2
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 08:31:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733416306; x=1734021106;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OO3PETOsyEKUmVhcQ82jscTslmU61XklmW+TguqESPQ=;
        b=lMPS96copMS0xQhLpYBRD26COd3ibXKoWvhSNJTh7vlArEd/jKjRIzh1EqkouIwCjN
         xchI4DjD+t//k5riP5uR1NRHUROeRdHHfICRjxES5ekEb0oW9vkS3/q3+VQNxOG27Wo1
         Y85Gd1VgdJCq2sPu28UxMkAA8nDUlWYi6IFZLCw5Q8PQQrIU2UxKIYVnHKZbAlGWT1cZ
         Ov2PrFkssLmOsEtj/qr1I5kzmtqGbJGTSZ435/1JZfXcPlKaPw73W/abCvTY2Vsc99ZC
         6nG/cZCPruOv2v3JUPRPE/ceGhpB7d4JQUi45XEwfNGsSV9W2osy5DHPP5NVcqXfQ/Px
         hGYQ==
X-Forwarded-Encrypted: i=1; AJvYcCWDYmvSLWJSX4DewuEGnsnGSD7aSa7dvIC3wyIMBPBEX8GVNSj7ITr+P7iLG06xfnfb0/aTplxUU5BP@vger.kernel.org
X-Gm-Message-State: AOJu0YwYcEC20PWejibp4JAijlwawfw3AKgz4ql9Hd3tLWizXtdI9rNS
	xw2zddP/MU9wf+JJYVVRVW3uH88cGjz8Cj20fNaAZoWKLEOiKy1ZZDkXF4jUC8h8cXR0ko4W4Oy
	4v/P8BIHt89T1X0RISXD0/xMVjk8ZPagzNW/EMMAjQuuBjsnBmb1HPl5MYbDh
X-Gm-Gg: ASbGnctLz+vb/CRKhw9Z940pRG4qEs2Sp9qRK3redTKIT/E9DZ4Cc2u/e8v9dHDBOsf
	t/9CmKe4sGCjuvSwVwPMKWTX59Q2qGO/hdpqrA9svVrvNnIpHr5MTovoKibIyRecZ4wWkefUICL
	zJ8cX/xYTb6EcWVy14+yONd66e6cXP05Rk+3ERPNzqMlg5XL0he7BTlgjMVGZM15DD3XRETeepO
	83910ZONAVivekxXkYNtVXUQKmxhrIssfam8uCFisoyYAk2DxdLNBCO8hdP9v61AzjkOEYzFkCI
	2R4qOWO9+vf9medu7p9KTXCS6iE0gu0=
X-Received: by 2002:a05:620a:46aa:b0:7af:cd2f:fc16 with SMTP id af79cd13be357-7b6a6ac4315mr640243385a.0.1733416306261;
        Thu, 05 Dec 2024 08:31:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHn4mO82urP0n6y4ICtJcZOXowWIRkawjXqvzOlQIsjvcyJPdkawu57/eeRUH0GNZ13RwBadA==
X-Received: by 2002:a05:620a:46aa:b0:7af:cd2f:fc16 with SMTP id af79cd13be357-7b6a6ac4315mr640240785a.0.1733416305903;
        Thu, 05 Dec 2024 08:31:45 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625e4dc68sm115325466b.23.2024.12.05.08.31.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 08:31:45 -0800 (PST)
Message-ID: <783bda0f-5d51-43e2-8923-a01577a4296d@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 17:31:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] phy: qcom: qmp-pcie: add current load vote/devote for
 PCIe PHY
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, dmitry.baryshkov@linaro.org, abel.vesa@linaro.org,
        neil.armstrong@linaro.org, manivannan.sadhasivam@linaro.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20241204105249.3544114-1-quic_ziyuzhan@quicinc.com>
 <20241204105249.3544114-3-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241204105249.3544114-3-quic_ziyuzhan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: JR1cv2CUyJ0GIQB7IooJ4wzgf8LJ5rES
X-Proofpoint-ORIG-GUID: JR1cv2CUyJ0GIQB7IooJ4wzgf8LJ5rES
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 bulkscore=0 mlxscore=0 adultscore=0 priorityscore=1501 mlxlogscore=999
 spamscore=0 malwarescore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412050120

On 4.12.2024 11:52 AM, Ziyue Zhang wrote:
> On some platform (eg.qcs615), the current that phy consumes will exceed
> the maximum current the regulator can provide in LPM mode, leading to
> over current protection and system boot up stuck. Fix this issue by
> setting regulator load to an expected value getting from phy device tree
> node during init so that the regulator can scale up to HPM to allow a
> larger current load.
> This change will also set load to zero during deinit to let regulator
> scale down to LPM mode to reduce itself's power consumptionif PCIe
> suspend.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 35 ++++++++++++++++++++++--
>  1 file changed, 33 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index c8e39c147ba4..782d51ab5cf1 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -39,6 +39,7 @@
>  #include "phy-qcom-qmp-pcie-qhp.h"
>  
>  #define PHY_INIT_COMPLETE_TIMEOUT		10000
> +#define MAX_PROP_SIZE		   32
>  
>  /* set of registers with offsets different per-PHY */
>  enum qphy_reg_layout {
> @@ -2905,6 +2906,7 @@ struct qmp_pcie {
>  	struct reset_control_bulk_data *resets;
>  	struct reset_control *nocsr_reset;
>  	struct regulator_bulk_data *vregs;
> +	u32 *max_current_load;
>  
>  	struct phy *phy;
>  	int mode;
> @@ -4087,6 +4089,17 @@ static int qmp_pcie_init(struct phy *phy)
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  	int ret;
>  
> +	for (int i = 0; i < cfg->num_vregs; i++) {
> +		if (qmp->max_current_load[i]) {
> +			ret = regulator_set_load(qmp->vregs[i].consumer, qmp->max_current_load[i]);

I think it's better if we just put this info in the driver, like with
e.g. the DSI PHY

Konrad

