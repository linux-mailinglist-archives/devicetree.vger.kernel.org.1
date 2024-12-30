Return-Path: <devicetree+bounces-134756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 505FB9FE6EB
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 15:15:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0847D7A0FC3
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 14:15:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 172D11A76DE;
	Mon, 30 Dec 2024 14:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ItAbCoRg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8579525949E
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 14:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735568141; cv=none; b=kzUoaCI54nzj7G8fhoERs4bug+As5mqW2ANu6UA/v9XKzF/SfrZXr0ynxR14MgwreZrw3CYDf+HTb8SBK3sOM1yXelnDxWdi+MFNvHC/9Q3hau9NtGd3CPwOmDl19nxM6CuuYv6F6iCdKm4VgBH2tqbA0gMRCJMCxBQppVhyDbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735568141; c=relaxed/simple;
	bh=2gJiDrg83SW5AzpajXuqJjoZxEcycpK73A6wF6BlEw8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GG+U6fNzM3SDsSOQ5NYIoRPuLutVgZ6trM8PWIHj7YrOMmbNsv+BkG1w7JVoDMb0Xap/tKOeU/IEanDy2IBIruZeIBLlm6P53FIH0hu3pnACjr1DC5+0B8cJ5pQNBPZh8iStfxmEYIqajzoDr6bVtYKtLkFfCPOyz9i2Q/EqQHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ItAbCoRg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BU67nq3022967
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 14:15:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PywX6BU9UcYXAQBoM8N0DJyd44/lchAxK7xEfOTSNWc=; b=ItAbCoRgA91tgvZq
	TaQn7GhKRBBRAMImQHqwYUDuqiEXPye+j8EkQ+iBp+9pYcWecOufD5+/DZAASUs1
	Ly5CAYqMmA996xE+bC7M+BHV0aPld7cd2V8/B7eKpnW+5skZiKEqFrnd17n97Eth
	ginsjNz9F8wTAuZ4/hjqdy47T1D2chDc2sc51BHs4F5kze90yVXnVdOtrMb4+bY9
	eS2DOJbYwgWAzoIS3wsXId4nyelwOlZhONlNamzyO8Jyq+GZInUKw7HxmNMeQ/Xh
	pgZ3qTNSM9fWQB+sxMq+4gdBTTYd7w+a/l3XdpQnMYk4aRp38TPKTRHexsziYOk9
	jEd6xA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43unys0y3f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 14:15:38 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-467bb3eeb04so24156501cf.2
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 06:15:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735568137; x=1736172937;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PywX6BU9UcYXAQBoM8N0DJyd44/lchAxK7xEfOTSNWc=;
        b=I90pWxM/vnxRYIHdeNYxVHAEw2T1YTI1NzK+L8FPGmClcFbKebnSsUJPJCoTnPGKsL
         RbElglfzXsXHHE7akth8cjdrfAwnNg8Zg0NeEVnsEpv196LvU29h+SgKyPHpxTKjZMzM
         79R4mneej3PURQT9rKqD3K1QKbAvYGNyLzGzv9ghrUIM3DiOO7pkIUamKThXdUMSeW7X
         +zl+Tlu6ZrEjt8W364hgZ8zvseSdHR3swz0OWbM4UoVGBi7K8u8ark5qn7E2/yLVvd6j
         fRmJaHrM37u/+ZEGZvO3A7FOAfCgTdAuybH6Bu2v77ImW/gwmksapPn02tF0F5JAzCpj
         wQMA==
X-Forwarded-Encrypted: i=1; AJvYcCXT6Wa8OZ6ZxsPtipOPoPt6HXwrU3kMeOKKAPGqJuHC4net2gqV2DEWCzseg4f4NvN01RhfjLI8zT0u@vger.kernel.org
X-Gm-Message-State: AOJu0YwM7j47LPso6EOyr5Ev/MvRXfGVba92sc38oCEMzwYQvVsiyftL
	SCHkSGpFUHusek0cyS+BXKU14w0CXetPrEOLr3/zqtsZQ87sPzfnKnSafd3H/dyTqA7D4GhenF1
	XT3Hd1R10hrv5rCEKMoHqHwZ/GmjrIJ7Ml9EfbXnj3o3yZt2gefmXU6ZjeS8LS8jso8w9
X-Gm-Gg: ASbGnctGdkp9pycdKr9NvWq0NC66IiAtDH48ylnyfXMe04C669vpD1haOx3uSuts5Ey
	n1xdAjPwSABxeeV181qzMyKEJMN69NX8Recfgv6vYupGQb0vsgLq5vpdNL+rVdvMtX5WV0yQw2p
	nZt/S6s3QN+U11VgNhDh6mSK4zyq0o9TUWS6v4FdG2PnCPJAy0VM8yjy6O649iqIxc3eKU32J6Q
	ph/dP2nGU2YGJGan0H+0OUZC8mTgxJvy89uRN58uIsqJUI+yzf9gadYRF0P2RUMdQGdY1C1GEbo
	JqsQeeS1hqMGHxuzivv/67mFE2oGbHHKWr0=
X-Received: by 2002:ac8:5f4b:0:b0:464:9faf:664b with SMTP id d75a77b69052e-46a4a8b7f74mr204199601cf.2.1735568137304;
        Mon, 30 Dec 2024 06:15:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEeqG3snSa1trEhInzGZS8PZrAUjWlvEMbkDearlGy+9rV+yGg2Nuls3EGHim3OtC6duVecdQ==
X-Received: by 2002:ac8:5f4b:0:b0:464:9faf:664b with SMTP id d75a77b69052e-46a4a8b7f74mr204199351cf.2.1735568136947;
        Mon, 30 Dec 2024 06:15:36 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80676f26dsm15303185a12.20.2024.12.30.06.15.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 06:15:35 -0800 (PST)
Message-ID: <cb90fd75-60de-4df7-bef1-e5c832601a75@oss.qualcomm.com>
Date: Mon, 30 Dec 2024 15:15:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/4] arm64: dts: qcom: ipq6018: add 1.2GHz CPU
 Frequency
To: Chukun Pan <amadeus@jmu.edu.cn>, konrad.dybcio@oss.qualcomm.com
Cc: andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        konradybcio@kernel.org, krzk+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_srichara@quicinc.com
References: <88cf612d-cc3d-4cfd-b6ba-49739d598e69@oss.qualcomm.com>
 <20241224070018.2264908-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241224070018.2264908-1-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: BD6YDz5PuRruiAeylchDokY30K9Wi45X
X-Proofpoint-ORIG-GUID: BD6YDz5PuRruiAeylchDokY30K9Wi45X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxlogscore=923
 malwarescore=0 suspectscore=0 adultscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412300123

On 24.12.2024 8:00 AM, Chukun Pan wrote:
> Hi,
>> I think Kathiravan only wanted to make sure you have the latest bootloader.
>>
>> Looking at the documentation, I don't see a 1.2 GHz frequency level for
>> this platform.
> 
> But from the merchant's publicity, ipq6000 is 1.2GHz:
> 
> https://wikidevi.wi-cat.ru/Qualcomm/IPQ6000
> https://www.gl-inet.com/products/gl-ax1800 (CPU Part)
> https://www.alldatasheet.com/datasheet-pdf/pdf/1246071/COMPEX/AP.CP03.html

Could you try to boot the BSP software and read out the related
registers to determine the real CPU frequency?

Or perhaps, if there's a cpufreq driver (I don't know), check syfs

Konrad

