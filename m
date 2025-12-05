Return-Path: <devicetree+bounces-244678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BEDCA7C5F
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 14:33:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 18370325F6C0
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 13:29:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC25B32F745;
	Fri,  5 Dec 2025 13:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IlIzhT9N";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Kdjl92/3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596A9319609
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 13:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764940756; cv=none; b=utyxORphvPcarH+88vQkuBimc6rwE/jDSgIH35pDGlIGMTG2Oiju7aIv09BQAC7YR6WX5YivHQfdlbt79/lm9Rl6MvvNGCznkDIieUqgqrdj4J8Dvsk/P/cAWMKKlOrd9vPACuBDyjaSuY69rUbqWq7TZsFpZgdjlyYcGFRRR8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764940756; c=relaxed/simple;
	bh=N8s2m6g29yiPjUAWZMMcCVwgWqjYLF8q33jxuPLnL9Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dndGmdIr5KXVH82MFeS4rK2k31R+cz6Ove+IMOV4VrA9ujVORGwiIkwOMMqpmBLOrvFuO9uGuuvdxWdmoNtWXAZ9URnZg/OFOmkAhfEo2rGoCHBLXauR6CaMkWZ/7l4p1vcs7pmhXwVR7Tc8Y3EJyf860uUE5OPxtgj4rh6Uv+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IlIzhT9N; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Kdjl92/3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B55448A3526444
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 13:19:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IeOS7lUKPIH2TNJHEFdsgqY3NDWXSlKxCvv9TbzozEE=; b=IlIzhT9Nl2k8IlRX
	qqJavKjRoWJgO+Xon6v2U0SvLI36cfEU3s4DMYFH36EXZlobUUdFwP1yHBBw/w8Z
	Nzi7Ho3LO/TreQeKzMp8dVPcFqv8/0oO7eFryEIkZ+FxuJ/RJRlUSHxVhGSxIyxk
	v4FmzHLiuIyRAEsefEi+mtBmq8cIEW/K+wZJD//UVsEI7Pu+PYM8+S9JWkE489xh
	3/7HdetoPkB84UJKO/lBvLZtOB0ns/9wa1gh8pjX5J20JA8hpgg3EdeNJdoApmls
	j+05LG7yhnIA5T6/timanbgQ5ugahvxzoCI/0fQASDkcPccmQ/jMpf55rS+ST0MP
	jLqTTA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aurwvh9ta-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 13:19:09 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7c240728e2aso3814364b3a.3
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 05:19:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764940749; x=1765545549; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IeOS7lUKPIH2TNJHEFdsgqY3NDWXSlKxCvv9TbzozEE=;
        b=Kdjl92/3NrNrzC5ZWyOFTNA4nGRFuZ7li+GGFoJuip/lgLnIhcZrABNoDSJ5RCfv0Y
         FzU5E0yYsgt2IhzX9UaYTfh49DdFO8Mj2oITMDlGkqztnj9EkV3Hmomu21JtBz/jb5ID
         HI8lbFOUUinXsoZlTKmCyqYS94qrdPPFtyFqP/BqZjbxOH4TQXSXhIizgHkQiMs+VP/l
         9Vh+/iyoL2hI7ECGt34gcZw6iyjwBVIqcKmgDYqEKVI5mJLhwawM3dgb6co0CHInJIf+
         L2VhjETrqOkZSiGrHKbTEiFsqwra6cgfj9CDH6fNh0bCfzyLwwKeeXBbZwVksqTVfNAQ
         80Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764940749; x=1765545549;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IeOS7lUKPIH2TNJHEFdsgqY3NDWXSlKxCvv9TbzozEE=;
        b=SKwbPfhj1sqa2V/++zFha+VCEm9CWbtXVTxicbruVjOBJts+1fweR3aabJaXH+fPX5
         1IhZleeKuQQjQ6GOI4yBgIlUw+SwKl3cSgPn0hw/LCrjwryErKbJwXgX+29yyPGcrwNq
         zyZ11frO23mOru9Bu9lPvNrPvtc4Zg6jJilFQRrR9GeXQ725kKAZVDIui+qDgAfsWAEF
         5lSCdku1K54YKx18p04VN+XiBd/Y6Ic549UhND5O3Dg7GvmwY2+TfbzoSpL7sv0X+EYT
         shCJafCeWdt1xBK44kw2pVUwszaqO89fTsJT3z/AO7k6uAbZl+ie4UKxcQ0d/F3zijlx
         pXDA==
X-Forwarded-Encrypted: i=1; AJvYcCXve0EtJWGM4D5eXzsJDkJMsFUfOrrwDrXv4J/g/ZBv08vo+71ieEmpgSCdm2+KgHizU1neAbXesWlA@vger.kernel.org
X-Gm-Message-State: AOJu0YyieOjUGcThKOUqGDvVIZ9N7rQBk9w4lbxcZFewxnfKqDqhjZW+
	3i9cGeAcO5PSNuVTBQUvlkRnxkay0nWKhDmCfmZCWjTJb6/KvpbnwliZhq7lv0sezFyzre4V9uh
	+70de0IJtj6V+Fo7mQiL0cetEwsH1fENFKuGR8EYhZ9yEiJloH0+H3+M3lXklKGLB
X-Gm-Gg: ASbGnct+p0icn026qCoDHbxI5yPGaI6H63ooz9A2yYJ38XGSvFlaY6D2dw15flEYkjR
	rvVlaxjHNTTDQUvOxJVNKFF6rV5rgn9HIkG2Q+sph9ERzorJnhlThPl1J7eot7zL82ThAWWBWoX
	WRWaodOICGftOfny1QXS7Bnk8jvLKSEWu3AjoYvAQDO8auNdSKYVbptw5XtUHJv7dz1HBHPGnOB
	LHwuZEk+AVqQgZ3xVBodXNnoa0fCVWBvI2YG++khGO5EYvi5luhm5JQa+/scfcohZIDu5CkQffo
	4T31Dhmnu/rBkXZoBIzeEWNrgEfcmSi8q4rtIw/AbkH2KTTNi/N7IoTSV7ARlrB9LFo+vh6q4zi
	YDWnNax/Qp/4czUrkl+djsnSll58+Y/sInuo4OXC6XTEQLZPVt+J8VMgGlOqEAda4rA860LECrj
	k=
X-Received: by 2002:a05:6a00:1142:b0:7a2:1b8a:ca22 with SMTP id d2e1a72fcca58-7e00f322872mr10314220b3a.25.1764940748661;
        Fri, 05 Dec 2025 05:19:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHD5ZDgh3vT9LKi/qpd1BTKQj2vms89X3YmFq5lxqbqVSPawNfPQnu1UcIRG65q0pTqTzUmfg==
X-Received: by 2002:a05:6a00:1142:b0:7a2:1b8a:ca22 with SMTP id d2e1a72fcca58-7e00f322872mr10314184b3a.25.1764940747926;
        Fri, 05 Dec 2025 05:19:07 -0800 (PST)
Received: from [10.133.33.187] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7e801c6a1fcsm456099b3a.4.2025.12.05.05.19.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 05:19:07 -0800 (PST)
Message-ID: <b08bfb85-3aa2-4fa9-afd7-a27c3f5e8a1a@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 21:18:59 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: kaanapali: add coresight nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251205-add-coresight-nodes-for-kaanapali-v1-1-d3d2099b9b24@oss.qualcomm.com>
 <93a4071c-d2dc-451f-bc4d-defeafe383ea@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <93a4071c-d2dc-451f-bc4d-defeafe383ea@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA5NSBTYWx0ZWRfX6I5xlpz8PD51
 c46IsECK4Pp29SePra44yFjosU+yaWOc4hMiQERgDFXrsa814z1kFcLjgX5uyHp7+R1unvq4CJx
 d6uNHVL5Z3Zo4XfXTLmcS9glN3CVTOWm2gC4T94AQLjaP3QN5br6GHcd2xU9DvdPwqWjP1QiWoF
 K88JK5/5N57ah2It228pIumWGZf8ZhsRDBqD0gkF3YIBlRtyf8m+Zf8PrXCirTjFnS1Odt5wjXD
 RxKfz2mOuSH46sfJtR0l8HosYk3f/u4gcDGl/KjpBeKdEgeYF0zup9bFPDb6wBJqTRPpLXmyNRl
 W8PHjvrZAH6iq5c+5c8amlvpLDYG8jOOxUNiiQBuxSIysW9DUkmK93QL9vRzFPGrFnZDPSioLUY
 f51NBeyzpqSaBrr1JV2rt0NwsH1xDg==
X-Authority-Analysis: v=2.4 cv=Yd2wJgRf c=1 sm=1 tr=0 ts=6932dbcd cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=J_Aou7W4naz4a_YxzB8A:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: UAni5LqPKfBRFCfgg9FntQadMCWK6Uh-
X-Proofpoint-ORIG-GUID: UAni5LqPKfBRFCfgg9FntQadMCWK6Uh-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_04,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050095



On 12/5/2025 7:20 PM, Konrad Dybcio wrote:
> On 12/5/25 9:36 AM, Jie Gan wrote:
>> Add CoreSight nodes to enable trace paths such as TPDM->ETF and STM->ETF.
>> These devices are part of the AOSS, CDSP, QDSS, modem and some small
>> subsystems, such as DCC, GCC, ipcc and so on.
>>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>> Dependency:
>> - gcc: https://lore.kernel.org/all/20251126-gcc_kaanapali-v3-v4-0-0fe73d6898e9@oss.qualcomm.com/
>> - ipcc: https://lore.kernel.org/all/20251031-knp-ipcc-v3-0-62ffb4168dff@oss.qualcomm.com/
>> - base dt: https://lore.kernel.org/all/20251204-knp-dts-v2-0-596d8398c6d3@oss.qualcomm.com/
>> ---
> 
> [...]
> 
>> +		tpdm@1000f000 {
> 
> This node is out of sorting order
> 

Hi Konard,

Thanks for checking.

> Everything else checks out against the docs
> 
>> ---
>> base-commit: b2c27842ba853508b0da00187a7508eb3a96c8f7
>> change-id: 20251205-add-coresight-nodes-for-kaanapali-27948a5ddffa
>> prerequisite-change-id: 20251204-knp-dts-4ad60e175645:v2
>> prerequisite-patch-id: 1057cce23a42b5be40a6266d510bc62f756e3578
>> prerequisite-patch-id: 9924e37fffbad0125759ee3aff03137bd1cacfc1
>> prerequisite-patch-id: f7455dd4049ba647ed5f13e14fb99844340ccacc
>> prerequisite-patch-id: efa90c4f38d2e85476f22cc0081d7fbb8a34973a
>> prerequisite-patch-id: 7fc8429ae2438ddf1aa0f0aa005293cc76540f22
>> prerequisite-change-id: 20251121-gcc_kaanapali-v3-ab91e1065bd4:v4
>> prerequisite-patch-id: 9a9cd779ee23419a023893f357decbe09da1e42f
>> prerequisite-patch-id: b7d46739fd97b16bbf635569018bdd809fd30966
>> prerequisite-patch-id: 0baee9ea7681fe6b4ab1c69f1e087427ad0050e9
>> prerequisite-patch-id: a7ee79adf85ce9c5aedca168a561a9560fa59b44
>> prerequisite-change-id: 20251028-knp-ipcc-6b4189f71121:v3
>> prerequisite-patch-id: 6cf08b941741eff023e37a6a8afd5478bdf0788d
>> prerequisite-patch-id: 0ad500fc45e104a874839181b5ae59a4867ba1cb
>> prerequisite-patch-id: 628073856ba29bc3ed64f801dda4c9c7d767f327
> 
> This list however should deter you from sending.. it's impossible for the
> maintainers to resolve a list this long for you and there's a high chance
> there will be changes/rebases required because any subset of these patches
> you depend on may change during their reviews
>

Yes, that's the question. The good news is below two patch series 
already got reviewed.

- gcc: 
https://lore.kernel.org/all/20251126-gcc_kaanapali-v3-v4-0-0fe73d6898e9@oss.qualcomm.com/
- ipcc: 
https://lore.kernel.org/all/20251031-knp-ipcc-v3-0-62ffb4168dff@oss.qualcomm.com/ 

Can I have your review-by tag after fix the order of the mentioned node?
Then I will send a new version with the tag after the dependency is 
being cleaned.

Thanks,
Jie

> Konrad


