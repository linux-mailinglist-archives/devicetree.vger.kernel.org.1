Return-Path: <devicetree+bounces-198247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B23B0C24D
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 13:11:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A7B3B3BF892
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 11:10:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D604321CA0A;
	Mon, 21 Jul 2025 11:10:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EvppDEKe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CCA2292B29
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 11:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753096241; cv=none; b=k1hnFkIejvYKsZbhtu6Sggz9Fz4aNAZi7JUaj8Uprfq6HcGGZR1AG5lrA9QoW+sMAdwjxZPFqoJJ9njfTrx3qcFuioYUiN20wv6SXs4jCTaIgjVAWDl5Ag2/2lrmaZGNtw2zK2CAM4v11jXw5kOOm6D2w/S0nOENr/tLmS7niUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753096241; c=relaxed/simple;
	bh=ayVnVg9eme40xDElnjkpZrNBmaTxXUTukfPtFjBG+MY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KMBceoFpj74I8U6nGYWIFO0MnkrXN/h33+m53BwRg4j4urhDEZz6vxB2HTGeQfpdcZeVJyJV77SJwf+oZGlaBtLIh/PZCDsx362egwoKdvepKlkEFuOmbiRm7s1af+8bnTW/cUF0lP23tiq9Li4LrXFQyhu2nGpsRgyz6NibnZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EvppDEKe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56LA5ZCK000932
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 11:10:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GMwMN9DSD/nnB6vD5iQlaXP8fE0DlL0JKkeqnocUKcI=; b=EvppDEKeILxJaBai
	yXsQH6Toq6ipyVJkIf3hxQPSA0+mUa7KmwBWf/JSRQguTNAklSiRFypwbRGzZxv3
	CVe3ahscsFPJDSfrhCs0vxCDvT4DF6TRklYKcfEYUOAP+xKujAk7fPp2zQLD9YEQ
	AvJXHh58ibrKz2x/9x0GcwkGXDVRmHx2wekLHjeteXlWamm+AyRE85xa+2LPwQfh
	XhgEto2Q0sCDC5q5jELTGIgYSdKBu2eH7Ofuqn6Kj0tByE0m/hHeSBAaND2kCAzs
	efB1ucCGNuYJWkXVNKT7MfBXHOq6ANWGt6uuF3CNooQK+Y4dBmYx1Dex1VMvszOU
	C3Desg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48044dcqw1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 11:10:38 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ab3bd0f8d5so8554261cf.1
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 04:10:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753096238; x=1753701038;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GMwMN9DSD/nnB6vD5iQlaXP8fE0DlL0JKkeqnocUKcI=;
        b=Q2kZ/UcnMMkReme9euoakcrwTCMhY8uew0YkPAt0O/Edua3k7vNoUvlZ0ShUVGyHW9
         lgnS0VPQJcfiFnKskQ5Jo3Mlz37v+MQYjTcqC7LHv4avyEvWNuBG5aEl6c0L6ZL2yGlV
         t2Ek/gQ5A1/7DZAzMxjm9hIta8/FJtPZxGwRht2fKjdLnGyeH92yV43KI8werlHFCg+4
         MLht4hfq0qeN4k5wJD25m+0LwbjoIydIKAIiV+Jpst/50r60P1X1OHNbJBFO/1cSkOfe
         r3Y8BWxAsxuk1ILAcDQfj/+6B9CavUVjLVL8DDAeDU0gciJ3U9dTk+Un76UWwD+YaEN0
         8FIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBvOSJDJSKkCc4H5L+d/25Cw6t4NFRxOThMdZMrw9PyatXdZrdxJilnk6fMpIzw0xM31/xSSznwL4M@vger.kernel.org
X-Gm-Message-State: AOJu0YxPtjl23MtKZhdMFGrQDFHgrs7VOQFa3f9Hpf53S2oiRJJZpEAf
	vt+rHgcWIbFtKCvcBv+/2JdegtSidj19q+Vdr9SQnIruMctdvi/9eTQ/Fna9vQNcJxP7WVownHV
	AHygfN2izTtackWZ/6YxTmmfZNoFjNCa7/ckywNCZcOAQ2GCVwxlIhJZZdiPc8dBs
X-Gm-Gg: ASbGncs1FFTov41eERk4Ub4NV7fvs27Cf8GbjNTkxPfTao9JRQz0qcxS38YofEnugpp
	juBb3rxPft1TAA4PHVzJmYy4Gmc4fEQsLNOG+ynsDK3qbC6YSNS/YgKSgZ1q6Yg9vpgltrm1dyT
	3JVJHZGErrco55iO8TXp00F2uOJiLQrMd+5bpyOKm3rByH096F+7wN+41CBqSRMUHL4jPofeJV6
	frGW8+1iJGnjUE4Mz6bHhIJ2u2y3vyJmuXqCEwejVOX8YpUV3LOAJRPdHQAIUIcYO936suICe+7
	8NdclYs24wH0mRYBuRsKa1ZBI/9Lm28SM+Us2Zsal1059AswFw3XXNG8BmgyD8M2bB3DmlxvE/f
	WketKWyomFphCmH+M+xHJ
X-Received: by 2002:a05:620a:2850:b0:7e3:3c61:564a with SMTP id af79cd13be357-7e342b69642mr1175958285a.13.1753096237830;
        Mon, 21 Jul 2025 04:10:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+usxYJ0rcx0aY5PomFcpe95e/guIMzZOIesQD8S5mJPCtrTQdxUcKX9zEaBa9XZtr7TlJTA==
X-Received: by 2002:a05:620a:2850:b0:7e3:3c61:564a with SMTP id af79cd13be357-7e342b69642mr1175955585a.13.1753096237196;
        Mon, 21 Jul 2025 04:10:37 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-612c8f09d99sm5298795a12.3.2025.07.21.04.10.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 04:10:36 -0700 (PDT)
Message-ID: <4d7aa1c4-9dd9-424c-bce1-fd000ba2a56c@oss.qualcomm.com>
Date: Mon, 21 Jul 2025 13:10:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] arm64: dts: qcom: sc7280: Flatten primary usb
 controller node
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250720072125.1514823-1-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250720072125.1514823-1-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=BJ6zrEQG c=1 sm=1 tr=0 ts=687e202e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=3thKaPtOxDKtY4w2F4IA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: b_UPqKpUMoUzFnrNwEbdMnMGc09b03YS
X-Proofpoint-ORIG-GUID: b_UPqKpUMoUzFnrNwEbdMnMGc09b03YS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIxMDA5OSBTYWx0ZWRfX4cnVGaXHbC9T
 2d0d6j2TLJUy9JVeWQxv/le03LN9/m0m0W6NR1k9DTMZLYq0J92D3nesfv/UAWG+2g88ZDMI1aS
 Fk7bEetIH/yG6tvj8XLAjox3/FUhZO1MY5IuN5wA5rx2oY7G8IUaWGZGZy6QNnHTFCQdf7q9TTZ
 dPcLX0jdUky+DFSs4ZueZJCviWxvtoqAyRPXxBk9tQkmJg96Aj8mOEwpvxWfvZOnjptXvZ/gls1
 BFt+PX/WY0F2v4s/DwkjoPWBjz11XkmhNFZpnjHB85zJUdR6joUzs6myVvVjfDU2124eNDVZ+Xq
 fzDyDP41OD+FMpKUSVEcjE63Mb+A+LeJ+lrDdz+UagBoms6XacR+yxs6hfUgeZQmLJ6uQ4rMxCq
 ubQW0LWj7/BFP4CsskO341KCdx56FzhNuKYshJZ/k7Mx5K+dqnHwF7UFhdBvUYmPdC0fIlEu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-21_03,2025-07-21_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 mlxlogscore=850 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 mlxscore=0 malwarescore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507210099

On 7/20/25 9:21 AM, Krishna Kurapati wrote:
> Flatten primary usb controller node and update to using latest
> bindings and flattened driver approach.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---

[...]

> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index b1cc3bc1aec8..e94e21301bdd 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -4245,13 +4245,9 @@ compute-cb@14 {
>  		};
>  
>  		usb_1: usb@a6f8800 {
> -			compatible = "qcom,sc7280-dwc3", "qcom,dwc3";
> -			reg = <0 0x0a6f8800 0 0x400>;
> +			compatible = "qcom,sc7280-dwc3", "qcom,snps-dwc3";
> +			reg = <0 0x0a6f8800 0 0xfc100>;

You forgot to change the base address

Konrad

