Return-Path: <devicetree+bounces-241631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 07930C80307
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 12:22:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3BB064E6E76
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:20:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58A032F8BF0;
	Mon, 24 Nov 2025 11:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OYjOOBN9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B5lAdNdF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D0552FCBEA
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763983231; cv=none; b=Rwg1WILyXpHb+eUC1Iry9/kKb9ipHsDR72aB1FiHnRdIdE/GodDUy6oXL3CDScu56TjygPAcRbtWqzbCoKx1OXCbftF9yfdSsejL7MmGzmnz8jivTTgwkq09+g+0fn08hqanH8xss3i1dn8trs1/qygC5skJvA6xN0P38ra9O2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763983231; c=relaxed/simple;
	bh=ryVs9I5M3l65+eAMSkFhEug5JYyljUURrwLgdtsuCQE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lv8baedJOn7EwJWJx1UqIgQ++ztU6yC38u+85FEthFqQNvclF8LxV3Bh41nngQR5OS9uiZj5ROQ3CLuGksm6uSYEH9zAEBd6kA+6pD5zWcuQZutUI9OQB4YeoVm04XpU3xW0mgCj8J+Ifop0xSq8h2VlY9K4e5QKk98Wtmt6Eng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OYjOOBN9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B5lAdNdF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO8CEKd2813195
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:20:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BSV3sAHeeJVuK5Pcnq3kcJfhY8DOScHIXuVIS62Z0TY=; b=OYjOOBN9i15AunCK
	fEq92QoAvYS5+3haguFb3KD4G6+kVRMB4oqcO8w6G8f/KWn0oTihZOS74QHVyFw6
	UF/TpUw9tSHgZIXVCq+RRezSGrBwCH3HvlerYnJhg3tv5CnJ6vLOUWsOcUCG8lAY
	ID902xxrf2CXk36X2p0/i93ranTGIT8Zdu+D0Az9gji+CXLeqmLEPQEe3/twam0B
	IUJO98EXtCPMBr7ua66zGgnKTkeglaK/hHNm1ZXdd/x33bcdWDovuhecI7txuQxR
	IkiMqYbtUHkGfVRjxtw9BDpiQtPkeN61x+av7HrJ/ZNsmEtBHQQApPHbwe5U/Rn0
	li9Kkw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak69smryp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 11:20:28 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b25c5dc2c3so107622885a.3
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 03:20:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763983228; x=1764588028; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BSV3sAHeeJVuK5Pcnq3kcJfhY8DOScHIXuVIS62Z0TY=;
        b=B5lAdNdFg1zKbReTb678KTlnI03vWIOvtNCV0T6SC5YDht0xXa+R9d8iSc+K6CDKek
         ab7LSA4EZD5OMPyr6J8QVNJasxvzjccrBMavuhxJJe+Ldv4AH2XA0TRYubsHNG0v3p6T
         YZ1MOSnwKjjizVBZggaKgjNh/qajMapk027KaQ4VVx5cdgkYTj/hKBj8oaXJ8PBhIBaZ
         9b32RHvikMIAoYBxN+gO/LNUedElFUg2XyyBgz37hdKU7IpSSXsTwIv7Mc5K2tIcSiFR
         fl6OHl1CI0Uqzbm0FQj3AzARfAFaxXtIYJgzpmVbQVU3ZDV5Kw4+B7VPIL8jn+VCiTaQ
         Oz7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763983228; x=1764588028;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BSV3sAHeeJVuK5Pcnq3kcJfhY8DOScHIXuVIS62Z0TY=;
        b=rS7IEt1WBAvIn8lHHTUSruThheBW1NyBaFpr+5S9tEpogSt0P0YqcsEdPOMmcOEo/a
         lN18WuJ7siqU1AKfMyKENihJhnk1suz3azv4mSJsJq+1d8nABW/8hI2h0WakZP4Nc14t
         DP6flKWk/wRCqXhoU+U7oV5smgX5n26tQR0zzXRLOQ//f6YHmogOHFvYNW6DvTUFaeyW
         3zYh9XMETGh0CgP0Ub4M1VsNsmEkzrxisipWba2NjOaMhYnmKHI51MY3u4wQG0GF3VWi
         q0Hv0CkIvxVwNPfj1G/Y2a+k8spJymigx313fAJlQyHEiAPGPykq7kc5yJ7XiHnODgd2
         fCbg==
X-Forwarded-Encrypted: i=1; AJvYcCWg33bCLoF5dYgA7jf2LZ3IQru77myfAHMweb2czAgz/zA4pe/RsuD4pWsfQw2i1tzupOS+yJcYwt/6@vger.kernel.org
X-Gm-Message-State: AOJu0YxKYIIuJkjEzdUrcLxBhrUxQQ1TfDMZeJgZ2Rt4ehjPix35gg66
	JO8VzB4NHY5+fq0W0mKyLQCWyKkxwRGZRJKjvcJhsO+M9JBY7X37S+gotw9zMhsdODbZBQlhgCx
	U2gM8F2h8RdDMQLQFFtrqr+YYOp7H7CcESpFMW4lFBjj4R0Ffl0uMuxlpjHiIBLMZ
X-Gm-Gg: ASbGncvqBTo9rrKxTu7EbhoDikHYJr26njzIde1hGul2NYqXn0JmswzaAm8nNFeErxu
	V4Fx7if+xgIguYWueQ67OhkPt/Xl8ldHmgZZg+pl1Lw6AH3mRXEghhJ2R4hHuFT3Z2Ss4ej7dFl
	3PVFAESjtG93Yh+UteBKM2c6PpO8B2qi8Q0WByHcRDPIbbmD5PD44D90OF9JGpGrHSM8zfafWqW
	FcWxEw1UVUC5TsYlRQocmeDpzLksuM2566RKOHrW4jWO3xOvYvLnoLBQEPLTmlaLktZWNICPS25
	rMnRGB28JtPGAyhka1J+3m6hsrQR7JL+XRRJ9LkehuKOLBtjh98N2wCrCZ2OPqbhyGo7XVuaXyV
	YoP5CWbK0tz4vQ5VyhjwtKMv40TZ2q2MMVyHItwQRO+7GIl9CR+E7shkCFuTtk39K02A=
X-Received: by 2002:ac8:7f47:0:b0:4ee:1367:8836 with SMTP id d75a77b69052e-4ee5b6fad57mr103922651cf.5.1763983228003;
        Mon, 24 Nov 2025 03:20:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFR15jx1YOLqQWEv2r9w6P1o+SVbw4CilC5v2yYmQGkKlKIVzrKmx0kXCcc2Pj53olgY9s0mQ==
X-Received: by 2002:ac8:7f47:0:b0:4ee:1367:8836 with SMTP id d75a77b69052e-4ee5b6fad57mr103922461cf.5.1763983227641;
        Mon, 24 Nov 2025 03:20:27 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64536442993sm12371722a12.27.2025.11.24.03.20.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 03:20:26 -0800 (PST)
Message-ID: <2fc83dc4-16ab-470c-a6b2-379dc3e52744@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 12:20:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 12/14] remoteproc: pas: Extend parse_fw callback to
 fetch resources via SMC call
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251121-kvm_rproc_v8-v8-0-8e8e9fb0eca0@oss.qualcomm.com>
 <20251121-kvm_rproc_v8-v8-12-8e8e9fb0eca0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251121-kvm_rproc_v8-v8-12-8e8e9fb0eca0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=PNMCOPqC c=1 sm=1 tr=0 ts=69243f7c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=WVEJiFBRDJ0UJk8ac0oA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: Sjx2h8LK8HTATx0JfdaaRQqNd5OeyMa4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDEwMCBTYWx0ZWRfX1BzlD0RYHVtI
 SGNlw5PdCNPMc6GGVNXCANY3cwPNaHbczpYJKg0vQwZnzsYJN0vOKP/a4/aUHociEnbh6gZDqgB
 055OTJNI0m07x5bSoRzwsdAP6nYJfK8HQKmVwCyZ6OQ5EKwcs33L+An0eoD0YtmZKPtYMKTKzNN
 l7LyVpObrN0a32NGZiZAr0YofYxPEMbhIEE2VNBWEayKvdptxg+/axU4KL86FeI3R2GL8fU6QB2
 SpBtyzuUAJHdr4S4cC1eZjBqXVMwBNavx1i9fwnjV+q4ERylV6bTgBoKQkRzQv/SCOP06bjIu4t
 pFGcTEFvDeeWkcmJzQOJhe+0/3qyiISfCtMKkaYXRYw/QErzxIGLd2apsLGtugE/KwRRAWraN8v
 0D8nt+nqlfX4zHZNl4KMz/czxGn8AA==
X-Proofpoint-GUID: Sjx2h8LK8HTATx0JfdaaRQqNd5OeyMa4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 clxscore=1015 phishscore=0 suspectscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240100

On 11/21/25 12:01 PM, Mukesh Ojha wrote:
> Qualcomm remote processor may rely on static and dynamic resources for
> it to be functional. For most of the Qualcomm SoCs, when run with Gunyah
> or older QHEE hypervisor, all the resources whether it is static or
> dynamic, is managed by the hypervisor. Dynamic resources if it is
> present for a remote processor will always be coming from secure world
> via SMC call while static resources may be present in remote processor
> firmware binary or it may be coming from SMC call along with dynamic
> resources.
> 
> Remoteproc already has method like rproc_elf_load_rsc_table() to check
> firmware binary has resources or not and if it is not having then we
> pass NULL and zero as input resource table and its size argument
> respectively to qcom_scm_pas_get_rsc_table() and while it has resource
> present then it should pass the present resources to Trustzone(TZ) so that
> it could authenticate the present resources and append dynamic resource
> to return in output_rt argument along with authenticated resources.
> 
> Extend parse_fw callback to include SMC call to get resources from
> Trustzone and to leverage resource table parsing and mapping and
> unmapping code from the remoteproc framework.
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

