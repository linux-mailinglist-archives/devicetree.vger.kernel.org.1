Return-Path: <devicetree+bounces-250798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCE8CEBE28
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:56:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 59988303C23B
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:55:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57A0A320A2E;
	Wed, 31 Dec 2025 11:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dqDw7voi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WYnUqkVU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF817320382
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767182146; cv=none; b=iOmffVcOBLQHaYjkc0GAeQKgr4pY0N/g4hzzSiCyEaI/QgZElxW5K7H9qqgM3VWieutsVXkFvAa8T85z23S8pKh+WZ9NNW/z4OfCYW7qazgWu3hthDMdX1tzyzEbrsWIsd3dT0MnUyvj438abnNGMXrUAu9BNwUBL/TpMCpNF+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767182146; c=relaxed/simple;
	bh=26ZCebUf1Nu15xC7Mxv8B9cg4rTzsV8UwyCpMlmipM8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y226NJYR1HsrSZ4po1xAWJEMkHBIVm6Lz7IFPvmvcG6F+TN4Gg7Jx/tp1hfA/GwqPsat7xXOWDy/3dUDFGayJA4zLq/SF9yjmSa7f/XASLrKCuIcy/gP9pUM5QQVjV7sKig2U8YUT+eIckLzfcvtRKTajm8W2Wkdoq9q/k1gmkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dqDw7voi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WYnUqkVU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV03YEr2553078
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:55:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mZtHDvv9a/Lx6wm1a7+DDrNkrtZyN0d2dr5ef8ynUaE=; b=dqDw7voieUyWUY1K
	cP+l7X811toMTHk3NGsD/p4B3Sj6KO03LpOFP3A+VE2n22PftpRUOM6Q6hBPTR3F
	VNI1k1oWs91qS+y5Tdmd0Q8ME55U2sHLKDYvOAWyvUVmvYpyPHo/fR+F5QT/Dx3n
	PTjbMv7q6d4jv4ndgNod3MdybK6aaTSYOjW8kgfHOhrafm2FSJFz1nJKhSjAfQBh
	GIsP+CWFMTGHm7gOibObuFV+Q9T9RgBucTm3EVcGG1X1d3hbcHl5kOuYizRbg1Bb
	E87miiS2F3nVYLFaLaFanwJv2p0NeeoTlxEVIG3ABRk7+1fHO/UBU7jBVA4V1aAu
	n5WK2A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc0skm8bm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:55:43 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f1e17aa706so62089461cf.2
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 03:55:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767182143; x=1767786943; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mZtHDvv9a/Lx6wm1a7+DDrNkrtZyN0d2dr5ef8ynUaE=;
        b=WYnUqkVUlIlqo39OD3ghwnrvbT2BJJqyL8d16HGTEbEY79PxB8HHeqA0wU0N/pKOj+
         N5G68rV1tc7uyi1yacM4N0c40kzRLPFXTwooTSO/pH8hnuCMmmtgXjuN3jkh/Z81nJgy
         Ts8JmiWzRXxJIC9XWaFcY2b1NvXwalxHR/H/8oRbPxsuwERlZ+NmgCJefGmywAoS94wF
         dJYmDQhah6Jb7NnGdjKJkbQCcg2+MqWvdngf75Z4lNQYG+qFchUZ08D4Pv866o+Fa46d
         Yhj/VhDI9lNdgIRWPNeKw0Ivx6S95rSSmcOICw2tsgoZ4W/mS9cqcyS+wd97aS+jS1Qc
         +A5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767182143; x=1767786943;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mZtHDvv9a/Lx6wm1a7+DDrNkrtZyN0d2dr5ef8ynUaE=;
        b=uT0Yc+tCfX57b8pvK0dKYjBUPBdepNz72YEDAN5mCWIEvXmJtkJbSafHyzrPiUccLG
         JBPfKgd01n1LDVPp93UfAiMbsGubLc/FgFNmsD/ugn5UPnym3H8woeOncTLnTWnwwVI1
         7dCH4E5/ISZSFheT0JophiebXYd58aP6Vmr0NaSm4Zm/soErO4knUEvGWVlueYXpz4IT
         F1q5J0cPX9MgCKjiEFbVyAmu5oj5lIiGs+E3T/S9DvB9DmgVHOwo+NcDAJnRiNkEbmLj
         Al07zbO2d3f3ov4k+QAUiIGYS+Ke+y153w5oFMztfRDxT7ZeqeIRuvX9oNfWZkczuEcP
         mgWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRbCO+rk3TDkkqB+H7wFyFMIpRpbSIVm5fLUDGxDLnsDUGVtCOqi/VgM1Zbxl100Wq5mehzZ9AIda4@vger.kernel.org
X-Gm-Message-State: AOJu0YwqbgOuokTDFV8shX8e607+b/PVNunaGfhm272vP77+ENUCuNKd
	IAjs+ivJSLJpU5h4OZrAdMdOEhQptAEBtocRlM/0YrXKLTHA/3TZ2txgY2XpaZ3OZFMnMT5WbMU
	m/BDCYi/8GPKWpglST9i44NDPflAAL+bhFLb5utqreHQWSOqLTqmw7oajNTnd5Vws
X-Gm-Gg: AY/fxX7fU9hihgA7s6ERDF0vX+MwNFi9Oy0ifZYUnEjDCTarA9t6opLbelmug5CzCwA
	jcLmoohS52LQ62GdHDbepxA1raM0GFg93P+FTKr/MNx0/JixNxP3f0UuXep31CsoF3mRiDaNudJ
	cIFErDof3ElOD9QeNdLRVxlorNJ3tR0eOdI4ZFy7RpK6ivu1+xPDvVd9b3ssQjtjsOcGqgFZgDU
	VKPYYo0Mkb4e/ehT2FBO+R4mSMkBH6EDAO0TMK2ooDPh5SfrmWdNch0qs0ne5bQAA3jU9312Cws
	YX/zjsdXJmMF3fUUFCS4ULW63HT5R4N9LT/JggCi7fPYNLxCPheRAzCHOqI5R+qfOX0m9aTbITZ
	yQre4Hl6PaOLeagOxhCjyIQmEyaAVZMO42/nBYBAjUqmnP1JQvL5uDJZjzE2Z09e6lw==
X-Received: by 2002:ac8:66c7:0:b0:4f4:b373:ebf with SMTP id d75a77b69052e-4f4b3730f72mr283982261cf.8.1767182142888;
        Wed, 31 Dec 2025 03:55:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEOvZSDvJ5tWhebJaz+nD2zV9fr+3lvFxOjJPyUKgMXYAXQDj6ZhM1nsqD5NZ3p75eeUOyj/w==
X-Received: by 2002:ac8:66c7:0:b0:4f4:b373:ebf with SMTP id d75a77b69052e-4f4b3730f72mr283982021cf.8.1767182142516;
        Wed, 31 Dec 2025 03:55:42 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b9105a9c4sm37947767a12.12.2025.12.31.03.55.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 03:55:41 -0800 (PST)
Message-ID: <4e480e00-c112-4425-a5c3-bcae444846db@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 12:55:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for
 x1e80100 SoC
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251231101951.1026163-4-pradeep.pragallapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251231101951.1026163-4-pradeep.pragallapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwNSBTYWx0ZWRfX5RGCw8mGn3FQ
 DhQHIiNPO4CEzUA4/4I7LqpfapStCQrWrwWDRszR59oOz0uh0wvOPUNswrN+uLD6DKanhi64EAv
 XZWRZuFy8I7REysc4fCwgE3t/h5Q5SEocnsCz5K66ZGbUtE5HsIknJOexn5lUjIMeIezbD60zRE
 ieQWjFqncJOpz5C8JGwinas2tmAV4+QZY5xWfiLFn7bTV9MO67kRsKmEwsb/HcBc0QJ669/EGAU
 Pv1e3L76+4UJ14FDinivPZmUKMmert53D9eGWsR8EVlWBbPh87gosFxnWFs6YfdCU/3DDixp4KR
 Ebl28tbOjFdFPVPYsA8aMAJpTD6e8MEjJ7MgNHkeOd8FBFNFlGxPQfHtbPm1JkYc6mX+QHylBLK
 zpkiGzxcF0bFJIDB7YUukjxUvVxrj1K5xx90n/mHygQespM8qFMtYeyguE3w+kq5JuVPlL/jwDK
 XDdBOPR3NmjoU8oMszQ==
X-Proofpoint-ORIG-GUID: oAYDRfs15H-fk93XK3fa7UASXcOP5t3X
X-Proofpoint-GUID: oAYDRfs15H-fk93XK3fa7UASXcOP5t3X
X-Authority-Analysis: v=2.4 cv=FJ0WBuos c=1 sm=1 tr=0 ts=69550f3f cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ZKaqVTGohnnJfaf7M5wA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 phishscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310105

On 12/31/25 11:19 AM, Pradeep P V K wrote:
> Add UFS host controller and PHY nodes for x1e80100 SoC.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

