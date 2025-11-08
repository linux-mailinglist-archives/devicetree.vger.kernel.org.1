Return-Path: <devicetree+bounces-236345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 19597C43274
	for <lists+devicetree@lfdr.de>; Sat, 08 Nov 2025 18:46:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A15801889684
	for <lists+devicetree@lfdr.de>; Sat,  8 Nov 2025 17:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 204242566E9;
	Sat,  8 Nov 2025 17:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kqaV966a";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NY6/HBUn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BE0086347
	for <devicetree@vger.kernel.org>; Sat,  8 Nov 2025 17:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762624002; cv=none; b=a5wpBR3Xxg42jvaWH7/w3EYn7v5i8zcSLiRTbFVbWQXNlsokHkvGhazMNDFiTj5hi2Dnb5JU9LRoJLVpBgkys93T37rZ+9J98uHzpDKgSvxNVZm5gC6gbcymorqbUQO3cP/7qeIP2Py2mQzWxol2lrASzaeNFbFkxFDV/+ZNGRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762624002; c=relaxed/simple;
	bh=+ZUsB5M51qDmuvpf3r45CIqwqV+m3ss8PCxlWPkYE2A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f2FYZibZx3ErZbTUkIut+aeKk0yXwZswxcg8GkMEM2a8JDBRE1Isy8nPB+DHQ2cF1APzSL91dklbjfOgcD2bXDsb427OgIVRyMab+4SK4GUip6+5SZj2wbhq+0vsJAnBOhgAzimW22OTd8X5p3iRwZ4PAnU3rnYQcLohUSkBQrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kqaV966a; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NY6/HBUn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A8Dvclb1961875
	for <devicetree@vger.kernel.org>; Sat, 8 Nov 2025 17:46:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+xrystILNHZkjAAh5vxxqwIr
	I4Y2QLvNADKRQLrs180=; b=kqaV966a68Y/fYw1+a+MB+ggm42f92SirHWUuS/D
	9YI3LHl4607ks/hyQbQt048+BfaI+3+cynJ8vavtD9Uc8GRfUz/O+RkaiEModCaM
	yB97+tgny4mbgdsVY4fhwLutIoNgsXBxPDHc1jottQzsJc6WWw3M6VezfTayne5/
	nBfy49Mfh0d1Cm2fd+UJTIeubmQcAhqSg51SaWGAPJkh9g/bOl2/lXzOQ5jKfsTY
	yyJa8/kVdPmPcvaUqBDmk6bxLAIShSGmCmkqtLfTvIpJK/qJ19h/0uuwodvWV9/8
	Al7LTCLTKKAy8lg21BQ8cd1W3JMsk8Jx4CpXAGTFx+dnZQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9xw58xn3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Nov 2025 17:46:39 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4eda95d8809so11790821cf.3
        for <devicetree@vger.kernel.org>; Sat, 08 Nov 2025 09:46:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762623999; x=1763228799; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+xrystILNHZkjAAh5vxxqwIrI4Y2QLvNADKRQLrs180=;
        b=NY6/HBUnGTyi1461L8EZ7j45aAXtYK1kBrorLYvcVzqw++7q40VdTsCHeQsbOQoUnB
         Ci3Lr+RwqaozgBEglOBwe9N0Gc9ebJATri6x2SjO2htTNwfWu06XocIsM9kxAL/f1KRn
         C+rnLkE7nfoYF0dcCzoMcpdfRB4QgUqauq5JqX5oxDWRPj6kYgCUhBv+yogLAyvJ4+6+
         uFSELXtoQAGc1F1Eu+49d6AzN51ueupLljSh7EqBy+wdJE/5h6EIkfK6ppgA5RALmdJA
         vTwQxmZ85j72rO/OcCw9+gDPc76fUda2B1PEsbgGO+0DlKG5c4wRporQWNBjWPxxNoh2
         a+6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762623999; x=1763228799;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+xrystILNHZkjAAh5vxxqwIrI4Y2QLvNADKRQLrs180=;
        b=uzQf1dm4deUTfp4fPjzDbf2HRy6wQz+PlnsBkpRY40+SGzRHvhrc6QDdfuhAHoOPxb
         DNJ3PHNRCchZHvTza7apBxgAnwmfUrCElMnxkLk0kEe2SVppZVtVXBXHNA4SbzUWSJwk
         yQ6/GAhm2BW6EfKKYlBLIxC81jlS3+Q4rm373svDIr9Se+QmMqG9NF7uc4RY3UCdMj2d
         IETVdMVIA7yeGGrmIxJEPiI20zey3ROeeruJFsADrGRxmR5c1rTgsT8C5T9PCVSlmOV7
         qzRZt9YLMCFtMHzmO1WCBPt4O2AC+fG6BcUUa9zuH/t/e9LnG7n+x5maGRIha6I6Txbt
         ncmg==
X-Forwarded-Encrypted: i=1; AJvYcCXxjc8fVaFkgxcR/hfAAAoPLOM3r+1kXJmdbnag0vnlGSkNDj/1QUm5a3a2me8JekFr1usKxjybyG9A@vger.kernel.org
X-Gm-Message-State: AOJu0YyvqHyQsADPBUvwF1objeOhRKXdYQ77VWVqTRueKNvUXe5mAoJy
	nV8JCoIUb1J8kBLmxIOFhjO3/Vj02kw1l/fuXn7WkvE+yE+0fTQyZuURLru/xtBOQ3TvAJxSNwb
	397Q6iLJ3/hqAb+i17nPL5UnsLBvMDpm9Uqw3ArBTBqT1RAIht9qzacXYzoloo3Jn
X-Gm-Gg: ASbGncsvXGrjPFpb9XbTPRb71NnTXl/xtj5uXIxX4U/w/LfeFR5fE4klFWKj4VY5ZW8
	hTLoVotdswBS2CVUECKcZaQ1zMxtct0pUK8vwuzLaj/P139sZfqi0ZxIwCqzMYdfWLm9AAyT5p/
	nW+/8ROZ0pKEQwMq8o5og38kkTJ23fB/tsrnEBupTBjLAhh28Pd2qXCUoH8LEZ0RIXCgF0agI7n
	SpgdcAbMVim4P+UX3YfzLW0fwl86J23ULlRx+708MzrhWaL5vXBf+nWxWZ1dX4NdWsqk5TK3dA1
	mV0yOgB5xSS2LDUcXSDOqdEZvBfTMB+dkUSoDoV5uQcIUizNXbdUvUqauRU5Bjp5mAsOpVYEnSb
	nu/JEO+IIkDYZoVD37O5uX5/cRsvZu5cJZNDnCpzHGv2yLoTKj8/GxDAs3s2RLkeuFwkoZqmTm4
	l93ZioT0OhyFRb
X-Received: by 2002:ac8:5756:0:b0:4ed:680e:29cd with SMTP id d75a77b69052e-4eda4ed8fdbmr41131411cf.27.1762623998739;
        Sat, 08 Nov 2025 09:46:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFIjMlHccRu36QczAFr/a+/xcMuuk9BDbrD4T6DRX0eS6Ya3buU3tlxLwTOcZIDMnaIUucI2A==
X-Received: by 2002:ac8:5756:0:b0:4ed:680e:29cd with SMTP id d75a77b69052e-4eda4ed8fdbmr41131111cf.27.1762623998303;
        Sat, 08 Nov 2025 09:46:38 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37a5f058262sm21427801fa.11.2025.11.08.09.46.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Nov 2025 09:46:36 -0800 (PST)
Date: Sat, 8 Nov 2025 19:46:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] interconnect: qcom: icc-rpmh: Get parent's regmap
 for nested NoCs
Message-ID: <iwlvslb3yzmal7m5dpks46s2jv2v72hhrtrmirtptjmt3pgvks@bs6ohfgefmro>
References: <20251107-sm6350-icc-qos-v1-0-8275e5fc3f61@fairphone.com>
 <20251107-sm6350-icc-qos-v1-2-8275e5fc3f61@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251107-sm6350-icc-qos-v1-2-8275e5fc3f61@fairphone.com>
X-Proofpoint-ORIG-GUID: XzI8Nb0qfpNdDCXrL9960IKUHVx-LNLS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA4MDE0NCBTYWx0ZWRfX2e7gqMfrxkhn
 8U/wNzo6/EuLaIGkWPE8YR/i3i/cpOZ8sVysBHeGv2zBsYrrLlECKIch1vMq6jFRfgkaCBm0UuQ
 tdIVhMXZsrSq7i+IlxwazD9LCBj9rEZ1Cayjax0EVZQtpSrMj6VbaNtuSzUOAK4V7CzWusom5YK
 t0N9AhxVeETmU8H5sxq3uEmV3JBINQZUwseOkNk0EP2thSTia+TaijE5I+x8s6W215nrLCU7L7u
 yY+z6csa5BXwRQF8Pm7p3H+WLYrMq57XTw2yxmlA2MqDTVTdoDhzRe8MfMJRQLR00UONiXybeAj
 SV8blVKyfmTlFXBiMLzi1RzcagMmK/j7OIDHlwpgqLxvW9/GY+004R6oKF1pGVhpx5IXhlWx2LL
 9P2WQzJjPlKmllLZrNeI7eFtXvvc2g==
X-Proofpoint-GUID: XzI8Nb0qfpNdDCXrL9960IKUHVx-LNLS
X-Authority-Analysis: v=2.4 cv=FoQIPmrq c=1 sm=1 tr=0 ts=690f81ff cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=u_fiScQ_Z3bZvJszJhYA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-08_05,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 adultscore=0 clxscore=1015
 malwarescore=0 impostorscore=0 phishscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511080144

On Fri, Nov 07, 2025 at 05:08:48PM +0100, Luca Weiss wrote:
> Since commit 57eb14779dfd ("interconnect: qcom: icc-rpmh: Support child
> NoC device probe") the icc-rpmh driver supports initializing child NoCs,
> but those child NoCs also need to be able to get the parent's regmap in
> order to enable QoS.
> 
> Change the driver to support that and support programming QoS register.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/interconnect/qcom/icc-rpmh.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/interconnect/qcom/icc-rpmh.c b/drivers/interconnect/qcom/icc-rpmh.c
> index f90c29111f48..2103185a44a5 100644
> --- a/drivers/interconnect/qcom/icc-rpmh.c
> +++ b/drivers/interconnect/qcom/icc-rpmh.c
> @@ -308,7 +308,16 @@ int qcom_icc_rpmh_probe(struct platform_device *pdev)
>  		struct resource *res;
>  		void __iomem *base;
>  
> -		base = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
> +		res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +		if (!res) {
> +			/* Try parent's regmap */
> +			qp->regmap = dev_get_regmap(dev->parent, NULL);
> +			if (qp->regmap)
> +				goto regmap_done;

And this turns into spaghetty. What about:

	qp->regmap = dev_get_regmap();
	if (!qp->regmap) {
	   base = devm_platform_get_and_ioremap_resource();
	   // handle the error
	   qp->regmap = devm_regmap_init_mmio();
	   // handle the error, goto skip_qos_config
	}


> +			goto skip_qos_config;
> +		}
> +
> +		base = devm_ioremap_resource(dev, res);
>  		if (IS_ERR(base))
>  			goto skip_qos_config;
>  
> @@ -318,6 +327,7 @@ int qcom_icc_rpmh_probe(struct platform_device *pdev)
>  			goto skip_qos_config;
>  		}
>  
> +regmap_done:
>  		qp->num_clks = devm_clk_bulk_get_all(qp->dev, &qp->clks);
>  		if (qp->num_clks == -EPROBE_DEFER)
>  			return dev_err_probe(dev, qp->num_clks, "Failed to get QoS clocks\n");
> 
> -- 
> 2.51.2
> 

-- 
With best wishes
Dmitry

