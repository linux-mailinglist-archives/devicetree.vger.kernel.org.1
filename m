Return-Path: <devicetree+bounces-252691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9467AD022ED
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:45:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3259A303D6BD
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 10:06:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFFE742CD4C;
	Thu,  8 Jan 2026 09:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="plQhJESP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Re+uvKy1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E9733033F7
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 09:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767864140; cv=none; b=bDw6uP5avSaKghZDgpMZdji3br5ATnE9hCwiUbYJRQK81NPPF57N5uCE00SFXAeHLFOLQOKK2cpZwd56MVTUKDc81QbigJY1RcPy4dND5IeUOk7K9xCzHjSPEPgoxY3nicN4dP9k1OYiE+Ec/7gTW9QsrsOXKRWb73W8ys1HpsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767864140; c=relaxed/simple;
	bh=NykHxiLesQcmL2nusIInhtRLoMtoWy5GzdgE9w8Y6EM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CixPLMIqDahLC8u8XrYsj3x0u7YkSlPc+RbGYHDaPlBAgvUeOvScpnf8VrgoP1W1hV/7nPyM+mcFCHdluqGfbDMvI3np/feWIHKY7xi45j/cuTQgC2b40i4b+q7bXeMw7Pf1D+8M6azSF2Ph2OdkUMxZTpqUsfIEo7+JT+4kix0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=plQhJESP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Re+uvKy1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6088Y9AC2239578
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 09:22:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NykHxiLesQcmL2nusIInhtRLoMtoWy5GzdgE9w8Y6EM=; b=plQhJESPDxEeM+e6
	WXA3kc/FSUTvnZS1khnkQ/Vjx0lvvLW6JQ0AE4QeMbPjlI/iVXQ98yXUt3SLs8F/
	0VGcfTyI2POoi/JlLLyev8vCDbJlIy9LP6BBYnGD6SpbVlrRB4e/NicTKFXxKnBJ
	nBDzQ9QVlHg2CBAHq7ubQ2swcWWqDXD3UeZ/zyhpb649EQV45S24Qv4KGgFhM3nQ
	f7OFya0bzEfnloulgLTlSqfxe6qBs7xiFDREP9FU2hj3fip1f60e53LDINSpBOsf
	G0RdJ7zWPVd/tpneNzO8uO5uACEd050IBCJVc5KuQy6HXi9R1rMB+RzadENkNLd6
	Vnqs1Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhqwg3ddq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:22:13 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ffc6560f05so308301cf.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 01:22:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767864133; x=1768468933; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NykHxiLesQcmL2nusIInhtRLoMtoWy5GzdgE9w8Y6EM=;
        b=Re+uvKy1XG/zRpfe+uhQOjfwedit7InXKmvml4t4Ghh/cfeR4ZYCQ3uh3pr6QoobWQ
         M7C1yhKc8CXmZg4yY/hKFvXiD+On/zdSL9NDZ1KsulHSfIEo6Ia0GPs6/6yVvsUtROeQ
         l32ro5ptfk3vA96Z4Ud7IGDIcK2nfmKTy29KvC8Ugk/tafEcruWbW5H0+W8REBuiyiM9
         Fs+7NB+XsRgLzzZD+moX9QBoliIH+TbmdJLa+Y0dTlWDl7HxQjD+KOTK7OkKOunlGjmg
         TvLItDF1uppMNZD3qj57BNT1Nk2d/hmbHZNYwaaffPMz+Jo3nRtKMd8x78Sa57EUvhnT
         geKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767864133; x=1768468933;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NykHxiLesQcmL2nusIInhtRLoMtoWy5GzdgE9w8Y6EM=;
        b=GylE6YuklNTHDtdxeJIrabiXr5oynTFiyq7jKkzES5cG/f/JIzXXRyO7iy2AtlhWkV
         OCAOFc+PcgtiZbJ+4CQOhaSBeb1ZzmvsWuYrfzfTprq6Ij/UfQkhERIaVSslIbj7CHX5
         jWip9nPkoB+3OmkxdbjgfrCWPjRTWFNmsMiiPXDLkSE2MsvJ7/DIywZalx6HyUd/uWel
         kCoEwCm/kQg7CeKYxyDjbp6d0LZMxOQJhXoqE99YCcREy9hbplBiKkPLBeZXxzUz8QvH
         5uritJrAm6HPTQVrsk2rJsnmIgqS117YGS6lnS0Qp1XxjGz+dAemRWP1EBM8ULrqunlA
         wdeg==
X-Forwarded-Encrypted: i=1; AJvYcCUOxi8PODeMU5nSnAEr4FNPvbZKFi+HREMt7ZmQgyRvijMzIB85JDp6VY/b8xmUD8tAKwU/0ZFVZ5dw@vger.kernel.org
X-Gm-Message-State: AOJu0YzbEMxMUvT1hXAW2q1EmcndLCoot8zREoUq0nNgUMkswC0ZsAsV
	lc5QdVlh9hqW0PPftbQsIgmEfk+NhSkM1e1+KFqPCe6KUdnnAYpn21BLRejCACyA6ptI56ilP+P
	2ulpjWuv9G2/7xdP64Y4LFfCEh4wu4IkAuhCdIVXytPFp9GSQUDxiIgpzzDY2XBcf
X-Gm-Gg: AY/fxX63Jadlb8SUw6zMNKz0QI1vGDcozMiDRtaDxfh3m3+70DN2bx0vJFjFZSFJyJZ
	fUZbz5Fi9K25xYMPIJZbg0qZpgygdAfzfq0UqnicfVLzg/gzGT2+SFo3A5xpPxf+X+f1tlAmum1
	y/6YaizxK3ftKTsB0emHZzpPN/IkSxFUqr6ADs3Cxbm7ZAJdfbAzCpjIpjl4As9he1yh+wJFHTG
	b47gEfuKF7kesYrn9bCg/d2xVE+x7qVA/S0+03geUAYfmHiSgW9NaYQ2Yeg9KlN+3xMtF4Zfrtf
	Ldy+Sb21S/6LB562bFvknmmPL+Xfzh/jP3QZ6VUgxS936ueTYr44U8lKdmaIvOiujZZwRgNHCzX
	9R5Dajh3We8Unt0dfhtogg92WHR/WFXnezYGY1STuY36ul1jZBeKRyjyvvXbbWEZY/hs=
X-Received: by 2002:a05:622a:211:b0:4ee:2638:ea2 with SMTP id d75a77b69052e-4ffb4a73847mr53808741cf.9.1767864132589;
        Thu, 08 Jan 2026 01:22:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGY4wdNCuBrMFoo9DDpE5DqvPtrXyk71CRz9mJOSVhhSxeHi/+bMqRghkU10RrDVSHGxOxCIg==
X-Received: by 2002:a05:622a:211:b0:4ee:2638:ea2 with SMTP id d75a77b69052e-4ffb4a73847mr53808561cf.9.1767864132191;
        Thu, 08 Jan 2026 01:22:12 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507be641e0sm6930953a12.22.2026.01.08.01.22.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 01:22:11 -0800 (PST)
Message-ID: <52778327-69bb-4f6c-8d64-094f33809480@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 10:22:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] dt-bindings: backlight: qcom-wled: Document ovp
 values for PMI8994
To: barnabas.czeman@mainlining.org
Cc: Lee Jones <lee@kernel.org>, Daniel Thompson <danielt@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Kiran Gunda <quic_kgunda@quicinc.com>, Helge Deller <deller@gmx.de>,
        Luca Weiss <luca@lucaweiss.eu>, Konrad Dybcio <konradybcio@kernel.org>,
        Eugene Lepshy <fekz115@gmail.com>,
        Gianluca Boiano <morf3089@gmail.com>,
        Alejandro Tafalla <atafalla@dnyon.com>,
        dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Daniel Thompson <daniel.thompson@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-fbdev@vger.kernel.org
References: <20260108-pmi8950-wled-v2-0-8687f23147d7@mainlining.org>
 <20260108-pmi8950-wled-v2-1-8687f23147d7@mainlining.org>
 <45a2b510-c825-4191-975a-1389f4f18903@oss.qualcomm.com>
 <c7bca43b1b912a6a100d83229d78abde@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c7bca43b1b912a6a100d83229d78abde@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 33Nz4RVne3aLm1qVGi9BPcLiQJq2DbCj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA2MiBTYWx0ZWRfX3SGASSLaBdXw
 hTbCeENKibEeLpJ8d4S5JcaXQ/UOOrVeYABN46zSdDYOAJuDEBIZTPFbo3N/mP42xzd2Vs1YPXV
 a1PsD1+1UV8I4Xzl9TSgzeNxC+XNhcO74thcGKz5/e/AhTSQRSJiwdcXEt2TRQtjVHD+YsBPr2N
 a0rKD1UjAoi9qS7N1e9tca0UItCRY1qwLVWzV05X+PVfzW0YCDVjVbNsz0mCAddAzBA153H82UN
 05y4b4HGKxvJ8z2QgiYauSsFk/IXWT5oPzvgQMre5zeJE7gS4romEcuvPjDmzDfECDoKCD7mb6U
 t6TewwImJRI38YMyoj7rs5FVSEkcCT44Rzih1PGdrssEIrPWzdciFU2pByac/Q+c3iZ1eczD1R2
 H3PiAaDWfihk2575zHw9dggi+2toFoAdOROik9CQ1Jm2NMpdCfc1kxBLEk31Au/z3pVOfUVzoF6
 bNEOudXje+sDEoQ9inA==
X-Authority-Analysis: v=2.4 cv=Pa7yRyhd c=1 sm=1 tr=0 ts=695f7745 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8
 a=mtDAOQl0mCcS2X4wXL4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zZCYzV9kfG8A:10 a=kacYvNCVWA4VmyqE58fU:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: 33Nz4RVne3aLm1qVGi9BPcLiQJq2DbCj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_02,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080062

On 1/8/26 10:17 AM, barnabas.czeman@mainlining.org wrote:
> On 2026-01-08 09:54, Konrad Dybcio wrote:
>> On 1/8/26 4:43 AM, Barnabás Czémán wrote:
>>> Document ovp values supported by wled found in PMI8994.
>>>
>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> I reviewed a version of this that said PMI8950, which is very much
>> not the same..
>>
>> Let me try and get some more docs to confirm or deny what you're
>> saying..
> I have sent it for the previous revision msm-4.4 contains the documentation.
> https://lore.kernel.org/all/95f7c89fdf9b856f567a498cc56ecfa5@mainlining.org/T/#u

Right, but I didn't send any reply acknowledging that.

On v1, my review tag meant "I concur this is the case for PMI8950"

Because you carried it in v2, it appears as if I said "I concur this
is the case for PMI8994", which is not what I then said.

Konrad

