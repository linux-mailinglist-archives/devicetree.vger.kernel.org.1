Return-Path: <devicetree+bounces-230195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CC7C00478
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:36:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A16B719A325D
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 09:37:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3232B3090C2;
	Thu, 23 Oct 2025 09:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PxBvhXIA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C653090C4
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 09:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761212210; cv=none; b=gVbVeqB/i7R96JrCNZOV2956EzGBaERxEX8CCPZnNlLEMakYOLgJXQy/igPXScmLet6LEqb+uAGD2d3lAH7eGOGsU4jGB9FOPtJWkyVQk8Ma8M2Z7T4jnLUI/Umbo+rn37uZRATZLIxTTMGRyT9pIGuzZB95Krl4Yrq6ulj3GX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761212210; c=relaxed/simple;
	bh=31I2NZ9E16fvkibGKYsHIzjfGNy5b9QV8vluRHj+fjc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MV+2Td8c/E/yYolWpxVgwu2oQ0c83RvvdZ/5hVuiEZCXiz4d2KAjIFBu0BwOAMrDn9ZbURVJSD4R4JP+nsujxcpbVCQZhYrJXzf5dIZnFTkgActaSOvbybdjh1swx8Q9tushFGBn6u0upIEn1YqWSQfOCmBw/p/BZQhK2noCrMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PxBvhXIA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N7Ec0U015926
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 09:36:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K+iM28/6ufZlmOomF1p5E1/bkuTFa6Bw8f1OnjTV6/Y=; b=PxBvhXIASB+Tew5z
	LahhQmxH6wst8V0qUTE1SOLZ+qyg1Ns1EuO374nnKPigUFPguw8M1zXnOPCOm+hj
	FYdSNj0llMpTRgFFzQR/Qoirqy3EB8EJ9e3OM0dceb0YSOhas16XVE8LqFc6hsVW
	3DJEfJlNrZR9Z7w4RWDwm8a7k1U0vF9KVS0IdTrrm8uHZj5LGkftPZ43ide3mn8V
	Fu2BKMPimHQ3yZEp0h0uAnuail5MIj/gJaetzq5EoY1oe0hNbSgfDx7gX7Sk1tuT
	WiINMPjOcX04IcGvJr2Ap+W/M0mK2ys/ksYG7ysTU6mL+ki+03rxUIDHpkz1ftsN
	eN6aIQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xkpsdfmh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 09:36:47 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-88fcb38d0d9so21943485a.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 02:36:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761212206; x=1761817006;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K+iM28/6ufZlmOomF1p5E1/bkuTFa6Bw8f1OnjTV6/Y=;
        b=cfghMlmLvjeBkY7S4jZzJ1F8YxAtPmDcyqFtbBbaCipLubVizjW4ekbR9xhMIr7x5m
         g1XzUCYcBQwlCLKCFNeuk2iRC4ksVuC3abIWiylCC2nSsAq/FaCbSUcfWWE+E6JCawbz
         vYYcNGYiiF26CjrexL5aKqQYpHLK9CvFAWd+T0D1jm03lQ+vvIfZdaj6sus3RAXGfi73
         4g9plEvwp4a6maAi6YGFRGbw7hSlFmzyMEa/7z9pOo8mWXeuXoetax+oOlV5DIFP+kn4
         FLP23GrYaNSzKL795KPdx6cp5T62fQbEOLznulipt/SZ6lZBRnEPS55kNmPt6AzkGy3a
         0S7A==
X-Forwarded-Encrypted: i=1; AJvYcCUM7Yisin2ZdyR82nTvwG0Ui278jS+TFO8Ws0r0rS/SS57hUem8Qxpy1bDchw5+ZGvASJXHc2sAu4TR@vger.kernel.org
X-Gm-Message-State: AOJu0Yzr+wzg5X0Y5bZlC+bl1ePheLidgDlg+xJnurMuZVt6TtJhpOKF
	LNgQM8oqdoTX3PmZpPdnPcxInEwNW0iRypXxG77KIW5maw9xOnpFD28b4oPUuKH+rFWMhuaEVHD
	mwmvM7iCK2+zNLgl3i11O96vd3bsyTFiV+5H16tnWCuWgNIaFuHyFueQ/uIPdj75d
X-Gm-Gg: ASbGncvNbWvMiWjffVgsBZpOa+nn8q9PAHZZfVt8PSFor8k/6xaB7Lz/C9AWvOm6r2Y
	aspPgpWwuKutRUtqyDZBS1v3Gf9pQhYf98yQc/G+RwfwEAboF8e2sPvuFM1P25o57MKh2qwYuQx
	+H18SYCswqYEl1M4T1X0DSTkiM4PxA0rI0cBe62SjwnceyKFMIKvU7YaAdsjKj2zF27UvBvahPM
	nJI8JoYMgKGaykxPiqJ3Sgjdyqk/lw/Opuqs2s7s26/+R1X8korCL/iILP4kSpX+ewZ7Zvx6528
	nWDG/j/4jxQPKzD+TUhLIwMuwL9ICV6zJtJAhGmnQ5jcfwBHvmw+pzq4vdJfaIXBb+JfG0HQog/
	stqUfTPMthrW9eGP8tOKv+pw47BhO6zJz0SKKh6mN+2dtj5XAP13fYKBo
X-Received: by 2002:a05:620a:190e:b0:85a:4bc8:3d2d with SMTP id af79cd13be357-890706fe6admr2117632985a.8.1761212206514;
        Thu, 23 Oct 2025 02:36:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH6mY50FZNSqye8z3osZjKohykPCr4NQ1LXRm9tZBZ3NgHs0Ck4cRYybkcjDjgqxKHupXrKRw==
X-Received: by 2002:a05:620a:190e:b0:85a:4bc8:3d2d with SMTP id af79cd13be357-890706fe6admr2117630485a.8.1761212205954;
        Thu, 23 Oct 2025 02:36:45 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d5147240csm159119066b.73.2025.10.23.02.36.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 02:36:45 -0700 (PDT)
Message-ID: <10999a80-df1a-45c5-ba1e-e64b2afeeb4f@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 11:36:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/12] dt-bindings: display/msm: qcom,kaanapali-mdss: Add
 Kaanapali
To: "Rob Herring (Arm)" <robh@kernel.org>,
        yuanjie yang <yuanjie.yang@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, mripard@kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        marijn.suijten@somainline.org, abhinav.kumar@linux.dev,
        simona@ffwll.ch, devicetree@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, krzk+dt@kernel.org,
        freedreno@lists.freedesktop.org, neil.armstrong@linaro.org,
        quic_mkrishn@quicinc.com, linux-arm-msm@vger.kernel.org,
        lumag@kernel.org, airlied@gmail.com, sean@poorly.run,
        maarten.lankhorst@linux.intel.com, tzimmermann@suse.de,
        jonathan@marek.ca, robin.clark@oss.qualcomm.com,
        quic_khsieh@quicinc.com, conor+dt@kernel.org,
        yongxing.mou@oss.qualcomm.com
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023081736.1251-1-yuanjie.yang@oss.qualcomm.com>
 <176121209123.1694835.2815069098750745260.robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <176121209123.1694835.2815069098750745260.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE5MCBTYWx0ZWRfXz2BY7fAvvEsL
 Ou69wDywx7lilebp5+0jgAickNMf+blB0HOzWqRl86QduuXGYO2mVGfE/3ZtOKo4sG8K/iA+/h6
 ivQWMWQEcZ98+wvWvFyF+8w1P8oL+M1pHxH6rLHU87+kv2fXlENKWchnGM/dQtCYfozjHWR7SkX
 u7oHB+SG2XjUvXVbSP22XUJYAbV2Eonr7/HRCr9oMHJczQVaSanPm2Iwa5AFF4K5iRUsoy0M+ir
 mhlxdb0JmWOG5Yu/oNZN6X4s/oSIdliot+uIWKjpU+03nWtw0NNmvQxJWqb/L018E31JgI8qVOI
 9oEWdUUcutSMn7Ji46b4IUJtyFuIwFDy++SlpT+QKexeEzANphGDFKk1JFGvmtV78U+lltBILFU
 uK9PE5wDP562Nt49nvhxluD7oRlDqA==
X-Authority-Analysis: v=2.4 cv=FbM6BZ+6 c=1 sm=1 tr=0 ts=68f9f72f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=SdGosrV6Qt3YffhYJa8A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 8jqs1nFE1xifqy4zGv9tXYTjI4HqwW5I
X-Proofpoint-ORIG-GUID: 8jqs1nFE1xifqy4zGv9tXYTjI4HqwW5I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 spamscore=0 impostorscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510210190

On 10/23/25 11:34 AM, Rob Herring (Arm) wrote:
> 
> On Thu, 23 Oct 2025 16:17:36 +0800, yuanjie yang wrote:
>> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
>>
>> Add MDSS/MDP display subsystem for Qualcomm Kaanapali.
>>
>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
>> ---
>>  .../display/msm/qcom,kaanapali-mdss.yaml      | 298 ++++++++++++++++++
>>  1 file changed, 298 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,kaanapali-mdss.yaml
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/display/msm/qcom,kaanapali-mdss.example.dts:26:18: fatal error: dt-bindings/interconnect/qcom,kaanapali-rpmh.h: No such file or directory
>    26 |         #include <dt-bindings/interconnect/qcom,kaanapali-rpmh.h>

Please do what you did with the other clocks and simply refer to it
as some vague &rpmhcc_xo_clk which doesn't actually need to be defined

Konrad

