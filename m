Return-Path: <devicetree+bounces-211275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE0BB3E34A
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 14:38:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE4DB3B6FCA
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 12:38:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB309321F4F;
	Mon,  1 Sep 2025 12:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TR+ed2qp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4113331355E
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 12:33:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756729987; cv=none; b=k6wvLXvyP9SeXWrk148H1LsfZGUAZM5WZeAcrUbPJp1zUuFVo6QZ6bix+K5IcewSQ5gq0g3GtHQ1D1zFg+Kfx9kdLDGU90OKeQK6PDzJH7R+lYWDRWX7m6d9qeu0UtjnkaDWdTPVw5kdd5fhXquTPAM/DcsnnNBzYh0skFr717k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756729987; c=relaxed/simple;
	bh=EB7F4mbxiHQX5qGhCQQlDNKpKVWf7VS3kp1B8SPd9Do=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VD4NhuYmQpvW2m1JTYm6yd/GSWXIDBMHQBByvi5J1lRoCtPZZ/IK4GvWkRBVZLBb7xvTP9j6rlS0p2yAgY4GM0iuygGsDoK3f39qPsp3hLgJTlsSiOXrJ4M2Xjcbj0cITGbijk2qKG8piIhHfaiPwjJSmq4EWw00EC7O5XHrWtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TR+ed2qp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 581B4KvV030461
	for <devicetree@vger.kernel.org>; Mon, 1 Sep 2025 12:33:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EB7F4mbxiHQX5qGhCQQlDNKpKVWf7VS3kp1B8SPd9Do=; b=TR+ed2qpL1UMcFGf
	c2LYRYswDisk5QfEcmEK8cdrYfIWWWnqNxjAjNGDTHk2kw4pT99AHy2DJpoyH0zw
	0wRIyxAyqebxwYZP5J6xOqCGBAU5sQe6XjgfyDZv4LHM5r6H5gOUN3Fs+LiCc1NC
	FENrX9MDHrVpkemQsZ5dnuNfj5zxS0L00bIg7tU7wsOYDMkwZhbfUahPg9yJrbPM
	uWu2ViZyYUenjHCGXUmIX+Vm1QNDdztFLAUkWDcnuB0V4Z+zg7EUBn0vIb+n1Jr7
	Y+xfLEUpNK6ExbYNoSmtjR/INenarXJg/cDuhRDrVwXKSSXEtWryBytQbVNlkW1G
	dTusaw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0ecyg1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 12:33:04 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-245fbdc2546so14613805ad.0
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 05:33:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756729983; x=1757334783;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EB7F4mbxiHQX5qGhCQQlDNKpKVWf7VS3kp1B8SPd9Do=;
        b=Mxqb4V8K4g46MDvKwnxCkcswGPOP07p3egPcWOgX0b52TeuhQBW+nr95pWCaOXx5kf
         +zAJPrVVICWBbojiTw2p5RLfM2MHy65I9bafumxIrouPysIU6GgNNeEdNhO2NbFfmBck
         hDC3ygj5JOpbuPEpAR9lNFog7JZ/ymo9uDpmnDQtO1dQyjBpG99MXrnJTSlq9hf0zVG5
         puO8NPtOMu1UhIB2HCqOftzCPmz42VQX5vaNpLmlNa8v5kJZdOvFoKCL3YOdtG6JXtx2
         4GeOc7mxye0dSfB0YzVgjsUZsU71y7yRoO/7AcEUt36ZgY9DHm5GbMQgswPq5w0f8LLl
         CNXg==
X-Forwarded-Encrypted: i=1; AJvYcCV1MP/P68gZW580Pj3HG+q7PSZtx4sBEoWH8NNtnOzWcac6jyMXPT7LRlL0nb2bV8jTheZFp5qHuK4x@vger.kernel.org
X-Gm-Message-State: AOJu0YzitDW4V4iLYid+VSPqjj9NsmbYAMgM7iI3kATPDHt5hEgnSREU
	ZsGVhkTXZy7QEByYlDkVvVVucWecVgTbkZEiGkvPjq1x9bRjpnzk0VGOwqh5c08E7lU6lrsiHoT
	0N0qkFrF6tNaS7nrbpnUNaHab4fRwt9Wl9Xt+MA8B7lcsuR10+RIwMjuRvJ86sgAV
X-Gm-Gg: ASbGncvFznr9Fk7XSZMjda+NGVZ4K92Eqi8RY2sB7rfxxYFZb5XY0i8VNOp1hPycG/2
	v8kwyj6tmeqtLXDIWKgpBIySKn1B60cjsSSXQEx7xR+U7ySTmdf9DQIuFZpWzcbFrI2Vb1ndxMj
	aMURi+Aq40PA3xdjf2EeTi0zz9eJie5fx7liEYRPULIstP5L0+4We0NwrmvJOYkAX3FnYICKk+c
	Z00oPOsDgKenxHGmqanCGoVKLsbTBfB4rQUAdwOlnL4Zf5VXWKpk2IAK2XfczUuV15pfPBgGN4b
	0I+w6ZKvd7j+cfUHBrBWxk5oFZjda2SAhJwEBa0m9EhJyG/jdyBNrTaxPbV0QacWOPNh3GHOAIE
	ZbyJIuLiLDwbvvRUdLLbv8Cu+Z9D2jg==
X-Received: by 2002:a17:902:ea0e:b0:246:a152:2afc with SMTP id d9443c01a7336-2490f6e2a41mr89139335ad.3.1756729983490;
        Mon, 01 Sep 2025 05:33:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGvdBSg+GSkVZYutloMzMAPl9JCliwrB8npGb8PaTRixqyTmb5uK1ODr7IHrQZgoOD9FV9l1A==
X-Received: by 2002:a17:902:ea0e:b0:246:a152:2afc with SMTP id d9443c01a7336-2490f6e2a41mr89138865ad.3.1756729982941;
        Mon, 01 Sep 2025 05:33:02 -0700 (PDT)
Received: from [10.133.33.251] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-249066e1158sm104253735ad.144.2025.09.01.05.32.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Sep 2025 05:33:02 -0700 (PDT)
Message-ID: <75f8789d-9d97-49d9-97b0-908a5692c325@oss.qualcomm.com>
Date: Mon, 1 Sep 2025 20:32:54 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/14] dt-bindings: display/msm: dp-controller: Add
 sm6150
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-1-a43bd25ec39c@oss.qualcomm.com>
 <75ra2ofecqu6tid6kr4hnyuztpl6jjaq2ksyquafyajhq2sa4d@4tkggrdqky7y>
 <8918feef-219e-4e69-8901-367189f5066d@oss.qualcomm.com>
 <28b33851-24eb-428f-b046-b145342fd982@oss.qualcomm.com>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <28b33851-24eb-428f-b046-b145342fd982@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 4fXOStbO37DOv_ZJ6EwiN3evjEyp3DMW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfX62JGgDP5VQhv
 utHMmOM1VIUwESa/dGsF1N6oKbqHW/RfptnT5Q8eN1Yl4Chs8QBe41eoZl8vwopn3j8rCbsIisP
 xdEEPMIM1SdJwhszJAljJ97+l+jbyyHWY++T8TJOa/myHjtylxYLnPswZtJJSgouQ2TTV2fFq12
 RIkNqA9LteesmGPRqYXsm6TTvrpwmrJeKkhoezB0q1pCyVCIjiUejzSiH1DCqvLElP4BQA4KWDC
 rye1y4B2hhQ70B4punSaLEQByI5iRKTCKY2eyzhLsxZg083elIhiRFm7xlVvAKhjgdzWT6hdAZd
 Ri8C771kEfVcadnDWVBLJ37epyN2tJTfSISWvCzhK7s95gCHu1/gkXcPfp7sz3XjxDMpfZLjCEi
 zc3tf4gl
X-Proofpoint-ORIG-GUID: 4fXOStbO37DOv_ZJ6EwiN3evjEyp3DMW
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68b59280 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=ZffzQ4fVxSrCOw2gOQ0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-01_05,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004


On 8/28/2025 7:05 PM, Dmitry Baryshkov wrote:
> On 28/08/2025 07:51, Xiangxu Yin wrote:
>>
>> On 8/20/2025 6:18 PM, Dmitry Baryshkov wrote:
>>> On Wed, Aug 20, 2025 at 05:34:43PM +0800, Xiangxu Yin wrote:
>>>> Add DisplayPort controller for Qualcomm SM6150 SoC.
>>>> While SM6150 currently shares the same configuration as SC7180,
>>>> its hardware capabilities differ. Explicitly listing it ensures clarity
>>>> and avoids potential issues if SC7180 support evolves in the future.
>>> I assume, it has no MST support. Am I right?
>>
>>
>>  From sm6150 ipcat, I found MST-related registers and pixel1 clk definition.
>
> Then please describe MST as the main difference between SM6150 and SC7180 (which doesn't have MST).
>
> Also this needs to be rebased on top of the MST bindings. I've picked up the latest posted revision, but basing on the on-list discussion I might need to drop it and post another iteration. 
>

Would you prefer I keep the current patch and update the description of the
MST capability difference with SC7180 in the commit message, or rebase on
your series and update the dt-binding accordingly?
https://lore.kernel.org/all/20250829-dp_mst_bindings-v7-0-2b268a43917b@oss.qualcomm.com

Since MST support is not yet mainlined in the DP driver, even if I rebase
now, the final implementation may require redefining msm_dp_desc for
SM6150 in both the dt-binding and the driver once MST lands.


>>
>> According to the hardware spec, MST is supported, but due to limitations in clock and pipe resources,
>>
>> the maximum concurrency capability is restricted to 1920x1200@60 + 1280x720@60.
>>
>>
>>>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>>> ---
>>>>   Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
>>>>   1 file changed, 1 insertion(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>>>> index 9923b065323bbab99de5079b674a0317f3074373..996d0132e084d401db85014a1a4e445d00d62ed8 100644
>>>> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>>>> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>>>> @@ -27,6 +27,7 @@ properties:
>>>>             - qcom,sc8280xp-dp
>>>>             - qcom,sc8280xp-edp
>>>>             - qcom,sdm845-dp
>>>> +          - qcom,sm6150-dp
>>>>             - qcom,sm8350-dp
>>>>             - qcom,sm8650-dp
>>>>         - items:
>>>>
>>>> -- 
>>>> 2.34.1
>>>>
>
>

