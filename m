Return-Path: <devicetree+bounces-217830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AA2B5951A
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 13:25:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F7FE3B9E16
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:25:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9446F2D6412;
	Tue, 16 Sep 2025 11:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZQHCo1Vw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F37BA28C874
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758021940; cv=none; b=Onlb8Yg4KfR/RssL7PuV1A/Y/bvl6rWe8htDXwJbRFQRerBs5DFgXbbhpNCRJwcsqww/MFrAEUq8X+87FPFEe0ZGyGkezvaXhEinECkz9yZ5WhpxHoPw59/zsskJhqbcgGUDXx9UfTMQGyx/KdIBYjlvxPB/74znyS+yAQu0UVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758021940; c=relaxed/simple;
	bh=5yQEkOGXyV/dHSqeRCPAPaNdiQxY7wdZXJfexzxIxa4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V9JBu/Bs299eoJY4pu+GCgAYxtFyirGQAVhrL2kP1uoHyhKOQRoFobbIIvPJ8X91GeVp7x7fcO5JkUN0E1cqT1Zj70gQqp/wwFkZDc8dekIFXLd/Pj2DI3MEqn50/2Z/ltTK72oqDx2cQgoLPvvkVmS4gkVsyJX2Onv0slKZL3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZQHCo1Vw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GAW1Sm020358
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:25:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B2Q6PRAh17oXHVPDZ9oVb7TOFBwMNug0TqTqHd/Ji2U=; b=ZQHCo1VwZ3EWs5K9
	VO5ujswRVFbv47hMmZWmYhKEYkcI95b6Wgh1+awYrzbZC0RNMYP1M2KQ5dM5MGYa
	bFe60hX9Hc6hKGjwcLBd+p1mdVykIftwoObv3Gk8LrIs9w2H/iLpOiqA3JoX6Hah
	ii5vBh7GO20D2BXDSmpjoXC+F8Zg5nyJVomI0P2QldU7YMix6wBU/Ve823XJLUz/
	k3WlqS7JVbGiI8QvCvJs65OBvDVuaLIuaam4bo6UqUQ9fiYJDh6N2jejk1+mJGcP
	dx03nezcTIW3ddno/uAoCmCUFwMpeZe0THyn48bj6MZXBHP5WDhgGulR8by5hWZC
	7rryIA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4951chgkvq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:25:38 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-267dddadcb1so1199355ad.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:25:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758021937; x=1758626737;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=B2Q6PRAh17oXHVPDZ9oVb7TOFBwMNug0TqTqHd/Ji2U=;
        b=K0eZUHk5Ee7loibmjCv3pQH6/h+5rplAmGk2GCdh6nUGULXqWHNQ7QbochXQ40iXxG
         vdoz/kKt9b3M9dymSUZC5S1a69CCTs3/jOZqnOfv7pr08YevrVoCX/o0dVco35+wkR5p
         oIrvxNOSfr+XS37qmIo0axzKlf3PgcmvWtG+90H/oZ5hCOJfxDcajpkcOoviyKYhRVQG
         djg5rrIkJiVUX7T8EnE4499mUakd5QjfueH80o3z898HiX6gzdBc3Mx0iTlWRBnpE02g
         Cc+Ut+7+4khei23QmJmox4nIrgo/4YrsPezcWbCT8gIAT3RSDSCbjHeZRDx2dIM7YGmb
         8quA==
X-Forwarded-Encrypted: i=1; AJvYcCWUbI1LNJQzXDkLut8i4gPkKj6iifqF/d6H6kA5mEb2CEGLkHuX9XIB9lhCa/zTKzm/MngIttSXyQq6@vger.kernel.org
X-Gm-Message-State: AOJu0YzeqljvO2+pIIH5xUz2ATddRHP4KWQn5AfqnpEEv8fNLqK10T1j
	pi77RU/Lt7i/ElHppAgABbNYecE9d/opxf1YDCsASY1IXlcbwx2pv3rN1s4KGvbAKChp76EPcP+
	nYqNaIaiCSxQiIBTCmhhKfu5N8vLYkN1POQJx3OBAUWByOHvdGSRxIkdnFenTCjuq
X-Gm-Gg: ASbGncv0ME+ohfj7dDpqnBpG7+aAMkFKePPAQKcnhKVWLIn2fJ0YdVpiUIX3LJD/Cxf
	nyIcebDN+wD98z/SBJf+cAYriwYP43Vq0N6+k8Mhnk1LCXo36tUxPhEwoN9sdyHa7xwJh+ycAo/
	y0ZNhWgUObGPKetzl+h4yKPe5brYOHBo+vMUk6WTOTeOTZ8MhKQmd2zC5ny8np9JxRuUovfGSLM
	zQjRe2r1a0+MEo4dnh1gdESW43/sZEJVfFMMvqM4CFXZp1om39s9oSWsPxW4Ryoz8aXW1sD3SLI
	LEOMRmykm5ewIUuH0mRX/IeExQv//s3BOVbmp+YocCvbICykT8OFPS2tPBLM9nV2amkKUCCHnAT
	0AchNPdMGY6rIjbC7SsO+Y60XqHeaCHc0dzA=
X-Received: by 2002:a17:902:f546:b0:266:d667:9a6c with SMTP id d9443c01a7336-266d6679bb1mr44543115ad.7.1758021937153;
        Tue, 16 Sep 2025 04:25:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFWCKZjTbQfe7tePHoP7fP0eywxKpjHtZsIYTCYp8lSIxUg3lTfrhSYDNp9seh2fc1YF8qScg==
X-Received: by 2002:a17:902:f546:b0:266:d667:9a6c with SMTP id d9443c01a7336-266d6679bb1mr44542835ad.7.1758021936617;
        Tue, 16 Sep 2025 04:25:36 -0700 (PDT)
Received: from [10.133.33.231] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2613fe8f9absm95332075ad.131.2025.09.16.04.25.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 04:25:36 -0700 (PDT)
Message-ID: <d302e71f-19bb-426f-a7df-c0d7854e97af@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 19:25:28 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: display/msm: dp-controller: Add SM6150
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
References: <20250916-add-dp-controller-support-for-sm6150-v2-1-e466da9bb77d@oss.qualcomm.com>
 <5sg43rsun33i6bm3vz7io7yx2p4m7bmk5bnrnjg6u3zrulyofs@gyxtnfs4gvhz>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <5sg43rsun33i6bm3vz7io7yx2p4m7bmk5bnrnjg6u3zrulyofs@gyxtnfs4gvhz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=eeo9f6EH c=1 sm=1 tr=0 ts=68c94932 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Y6_DBQXGChbAxPBu4GEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: M1km_J4qpyuHnnAYUCRF3Fhdkr8n1FEp
X-Proofpoint-GUID: M1km_J4qpyuHnnAYUCRF3Fhdkr8n1FEp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzNiBTYWx0ZWRfX+j0eT3D4P+Jh
 P5ElRCZmEc57vem688utZRQqqkDZM6OGfbyZH5TjkH8SD8eoYsERoB5IMSYqK5svv6fpqfM5hJU
 EGfxTqMhDephfzcfeAel6561mxaLuEAB/Tust+wJo8+TaYpDuqakPrI8gCazCneBrsR1fcpI2iW
 5ULu/xTUBlyU8SGBygwntxorTt7SkGG6YDWuY3Pvh5/XYYIfhJlJJsdN3Wz1V1wQnJyBLJZFmDA
 vYsjZjuPYplTsTO8WAXCmSDxPvnqdK2PYLf1llTZ8El4PBDbSGgAh0n7lSH9Jh5iGJzJGJrcjgC
 Hp34mSQ/7MLaNAPlYokF7dOEZzef8YwEnNAFtM3ZyfOA1O3Ol9oIgWRoe1VZfhss99Bu4taouzy
 P7F5miAL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 phishscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130036


On 9/16/2025 6:22 PM, Dmitry Baryshkov wrote:
> On Tue, Sep 16, 2025 at 03:31:35PM +0800, Xiangxu Yin wrote:
>> Add DisplayPort controller binding for Qualcomm SM6150 SoC.
>> 'qcom,sm6150-dp' uses the same controller IP as 'qcom,sm8150-dp'.
>> Declare 'qcom,sm6150-dp' as a fallback compatible to 'qcom-sm8350-dp'
>> for consistency with existing bindings and to ensure correct matching and
>> future clarity.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>> This series splits the SM6150 dp-controller definition from the
>> '[v3] Add DisplayPort support for QCS615 platform' series and rebases
>> 'dt-bindings: msm/dp: Add support for 4 pixel streams'.
>>
>> The devicetree modification for DisplayPort on SM6150 will be provided
>> in a future patch.
>> ---
>> Changes in v2:
>> - Update commit message and binding with fallback configuration. [Dmitry]
>> - Drop driver patch since SM6150 is declared as a fallback to 'qcom-sm8350-dp'.
>> - Link to v1: https://lore.kernel.org/r/20250912-add-dp-controller-support-for-sm6150-v1-0-02b34b7b719d@oss.qualcomm.com
>> ---
>>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> index aeb4e4f36044a0ff1e78ad47b867e232b21df509..82481519005a1b038a351aa358b9266239d0e8a9 100644
>> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> @@ -46,6 +46,7 @@ properties:
>>        - items:
>>            - enum:
>>                - qcom,sar2130p-dp
>> +              - qcom,sm6150-dp
>
> In the review to the previos iteration I think I was a bit explicit:
> "qcom,sm6150-dp", "qcom,sm8150-dp", "qcom-sm8350-dp". You seemed to
> agree to it. Now you didn't implemet that. Why?


Sorry, I misunderstood your previous comment.
I thought the recommendation was only about the commit message, not the
binding structure.

Does the current implementation mean that qcom,sm6150-dp and qcom,sm8150-dp
fallback to "qcom,sm8350-dp"?
    - items:
        - enum:
            - qcom,sar2130p-dp
            - qcom,sm6150-dp
            - qcom,sm7150-dp
            - qcom,sm8150-dp
            - qcom,sm8250-dp
            - qcom,sm8450-dp
            - qcom,sm8550-dp
        - const: qcom,sm8350-dp

Do you mean modifying it as below?
    - items:
        - enum:
            - qcom,sar2130p-dp
            - qcom,sm6150-dp
            - qcom,sm7150-dp
            - qcom,sm8250-dp
            - qcom,sm8450-dp
            - qcom,sm8550-dp
        - const: qcom,sm8150-dp
        - const: qcom,sm8350-dp


>>                - qcom,sm7150-dp
>>                - qcom,sm8150-dp
>>                - qcom,sm8250-dp
>>
>> ---
>> base-commit: c3067c2c38316c3ef013636c93daa285ee6aaa2e
>> change-id: 20250916-add-dp-controller-support-for-sm6150-525ac2ed8c86
>>
>> Best regards,
>> -- 
>> Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>

