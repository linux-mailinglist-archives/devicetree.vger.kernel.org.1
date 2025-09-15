Return-Path: <devicetree+bounces-217340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D77B575BF
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:12:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8EC203A57D1
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DA0A2FB0B5;
	Mon, 15 Sep 2025 10:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZBc6wlxT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA41F2FB09A
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757931143; cv=none; b=Rz96AD3wAtrbm3wA2YFz5LcaUvouOadFCOcTS1sI/HBSMP+maxjicGO4A7pJqBkzH1prLWV8wozigf3nOo+TS0Rtmum7LjezEAFLfZ/HMvszeuMUApnH9Mis4t3gxPMy9azkz9RKowmi++t1NOxVCklgU2OKuGyQZuKL+Q4RUgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757931143; c=relaxed/simple;
	bh=jG342V/c+j5CoBX7FP4+dyAJiibjxkiQ+yvM5FWlx9c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dhKSqRT/wbbHBowAdxtgENZ6uYsJNa4AElb8G6KPBPsJjbxgo3k/Nh93ZeJmfy8kk5aSAXIa9TVM8GHhjfBgIVkFa2Y0vsr7doi/vNzuO3D2ZUBQUMIsiWDJgn4VriaES2ZMaFYH+AB3e8qrhIIWMRaV82Gc7Vr78H63gEgx880=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZBc6wlxT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F8Fh5i031757
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:12:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sKD/3kPWUFAIEKI0UmpKQAcxh9lP5Wru5KsNYI2Yxfo=; b=ZBc6wlxTY2NrEsig
	4fQSCUgYY0661833ZRKf3dhutGaTAzFuHKLF3C1rfXISL2/jQUDk9D013zPWen2u
	wZIPk1j2YBJ/R2kQl07dACQ8jGwRzyItehxgwlk9Edh24ZmWGBY6yc0NnX3mcafn
	0HNtDPxk0fs1714LQ6pRoeqkF0tzHWRE4bSyy6Qwq2eP4gNuu37lfyKUwfMoHrVE
	QTYIw+5pNEaUPbC9mwZ436p61Q2YDL6KYHHsKtmRQiCjQnjU/soVB0yVci1F8tab
	OV68RFIxLx7hl3P/HKZr13Nn2vxowr3nXiMCJpb/wjfLKTnd2EgynxizCnhZNmG4
	B0N/Yg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494yma4j1c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:12:20 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b54b301d623so663642a12.3
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:12:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757931139; x=1758535939;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sKD/3kPWUFAIEKI0UmpKQAcxh9lP5Wru5KsNYI2Yxfo=;
        b=H3vhkAIn6Jz5aZi48ZmBMTgZm1yDc2D7gSye5mHcTBXF/Cn58+/TNtoH82KWV5GQl/
         zkuSOuq4DrAD+AndCN1/IxwZbsnhCXkVwFJwURtR5zhyY2x5cVP0QlIwpWTJlJhDKygF
         6DpMAGt3CPXLCAyrSF7dHFJCcK9noGdu8UK+DWU4I11C919LfuUTiV55I/tT7wF66+FE
         Gx7IDbpC/c6nf4lPMa3sxHcadGY9kYMJckcC9rMVJ+rVgWvIL6D7PlFqfJGpx43KGFz5
         ZcMZrXjk00hvLrpl8VqebH67Gt0hJzyGHl+KBQgrAdZEr7K0v/sSyK6fgUpJGSXljMXG
         rI8A==
X-Forwarded-Encrypted: i=1; AJvYcCXWXb9m5nt5lCVjtqv+vhM5BnUfY33rHBHLd9Y0hsqoL/kNXOYTF0PShGI8/U8zTn/1q2O4NuW1mklF@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2iE1mfGTycTGJwlstla2qXEf+jqRo61Tz0If3TzDpXC5MXGYe
	9cMKhvoIW29V8R/uREIvc5f0TJW/qhKz5XBHBzaPH6ZnoWW7KFtH1MBC7B+Iwi9oSpgGvl4E9MX
	D5PCiGXiY2y2eh65A1TaUHDFt7XJTH4+O3ktAzlmpAzPN6xbcLUH0QTf097EBR5rh
X-Gm-Gg: ASbGncsiS8CPWRJPfzKcau/WNvroFiLxULfBeSoJjIZK9VCK2fVM0DfavO6+hhE6tl3
	71/3WMuQkIuqpTVsNvIPq9HgDY65tNIEWFjRhgJ6UenKojuHUSXmbh/MsuglKjbG+NqoR8Zxnqo
	4p6J6mSjyTkLJ+p5W07tmKUwGBrR3Wz4mewbqxsAQW7DbcqAFOUPC1dSWRtTfGjE9aamNixa8Ln
	SwBUJXxIQ9LS4AhkIu/k66SKJiRagKODR8VvUnykRuh81ZeyAW2d8I43Ae1tApJZe//vcu4BlDl
	Itrz7BTCW/N3wjhehNIqkyWzygcctU9Rw2w/rV/JxUR0v1iVdbSj4/aE0BOQyc3DzgP2CPS7jDK
	NRcCVV6nJYlYTG7uqGzKv8TxEftPTqJ6sWWU=
X-Received: by 2002:a05:6a21:328d:b0:264:10e4:f87 with SMTP id adf61e73a8af0-26410e411fbmr1664448637.4.1757931139313;
        Mon, 15 Sep 2025 03:12:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxZXxZBGVcbThhG/IvVDI3mpTgc5wznmZnjs66RxbpQzCycjFMO9w4+/RnbJr+43MLjBFNnw==
X-Received: by 2002:a05:6a21:328d:b0:264:10e4:f87 with SMTP id adf61e73a8af0-26410e411fbmr1664402637.4.1757931138808;
        Mon, 15 Sep 2025 03:12:18 -0700 (PDT)
Received: from [10.133.33.231] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54b03cf65csm8329380a12.16.2025.09.15.03.12.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 03:12:18 -0700 (PDT)
Message-ID: <f030649a-9505-4bda-9ce9-00eeee8d3b06@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 18:12:10 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 11/13] phy: qcom: qmp-usbc: Add USB/DP mutex handling
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
 <20250911-add-displayport-support-for-qcs615-platform-v4-11-2702bdda14ed@oss.qualcomm.com>
 <nfugwwknnlxls75yo5rex6ggu5nzpq6enyx6e6nfnfei3icxjg@t7dnzcfcjw4o>
 <cf6c2c2f-9878-4181-a3c8-9692423308bd@oss.qualcomm.com>
 <q4dplt6fq3cneludcuhxevklaj6omeio3cjxw2owt4h3wistd6@arv23ri4cl75>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <q4dplt6fq3cneludcuhxevklaj6omeio3cjxw2owt4h3wistd6@arv23ri4cl75>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAxOSBTYWx0ZWRfX4vb1AalqlZ2W
 PMf4N7oBawgL0vW9McgAx5BPZvPt8O05fHlEwAepl+e8xEjUeDPp3JJ8Dtjqw0WdWNCMuRVACxt
 yPgu6p/lLJ+Y15Ddg8R1ufNqsiXe3nLGwx2auEwd1uKGf3/GBLOQ+7OKmgbJHmEF6YEtnhnbhEH
 XZSNe023xgKxGZrElRGcyeU8S7VHSJI1vpj2apRR21teDJnC8rxmwUvtTi0Ey+BjC0IIEUttVVV
 C3KkhetePfQXvhYltScI6C7I4C9oIQplKZFiH1Shh1J38eLufYZ8PMO3KJEnAKo9FscsFw1WHM6
 4W3Ht2qJpTacrdJJLoqboxMAXt+7/t3fRCLcNc/4wBsEpML2cSn2/H+K24Ljo4aQX6yKIzStiub
 Jh9yv7mG
X-Authority-Analysis: v=2.4 cv=cdTSrmDM c=1 sm=1 tr=0 ts=68c7e684 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=CZmHqXGeirO8O24YQhMA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: nPeCVukHTR3oDdWMwI6Jf-86bLD7HEkb
X-Proofpoint-GUID: nPeCVukHTR3oDdWMwI6Jf-86bLD7HEkb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_04,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130019


On 9/12/2025 8:09 PM, Dmitry Baryshkov wrote:
> On Fri, Sep 12, 2025 at 08:03:01PM +0800, Xiangxu Yin wrote:
>> On 9/12/2025 6:32 PM, Dmitry Baryshkov wrote:
>>> On Thu, Sep 11, 2025 at 10:55:08PM +0800, Xiangxu Yin wrote:
>>>> Introduce mutual exclusion between USB and DP PHY modes to prevent
>>>> simultaneous activation.
>>> Describe the problem that you are trying to solve first.
>>
>> Ok.
>>
>>
>>>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>>> ---
>>>>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 21 +++++++++++++++++++++
>>>>  1 file changed, 21 insertions(+)
>>>>
>>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>>>> index 613239d15a6a3bba47a647db4e663713f127c93e..866277036089c588cf0c63204efb91bbec5430ae 100644
>>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
>>>> @@ -1061,6 +1061,19 @@ static int qmp_usbc_usb_power_off(struct phy *phy)
>>>>  	return 0;
>>>>  }
>>>>  
>>>> +static int qmp_check_mutex_phy(struct qmp_usbc *qmp, bool is_dp)
>>> mutex has a very well defined use case - a sleeping lock. Please find
>>> some ofther name.
>>
>> Then how about 'qmp_check_exclude_phy'?
>
> qmp_usbc_check_phy_status()?


Ok.


>>
>>>> +{
>>>> +	if ((is_dp && qmp->usb_init_count) ||
>>>> +	    (!is_dp && qmp->dp_init_count)) {
>>>> +		dev_err(qmp->dev,
>>>> +			"PHY is configured for %s, can not enable %s\n",
>>>> +			is_dp ? "USB" : "DP", is_dp ? "DP" : "USB");
>>>> +		return -EBUSY;
>>>> +	}
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>>  static int qmp_usbc_usb_enable(struct phy *phy)
>>>>  {
>>>>  	struct qmp_usbc *qmp = phy_get_drvdata(phy);

