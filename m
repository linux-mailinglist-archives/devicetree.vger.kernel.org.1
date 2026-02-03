Return-Path: <devicetree+bounces-262230-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gEObKDTogWkFMAMAu9opvQ
	(envelope-from <devicetree+bounces-262230-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:21:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A9DD8EFF
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:21:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DD185306ABEC
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 12:20:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59D3233F8A2;
	Tue,  3 Feb 2026 12:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CxO+crhN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YKuwYBEM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695A231A7F2
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 12:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770121254; cv=none; b=aIggXdsnSBbdUgibNy+TWgv8GmTGpLBXf9K0ont0ejvgLQUSg+jR1Ljb0y5wRW+sLZJd3/qIngOSYGRTekCEWprJ8D00HrajNy41sd71Uytm2GIncu4UuCUQ4E7POpzeNCsAsLOWEwn9DFyGl+yxiv2vp3DyyJT2aNgo5ODuzkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770121254; c=relaxed/simple;
	bh=ZX7iLq2hz/l5mm8pzHPIEzd18ODFdAKZFQ1qn5i4qy4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZU1yRvMI3X29YKquQPnesHFj5xQCXK2gZ8H00xX0BUtsZAEvYrgojNVo+UYSnWJUicnkSPTCrgV/x24OxG2+Ho0RdRIvsfhnW09j0qddRi91lfWg15xSezWRdj6loje3TdIVDoQiCIdO7zQiX7YAVp0dCRD5xyEQJT/j1G48LTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CxO+crhN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YKuwYBEM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6138o1cS849049
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 12:20:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GpI5WvoJlzYOz9UIPVv1v5bpeUv7kubf99JkM4paiRM=; b=CxO+crhNy2o2AJJ8
	6d1cqQeRMfVNTGb12pJuO8U83BXbrstevPWjCOGSpkjCLlOQa6YJkmjtkuaKF/Jc
	rz4VCF2B0YZ4AQ+0H0Voe66Qm2XQPGBxOW1/Sa1zIHfWodzVN9kP3d8LYfFrNm0z
	FWX0lN6rFwS/AF2er019a2hvjcfr/Fsr9Q3H5vk0k0aS1YO87NWg1U3yfOVbHQgP
	+c+a4ufDGAJypLRTMtnn8dkQIuL0L+6YB555b+XXtlyPSH4JDWuoZ5TSG1vlh90y
	21HspuB9sozhwT6xd4SUt5o3LI2edwuSgLf9X04kTixvSe/IpInjJzvMURntyHvP
	GMvzLw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3dutgmwt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 12:20:50 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c522c44febso131812985a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 04:20:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770121250; x=1770726050; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GpI5WvoJlzYOz9UIPVv1v5bpeUv7kubf99JkM4paiRM=;
        b=YKuwYBEMmdzhiyR5zvglZSDJ7KjAqnX+dVLZJeHQSLUlDtbmytw0SBIWANeT5v39is
         a/xYRYEd5atuS/8iea0MMmN9S8u3O7T76OGDrsYlNQ9RkC5OywzTaauDa/mMFS6ziOUF
         MX3DiYtCQZHeSA/IBmC8ezQfJdnKMAohPa16oaozK9nRWLcwVAJffb7QIokNs98fjXmE
         yR+XQKqRwy+9Y65eXZScoIIrJUh3nC94O4zICpIeLfemXK7NtIAA3zhbD+rtrXsGTJuk
         /ocYeY4Y0gbGCBrIAcShUu6C9D8JC+Z0P0oLzcfyq5kZsATvTJq+AACHigHJSv7r9PV4
         Hbug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770121250; x=1770726050;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GpI5WvoJlzYOz9UIPVv1v5bpeUv7kubf99JkM4paiRM=;
        b=LGxCyZ5hqyHyK7fTUUDEQvSbHQOYvHQ4Ke8aqo1RCaXjODhMG9M6SHccK2s5zDUVba
         pTnSc+XF2ZTK56JSrR9YNn0rqU8lHjnv835b3x+cvhNKWOhUzVPMR983IDTC56u63ngK
         smxkRQ+hB2rJZEGQu+QK2/zsahEMgaRTt2aR3PVzRrAm/pRbmEpU2g6iYAaP+FEE4wFs
         oflHHyFQQsZdvrYc9jA6dwuWu+s3s5iI48DBSVh5PG8krfLruha0OwdZSTWIje/GeS4n
         Of4UMNnXTo+EKEvfOIqLGnnl6FRFk2PsxVRaPhCLhFHbyZL6ALIxI8N++OYBl/X6S8WW
         PS9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVS96adoP9fZ5I2lJyTVwUQqpes1lCyPiO8omu8qGsFx3rkSlNAbQG5PQ4F7/i4vDqWnnb8Ddd2Cd55@vger.kernel.org
X-Gm-Message-State: AOJu0YwqsQv6NlP4gRBaXlluQaAjFrUY8VtnUOJsvIAbqu3IRwxcq4e1
	9rENdwxKImZ/C6Ujv9HxTAR+4CKJuasIztCIr9Ur57leXHxdcouGVwmofmDkUqPco07muAEooxb
	48W3Hjb7ZXy8LphznjwSxhlXUkYQbrBwaWUIi2Gu29eSMoEYNKEv8B7dB1dJE2bZBd2s0Hod0
X-Gm-Gg: AZuq6aIMtLzKd+1GIOGBHIKPon8gMxSZrpbcEQoSIoBTIZTpwTkkDHO5/y8rI6+5IJF
	wHxHF9FgjksRlDy2DNrn7LCLIJBeYC0hQYYU4JRlE0onOIzhzIm2AhlP2st8Axf+FQiERo5dS4h
	MGmfW3huHt8ARuPWwJEk6YfjvWt4+9Pr8UbrnHW86Lq4FRdWq2iHvHrCL4NoiAp/9wt2F0dZczJ
	NAL4fPhKFFGzwt5XgW7MB22sSz+dqER26eHoryySxh1GGzHfX0RDJj5p5kb334zLRLl8xHnssP4
	1/v4mZas2QyXh4EBSSaGNaP5CaAJEsVwTNLtgc2JkERydimFFGdoW2BmalXP5zEUiY4/T9yeN84
	eUZFf/ky9C2gV/aEpY/bd0lYUimMji2P/Mznwjl++lR1w/IIsUnUXkXrjzfXzSRHOGOQ=
X-Received: by 2002:a05:620a:bd6:b0:8c0:cec5:148c with SMTP id af79cd13be357-8c9eb34ff20mr1532687185a.11.1770121249439;
        Tue, 03 Feb 2026 04:20:49 -0800 (PST)
X-Received: by 2002:a05:620a:bd6:b0:8c0:cec5:148c with SMTP id af79cd13be357-8c9eb34ff20mr1532684985a.11.1770121249020;
        Tue, 03 Feb 2026 04:20:49 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dd99188adsm891757466b.50.2026.02.03.04.20.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 04:20:48 -0800 (PST)
Message-ID: <ff9a2aa3-1b2b-4001-82ce-198c61a4b637@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 13:20:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 05/13] soc: qcom: geni-se: Add resources
 activation/deactivation helpers
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com
References: <20260202180922.1692428-1-praveen.talari@oss.qualcomm.com>
 <20260202180922.1692428-6-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260202180922.1692428-6-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA5NyBTYWx0ZWRfX41FWiwQOdosF
 pAWlCMZ9+GD2K4pAZoU2VvSJ8Ae1EkqNnueZVzLuKdahXABGyeuE+SLsdNaMNOwgSH57XcDQNA6
 IY4UpJJlhlnI8gNe3f511KG8tmX16B7dPecZVyCwK9UdgY0yf5OUrZQzaeHmGYinQcHOzTBFqUE
 FF8StdlnpEre4YRPSvMN25oNln0E9DS+Cgb8FCfG6anMiof+Ypx20snuI/rF+nBvgF2EHnTh8KE
 zSlQL/UK7TgFVu4zUntwcve/S/3h+TJJVri/cjsjeXPCdW5b+OlL2lxpjdKfi+0JjauRbOruhgl
 V9A5YQ+x5UlBQBb09EG00FfkSrDMJaevOygRZkDvyZ/95fO6t5fxPoZqgLonR9YlnCu4DsHJZUq
 FoZPCojN27bv17J0xQHzrMdb/ZBktbBy9A+C3aZvKE22FX9HiPS5Ql/llvB24IjQBbc51vokwht
 0jS+bnUEji38XWl9nYw==
X-Authority-Analysis: v=2.4 cv=FrgIPmrq c=1 sm=1 tr=0 ts=6981e822 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=v6fWVTfWKNrbvxdKqGkA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: 2QkdDb-qnXCu7r2vuPoJYsDzfY-xNcpb
X-Proofpoint-GUID: 2QkdDb-qnXCu7r2vuPoJYsDzfY-xNcpb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_03,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 phishscore=0 impostorscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030097
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-262230-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 21A9DD8EFF
X-Rspamd-Action: no action

On 2/2/26 7:09 PM, Praveen Talari wrote:
> The GENI SE protocol drivers (I2C, SPI, UART) implement similar resource
> activation/deactivation sequences independently, leading to code
> duplication.
> 
> Introduce geni_se_resources_activate()/geni_se_resources_deactivate() to
> power on/off resources.The activate function enables ICC, clocks, and TLMM
> whereas the deactivate function disables resources in reverse order
> including OPP rate reset, clocks, ICC and TLMM.
> 
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---

[...]

> +int geni_se_resources_deactivate(struct geni_se *se)
> +{
> +	int ret;
> +
> +	if (has_acpi_companion(se->dev))
> +		return 0;
> +
> +	if (se->has_opp)
> +		dev_pm_opp_set_rate(se->dev, 0);

This is still unbalanced at this point of abstraction, notably
keeping the RPMh vote at 0 permanently after the first
geni_se_resources_deactivate()  since there's no counterpart in
_activate()

That said, the serial and UART drivers do rate calculations internally,
so perhaps trying to be overly smart about it wouldn't be a good thing
either.. Let's add a note in kerneldoc that the activate must be preceded
by a dev_pm_opp_set_xyz()

[...]

> +int geni_se_resources_activate(struct geni_se *se)
> +{
> +	int ret;
> +
> +	if (has_acpi_companion(se->dev))
> +		return 0;
> +
> +	ret = geni_icc_enable(se);
> +	if (ret)
> +		return ret;
> +
> +	ret = geni_se_clks_on(se);
> +	if (ret)
> +		goto out_icc_disable;
> +
> +	ret = pinctrl_pm_select_default_state(se->dev);
> +	if (ret) {
> +		geni_se_clks_off(se);
> +		goto out_icc_disable;
> +	}
> +
> +	return ret;

nit: this 'return' always returns 0

Konrad

> +
> +out_icc_disable:
> +	geni_icc_disable(se);
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(geni_se_resources_activate);
> +
>  /**
>   * geni_se_resources_init() - Initialize resources for a GENI SE device.
>   * @se: Pointer to the geni_se structure representing the GENI SE device.
> diff --git a/include/linux/soc/qcom/geni-se.h b/include/linux/soc/qcom/geni-se.h
> index c182dd0f0bde..36a68149345c 100644
> --- a/include/linux/soc/qcom/geni-se.h
> +++ b/include/linux/soc/qcom/geni-se.h
> @@ -541,6 +541,10 @@ int geni_icc_disable(struct geni_se *se);
>  
>  int geni_se_resources_init(struct geni_se *se);
>  
> +int geni_se_resources_activate(struct geni_se *se);
> +
> +int geni_se_resources_deactivate(struct geni_se *se);
> +
>  int geni_load_se_firmware(struct geni_se *se, enum geni_se_protocol_type protocol);
>  #endif
>  #endif

