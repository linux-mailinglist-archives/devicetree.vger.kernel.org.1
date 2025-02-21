Return-Path: <devicetree+bounces-149383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F0AA3F350
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 12:50:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38AF916E398
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 11:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3D71209F22;
	Fri, 21 Feb 2025 11:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M61dVp5X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9B42080F5
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 11:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740138601; cv=none; b=C0/SpFw2lWKTfFRDBFKjgmutXogGg1Uug5aXJK8n9yZwI8qiQVRBfY5H3N07PIF60ejd+yE0tp7rJ9TF+b+F1NOPmekVDrzTRVuC6xkQ1sx53xOGyJ/bC/HL55Xd4l+1+V6KAkGpX4Fl1IytkKzW4Y89tFSd52W3VyGdBj9JFJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740138601; c=relaxed/simple;
	bh=kTzUljDZfO4SYJEnW61vBtVvH4VVgI26rpadfVxj8w0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lADSHfmrRw6JqFjr+wCN1MdGJgj031uwzLam4hTByHGj/dat19xVTAUOSeqajnRMJGBZ6tsEqe4xkVdpuHYNDJeGrvDfWCZQNPhnuJd73eAeG/vjkHKmYTIqPOCKzySbocoWD0gRt1NQsTdd614Fcsk0Yul7NnRB94mr7cOqcFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M61dVp5X; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51L5jYSc011610
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 11:49:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DnXDRqF+7jHzdDMYeLb1GVbJJ6rATcvBORv64B0RqgI=; b=M61dVp5XtBGhkkwp
	8CbLNOfzXQrnd53lUnvvdMVNlkywZ/HhEYrfQN3qR3owj5i+8x3eS4oozFoHw/z6
	+wYDslBszqHDV/EQLZ2M8QPbZ4Odk6axqOHlY7PmBAKgp4RKn2up5hCXI+5RHO4Q
	86j0pwVN1uKvCgZh/EYhuqYF7As4E5PhIbbwW6TJdX9PmBKvauGWKnt7X2ITDgRO
	J0tlfsLiMpyP3RRojHlDYHKG+fGSzB+JJoFarZ8BADu+Rl/jvoltCs8gbnk08s91
	U9D6hrQqTcOgx8kpZiKyGrmvD5uc6SKAj/FeT8bJ6KBVEDlWVhls7levwHJiP9O1
	HCsxFQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44vyy3sswn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 11:49:59 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e665343a70so3198766d6.1
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 03:49:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740138598; x=1740743398;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DnXDRqF+7jHzdDMYeLb1GVbJJ6rATcvBORv64B0RqgI=;
        b=I0dg6W8S2Ta2LILHTKuFe1L58z2uFwS/42yNLbS6gFgbxGmmvTZjYvSW0BclqFvhbZ
         zEJRZEQn4TtssermBE6a7/JORyl8qHudqWP6nfeS3C+oB/1rxm7F+N4bd2NDVTDDo4u2
         ZRRCuvppyzlxFlpr49m06GbCetPXRWBz1x+II/wWNfWMTWcxYpoaz0vKtNsv3x6YPGaQ
         bSjHs+vmpdfoZhU7TaM3IcG0lI2zx7IsI9pRLNsfxYa9mA6yj2FIQ5bGUbf9c/V6PcOp
         BQ+7L8ccDDMCZs1q8XQvjcyXPg4zQZNV05F+0Rs3X1sXu01nYqL3pjqieHS1Vn5O6QNC
         ilRw==
X-Forwarded-Encrypted: i=1; AJvYcCUakmxkVTZsetCDYh6F85ZgZ2ZUQWzHHMnXk/6qhQJxt04Y1v5mGJSovOFsevIVhYL0hobkgzzadzzb@vger.kernel.org
X-Gm-Message-State: AOJu0YzfCNPrfq3Ky/X4/YSDYYqYgHs81VMEOnnjhmOi8rL72/Hm2ymf
	qTi3n1zE6nZqUc2APYeH9UP/ALTpO6mtesnS+oc7/R/K8Hvgc5eDoPhEfWXJhkMPZFThE+L+BmD
	WaacxrRHpKrxcf4lHCG+FWgZqX3584tYub/ks7FCmlOJPvgY872y1wnbr/ko4O6PeTBf0
X-Gm-Gg: ASbGnctM24Nik9oa/ZxyO2USOFsl1IVh2w+jP6ih12rXvVea/UYZY3WpkN3A8+D9an9
	vpozkghQKiSnLYscdZfBOT41s3nb4h0UY5QAiVzC5IPS9Ujk94C9jaUx792kjOjLp5xyvE58e3w
	sy9zV3OGoZhey3StpQs6o44egj3ChF287hZCdkEeUBrDHF2LH2LFjolj9NwvqDR1JFd+1Qr1n9z
	RwXFhgDbEpcygKP+OOO15ndRtacl2xWuGwzaWqyURpdwQ49rLj3yZi7N+JNff20nnjeFYC+dJ0p
	6ubLmLfwSTb9ahFbGxANzlg421E4OiTqOozxJjOPRPbCgsK6ZdOpsEFaylntdhWzOC1qIg==
X-Received: by 2002:a05:622a:3cb:b0:471:f185:cdda with SMTP id d75a77b69052e-472228d9e7emr15401601cf.9.1740138598203;
        Fri, 21 Feb 2025 03:49:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGz6tjScwFqnyjtrUPjnhi+ssj2b9sF0tanjJCBHYaWqQMsLgwvd3nnPdcpK3+hrUaFc9rY+g==
X-Received: by 2002:a05:622a:3cb:b0:471:f185:cdda with SMTP id d75a77b69052e-472228d9e7emr15401471cf.9.1740138597834;
        Fri, 21 Feb 2025 03:49:57 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece1b4f59sm13554823a12.6.2025.02.21.03.49.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 03:49:57 -0800 (PST)
Message-ID: <3bfe9a79-517d-4a27-94da-263dd691ec37@oss.qualcomm.com>
Date: Fri, 21 Feb 2025 12:49:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 4/6] clk: qcom: Add NSS clock Controller driver for
 IPQ9574
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de,
        richardcochran@gmail.com, geert+renesas@glider.be,
        dmitry.baryshkov@linaro.org, arnd@arndb.de, nfraprado@collabora.com,
        quic_tdas@quicinc.com, biju.das.jz@bp.renesas.com,
        elinor.montmasson@savoirfairelinux.com, ross.burton@arm.com,
        javier.carrasco@wolfvision.net, quic_anusha@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20250221101426.776377-1-quic_mmanikan@quicinc.com>
 <20250221101426.776377-5-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250221101426.776377-5-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: -rSkTBy7SzBdny6CHTJaW_aU7z56SaC6
X-Proofpoint-GUID: -rSkTBy7SzBdny6CHTJaW_aU7z56SaC6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-21_03,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 mlxlogscore=999 bulkscore=0 mlxscore=0 spamscore=0
 lowpriorityscore=0 phishscore=0 priorityscore=1501 clxscore=1015
 malwarescore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2502100000 definitions=main-2502210087

On 21.02.2025 11:14 AM, Manikanta Mylavarapu wrote:
> From: Devi Priya <quic_devipriy@quicinc.com>
> 
> Add Networking Sub System Clock Controller (NSSCC) driver for ipq9574 based
> devices.
> 
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---

[...]

> +static int nss_cc_ipq9574_probe(struct platform_device *pdev)
> +{
> +	struct regmap *regmap;
> +	int ret;
> +
> +	ret = devm_pm_runtime_enable(&pdev->dev);
> +	if (ret)
> +		return ret;
> +
> +	ret = devm_pm_clk_create(&pdev->dev);
> +	if (ret)
> +		return ret;
> +
> +	ret = pm_clk_add(&pdev->dev, "nsscc");
> +	if (ret)
> +		return dev_err_probe(&pdev->dev, ret, "Fail to add AHB clock\n");
> +
> +	ret = pm_runtime_resume_and_get(&pdev->dev);
> +	if (ret)
> +		return ret;

if /\ suceeds

> +
> +	regmap = qcom_cc_map(pdev, &nss_cc_ipq9574_desc);
> +	if (IS_ERR(regmap))
> +		return PTR_ERR(regmap);

you return here without pm_runtime_put, which doesn't decrease the refcount
for core to put down the resource

if (IS_ERR(regmap)) {
	pm_runtime_put(&pdev->dev);
	return PTR_ERR(regmap);
}

instead

Konrad

> +
> +	clk_alpha_pll_configure(&ubi32_pll_main, regmap, &ubi32_pll_config);
> +
> +	ret = qcom_cc_really_probe(&pdev->dev, &nss_cc_ipq9574_desc, regmap);
> +	pm_runtime_put(&pdev->dev);
> +
> +	return ret;
> +}
> +
> +static struct platform_driver nss_cc_ipq9574_driver = {
> +	.probe = nss_cc_ipq9574_probe,
> +	.driver = {
> +		.name = "qcom,nsscc-ipq9574",
> +		.of_match_table = nss_cc_ipq9574_match_table,
> +		.pm = &nss_cc_ipq9574_pm_ops,
> +		.sync_state = icc_sync_state,
> +	},
> +};
> +
> +module_platform_driver(nss_cc_ipq9574_driver);
> +
> +MODULE_DESCRIPTION("QTI NSS_CC IPQ9574 Driver");
> +MODULE_LICENSE("GPL");

