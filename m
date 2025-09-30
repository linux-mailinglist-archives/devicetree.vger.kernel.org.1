Return-Path: <devicetree+bounces-222581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D2891BAB1B9
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 04:55:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 452041C775A
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 02:55:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31EB423B60A;
	Tue, 30 Sep 2025 02:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CYX7aIA7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F5B222586
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 02:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759200897; cv=none; b=OR9M0K1y7goLDiNQFHck/WJYptyGc0rtuuvscEMGPp3fg1t/2q77HJv4f1X1R4plWenOHxvgYU5cARDnRUkJgFSq8cO7LOGM3043ZuI6VBrRpbr/fEHGJgxbw4mxUVKTlzCxMoGEXDOpj2P7s5kWUOyisej1u3Cf6/zjCxPbdbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759200897; c=relaxed/simple;
	bh=w4MY4M0ZoWU1y5jjPtE+5dfTzqCRPe+p6fmHLn2iO4w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=afkMnwS2W/iqpToSDcnw+blWGTqjJjlZsPp1YQlCqqQXkFJ9bl4iNNYyTQpstyFw0k6CDW4BH5H+X/S3D1u26X7w7TF6H9Q72P+AnqYrW4+XVEWdSl9jk1l/h1cOGNxlsG4Kj6ctrCOI9tY7RVCWRY9CChMykF/X6PJdAJ/zPJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CYX7aIA7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58TJBeUM029939
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 02:54:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lW15lYOriH+/8boh668aZ4x5LRiCcst0TEYI2Bbz8sk=; b=CYX7aIA7cEvgX+vS
	NYpmcconCCmJvM6Kdt1N4r3VIh8NdkFHSh1ugUCyLpDAdFsDwmjDZA5up43LjZy3
	ED+T6/8cyg4F0d7C6kNwp7xTiIf5KBKdx3XS2/5pxJSRkLziLYcbBJuzieUY9v8Y
	mTqLEjCWXSRgrhFZUlOi3zx93xxbnW12SNrkrc5Eld6dDKF1I67+ph8OXossGX5d
	wRC2tcJ54fJ3D9hsZdaTxFax4eDhu4Q92WHEPGO8K6VA92mL7LSVxrY4j3OAn2tx
	iU43TEs6fLKLQitt0gQnRZm3OcZN7Q2/lMK87uSCSisPG/mgY9cuL8EstQXEB4FH
	XlBR/Q==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8pdf6rw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 02:54:54 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-78104c8c8ddso4528969b3a.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 19:54:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759200893; x=1759805693;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lW15lYOriH+/8boh668aZ4x5LRiCcst0TEYI2Bbz8sk=;
        b=vHImglMuehLVOhfRyD39RTZ9aQp1CzN1GtPPRdG29WdwtG5UGRdalCXTOPYfGPvRRt
         n3tfQXbd4wVzAH2F2cX3X6533F6DOdnP6Y71eig6zErhJnT+KfHLgtbArT97hh8VCuCR
         FzcrR4YKP3UTMVPzfspphql1LGIGqxFlIX7+KVvyyj3c0/asRHsqsI696ln6YsdzAum1
         nIvXx27A014Zkte39GW/xHDv+g4KY2ChaofKTMX/SKq5hlpp3/MYOZxN1gy0E5fSUIS8
         SpIKyo0sij33UB+JkxCLdrwGfN2E2oVmrenFdBp16CW6naNm9On+6Qi9oeP3Xs8AgHp9
         V/uA==
X-Forwarded-Encrypted: i=1; AJvYcCWmeKcXtniTqbe/h9d794GKzXMMD26LUHlnUV9gJAgQWMSaLnI2ianlYe+Ntn5iR1QESnGlgh90auaf@vger.kernel.org
X-Gm-Message-State: AOJu0YwxaN1Iwdteb6OZXoTLs7S3Rdt8L0UqXQ+ZkpvkrEz5yiWiTBC+
	rmPN6WXP9o49NfnjkRkylim0mANJzFTmIXKGErzc1aNnoREofJwzvqZQnJniIwKDIel/WGgAsek
	3vsi+CtaLpAF+Ntgy0CNzmaSC3eBZZKxSsvBIFULGmVm6vNHWnBxPhb8dw4I4ncnV
X-Gm-Gg: ASbGncvnvhpMy62zjZ92glxvK5qBvC8pKTUi+D9Dt7BlJmdPm+E3XvfJmURQ4SZkdF5
	5ZLp4m3q1k/mHSoYrt34HwDdbgSpXuoAjWnZRrZPYMtelj9LfrNMt4SJ/WEDInPSZsfV+c5NReD
	xPJ3My4m+YoJoeIFcrU+VLvayH4fSpQi3lfwt55BgH7H9JE0uTAWqhZze+SZMHlu2H2xZzvil2f
	7eFlzGSAAZUcfc7TIcKPm2OLvAqq5e7pCCy2fUjDHGwB4QloKlwyHsnRkgOQixs1yyFY9qrVSUE
	u5t0mzKwLVSxAATWr99+1CZqIIJfnN3EPFf+XLzoTbghhaUUfUbBjHlicBn2zlFAIJX+AhHTNMG
	aYxA2Sfh6tyKygwvnIURgeEm6UP4KUYt2HpjnZPwv
X-Received: by 2002:a05:6a00:1a86:b0:781:2531:7002 with SMTP id d2e1a72fcca58-78125317087mr12518152b3a.27.1759200893536;
        Mon, 29 Sep 2025 19:54:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEdKwOgMfiVkqYcB9C/XChUPLUfqbWJlZyrazoYFKdlPfuRBeuKh2AS0CtUVaJFGFf6+d+Itg==
X-Received: by 2002:a05:6a00:1a86:b0:781:2531:7002 with SMTP id d2e1a72fcca58-78125317087mr12518131b3a.27.1759200893071;
        Mon, 29 Sep 2025 19:54:53 -0700 (PDT)
Received: from [10.133.33.234] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7840f54b0a2sm4930664b3a.46.2025.09.29.19.54.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 19:54:52 -0700 (PDT)
Message-ID: <838d6de3-80df-4cfb-a9d2-6ae667aee254@oss.qualcomm.com>
Date: Tue, 30 Sep 2025 10:54:46 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] dt-bindings: remoteproc: qcom,sm8550-pas: Add
 Kaanapali ADSP
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com>
 <20250924-knp-remoteproc-v1-1-611bf7be8329@oss.qualcomm.com>
 <h4lk5psnwx3ma3um2sozhcdccwhmgmbje2lgjks2czcrzn4mre@svtnbyzvrivw>
 <d374036c-1263-42f4-b9ae-13b21427b01d@oss.qualcomm.com>
 <maeobo6qukgzn3acwtvhfrvwrfwo4q5pzspem6htbybr5xuwlm@opagojsav6ey>
 <4a25e085-39f8-49dc-85c6-7a4267689dd1@oss.qualcomm.com>
 <go2koxtabrktc2noyrgehgeddavvsdz6qu6bnwkzqtnb2k4du5@3m5le25bfmpv>
 <0209a062-2763-4e50-adfa-3cbdbb35eaef@oss.qualcomm.com>
 <lu5lwd75lfs463co5v2ynhjvmircqowchad4s6sboj3valgteb@6mg5vqgukdep>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <lu5lwd75lfs463co5v2ynhjvmircqowchad4s6sboj3valgteb@6mg5vqgukdep>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 14UmVrz8G47M0hfhAqVXVxLhqR2JEoez
X-Authority-Analysis: v=2.4 cv=MYZhep/f c=1 sm=1 tr=0 ts=68db467e cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=jyhGSXCUmUVbAOAwL-cA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: 14UmVrz8G47M0hfhAqVXVxLhqR2JEoez
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzNiBTYWx0ZWRfX/4qU+E6QdJzM
 9R40qFW/M6hxGr1Jw/3LQXdnbA3a2y5W3h7tgivdjKlgyLN3A0xk7AUofGlb8bLE9J3mEESU78h
 49LgxQE27Vo+zxFe4g/qgVuoPapIpaKpVlrywi8okcCd/JDr5cZF35lICuAqcIbQ/v2n2REBJb9
 u6USfX6xZl4XHOuGKRLwXjKJKHl4N5ASiHsyGRQz6rrwOjxiTwvfMsXdJpUrz3lMaEGmQ1+gof/
 K1JXq55upM6OdBgEugPsqvkwdtQ8I/VZo4nymxXZWCRpPx4KktmAWxaAhOxlDJQWHZsxioX3Gfm
 okkks6e3vlDoXkLc4v6wKcG3Nk2fZ0TN/vO65yR42xaELsHgic6FApbxBspEwernWIa6zHF0jgw
 W4+4Dwt6KnGrrcz4xEAYjjgJlzFHNw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_08,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270036



On 9/30/2025 10:16 AM, Dmitry Baryshkov wrote:
> On Tue, Sep 30, 2025 at 10:12:27AM +0800, Jingyi Wang wrote:
>>
>>
>> On 9/29/2025 8:22 PM, Dmitry Baryshkov wrote:
>>> On Mon, Sep 29, 2025 at 06:11:23PM +0800, Jingyi Wang wrote:
>>>>
>>>>
>>>> On 9/29/2025 5:39 PM, Dmitry Baryshkov wrote:
>>>>> On Mon, Sep 29, 2025 at 02:06:11PM +0800, Jingyi Wang wrote:
>>>>>>
>>>>>>
>>>>>> On 9/25/2025 10:19 AM, Dmitry Baryshkov wrote:
>>>>>>> On Wed, Sep 24, 2025 at 04:37:22PM -0700, Jingyi Wang wrote:
>>>>>>>> Document compatible for Qualcomm Kaanapali SoC ADSP PAS which looks fully
>>>>>>>> compatible with SM8750, which can fallback to SM8550 except for one more
>>>>>>>> interrupt ("shutdown-ack").
>>>>>>>>
>>>>>>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>>>>>>> ---
>>>>>>>>  Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml | 6 +++++-
>>>>>>>>  1 file changed, 5 insertions(+), 1 deletion(-)
>>>>>>>>
>>>>>>>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>>>>>>>> index 2dd479cf4821..be9e2a0bc060 100644
>>>>>>>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>>>>>>>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>>>>>>>> @@ -28,7 +28,9 @@ properties:
>>>>>>>>            - qcom,x1e80100-adsp-pas
>>>>>>>>            - qcom,x1e80100-cdsp-pas
>>>>>>>>        - items:
>>>>>>>> -          - const: qcom,sm8750-adsp-pas
>>>>>>>> +          - enum:
>>>>>>>> +              - qcom,kaanapali-adsp-pas
>>>>>>>> +              - qcom,sm8750-adsp-pas
>>>>>>>>            - const: qcom,sm8550-adsp-pas
>>>>>>>>        - items:
>>>>>>>>            - const: qcom,sm8750-cdsp-pas
>>>>>>>> @@ -95,6 +97,7 @@ allOf:
>>>>>>>>          compatible:
>>>>>>>>            contains:
>>>>>>>>              enum:
>>>>>>>> +              - qcom,kaanapali-adsp-pas
>>>>>>>
>>>>>>> This one and the next entry are redundant. Do you see why?
>>>>>>>
>>>>>>
>>>>>> This one describe the interrupt:
>>>>>>
>>>>>>   - if:
>>>>>>       properties:
>>>>>>         compatible:
>>>>>>           contains:
>>>>>
>>>>>>             enum:
>>>>>>               - qcom,kaanapali-adsp-pas
>>>>>>               - qcom,sm8750-adsp-pas
>>>>>
>>>>> It's still redundant. Don't you see it?
>>>>>
>>>>
>>>> sorry I didn't get your point here, could you explain more?
>>>
>>> For you device you have two compat strings, kaanapali and sm8750. This
>>> schema block is covered by 'if compat contains sm8750', so you don't
>>> need to add kaanapali to the if-case. You already hit this check thanks
>>> to the fallback compat.
>>>
>>
>> Hi Dimitry,
>>
>> our device contains sm8550, not sm8750.
> 
> I should be reading the patches more carefully. I beg your pardon,
> indeed, you were right.
> 

No worries at all, appreciate for your review and clarification.

Thanks,
Jingyi


