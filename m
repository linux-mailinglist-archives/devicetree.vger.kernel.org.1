Return-Path: <devicetree+bounces-245242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAD0CADAF8
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 17:03:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A3AAB30865C3
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 16:02:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6E7A3161A9;
	Mon,  8 Dec 2025 15:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QuGYpO3s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cldhIJDR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E368313279
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 15:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765209415; cv=none; b=ioGkCAlLfJywoYnzrt+IWkJm6oecJCsJgdUWe+I6ZjOBqnAr5jVUGIiWL90xgNKl1iWrVFwhUvZGjkc3pbJ1Ba51M9zbbgfH9fpGvsvJGRyTKaq9CL5QNJRYiuoH8koV+x0HcM5jAm6+YNBCnFp9r9026ig12VJCK+tfOP3wpP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765209415; c=relaxed/simple;
	bh=B3ewkttHlUBU+PVS64xoM5O/gdT+zFTJecZrW6+HjH0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Oajz40zXwu8Y/FXr9mBMBjSKJtMDQso9/IANoTN3/5EJHWvJ4ALL8APutQTYLJ1NDV1f9XkdsE348dK7bVQDMZPkv09CwZcWbky1EMWtcWV9vMTKh7H/AV35/Pw2RFRGfV9pLQkaKKFeGjZsfpmaRbjBXbJYT8wE0ZTcjugh/8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QuGYpO3s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cldhIJDR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B8BQRbh826751
	for <devicetree@vger.kernel.org>; Mon, 8 Dec 2025 15:56:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nmNVqKn1yKV+cg/ifGZvWwc5eUpensOq3hRgfoublXM=; b=QuGYpO3ssDKxKemx
	QdxitZxHqNdHxMLsM7OVBURhdDKboFx17BG/ukgqIv3zLxo9PFjpItYS1MEvSp35
	tK+y+jUKubvQRu8TxJioHL3uSxZ8v8qpHOBGrPVApRqMNQAC6fAUzhvx01v5uR+Z
	YaJ3kvo1Vv2kSyITHC0CI4u2Q6A766DxaElkRO4s08/oqlpjr7DVJJCAq6Kb//k1
	rKO8iZ+uAalYPURo24ks+07sdi9GMRK/mjDabdXntt76znV8aut6bGGv1SLmMJE+
	7iwSgWa22TfjkJcwJTlfxz7TqrI9hryWNhHtTZtU03GqoPFl1D+dlyydvzstuHrD
	Pl8chw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4awwt88sak-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 15:56:53 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee05927183so5033711cf.0
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 07:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765209412; x=1765814212; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nmNVqKn1yKV+cg/ifGZvWwc5eUpensOq3hRgfoublXM=;
        b=cldhIJDR9Ef1IvlgPv3zAiXGDV7gJsMAc568QDpkoeTukAEEtCFzy51CKl6wpv7pYT
         6UXgzW/WHsC8sguQXFZoIzwWqkst+K7+gkZfEdCOPYGK9oz4Bfj4jX/fu+Ez+JkSXTeh
         R1SKpy9YRB8RzZsNThStwVPUBSIUE349fNGip6Nl9SDrEPDhS8PaXjwAPtnEG+ZSYKHK
         3TyJ+wV6BNebMj+3p0x6/oc4XQE2ZbgUutvGEX0awET6onN67a9yfhFkDW9nscr1pglY
         HyS+R2NRqQ8M/USjzGVdEoEaPtzxCjHkmM7tcV0x1tYbnI7gVov3SrVA9RXd9lqHJ7f/
         jA0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765209412; x=1765814212;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nmNVqKn1yKV+cg/ifGZvWwc5eUpensOq3hRgfoublXM=;
        b=RoQztUbkIxDpWJ9le7EqIfJ4l/QIiwdx26QDHhwQnQUEFr1QoZ8kPGTr34i9vd39GY
         XvDor61ZATEDb7q+K0E/9zoMGoLdT/go+4iJiPbQOsIZDeR//7y0BmhI/6JoGtObK5GJ
         tfSRcTzN66BZitlmL25mcgQbgpqLQCf3AgBQ4an41N3p3T2JPkf0UiFAueBAbqFKvACp
         6uiTmbIKyVeC2tb/wIFQVVe0Y9ZTgWIuKyqZ7w5vzT7BtrmLzOAbhAXawzP+dBXTj+0s
         7NmMhf7xjhi62HO6UCvk0fQyeaRnJOIeRsjXJRgKnz7T9IfYyYvg0PejNkiePsdXEt28
         rCxw==
X-Forwarded-Encrypted: i=1; AJvYcCXw8rqoEo0EfPg48qnzvkkrtYcOqtgxoyRxsdLMzkRdZJ3d9MkLl9S8L4acK5bkuqXdD1JonFOnlYvl@vger.kernel.org
X-Gm-Message-State: AOJu0Yws9IQo2G3r73+tAn/SFvKd+EjpVW8XvQm5Wg+v/nBi678a3p+A
	WBU/lcElWae6NlJ6jV5jqwi271y0dAFZtg1rEqhSABYBDdT0Ygo1VlrZbXkaOKZPjD3euopIy1G
	qRhS4IRYhrM2a9xwQQfJOIVLosDa04XI2HoLeWUKtGrQg3MHFJWDO1KwCZ5dd7ygZ
X-Gm-Gg: ASbGncueF6JLULdFXIzyCXCsJ5aSLSslCr2m0tXFbYyWf53OFPUxZ1o1xOvhRXWOwWt
	J9jOjP/WaZb72Y/lyl/Pa5h/ZuOBsxjoO9AFvnQsSXgN9tIsR3OgGcGh35xMBzlM4NE2e1IbJOP
	phvz0YQhR6Q2US0ebP2vTsARyycLbcIym3yepuP+fn/eqCYEJ2fpdhbkirpc0Swc4nP7+cQsPQb
	nVjg/jvNIEDbouAjh5VylGo2HWxuKDTMT6VxLAAP3XIDJqcq7glXZv59pNKatfGdHRqxog1XT84
	1LPkLhAoHyQf+mf5WVLiJeOdGqUjkc9CFUc+kZox6hnIRUfVVNSGz9IG7w60Yn7Ce+/apqU7SXb
	+BVYmhmBMVH/LLtQPSNcftOk7hGyB4tb6Xpdn35PsAJydGc5c393NH3O4Ki2xYeDDaQ==
X-Received: by 2002:a05:622a:188a:b0:4ee:1c71:71e1 with SMTP id d75a77b69052e-4f03fea6010mr85159391cf.6.1765209412462;
        Mon, 08 Dec 2025 07:56:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE/MhiREKtDNGvh9NmEtfBer4t1W4ElwFVJmK2dUCg/qDDPq12BZEpCpvof8t9/DxZAthncVA==
X-Received: by 2002:a05:622a:188a:b0:4ee:1c71:71e1 with SMTP id d75a77b69052e-4f03fea6010mr85159131cf.6.1765209412012;
        Mon, 08 Dec 2025 07:56:52 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f44595ecsm1142187366b.2.2025.12.08.07.56.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Dec 2025 07:56:51 -0800 (PST)
Message-ID: <2cf32f08-99e9-48c2-ad0f-2e579d50f7a9@oss.qualcomm.com>
Date: Mon, 8 Dec 2025 16:56:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] arm64: dts: qcom: x1e80100: Add crypto engine
To: Harshal Dev <harshal.dev@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Val Packett <val@packett.cool>,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Udit Tiwari <quic_utiwari@quicinc.com>,
        Neeraj Soni <quic_neersoni@quicinc.com>
References: <20251208-crypto_dt_node_x1e80100-v4-1-f5d03bb2c501@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251208-crypto_dt_node_x1e80100-v4-1-f5d03bb2c501@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=aKP9aL9m c=1 sm=1 tr=0 ts=6936f545 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=9v3PK4M2jcTnJOkuZv0A:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 2sTnYaUHbX1J6EJzQ0vxbKPR4J9Ekkha
X-Proofpoint-GUID: 2sTnYaUHbX1J6EJzQ0vxbKPR4J9Ekkha
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDEzNSBTYWx0ZWRfX9LD2BtxpyJUj
 icbSGQTmLfL3GGr9/8zdRkscELJW5eYWYGUVPcrEor0YwqbMXlXZS/lny9dBULPNqDeIoa6Mgmo
 /tgjK5zzIdv7RKeCIOT6StO8Drxwx55GTs2n3ejFEl13REh0cSLUsz3bWbhPy6zXpQq+5YecEs2
 19CeDny0QMiZBcBhekzNc968if3qCV/Z1Xc3WlwU4iLmLFYGevw8EDSeULWJUmpXGVvBdt9oVlU
 TrCcdXplxW7/gexGV3wRXJSG2EszM9B9kJ2q+kjrG0D3lSQl02mBaEMBn5MJN+5qjnMgyuNF5bN
 GIyr8eTbsB19mbvt4theqBuOMqXdArch0rNISPv3Gf1Iibiq2Jxv4iw9jdXlBIzls8DCSL/xPcb
 uDyB0EsNUI31P/EeH/AH3i6h80JtBA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 bulkscore=0
 impostorscore=0 spamscore=0 priorityscore=1501 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512080135

On 12/8/25 1:32 PM, Harshal Dev wrote:
> On X Elite, there is a crypto engine IP block similar to ones found on
> SM8x50 platforms.
> 
> Describe the crypto engine and its BAM.
> 
> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
> ---
> The dt-binding schema update for the x1e80100 compatible is here
> (already merged):
>     
> https://lore.kernel.org/all/20250213-dt-bindings-qcom-qce-x1e80100-v1-1-d17ef73a1c12@linaro.org/
> ---


> +		cryptobam: dma-controller@1dc4000 {
> +			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
> +			reg = <0x0 0x01dc4000 0x0 0x28000>;
> +			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
> +			#dma-cells = <1>;
> +			iommus = <&apps_smmu 0x480 0x0>,
> +				 <&apps_smmu 0x481 0x0>;
> +			qcom,ee = <0>;
> +			qcom,controlled-remotely;
> +			num-channels = <20>;
> +			qcom,num-ees = <4>;
> +		};
> +
> +		crypto: crypto@1dfa000 {
> +			compatible = "qcom,x1e80100-qce", "qcom,sm8150-qce", "qcom,qce";
> +			reg = <0x0 0x01dfa000 0x0 0x6000>;
> +			dmas = <&cryptobam 4>, <&cryptobam 5>;
> +			dma-names = "rx",
> +				    "tx";
> +			iommus = <&apps_smmu 0x480 0x0>,
> +				 <&apps_smmu 0x481 0x0>;
> +			interconnects = <&aggre2_noc MASTER_CRYPTO QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "memory";
> +		};
> +
>  		cnoc_main: interconnect@1500000 {

Right as I hit enter for the rb message, I noticed the nodes you're
adding are not sorted - please sort them wrt the unit address (@foo)
and retain my tag then

Konrad

