Return-Path: <devicetree+bounces-141158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38ACBA1D952
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 16:16:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 36D2A7A3C6F
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 15:16:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F5548837;
	Mon, 27 Jan 2025 15:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lRybVIDH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099C619BBA
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 15:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737990999; cv=none; b=TrMNNvZPmyQf/0QzNl7TzoIBB0NtofbooKxiMB8c/ifOKPycgEuFs4gIqM100WdzKRocTi2SWWhqjWqOtzLsVHeBgAvKgIS1kn4Has27zTH0Zf9t+DrjVS4z720e7OZ3D08gMQ+UcYvXfdIVSLW72zZL4Rp5sQG2mp5IZNOgyq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737990999; c=relaxed/simple;
	bh=XXWwenXnSMIfC4eeFgueYgwPm2Um/6LbxvB2XdF7djg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=DlKL7xMw4EHGRdnLM40HOpBIl0KdYcHYLhAWduKbRqWT0PWuo4YpPBcxMocFmduI43j53MY7YJaVP4/mg/C6U8VjmXEaJs8M3qQZr7R3DKTWk4hSRkJbEgEjNNZe2iMmH0NpdVra5BNlHe+2DS7PcI3uVfRCVI3E3HvQRIYT2C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lRybVIDH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50RD3Vph019452
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 15:16:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eiOVlvy8O2sljdqhnTACcFcT/c+BYziyN9TVv9igCSg=; b=lRybVIDH/erv8Rke
	Huf178CITEZwh89jtxljjRNIzq6MtfNnY4DVt2h63q73kCiKDAD/gTfsXj+FB+Uj
	pRbtnxm1o92a6I+EFD3TM09Vl7nAXJuH6mKMZ5PGytMUDTvq+2CAZuF1SYuMOHAJ
	3CXyD920lvofbQB5GAEUzG5ZirwLhTgj/puBfkJ78x47kTAiGvsiitML7n/CuW3c
	MFnJ9bhqy8rx+Z5eo4VWGUIKTRuBQZE3Di5UNlz41238pNf3f9R1k3OZGYZUw3ZT
	sjp7NRj0cfSNM5IKTMushd+UqASJL0axMZz1mxgfknjiaetChpWnxHoIKfIDhw6L
	b/jS6g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44eapq88x4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 15:16:37 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b71321b993so63033385a.2
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 07:16:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737990996; x=1738595796;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eiOVlvy8O2sljdqhnTACcFcT/c+BYziyN9TVv9igCSg=;
        b=smSXlKmwlq7rlMI6epMfanNeLbs5juH8sr0jDcpcPqQ9ifdOSzYm8hZcqbZkoKNFcv
         ysmrQi2j98Q8Ip49xS9ufuA2RZg/QG229QKDNsBj1GurdzKLXKpGAS3lkBfTZorvYjDR
         bvmIoAk66Tp0dvMNjz9iuiaCzYFfwspsFMwqUUTuUg9bYCgeSjU7e5OdPZEizRbUt5T1
         P2DRtY61zbLBSlkQWD3XGcLd7aThl9StT7uJv6vwwdiwlIK0w/hNV5+Jr/RmVhb5bOGU
         qSlIXD+62wIrvPb/mYqUkWMAlt/6Q3Q89pn4+QD4YSF9OqDB8EI/bYYXAtjRpjoyls8M
         HXIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlm0VZNtNwWxI5eUYvC3mKMQbbUTAjE4Jfk27Txrs8jlpGlkzyI5szxioeW51yPWyvqOU2hvlayuua@vger.kernel.org
X-Gm-Message-State: AOJu0YxBC3b+dr6epXMoSv+gQQw5NAw0RNHDoL3cbXQHJoAC2zG5kUrV
	08jN1EorWwXpyltltajcFXNm2DGyLsEiKQHS8A9jbqenmnOyYciWIClqxTIeWYoHVXE4ZqKoVFy
	jbs7sCoJqKKWH1OclfTjQZhzaa79vwqUdaEYx3CRD+K7CpTcYaTPI/TTkFdvy
X-Gm-Gg: ASbGnctryoWxnCnOdRkN+tD+YMUcvw+u0QLuOLy0p+VLXiiBgR5FxmvTPXT9eQKIEgQ
	xHr1u6ja2kDsEkklp21owo03Iqxtccm7aFzJHkHa5pwRmhAFrmgT0PC+K6aValHZd/TfA6QEqdx
	3UL9o7XPlGIaEc1476/wtln4VuhZV/7fX0NYZrqC4Cka7rsXpHAOK2Z5QiktH+CE1pqyRs8G44R
	aoTbXcTbPRg5nC9u0W+vgdOQTCJylUAhqiX0TVU0aUNcb0D3dmZUNssqYJZ70AkHfmUldShNc9Y
	Wl98Bj/32G0x194/zm/Hhma+6IFv0V0eONyikqC3hDelky8vey+/7NMxPpM=
X-Received: by 2002:a05:622a:1a23:b0:467:85f9:2a67 with SMTP id d75a77b69052e-46e12a940b8mr232903621cf.8.1737990995890;
        Mon, 27 Jan 2025 07:16:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHHbQBaClGLDjf47vJiIgHk5bysqAnHMsfctaPHSAVkHPdBSwDmwLdwjqjUQMvLgQ8TfbrmWw==
X-Received: by 2002:a05:622a:1a23:b0:467:85f9:2a67 with SMTP id d75a77b69052e-46e12a940b8mr232903471cf.8.1737990995484;
        Mon, 27 Jan 2025 07:16:35 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc186b37b6sm5388019a12.56.2025.01.27.07.16.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 07:16:35 -0800 (PST)
Message-ID: <60d02c55-0d18-4704-9126-8b8ffef5bd68@oss.qualcomm.com>
Date: Mon, 27 Jan 2025 16:16:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/7] phy: qcom: Introduce PCIe UNIPHY 28LP driver
To: Varadarajan Narayanan <quic_varada@quicinc.com>, lpieralisi@kernel.org,
        kw@linux.com, manivannan.sadhasivam@linaro.org, robh@kernel.org,
        bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, p.zabel@pengutronix.de,
        dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250127072850.3777975-1-quic_varada@quicinc.com>
 <20250127072850.3777975-3-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250127072850.3777975-3-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: RxNqTTRH74huq79y1WutsFBjg1C65hRd
X-Proofpoint-GUID: RxNqTTRH74huq79y1WutsFBjg1C65hRd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-27_07,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 malwarescore=0 spamscore=0 phishscore=0 adultscore=0 clxscore=1015
 mlxscore=0 bulkscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 mlxlogscore=999 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501270122

On 27.01.2025 8:28 AM, Varadarajan Narayanan wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Add Qualcomm PCIe UNIPHY 28LP driver support present
> in Qualcomm IPQ5332 SoC and the phy init sequence.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

[...]

> +	usleep_range(CLK_EN_DELAY_MIN_US, CLK_EN_DELAY_MAX_US);
> +
> +	qcom_uniphy_pcie_init(phy);
> +	return 0;

Please add a newline before the return statement

[...]

> +static int qcom_uniphy_pcie_probe(struct platform_device *pdev)
> +{
> +	struct phy_provider *phy_provider;
> +	struct device *dev = &pdev->dev;
> +	struct qcom_uniphy_pcie *phy;
> +	struct phy *generic_phy;
> +	int ret;
> +
> +	phy = devm_kzalloc(&pdev->dev, sizeof(*phy), GFP_KERNEL);
> +	if (!phy)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, phy);
> +	phy->dev = &pdev->dev;
> +
> +	phy->data = of_device_get_match_data(dev);
> +	if (!phy->data)
> +		return -EINVAL;
> +
> +	phy->lanes = 1;
> +	if (of_property_read_u32(dev_of_node(dev), "num-lanes", &phy->lanes))
> +		dev_info(dev, "Not able to get num-lanes. Assuming 1\n");

return dev_err_probe(dev, ret, "Couldn't read num-lanes\n");

And please make num-lanes required in bindings there

We don't want silent fallbacks in such cases, as it's easy to miss those and
e.g. ship a product which would then run the PCIe link at half the speed

Konrad

