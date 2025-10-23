Return-Path: <devicetree+bounces-230143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B1283C00024
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 10:50:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9886E4EDC0B
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 08:50:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26622302177;
	Thu, 23 Oct 2025 08:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EZVvmyj4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6DEE2D5A0C
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761209424; cv=none; b=Qb2OHR1aZ4+hboboEwYxVBAaVONZcjtXogzriTviHCONZSoh5oKNCx2CKXNkikmC/ePjTuE9rU+JG0b94gdsZ8I70fbUQpzVKhD8vkul4nZZ91wCVP7UQB6SZPTnFaC+JaU0LD4J6qXcAwPw50EUoC9nTCl3AFaqu8muxgjGmII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761209424; c=relaxed/simple;
	bh=OMKnxUqr9ND8NblLPWP0eOPZ9cYwdnsAwoYbevDZ5+4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mt1FUVk2QZARzvgCd1xs8UWyoIX+6atjED1BAjX+1otAR9NOAzjXVIgdfskEEa3dIj2QKJ8RaJQIT3c0j+lFoG5H22ydDs/wApQcLATo9NPipOfntKwumVP7CxYfBzb6TWTFv8PtF/c1qc8MB2d8WZWMtPmya8eqEj9hIpTdXVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EZVvmyj4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N6SuTB028870
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:50:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OMKnxUqr9ND8NblLPWP0eOPZ9cYwdnsAwoYbevDZ5+4=; b=EZVvmyj4uFp0R2fV
	JeJ9KNrnXx/83rEAEnhbduhhXJ99Kz9VB4IwkB44smUXQJ61Ej3uHLYIhjIfg+Ka
	o20JMyUGs7c0tnD/nCdncT1JC0H+FFnLrKXrVoSrAMx3CDt9ZOaUX9HNlkKRy1iO
	BULRdNblK2EJ+nquSe8IbbkIivsTwtz+mWS+MP28n3A7Ep6uKFWOMSuwNLk5TAU7
	k6g1juL89YU+pgWjffzdYbirvq7TA6Lv2le6RLIPepwMfPHEdyiOSU80GcNxDfAQ
	wVL1P9MRhAmwWeSakT9qRIXYNQwbijIVCTFHgNyu9pRAkQzp5Kd0veskwt1eVe2o
	DTFQYg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49w08wdc54-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:50:20 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7a272da5676so209328b3a.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 01:50:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761209417; x=1761814217;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OMKnxUqr9ND8NblLPWP0eOPZ9cYwdnsAwoYbevDZ5+4=;
        b=MhjQneHjiMTwdKts+Dh0yt9bjpbfLf4OAcn5FBzTNi7zqoig24eens4go9SDTU6Jso
         WoGXkBpyu8Is/pR1Gqj4WplxXctkpexHeUN2ErsmEtDYGNwGz7JtXTwm+nsMnDTxMuyI
         /+wn5fKDwz1mOfKXnheyue8Zmmt2W8wvGeulKAnCaKX00vCGkSuaSZVBusjBOTVW+IIO
         W15Ha/iqJN3g13QFzMmO+39eDd9Vf11XFe+T28eqiVoTNxGL+SKWk/PGn5Yy/iWFxIQp
         zTNU5L2y+/1nTTgYaqHREmAQHNJ0Msiz7lNpRVJW8o9lcgSWxXFG8ODqDOGbVbcs7bXf
         anSw==
X-Forwarded-Encrypted: i=1; AJvYcCUOjiZQOUB3ZMd4c4jlQ4726wsHavzc6sS/CAM9blB1l15oPVCPPi/4LrayrElMYccuRuqhPY8ZXveA@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj72kWQDiBJunJHKXo5Sj/M+ox0Yj+Br3x82EjBDy4JijLPF7c
	4aioUX4sZ5jHpvKdQlEb04fvm0KhgJNrP4cFN7C5KBFwpXM0751Etq9iXj4ofj8u5MtVfIX8W6M
	BJ+k5w0J98hLr1YLU2mfq+4SwxgqQGMCq8Sym9v33ml8VXOrz1EfPUUFGZEhsqDvf
X-Gm-Gg: ASbGnctNhivxyqUtlmr+7SZxknjl8kx1CQ2e1s3CoTwf8lrVgbeluIwmp4coGXA1vF6
	lMZsmWY15NUifRWYqurryG6idhJbIya2CSz4JqFP095TRpjGtJy/CKd+uykzjbh/PE/X5hG4PEe
	IdwSci+G5xPaIYsTbOycMHnxi+d2aF29VyW1KY3H+afTxq2tyK7RILB2MFZW0krSBNR+AopiTqW
	AxoFb+nXxWvTFZUGwtstWjMGS45Auvzy2Kebklgn3P1JTU501jBcbrCoVRzXFFPVZF8zXPNQacl
	ya1qJV58q6GHVyAljXetMnJNja6IVXwz7xp+4ay1eQTcwXXhkNB5161ncHAqAhzPca/n8mEmgNW
	OrVRWjPxwMBKzj+354+bJ0bWHLlWynamLbxWwTZqE+Ce/SSUftELGH2uJPCD7wiwlMHAWPg==
X-Received: by 2002:a05:6a20:d80a:b0:2b0:ff55:f838 with SMTP id adf61e73a8af0-3393189436bmr6910805637.3.1761209417388;
        Thu, 23 Oct 2025 01:50:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMne+EgLkcUdrIkI1VqQAldalOI3LplCWH+quMwYft+tzjn4ldU/yUSpq3PbB/3w7ARbB6QA==
X-Received: by 2002:a05:6a20:d80a:b0:2b0:ff55:f838 with SMTP id adf61e73a8af0-3393189436bmr6910774637.3.1761209416844;
        Thu, 23 Oct 2025 01:50:16 -0700 (PDT)
Received: from [10.133.33.163] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a274a5fe26sm1800703b3a.2.2025.10.23.01.50.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 01:50:16 -0700 (PDT)
Message-ID: <d048a875-aaa7-4db2-9ef0-daab94bc123d@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 16:50:07 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/3] dt-bindings: display/msm: Add SM6150 DisplayPort
 controller
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
References: <20251021-add-displayport-support-to-qcs615-devicetree-v5-0-92f0f3bf469f@oss.qualcomm.com>
 <20251021-add-displayport-support-to-qcs615-devicetree-v5-1-92f0f3bf469f@oss.qualcomm.com>
 <fh7daiy5p5taaz7ifymbivfktjqngs5oashhd3osrtzspsac2z@nswaeyh3kkhi>
 <8d4184a8-4e32-43ce-a487-a195e97fa874@oss.qualcomm.com>
 <1a787fe1-20ba-42b7-a94e-cd1bf465f16f@oss.qualcomm.com>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <1a787fe1-20ba-42b7-a94e-cd1bf465f16f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: sNhM4juWU4cJNcohfFv2bKzcykScw87X
X-Proofpoint-GUID: sNhM4juWU4cJNcohfFv2bKzcykScw87X
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE5MDA5MCBTYWx0ZWRfX2/lsHFwT36j6
 C0wg+RibVd6DPNxFwniUsctgHdA1qUmIGO4UCA40pB8hfXh+qBSDMM2bPkwUJskzMe7TMvDlgum
 B5jl/avX9RPIhPJq9ed4nG/3eU64IU4nmxyurH9ccaJ76BaS6EwyNGUtBVL3yDPGzZT+0g+pCI9
 gXw44jXjdBOWWrqvUvFSWc7HkC/yC2dfLLM+KvPMehbra0RqU6hB8abNK9J0uyyAdJBpFjCsEYg
 L7AiGE7kCHcoCzIT0Z4lYgJX0PMoOTuOw5Nd/ewUBhgQ/mot7hGTS+6sZmnVLA5+xSLwlCO0wSx
 yhIAMZYCH+PETo4qI69jUSYgBTv0GN7x+v9aqTXsNg5GW0bVDVmlSG8sPBBWZJMIDzckxikGCXQ
 ozhLMN8gezt3OMC15KvJZ1MSDbqRHQ==
X-Authority-Analysis: v=2.4 cv=V5NwEOni c=1 sm=1 tr=0 ts=68f9ec4c cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Yf0QdHFY1VziTJGLG10A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 suspectscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510190090


On 10/23/2025 1:10 PM, Dmitry Baryshkov wrote:
> On 23/10/2025 07:50, Xiangxu Yin wrote:
>>
>> On 10/22/2025 11:07 PM, Dmitry Baryshkov wrote:
>>> On Tue, Oct 21, 2025 at 11:18:07AM +0800, Xiangxu Yin via B4 Relay wrote:
>>>> From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>>>
>>>> SM6150 uses the same DisplayPort controller as SM8150, which is already
>>>> compatible with SM8350. Add the SM6150-specific compatible string and
>>>> update the binding example accordingly.
>>>>
>>>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>>> ---
>>>>   .../devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml   | 13 ++++++++++++-
>>>>   1 file changed, 12 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
>>>> index 9ac24f99d3ada1c197c9654dc9babebccae972ed..89852af70de97a9025079107b838de578778c049 100644
>>>> --- a/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
>>>> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
>>>> @@ -51,6 +51,16 @@ patternProperties:
>>>>         compatible:
>>>>           const: qcom,sm6150-dpu
>>>>   +  "^displayport-controller@[0-9a-f]+$":
>>>> +    type: object
>>>> +    additionalProperties: true
>>>> +    properties:
>>>> +      compatible:
>>>> +        items:
>>>> +          - const: qcom,sm6150-dp
>>>> +          - const: qcom,sm8150-dp
>>>> +          - const: qcom,sm8350-dp
>>>> +
>>>>     "^dsi@[0-9a-f]+$":
>>>>       type: object
>>>>       additionalProperties: true
>>>> @@ -132,13 +142,14 @@ examples:
>>>>                   port@0 {
>>>>                     reg = <0>;
>>>>                     dpu_intf0_out: endpoint {
>>>> +                    remote-endpoint = <&mdss_dp0_in>;
>>> Why?
>>
>>
>> Oh, I think I misunderstood the “messed up indentation” comment from Krzysztof.
>> It seems the two-space indentation under port@X and opp-x is the actual issue.
>>
>> However, that part was not introduced in this patch.
>> I will split a separate patch to fix the indentation there.
>
> Note, you have two different chunks here. The first one is useless as it adds a graph arc to a node that is not a part of the example. 
>

You’re right, I verified with CHECK_DTBS and it passes without it,
so I’ll drop it in the next version.


>>
>>
>>>>                     };
>>>>                   };
>>>>                     port@1 {
>>>>                     reg = <1>;
>>>>                     dpu_intf1_out: endpoint {
>>>> -                      remote-endpoint = <&mdss_dsi0_in>;
>>>> +                    remote-endpoint = <&mdss_dsi0_in>;
>>> Why?
>>
>>
>> Ack.
>
> Use YAML coding style (two-space indentation). For DTS examples in the schema, preferred is four-space indentation. 
>

Ok, will add a new subpatch to fix DTS example indentation.



