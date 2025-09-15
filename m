Return-Path: <devicetree+bounces-217368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7D1B576E5
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:45:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 92FA916438B
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:45:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 441752FE06F;
	Mon, 15 Sep 2025 10:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FZz7aImc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A14A1747F
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757933122; cv=none; b=Qfl4CUMU79QjW1gIe0ePGmAGL8Eu+HD693qaQQUybjKFBETzdTYTLqnxK9p9yGaJwHkKZaoquHHqMqiEOWbyiEzyMYr7NK8h+jKalXCrouh9jw9nqUJEL0GviHUon2fbzIBAPQvtz5CNFwYaXLiuMA5+hsVHtEAC9lSna+9nQkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757933122; c=relaxed/simple;
	bh=4Hqmjd3+E40zlmae07f3O9TiuExFlT7eQnjsd/l9Bx4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XO4KbExQFT0+feIdm3jkB0gsQ/QS+rrqZ5qD9kEINGHUKaX35fDJV5TgxSeW13nQpTTKaLadbiH/taJKy+XQ0exxH2w9T4T9D4X2aNzpnc8OaWn1S79Z6iGfxgbSNQlH/K6atg6IKmq60bkwZEpfsO719/KLE8AMwV3rS0Rn3PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FZz7aImc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F8FhNc031681
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:45:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3q9UHllEUzo7emL0csxSsit2MUCrJ9I6itNrb0wCCSE=; b=FZz7aImcq32G0kDj
	Oa/v2b1+4ho8TvoVx33/+DXzLu6BhQ+T0y2fU2AyBKpZPlGY9Kk3B3T/s4UjJO3x
	noR9HzsHnCHE+qs5qXNp4LA5L38qpD8KRJuCcw3w/RcKtM9wFfXVtWC2ygn864pG
	6rGWIDOGU0AKw5IN5vhxFFne2Pc/Nh4htyRXVZYhuEhEUAumTfGHbmSoyqc//iri
	+LzLbhra0i3BdLPrYDkwj24dJQofMd10m8psh9gl40fmyJnQ5yXRiuy3sylmDUXj
	zlOs2iqquxLthxrORvtKbARxuKl1sCNtqZU9sIW8cVCoHU0oN7K3b+l7k6UKzjQK
	+0QCbA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494yma4n99-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:45:18 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-24c9e2b6533so9355305ad.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:45:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757933112; x=1758537912;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3q9UHllEUzo7emL0csxSsit2MUCrJ9I6itNrb0wCCSE=;
        b=xVgWACUqxFfRuqxvve/U7VQVzJNyUn3GMYpd8xvoCkXpMlQ7nGKrGc5vf7UZJeQgFc
         54NLq7tpdN+K02fzVNB8ihzAOa8RABo6cCdIB2+pmIK3lpmrHAGlVwVuvK498IBgpvyb
         nHbnwRZWDE06jk+Uu60RWG//WE4oT41VUyanavc/jgaOoI30Eafo7MvckuYhF6RASFVZ
         iqHZ+MMT0EhpJJJg3gvOnUg8TRpdyjibKbmrW4j+SvQsOgBj5Br1ifM85JY5ogZHc7j5
         tQVd1jljONnyn4f5ZlpQN9H67Qi6Q3aWbxZyODKzKtDj+F8v3wddpJmApUKfEM9e9oMf
         2/5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWlxdrDRSyv3NAYNjO8Vi332Xuo/+6RIXJHpvsmT+HnROqXUprBlcHltlpAGfnFOrKo1tmlkerm6ysr@vger.kernel.org
X-Gm-Message-State: AOJu0YyzWtf4DxLqGR52piTrfVs3cz8oUjN8EuWhIZIlLymUody83N/o
	DMeF/oyJ9UUvd70F90/zMa4pzX7ApfyDsXZfsNDxnouFZUFJTRPN1pJ8Adp+2cuuILNzqh7xPSl
	Bvfd3p/t+fXdQU/+BBtondxm68+O3GVKpUAXqAcoJsxd9CekJiloqCeK02hEC5UK2
X-Gm-Gg: ASbGncv6l21UG3QjcpgqbdwdNtIFmmQ1w8/l2DQOH3h/M9W4IeL9bQfwq19zRDlhhhQ
	KC+fHH4FVHxs3JdUYH8wSpwbj+y9xksws6tw9f/czxICxQs9rNFh3LA+n1KkRl+kpk6Puw2tFEz
	4bI0O9kRCa6RrQgW/qieVd6M60MHx2KD48zdfal76WudgeDRxVAGohIDNbaOQhXzJkAeqcqJ7cm
	H0eOvvjLDw8Fj7WSyr4xNGQogKz0rudip93bjeEBtC88p6lwL00trC6ZYLP94jtBjaaPlu7WjNA
	InuE5vypMSa1jHwjKpgbEFrsTgDJt6LOayQYEDfjWZlXOCMitDiS9FXa5PE2c8rS+Skt3vR6PEa
	clQv1GQV88FKKjLKsY+FdZPNy7aS0EE1fKqM=
X-Received: by 2002:a17:902:c94a:b0:262:923b:4e2e with SMTP id d9443c01a7336-262923b5125mr46665275ad.11.1757933112387;
        Mon, 15 Sep 2025 03:45:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYdD9O4QdRiVJ5hAs101DS3Zf4FAq6fcZz1dgavqsmhdSqj3W4RYmxEazrWjBJJAH2vJCcqw==
X-Received: by 2002:a17:902:c94a:b0:262:923b:4e2e with SMTP id d9443c01a7336-262923b5125mr46664835ad.11.1757933111666;
        Mon, 15 Sep 2025 03:45:11 -0700 (PDT)
Received: from [10.133.33.231] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2664f0071e5sm27436305ad.68.2025.09.15.03.45.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 03:45:11 -0700 (PDT)
Message-ID: <8baa3f62-8069-42cb-810d-33e1ad61abbb@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 18:45:02 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 08/13] phy: qcom: qmp-usbc: Add USB/DP switchable PHY
 clk register
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-8-2702bdda14ed@oss.qualcomm.com>
 <6p43oxn57kke5eotoqtt5gqtmhmgeteoymewqm3ko5q5veyegs@krkh4dwdno5i>
 <335ffce5-19c6-409d-8386-686fe9e5dea5@oss.qualcomm.com>
 <7ozv3u7xuvtz2x5q3pp5kdeydtsu5jlrgwjnxpxxiuh7przr2z@35uo7t3b4ze2>
 <05e8069e-895c-48b2-8a25-a4a680728cfa@oss.qualcomm.com>
 <ykxl2xjrabsvs6llaf6p3cpiler2nhyrsbnhrbvhtl2is27cig@fbtj45n4e2yd>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <ykxl2xjrabsvs6llaf6p3cpiler2nhyrsbnhrbvhtl2is27cig@fbtj45n4e2yd>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAxOSBTYWx0ZWRfX9+BVR5WkFpAR
 UsvHQ9D8XEhxg83Ji8UpRuZfPegB9KqhTe8OLps0iTSlWg7nZbozkwHdkqXnnejPprlYJGo6hEe
 jfqK1xOeklWzAPs92F8aqRYtqVqjpTbzdAI8kCTaOYolRWu5PFXaO269AYL4KsYNVanfNWvjXZz
 Mk3pRJwIoFBvvb40t1WKVB38cTRebt3CL7yPsvG9O2qSGmHyH9enYlPlSUqHCgHmP+vhmPLFutK
 xcwXNz5rtIWXNeAcrog2fRqfqdMAmdNH8G4lrecrdyljd0ZHzfBf+MndzY/y1Fs5pjduyb5epYu
 qCl/e2BIChQbxtO5PqSHnoKShPEF8U/ejrezQhI0cA8eYR5+tKroa8884mqtQ6VklWjVBjPWVyq
 uA7zYvYR
X-Authority-Analysis: v=2.4 cv=cdTSrmDM c=1 sm=1 tr=0 ts=68c7ee3f cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=rsY2jHysN4_Lp2AvgbIA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: UhYqxFMVA-GQ1JMNJ9giijgYxm51yc2M
X-Proofpoint-GUID: UhYqxFMVA-GQ1JMNJ9giijgYxm51yc2M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_04,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130019


On 9/15/2025 6:14 PM, Dmitry Baryshkov wrote:
> On Mon, Sep 15, 2025 at 06:02:19PM +0800, Xiangxu Yin wrote:
>> On 9/12/2025 8:08 PM, Dmitry Baryshkov wrote:
>>> On Fri, Sep 12, 2025 at 08:00:14PM +0800, Xiangxu Yin wrote:
>>>> On 9/12/2025 6:19 PM, Dmitry Baryshkov wrote:
>>>>> On Thu, Sep 11, 2025 at 10:55:05PM +0800, Xiangxu Yin wrote:
>>>>>> Add USB/DP switchable PHY clock registration and DT parsing for DP offsets.
>>>>>> Extend qmp_usbc_register_clocks and clock provider logic to support both
>>>>>> USB and DP instances.
>>>>>>
>>>>>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>>>>> ---
>>>>>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 208 +++++++++++++++++++++++++++++--
>>>>>>  1 file changed, 195 insertions(+), 13 deletions(-)
>>>>>> +	default:
>>>>>> +		return 0;
>>>>>> +	}
>>>>>> +}
>>>>>> +
>>>>>> +static int qmp_usbc_register_clocks(struct qmp_usbc *qmp, struct device_node *np)
>>>>>> +{
>>>>>> +	int ret;
>>>>>>  
>>>>>> -	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &fixed->hw);
>>>>>> +	ret = phy_pipe_clk_register(qmp, np);
>>>>>>  	if (ret)
>>>>>>  		return ret;
>>>>>>  
>>>>>> -	/*
>>>>>> -	 * Roll a devm action because the clock provider is the child node, but
>>>>>> -	 * the child node is not actually a device.
>>>>>> -	 */
>>>>>> -	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
>>>>>> +	if (qmp->dp_serdes != 0) {
>>>>>> +		ret = phy_dp_clks_register(qmp, np);
>>>>>> +		if (ret)
>>>>>> +			return ret;
>>>>>> +	}
>>>>>> +
>>>>>> +	return devm_of_clk_add_hw_provider(qmp->dev, qmp_usbc_clks_hw_get, qmp);
>>>>> Do you understand what did the comment (that you've removed) say? And
>>>>> why?
>>> And this was ignored :-(
>> Sorry for missing this part.
>>
>> For USB-C PHY, the legacy implementation only supports USB with a single
>> device node. The new driver for USB and DP also uses a single device node.
> There is no 'new driver'. It's about DT.
>
>> The function devm_of_clk_add_hw_provider internally handles both
>> of_clk_add_hw_provider and devres_add, and supports automatic resource
>> release.
>>
>> So I think using devm_of_clk_add_hw_provider allows us to remove
>> of_clk_add_hw_provider and devm_add_action_or_reset.
> Which node is passed to of_clk_add_hw_provider() in the legacy DT case?
> Which node is passed to of_clk_add_hw_provider() by
> devm_of_clk_add_hw_provider()?


Ohh, legacy is child node and devm is dev->of_node.

Will add that back for compatibility.


>> For combo PHY, the legacy implementation uses two device nodes: dp_np and
>> usb_np. To maintain forward compatibility, we need to keep support for
>> both nodes and retain the related logic.

