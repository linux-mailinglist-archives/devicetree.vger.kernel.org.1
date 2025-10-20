Return-Path: <devicetree+bounces-228855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D79DBBF14AA
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 14:45:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A86573B011E
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 12:39:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CE4530F529;
	Mon, 20 Oct 2025 12:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fe4jnNZN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD3CA481DD
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760963985; cv=none; b=R43dNdwjnXy2qlP22UA5slcCcCpn7iMPsPo7mju5YeTJHCCNhoFDigyBijUAHYogtaclnGQTWMyQj/6nfpDUpzvIVQVbCcSMKeqAjpCV5EK4CxkPAZKthbfcINs4pXcoH/p3t345hKFNbpHjezmBng5I92jJbXnEcyNWOG906T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760963985; c=relaxed/simple;
	bh=r0LI5+rFfxj7D6qdrxS6AU8wGcUsrj5XfBe6LzH86mk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vl6PlWpsJJAMUt533aG1143FS9qokRpQJ1SXRzO0JB0mkqt45111yz088Jo9czkCVkA7+FyuMUd1nEs76or2mrlR+zXoONp5CIiRWNHSDo7ahgNJKMRtBrey+VxwNtyooqJq4xx2Ag9uYyVJtIRHdr57Fmkpa1CAvPEp5/dPHF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fe4jnNZN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59KB82Cp009814
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:39:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xyNWSoXfav/4VdYirXx6+KHz+a4mFdCsFqj3qAZPw9A=; b=fe4jnNZNruhywKrw
	5skvbewk0zPu1FKbGDfM2yNBEBcbIKy3+Df5UMy5VianGU3XlFOcdxJqnmBkl8Ea
	skU7FktlekvLCllqMbxFhVmTr+CKTedDe/TPxlJiNcFFCDf3/yAA3+ZUYRpQyIhQ
	ZecuuuOVqVHZBf8odfv6XJVBgWh3LXjjFV76qey0HJYQ3JRlyN9QBqQGlngK46xu
	DNy4iV+aJZfTQfpcMlWFole/5PUa96NNDykytKisX0emyqlZ2gKV3apcFi+3Vsj/
	Q3EOiXZwhzinQ0JVENnoTv2EL9PfKQ/VqsuIo5//4nhEQaWMYvW+KysUKyGEWZq9
	q7ZXzg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2yv4pgd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:39:41 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7f5798303b3so16373346d6.3
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 05:39:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760963981; x=1761568781;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xyNWSoXfav/4VdYirXx6+KHz+a4mFdCsFqj3qAZPw9A=;
        b=inMp6nV0aCGi2LOuPKRW1i9cLsuLXRMozjETXVwfKzBHq1ttf3mr5y5k+y+tDvnLGZ
         RO54jm6VQXOajMH8u6WtM3AUuqlgcnLOcbrrzj7GwqWYjTg+J8ESSTiSPWaVT1hgclu4
         YjWLqx7TCrwXykQsHnkro3oXil1+791wKzhlLt7ouoFUfZyUyO5mRCNacKfX5c2Xlkw8
         SszV0NyBIMBIH32qKNywLI14TRHNSxfSxKp4yKoReOUHEa9R0cfkqpqtQf4ox93YyvSL
         zoErvN6+NGMXccKYN7V5MIteiGHbyx8kPPsdfAzoB+mCjvtFfaXwwThuy9Huqg7Np2y0
         SIIg==
X-Forwarded-Encrypted: i=1; AJvYcCVd6Cfagx+V7yhAFIoRURSGRtpQMfEQEr0Cwnqw45Dphqk5dXGeLyjJ4qGss/vB9QGee6pgj2WSNuWo@vger.kernel.org
X-Gm-Message-State: AOJu0YzeshOskqsz8LckcWMnP8iL69pKTk2p+Besa3zXFk/D8zrET0Tu
	FS/Y0RQgFX7Mq01IlaEhCCbtOfmO5e4XxHFlw1ezM05H5cYTNQfW7mmsURwPvun501IlY+C/2s7
	AydhwdhdOgIxGXuRhQ7SHsAX7J3o5OF4LFeTsqzLSI4YBFi75eQxgOVcqAzDw4j1D
X-Gm-Gg: ASbGncuMQM3t7btS9KuReEa7L7NyYrndyfqXyITp+tFoifQuTe8O6wClJTfK880K1kr
	V5mwZE79pe91pmz+6p6vL7XcZgQYAzRktmq96Hkw7w77eXYQR9g1cBXRw2cksMnj4xgpETn/j68
	9OVAmQMdBDPlqY4xRKUfL71F8hiiIa7qRa9vqrrzWsb6zWZHfdgG2U7YzCxikTQY0m87VStGZU5
	keF6rMmNwS50MMXIbsPRAeb2FKw59sR0TQczzX40Kr6Xbm+iozxaSK/LIBlbG9zCq1UQmRmeWF8
	tPlNYaiikeVbAknNaHwnsKkoBJMMcrN+jabS88YV1M+RzLCCnknHzfSayqMNXx1kU/T6yILbujY
	K0gT7ltXMKAr2DKspf/YMCBKpBwcIwncSoo8ar299qkLTKfcxju/BPWsN
X-Received: by 2002:ac8:574d:0:b0:4d1:7b86:3618 with SMTP id d75a77b69052e-4e89d1fa0cemr128679461cf.3.1760963980882;
        Mon, 20 Oct 2025 05:39:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/If/fFIJQ3q6nPyTQg9KjwZgT9ia5w0Iepq3jOLMuoIfrodQuufPhmYoIi6icQqulsQhUJg==
X-Received: by 2002:ac8:574d:0:b0:4d1:7b86:3618 with SMTP id d75a77b69052e-4e89d1fa0cemr128679171cf.3.1760963980277;
        Mon, 20 Oct 2025 05:39:40 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb6298e1sm768532966b.66.2025.10.20.05.39.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 05:39:39 -0700 (PDT)
Message-ID: <dab30485-498e-4cae-93eb-b2f40f928465@oss.qualcomm.com>
Date: Mon, 20 Oct 2025 14:39:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sdm630/660: Add CDSP-related nodes
To: Nickolay Goppen <setotau@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
References: <20251019-qcom-sdm660-cdsp-adsp-dts-v1-0-9ab5f2865a6e@mainlining.org>
 <20251019-qcom-sdm660-cdsp-adsp-dts-v1-1-9ab5f2865a6e@mainlining.org>
 <c605434b-b0f4-4a9a-8b28-cf1c77d5f20f@oss.qualcomm.com>
 <35c670f1-6de6-4f78-a452-fcffc57ec93c@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <35c670f1-6de6-4f78-a452-fcffc57ec93c@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: uKs3sUDkKhTiJqMTkFtI2ki7A95zbEZf
X-Proofpoint-GUID: uKs3sUDkKhTiJqMTkFtI2ki7A95zbEZf
X-Authority-Analysis: v=2.4 cv=f+5FxeyM c=1 sm=1 tr=0 ts=68f62d8d cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=WWYcvNe4FWpTLsP_R2gA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfXy5TqA7iwdF6r
 RLF5DO6MirGwczYjBK29MZRIcGUKUebISgfb8WOfA6Hc5m8XVD1ot9dMPw6m9uGoldnBdq4Zk5/
 p1RmcEUeAc75wQgRBY4GDYWrOdG3M+jb6+Z7bdKT1ozIkDk5D8ve61qOuR/pieJV5IRdPlCVoQ2
 9ZuPRV4BZi2q8pmVzbWiVKeM4fofa/ctGVZZX7Ly9VZQrETrSiEwjKdxwFjg33D0MIujKa2ZSVp
 X0aJl1Gg1oJ0LT4qLQm4yfLUqmrEc0pXttX1gdJpT4WgzJipIxJzmND/2EozvK5KMaAndmcs39q
 C0OXGHoQKaUVpwva3n++Ox6i005JCoBUYmw0Q3zAgGjrCcbsuFhp2pxyTCQKGhTpSzcFO4A5gQK
 4Zze/YMhqKw9pjfb7+XJSxIYHTSP1Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 adultscore=0 phishscore=0 bulkscore=0 clxscore=1015 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510180023

On 10/20/25 2:38 PM, Nickolay Goppen wrote:
> 
> 20.10.2025 15:27, Konrad Dybcio пишет:
>> On 10/19/25 6:27 PM, Nickolay Goppen wrote:
>>> In order to enable CDSP support for SDM660 SoC:
>>>   * add shared memory p2p nodes for CDSP
>>>   * add CDSP-specific smmu node
>>>   * add CDSP peripheral image loader node
> [...]
>>>           ranges = <0 0 0 0xffffffff>;
>>> diff --git a/arch/arm64/boot/dts/qcom/sdm636.dtsi b/arch/arm64/boot/dts/qcom/sdm636.dtsi
>>> index ae15d81fa3f9..41e4e97f7747 100644
>>> --- a/arch/arm64/boot/dts/qcom/sdm636.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sdm636.dtsi
>>> @@ -16,6 +16,20 @@
>>>    * be addressed when the aforementioned
>>>    * peripherals will be enabled upstream.
>>>    */
>> You can now remove the above comment ("Turing IP" is CDSP)
>>
> Remove the whole comment?

Yeah since it's addressed now

Konrad

