Return-Path: <devicetree+bounces-268399-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHsMINsEn2mZYgQAu9opvQ
	(envelope-from <devicetree+bounces-268399-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:19:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D42071989B5
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:19:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7BCFF3091354
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 14:18:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE8B13D3307;
	Wed, 25 Feb 2026 14:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N2tAGqs6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Lw664IJY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7569387362
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 14:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772029093; cv=none; b=N2K4BdiaJyF2RlHK95/5X1ZtNl7oaDpOo5s+AlRj1MxV/Ezn8R0235NZOGT1Dm2CaUsPBw87vGv/Tx/LYiZQLpu7CD5OBCgmt1h4m9eFZphyelbsbiSIumM3tn+qPJQ3On3ptF5bTjKWUTZutO/u7d5+q2BH3A+fLaMmQgUgdKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772029093; c=relaxed/simple;
	bh=0k5IbKPUvTucfoufMe3QMrikix4RZgOOY4zoAkCpiN4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dY7WQ5j+RClksDhd9/izzOoOfXtFDPQpZw1fx8t2zOU3/pIXjIduSaZrfKIU75p0WOWj6ns/qi07AbwR+/9uCJYQmAwmhkm0HORaxwqDQGAJwKvtVqBbPUvV1uOK2C/rDDh8q8vpi5Xws9BLAqJcVs4e+NHf9cIe/lbrgHVlfKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N2tAGqs6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Lw664IJY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9SClq806821
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 14:18:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	COdIxRb6Ec4S2ChFH6Dz+WydQSha7qVD/tbciGUA8t4=; b=N2tAGqs6lA3iXS+/
	JVDm06h4R5gYjhKqnXoYr2xsCLs/0FpSSnJj6LpHyCoMF1gRwYFGL06Vdk5OBFKo
	OaX4l3bKckIC6UjdN/L4HxsDcvT5urDn/43kbBKBsvPXzyMf1tWx2VW/rMvlE6YI
	IE9OA+6JoUICZ2uBgY68zXtwc9MxqHdpdLfQXZ2L9APcBJ7WgiMpAlBgkjP5JVE/
	l/eBVJ12lQyvue9R5FT2SNPnm4YsAYMkucSAiWVnTDAzojChFsgIk0aHHdc3eDDG
	Q/9vCjmCEPYCCznSYViF4gNWfiSuGnzCcwbK5SP1bvCGl3R+Efb/kaD4CY3ETpp/
	9YcPxQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chr5p9var-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 14:18:11 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-899c35447f9so522476d6.2
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772029091; x=1772633891; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=COdIxRb6Ec4S2ChFH6Dz+WydQSha7qVD/tbciGUA8t4=;
        b=Lw664IJYfDRJoZNGlzrfTEVlalbWWo+g+GQjNR+DgaIf0CRxwCQ1RDeicnb1G2V4HV
         MEr8bDBAafFiQAi+zoLaZa2qFBKujO+v15DbDYilPfCNLT/6/CN9offoxsLAwVrCXDiS
         C/g7vEHrEDqvqr7gsjKUV1boEiZ0L5i5/ENWDTx9qZjjylC4bnZ7rOcWNvXBHv4SLIug
         P5wiNtCH9mjI71VSj9pRyeOtjINoWcu6V3sQSQ9kjsblD2ts7rT6dOsN7AqCPbesb3Cv
         +OAES/vlAntO5/TvB/ymBL6evN6ELtQTZFMlGj18U/fAetD6PopCdQq7dBJ//fHSzGuw
         MnRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772029091; x=1772633891;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=COdIxRb6Ec4S2ChFH6Dz+WydQSha7qVD/tbciGUA8t4=;
        b=SnAP/zZ2pHrjRYhVN04u/QcZ6yc/wpHw7DRUs7bZz2Fr7myFE6sJ733UMQYYf9lwrC
         JXDAVDtVrj0aw+Usw2f82l7IoyCiBJ8MIjpn7nBSo4LXO9mTQY8I0vQitGX3qR5LTEaX
         5Y7GdbTr4OdRWHJEtFFm+19X0QAdjOmuILaQPT5nrbJWAMAI9jBsd+esPi4LnDdDljSX
         rVOJg3oDB19YVVtMrhHiTeXL6MOCrYJarnk6qTiUrgAK3xr2Bfddi2C5wgsS3nqcp7vQ
         v9Ub2BnkJZAhstjuoiJT8AF5il+0zoNw1ayJkaCBwfv9GYiSq6g9yiYIW4BNBq/NDeKB
         fFcg==
X-Forwarded-Encrypted: i=1; AJvYcCXC5aHx1OuRNsVXbeDWdryQr1WYXd/bu3Rcf1VIf+4/YoMGeVtAndALXs/SIs0zv/vMmLpQnHPu6hGH@vger.kernel.org
X-Gm-Message-State: AOJu0YzPhxAkijsycU8JUg7YmiMKEKwjAtlytJT+T1Eth24WSyM0bOmk
	FrRGZsIh7ySxbG+YeBVDXVlaZhyEvTINeOOd84i7oXCAKsZPDd0p6poV3bQ15LgiZCfTq/tEl51
	GTp8VUVIkc3w7m/AtIHbDrA1nWt5Wyoc6vOGcw4EvqTyx5ROpxKALXF6GZXnfz/T+
X-Gm-Gg: ATEYQzwdsCfWWsfg7UWXNQo5ikxMOL3hMtZxmacwyyeHtRGSjsZBi73Mvt6OSPpBuPW
	6Wy9eFit5R3R3yTaj2EWT0BDqbuZ0vAs29DW5DyeU4baSzunfL1Xs1lgQ3eBYkmbltUhcjkMtXB
	Ro5bjquu6RLTSQMZ8/lwVKJBNX1weHKyoyHkt4tDQglKsaGIVJ22yzjSWxaKFQQL80NYkHYkViE
	/bDFwfZmJ2QfY3j1/rW8W2vGSQekmCwKkxl5Ywq2dYP1YrjHeZz3HK2nivC4apN0VqW7NstDgpk
	36oZds4By6N1pltj19cyHqygj/vuzqckQamzWVTDc+6r4TnUx33N6DU3OPP8hf7gk27cIlqStU5
	pNSbUC8jEJidZEzbl8xqmzkhi1bqIpxJgz4a8rtx8AozeJAKzqitTZwMrk5Gp2E5LIplqLswZWZ
	kqDDQ=
X-Received: by 2002:a05:620a:1904:b0:896:ead2:a657 with SMTP id af79cd13be357-8cb8c94d98cmr1538132285a.0.1772029090897;
        Wed, 25 Feb 2026 06:18:10 -0800 (PST)
X-Received: by 2002:a05:620a:1904:b0:896:ead2:a657 with SMTP id af79cd13be357-8cb8c94d98cmr1538127885a.0.1772029090415;
        Wed, 25 Feb 2026 06:18:10 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9084e4bf43sm528962766b.42.2026.02.25.06.18.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 06:18:09 -0800 (PST)
Message-ID: <d2e292e3-de8a-414a-9f37-036b65862154@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 15:18:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: sm8750: Add camera clock controller
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260225-sm8750_camcc_dt-v3-1-a19d3173a160@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260225-sm8750_camcc_dt-v3-1-a19d3173a160@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDEzNiBTYWx0ZWRfX7Prsa3TNdjPh
 OEukVL1efdHf77qUe0kv4YNrdDBCaiUIOxvBSass6Uk0BepCKlRjcOBvWA6tVy0LnxzGlGlziv3
 yff3Ow+1glUgIVC6asFeqOc3uImyaZwYy20l0myY9GxqzMWLZxtRdak3SM2lGQZhr3Vddf0OjJT
 vbybfykQR89L2Z1Kg58XgrXpoRO/yX21vrxjcRG5PVbzs+3k1XSR7iy1hbrFt33ogxSkZr2QiCU
 vSBHJWZOmBX6yg2KfB4GUn8owsKzEsZ9gxkznp5Cip6jKfm8z12buYF+PF3cZ1ox1SGTYqAlrwc
 adFz1ipXDZikahOweQa3ek3Mng5WsdilIZw6Zvwjt71NpVW2StzLCnpNmReqkKtwD9jOO518Ezk
 zFFaV5wEnit2jeTv843lQPKvOh8bOU0sCTu1tK+wJLEzCd9xiU0E4eBhjm9vMM0u53pAVAAVxjr
 Riz7ohYsZk4wLa1mRmQ==
X-Authority-Analysis: v=2.4 cv=GstPO01C c=1 sm=1 tr=0 ts=699f04a3 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=ZF7kzkCWYRGncH6IDUMA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: PzI37xY7pRG8kODWFEMlhj-QaVzvUUpc
X-Proofpoint-ORIG-GUID: PzI37xY7pRG8kODWFEMlhj-QaVzvUUpc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_01,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 phishscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250136
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-268399-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.26.219.0:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D42071989B5
X-Rspamd-Action: no action

On 2/25/26 11:12 AM, Taniya Das wrote:
> The camera clock controller is split into cambistmclk and camcc. The
> cambist clock controller handles the mclks and the rest of the clocks of
> camera are part of the camcc clock controller.
> Add the camcc clock controller device node for SM8750 SoC.
> 
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---

[...]

> +		cambistmclkcc: clock-controller@1760000 {
> +		       compatible = "qcom,sm8750-cambistmclkcc";
> +		       reg = <0x0 0x1760000 0x0 0x6000>;
> +		       clocks = <&gcc GCC_CAM_BIST_MCLK_AHB_CLK> ,

Stray space before the comma

> +				<&bi_tcxo_div2>,
> +				<&bi_tcxo_ao_div2>,
> +				<&sleep_clk>;
> +			power-domains = <&rpmhpd RPMHPD_MMCX>,

I find it difficult to believe, but the computer tells me CAM_BIST_MCLK_CC
is powered from *CX*, notably *not MMCX*, could you please double-check that
as well?

FWIW, the other (MXA) rail seems to be OK

Konrad

