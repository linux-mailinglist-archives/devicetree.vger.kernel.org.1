Return-Path: <devicetree+bounces-115852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8AB9B0DB7
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 20:48:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 06E03B22039
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 18:48:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D0B120D503;
	Fri, 25 Oct 2024 18:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NcqtlBZx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5C420BB56
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729882093; cv=none; b=KPK/UShXWhmyVcRiJIkXJF3jwp/vZvPMxJJUt4eBpg9wOfgSCSP5QiYH//h9504aS27CrLqbprzDUFdULPgn8Zkf7vOkmfdgOkm72826GLDWe3KkSWHD0Q60QM4FAYyp6IIuiTVeb7kWWidQLs5IDe2oXDr9R/cQUzzeaspQ2XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729882093; c=relaxed/simple;
	bh=/CG4JuQ10DWL9F+Yvd/xIpn0XcOUOtWCOMrizs5JWI0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nuUQTd04FSl9zuuQorTjgXsR5vXMIEidTkx5pY/o1TiqSWwhLncpu8yAiO2R8eLLlbz/WyOGeRRmWcOFRP+jfFQOCs+MFcx2a/8rgT+fr21dMtzaxjHWeBoTQ1oYrQQ3V3FumIZ/EGy58rddFOZodmC1vWwN5kZgmvxJImBvp1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NcqtlBZx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49PBjVGN009516
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:48:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MFXog9CzN1JbPT5MLjqR2YdEriiY44hNAsTYnjYNF1A=; b=NcqtlBZx9dkCDGQl
	TfIVDtv5TzuNICmaIwYhQgZBLm/pQTEh3fESCfGPuGafOYkOWA1+wJsMRcbKc3TF
	mNOG0kbQ1BmRxYfQjLvF6IgQuvLA6G6Pkp5dVvc52QJiS8+yXXD7AfCATzZnfklN
	GXlKfhpli0nbnAYfLRlajt+eIriz3mC73mtpPQthBUu4ZYxqTQdV3iyw6JGMBCnT
	JpYuGzaUq5kEg8rpdJhAFVFJOyjEyj0j24+HzC6JUBfOuoanJfYruftYs7dJRgFu
	NVMZ8q+Yq3fXexAbBHHklWp6uzkIiR8b8s4LxXjU32+K2iNhmhB1jyEgpFF/GJ7S
	G4HAhg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42em43j40d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 18:48:09 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6cbe91571easo7011776d6.0
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 11:48:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729882073; x=1730486873;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MFXog9CzN1JbPT5MLjqR2YdEriiY44hNAsTYnjYNF1A=;
        b=OX6QhTRjZGoYsfX3cYkNF5ivLorkdAHlTR4l5DwELvztW5rIYWzrFFcZIAPoyBfhj4
         DozhYi7936OXs9pBGV1NBz0xIHvT/9FZ2eFUzEbRhEm5+RYqxja8lzju6n135eS4WzYy
         Qpqluj3ZlpXciDNh5xQWS8iMYn8Y+/wZMApMh93nXXj3KdeHwZMjfXrEVTT3xuKQjl6s
         Plkyp2g0demncllvpBrBimFbVARgjKjjabZ6Iqmj/nsNTQ653GPVV2q/ZPJm2Giu/cw6
         kAnMFtj3vE1rDlVnMOHAE8sdGUg1yoJE+SpeauCVJUdS2oUKsVV4qwRP5Rnr6+pS7utM
         nccA==
X-Forwarded-Encrypted: i=1; AJvYcCVKEywbF8jkHqcU7dzVPh0Yncvr9BahCo06nXtx6CEIVuAvBjHhUmfCofE/TVnoXh0li01Ld4CIuF6p@vger.kernel.org
X-Gm-Message-State: AOJu0Ywh48H5cQCp4H2Khf2MaHJWK1qE7gBl4OmvCByAKyePywhcdfND
	bRJWMR7mHx/LPjpwKbakQ9De8vu7ogEgYT/MPLVl9W4tXMRy8DnF423mEtYeRovr7ZhddAD2iNk
	Z7q++Quj2OSZTEwaenkeDqhL0l0L56B66VF/5GoWc8CDGrmOtekMocP9s2DSA
X-Received: by 2002:a05:6214:194b:b0:6cb:f0f2:f56d with SMTP id 6a1803df08f44-6d185680265mr3060036d6.4.1729882073457;
        Fri, 25 Oct 2024 11:47:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhdXcaShoo57RMGPsZA2dXvZ8ufIsmj4l3pV7Tjjs+OrGQgre4DCGpRASRUtkmM1ZVAtzCzA==
X-Received: by 2002:a05:6214:194b:b0:6cb:f0f2:f56d with SMTP id 6a1803df08f44-6d185680265mr3059836d6.4.1729882073055;
        Fri, 25 Oct 2024 11:47:53 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1f029a68sm97186366b.83.2024.10.25.11.47.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 11:47:51 -0700 (PDT)
Message-ID: <69be09ec-e9a5-4fb6-890e-74a65f3ce404@oss.qualcomm.com>
Date: Fri, 25 Oct 2024 20:47:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: Add coresight nodes for QCS615
To: Jie Gan <quic_jiegan@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao <quic_jinlmao@quicinc.com>,
        Tao Zhang <quic_taozha@quicinc.com>
References: <20241017030005.893203-1-quic_jiegan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241017030005.893203-1-quic_jiegan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: FXtt3gzFKrndDsEy2qNjjS3iB2v_Qyy8
X-Proofpoint-ORIG-GUID: FXtt3gzFKrndDsEy2qNjjS3iB2v_Qyy8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 adultscore=0 mlxlogscore=999 spamscore=0 malwarescore=0 impostorscore=0
 phishscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410250144

On 17.10.2024 5:00 AM, Jie Gan wrote:
> Add following coresight components on QCS615, EUD, TMC/ETF, TPDM, dynamic
> Funnel, TPDA, Replicator and ETM.
> 
> Signed-off-by: Jie Gan <quic_jiegan@quicinc.com>
> ---
> Already checked by command:dtbs_check W=1.
> 
> Dependencies:
> 1. Depends on qcs615 base dtsi change:
> https://lore.kernel.org/all/20240926-add_initial_support_for_qcs615-v3-5-e37617e91c62@quicinc.com/
> 2. Depends on qcs615 AOSS_QMP change:
> https://lore.kernel.org/linux-arm-msm/20241017025313.2028120-4-quic_chunkaid@quicinc.com/
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 1632 ++++++++++++++++++++++++++
>  1 file changed, 1632 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index 856b40e20cf3..87cca5de018e 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -202,6 +202,18 @@ l3_0: l3-cache {
>  		};
>  	};
>  
> +	dummy_eud: dummy_sink {

Node names (after the ':' and before the '{' signs) can't contain
underscores, use '-' instead.

[...]

> +		stm@6002000 {
> +			compatible = "arm,coresight-stm", "arm,primecell";
> +			reg = <0x0 0x6002000 0x0 0x1000>,

Please pad the non-zero address part to 8 hex digits with leading
zeroes, across the board

This looks like a lot of nodes, all enabled by default. Will this run
on a production-fused device?

Konrad

