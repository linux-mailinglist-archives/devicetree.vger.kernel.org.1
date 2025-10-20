Return-Path: <devicetree+bounces-228812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C23BF0DE9
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 13:36:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE3BB18834FB
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 11:36:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E040E23D7D2;
	Mon, 20 Oct 2025 11:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bUQLio5n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9D0E2FC00D
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760960179; cv=none; b=lf+fInpb08ubmNlVHC5TuPZaslbV5C8TIaS7llHYwlcqwLKEQ24CcjrZwHYLUjambYgqPeRcR7/ZEdVrTpYoS4ZWeKB8BDxT1Rm5XWtozUCB+jcihOkAd4crVftSwLf4cPGKbHgst+8awWuDljYirwc7aR/+exy+itrlILn3Dwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760960179; c=relaxed/simple;
	bh=t51j+mgk3aQ2RGoqLwj1u5ebaMZplsQyOFhqdNf/vlQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s8mmBBs9tc044ktG7hNQbIKITiK+DCQH6LCnmAgt7t0aRw1o0XBTJ/O1rX+LO4tTdbA6gExd5PVVTt0aJMEdnOe3wFlPUdwpFJsGQotzq2ARW/d0kmK/C6RweKfzDpfKe3JBx7vDT8jyA/07gEFUIOggJdNrloAMcbFy0H7F+7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bUQLio5n; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JLu9xq004642
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:36:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GK+5rKa1ckv1Q0xDSQsg2JrLR6JcjvANAgY1SmDdptQ=; b=bUQLio5nYqY+yhTW
	sugPBh3IxjvFCDE77A33/Vy0zmWuKxMSSrIIvPjuQKOi0UW3SHP+EBqOMfvlxPTy
	QeTD8cmED3H+gE3hLrx5mkL8vhQhr0p9THQMRdGrpPfqvjlY1FjjfXoGNugMKZr9
	NWizG9S2D8TyPnFCAESEestSOSVCz5o0GqU8V1a7uCpn8GBnjrLk5SD5tckqhLyC
	KAfSN3YXpkrfIaYwxFa9NXdu1kpcsHwCneXV3ggLKZ9Ju10m1+xFu/yRNak/28Nl
	5Hc0DTaiGmJu8GYnwtgFHvAItVzbiEXUG7ByAoBmiwfi4U4cuJmAL3/lzhbzffda
	IazMWQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v469cgsm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:36:16 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-269b2d8af0cso7743155ad.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 04:36:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760960176; x=1761564976;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GK+5rKa1ckv1Q0xDSQsg2JrLR6JcjvANAgY1SmDdptQ=;
        b=nKf1OerZc9i7YH8lIsHCftgE1M23NpNRd4s6Throc/jnJTo/66/e3teoUTIMdbyJ+J
         7RwWf2Ijk/qrginbmdp67yOafIRlLtrfDfIl8Ji0nMCu6Js6zCBlMj1QLpIbNyh+Itp5
         2JqAG2Y6I+m9jFIMEtpjqsCDDunmXCWPeGjnwWRUm1tsKMcuWfi9uCPtM9WhJgQV1Sa8
         AxBv4egvjxQhZufYyfaGggIY1up3XRv/ofIE2kksBF9Yp6s8kSa0v1J8itQaU5KZH+OT
         F8Sn+Lp5XYalgrvV5ApAtzSsE9slNymRZuMJwxHNlzCgtznlfxBsYk+9p86olyfyOFGK
         KCwg==
X-Forwarded-Encrypted: i=1; AJvYcCX4pcXfA2pkrpUQEAK0GOwojsD/IUBcFcBe14I4rfxhTl2tUttFDpbeEJmw6UhZwVIuUTdYLLlw4Rko@vger.kernel.org
X-Gm-Message-State: AOJu0YxzQzZzpFk0fLvFelgEAPuY4BFQjaaKvVqt3KxG8qney9LBUmYe
	ew//Xdb5I88wx8DwIn7Zenceb4/PztSd6OI6PLoGZf6wiWXuBmEF4AHuHLvryYWMTSuaZTjTU2p
	L3/xkIn9PKiByEiZqBW5MMIo06iZ0GDk6eBlMVmpk5VPWGaeZwXPZMQpaFOUJDB1F
X-Gm-Gg: ASbGncue/BEMEnjU7dLfF0yIDI2sSpscUrqhSGwqSTioaYmD9t4KVtGx8Wo4nZI+agj
	TOCeu0fKwcjDxbwJRN6rXm1AIADBqTnyjeEEIhP7UpYcOfGJdGtWdc2on8jIXCAhzSZyo2FFH1T
	gv1MmyKV68hBhKL9j6ZNzuNH6SrCCDSMISKGoxlojaLMbMbT4f78zJmg88555nGDSPc93g+6YG7
	3HmWAqk1EG6OXYXVWb/qBpHqgVqDCGAXttJHvAbXqau0Nl+NfKZ0wC1QGLxnMfxnPNhGq9a7M2d
	fGAx0kJ3xG0NL55qBRzkcNcC5beR/C0Tzf/n7ROli8cw/0W2oy4jzeWLqLroxQZUWMrwrcg5WHi
	MXw4yEWIi35cifW7JX5yw+NXfqQw2GK4SGmdFeXivgCZB183zTHaPyvZm+o2TiYUMZicLeA==
X-Received: by 2002:a17:902:f550:b0:290:aaff:344e with SMTP id d9443c01a7336-290c9d07528mr93219885ad.2.1760960175718;
        Mon, 20 Oct 2025 04:36:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqYXTamiz1sZaI2FXDLVVOOe09rjZU54qmwtT0sYAF4DGpiXYK7IZbq29yBk4Y3Y1cW0n/IQ==
X-Received: by 2002:a17:902:f550:b0:290:aaff:344e with SMTP id d9443c01a7336-290c9d07528mr93219385ad.2.1760960175155;
        Mon, 20 Oct 2025 04:36:15 -0700 (PDT)
Received: from [10.133.33.101] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-292471fe4d8sm77471275ad.96.2025.10.20.04.36.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 04:36:14 -0700 (PDT)
Message-ID: <e6c481cd-e084-4f5f-a75a-d1e0a254efc1@oss.qualcomm.com>
Date: Mon, 20 Oct 2025 19:36:02 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] dt-bindings: display/msm: Add SM6150 DisplayPort
 controller
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
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
References: <20251015-add-displayport-support-to-qcs615-devicetree-v4-0-aa2cb8470e9d@oss.qualcomm.com>
 <20251015-add-displayport-support-to-qcs615-devicetree-v4-1-aa2cb8470e9d@oss.qualcomm.com>
 <58446b2d-560f-4a7e-890a-78ae0bb92908@kernel.org>
 <f4dihh4z2nnkjcpsrmopycm6opellvv4mkpee72xjbn26nw544@sfc4oy6c2xci>
 <a3994a92-0a36-411e-97a3-b01fd406ddd1@kernel.org>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <a3994a92-0a36-411e-97a3-b01fd406ddd1@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: wRIqr_aG94LcxE3OME5iE3IXnIRnmJu3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMiBTYWx0ZWRfXwH6hnmx3ZPA8
 2MwN7lYTjd0fSg8LHZyb5VOuy89MIVpU6ml22SNasIWUZ7nJPROU5lR1I2b5ZiVdIfgNrpGoIgv
 xGzQKegy8TNpYnxwJPqFShRgNmdHgQm8oCHvZ+xHqvjcVWfM6h1tdu6w2nejBoKT8vwTCVMhEHS
 ZDnRc7TQVmVaqj+LZwrRARYGYc7xgOIVBdIVJ13oFkQt7+3cOU1h1nhg1MG+eyARaTNpxu/6FLf
 SSBLmK0Cln1rnP8ElfbTa1SnRuGCmVUH3y6BNcWZfyKfTQF5F6CQMzseQS4/IWlCKSAFgzpP6r8
 EYn68yOKoQXGZnqo0gcSiTLCKMYl4nfWv90Tze3dx1WtrsSXpE07oDxEDeYrTaLkaQM+HouVlqT
 GwaGun4vdnJOiFey4iQhBuir7frkjQ==
X-Authority-Analysis: v=2.4 cv=U8qfzOru c=1 sm=1 tr=0 ts=68f61eb0 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=csQNx8weYdTNeSVC_AYA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: wRIqr_aG94LcxE3OME5iE3IXnIRnmJu3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 spamscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180032


On 10/20/2025 7:18 PM, Krzysztof Kozlowski wrote:
> On 20/10/2025 13:07, Dmitry Baryshkov wrote:
>> On Sun, Oct 19, 2025 at 07:13:32PM +0200, Krzysztof Kozlowski wrote:
>>> On 15/10/2025 03:53, Xiangxu Yin via B4 Relay wrote:
>>>> From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>>>
>>>> Describe the DisplayPort controller for Qualcomm SM6150 SoC.
>>>>
>>>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>>> ---
>>>>  .../devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml     | 11 +++++++++++
>>>>  1 file changed, 11 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
>>>> index 9ac24f99d3ada1c197c9654dc9babebccae972ed..935eca23ce6b30b81b3ad778e5fcacc817a230c3 100644
>>>> --- a/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
>>>> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
>>>> @@ -51,6 +51,16 @@ patternProperties:
>>>>        compatible:
>>>>          const: qcom,sm6150-dpu
>>>>  
>>>> +  "^displayport-controller@[0-9a-f]+$":
>>>> +    type: object
>>>> +    additionalProperties: true
>>>> +    properties:
>>>> +      compatible:
>>>> +        items:
>>>> +          - const: qcom,sm6150-dp
>>>> +          - const: qcom,sm8150-dp
>>> 6150 is compatible with 8150 or 8350? I have doubts.
>> SM6150 has the same DP controller as SM8150. SM8150 is compatible with
>> SM8350.
>
> So if SM6150 is EXACTLY the same as SM8150, then describe it in commit
> msg. If NOT EXACTLY the same, then probably this should be just
> compatible with 8350. Anyway, proper justification is missing.
>
> Existing commit msg is pretty useless, repeat the diff. I can read the
> diff. Commit msg should explain all the background which is not obvious.


Yes, SM6150 uses the same DP controller as SM8150. We already discussed this in
'20250916-add-dp-controller-support-for-sm6150-v3-1-dd60ebbd101e@oss.qualcomm.com'.
I will update the commit message to clarify the compatible information and fix
the indentation in the binding example.


>
> Best regards,
> Krzysztof

