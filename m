Return-Path: <devicetree+bounces-250802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 10537CEBE68
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 13:08:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 45CDF300E7BF
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50FE3320CAE;
	Wed, 31 Dec 2025 12:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JYYetMHs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZrKX4M3N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB45B2641CA
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767182887; cv=none; b=JjOa5Odmu+fHru/4kfqbd8mUpK2QFsBxtQwliJ0qECVGtzCV6HtCYGS3UUXMeFJyaKOcus/9uP0nelPAXrPyPZ4vM8XjuNeTxIrgG8FL3/dcWjP8P92HRDRBUzPK+q00NGaI7d9/zOxizQdcYIcAbft0JTUn5TZJI0oNOJjp9F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767182887; c=relaxed/simple;
	bh=UmgVRndD2m6Wy75Clz1eg4Rh120+PEWhxXfNEPFzvJw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lJx7s+ToHxPQofY0r4xCkBcpsgCdd4KFh4/+5IN47j3sfjYrru62vnn/L1S9R7pOBUAapNE7z9ZXzf6EFkpgHly1W5QuRhFL9B4uJloghuC170vd0J30jOkLh/+58N1SCGKVZmY0tWIwdzoFFBLMJwuspCnBuIvz/Y1hwMe2jPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JYYetMHs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZrKX4M3N; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BVBMPkR2552898
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:08:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UiJtaHWpT52Ir4SAEeA1tuRYvR+ztp79Uz63Q9MOA7o=; b=JYYetMHsA9nLPALh
	XQ8f+wUf9nxQMuIwnd38JtG7hDZLzN4o4+TD/ckycxr+7gQaMLh50EIYQKZ6oATk
	qcll+ywSq6o0u/AHb9VB99ttFSGI3DUhoa8R31nuG4UeSmyecQ4+sHfamSDb2oh7
	LIjvbTcCuZTBVs6wArIevnxz2V03nrzDOuG8pddkbTUTiq7OfvnjZ6EAroF9TAMw
	XdYPvKFGP7jWjy8WS7i8AGO9p1sHEpzj14B6PcjsKtB0hXURCwzqKuXTcoJAOXXm
	psWe8wkK+kOx394c7HiWsu5MF1nkkvBcWBg1ArsyrKiYAAibjHW0/kZdckgMsM/Q
	TWuPbQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc0skm93j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 12:08:04 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee409f1880so29259311cf.1
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:08:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767182884; x=1767787684; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UiJtaHWpT52Ir4SAEeA1tuRYvR+ztp79Uz63Q9MOA7o=;
        b=ZrKX4M3NP/+XZkHQ43VEno7s4099ReUYleOwtEVL4R0+sZVH+JSt1Igb13nbsvYtsV
         y00VuPZNa7rJOgPMTQl1jq6LA44aXkh2VQ/AS2cwHCaBgVdgzyoEe5/EZYtb+CbIpHOm
         aPIzcfBY9xCTQwcSIgCHAs6iDw+0m8xqzNDzd8v5XYmxknWyww6MvzPiSU0lC3e9DpDe
         fK5lhHA7z5KmDeLCQ2ff31vfrpUqI4YBBghiy4tQ92azyjLx2C1XGdzXGhuQ97wRhwzK
         AC+SfXbjn3dNsJoJmkSLlOuUAKuaBGZNwqfr6rd/E8zz6/gurORPDL8SZuUR8g09JYll
         QBtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767182884; x=1767787684;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UiJtaHWpT52Ir4SAEeA1tuRYvR+ztp79Uz63Q9MOA7o=;
        b=chabD6t/+EBzkvwPEreCOOKssViNiKnvGmgENMhW8kHhmpAEmdg9jfHFe6Oz1NwLGO
         E6Co8LSVLFfISXvvehWA7IDOKCFTrHjjN1npxW6j/vpWrO1VIoRnUjKcJ5R3kDzxr2Pl
         zO7JtyLSKcFXxzftq6SN4WRgquHy7VUX70coE55BkdnVOUO7LHxd9ac7cUZOT8+KsbYN
         QmizJ+2TbQXVGP7noasKYiMYRAY51PFZBvH3723+/cYSRDWRugWxxbjDU6x3pmWGpq5X
         x4ZGTA283RxfPsetM6/TrbP/Fqay4KZ2zTPiSCpyFAEq8vrmmk8yQU6fFFhNxsTYWQsU
         pjdg==
X-Forwarded-Encrypted: i=1; AJvYcCV3nPBtf7iFvbG4mS7yPu+yLVKBAfm/ZvQiX7qa5fbg2MeTP7UxsQMYrRrl4t/KfETE4JbFR0+HFP7W@vger.kernel.org
X-Gm-Message-State: AOJu0YwYWG2TUcbpM3Adnmkh3+hlHvSQGr7Ks+k/lXFPEW6mMSlgJLa4
	je7QLwnTiqL+lKFIvxtelN7rFx7tZW5MrCdZrHnu9nx/kGJDwUm/WSKCtnFN7VzeCX2+pTzb620
	txfuoQCh8Sz10HsY8Lr7KfDmGOJyB0dnETwVBMybwbSsPZu6hgi9+tKOMw+rVCWpE
X-Gm-Gg: AY/fxX4G9IEGxDHLYerXXvKfYiD73oX5uikyuxm8nPXUW7cBShcYRO/VFKnf9wDVjCJ
	f4aGUKw56j7DJqiKfa0xC0E4zx0JGp1676G2qHjRNNTVMj+t666FXkh2QzpSn8dNcu6SvDNwEjM
	SkY/7UahIR1eYYLdaPEFZZpCDILKf/bNa54x5mRvNTokKAfeM/uuExKMFC2kOtKnS8DQZTFjx4G
	1W0YvfBZvSq45m0r2aO53FsrFLzNWRP15e2bRAPP0scv5RgEohubljNNoIm6cV7MnBVQBCXTO77
	+CCgUm1LjErAMoQMqRIsEG52HBEMd74kyk30NxG4JooZRdlmionpOc1VnKr5VDqrR1bqGuZ6M23
	R00hEpReReeD4/nCc6fiutbEJEbQZlwvBHWj5u0cHCgIVzsl+FzLZkZpYjrRa8V0SzQ==
X-Received: by 2002:ac8:7c49:0:b0:4ee:1a3:2e79 with SMTP id d75a77b69052e-4f4abddcae9mr410146721cf.8.1767182884069;
        Wed, 31 Dec 2025 04:08:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFiPNC0oH8EFPcBv3otDppGjXcWFCcR/VT+vF4VQNNWa4RvyRS8nRSCSTA96lyQ4NSKnYSHFw==
X-Received: by 2002:ac8:7c49:0:b0:4ee:1a3:2e79 with SMTP id d75a77b69052e-4f4abddcae9mr410146421cf.8.1767182883666;
        Wed, 31 Dec 2025 04:08:03 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b9159a6ebsm37604637a12.27.2025.12.31.04.08.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 04:08:03 -0800 (PST)
Message-ID: <83bae671-3174-48e3-b9f8-412d21f8f18c@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 13:07:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/14] arm64: dts: qcom: sdm845-db845c: drop CS from SPIO0
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
        linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
References: <20251231-wcn3990-pwrctl-v1-0-1ff4d6028ad5@oss.qualcomm.com>
 <20251231-wcn3990-pwrctl-v1-7-1ff4d6028ad5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251231-wcn3990-pwrctl-v1-7-1ff4d6028ad5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwNiBTYWx0ZWRfX0RvZmBsE0Bo0
 Bl6st7pKAjhVZpMaIE+WbZFJnfHT/vXLqqe0KY4nd8YvKZL0OW0TqQHYHB6SA5Uelyx2PybXGdS
 QlZmd/zA6KnqO90n/yh4KP2LbdDZPpstXti63+oy/2+z+Zlf/jfVUUoV1yDxTV7k1YExvHUIJoY
 oqP7JSh7nSHsTLMdoYqoMDT9B01wkQ+o0kp/rUUsybBhh9JGZXOplfMBD6ZZYbz0VJUI8IXpMiB
 pHUW+X+DPYPzPhAgc6BNauw4ruU29NTJDMR9EWYAgHycnlLnZgx8aG5vXfX4j6WfgfXd//LVegI
 DUrDyrFOj4bxAYZyGZi4GJKzixdNm3jX1vTnHHTxEPDlSsZCf7hfwLMmOh4jBUoWTz31cfjpdHy
 ijjTx8irm4H8TnBJZyMkMHhBn2eV9ppFhv1OH6HK5aBj4k1Jqs1gUfhSP8ZhSpf6XkqGCqpFf/X
 zF5SNyJZ8oZ6gNhRHzQ==
X-Proofpoint-ORIG-GUID: -upPJieWWi4KGRhTlW65gybhVJLDW185
X-Proofpoint-GUID: -upPJieWWi4KGRhTlW65gybhVJLDW185
X-Authority-Analysis: v=2.4 cv=FJ0WBuos c=1 sm=1 tr=0 ts=69551224 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=wl_8aIJEU-qjyxFuvXQA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 phishscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310106

On 12/31/25 12:35 AM, Dmitry Baryshkov wrote:
> On SDM845 SPI uses hardware-provided chip select, while specifying
> cs-gpio makes the driver request GPIO pin, which on DB845c conflicts
> with the normal host controllers pinctrl entry.
> 
> Drop the cs-gpios property to restore SPI functionality.
> 
> Fixes: cb29e7106d4e ("arm64: dts: qcom: db845c: Add support for MCP2517FD")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

