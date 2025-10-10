Return-Path: <devicetree+bounces-225440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D297BBCE153
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 19:28:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8795A580AC5
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 17:28:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 552A8221287;
	Fri, 10 Oct 2025 17:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KKOEdXUq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADE0321D3F6
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 17:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760117316; cv=none; b=oRNwfbEhu8TSQqabVYhhpIY15CvEkXnfv3g22wwTf52/MPHCCuoddlHGSRflwpiDazafe2yebs9wmUJPF8EPnJdR/Jcj4eUVqiKloxKwQMlCB9RTtIF/nruvQsfic39dBHDsp1McBsUgsj33VOjvQCohvGDtDfq1G9+IUhvmALk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760117316; c=relaxed/simple;
	bh=/adNrdiBXGreU5Zv1TBVSGHzTcP/X2qnzXFeQoZyAeI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lotRwblV4Q1JBYuO+U41qPFT0Vw49ZceD5Tp2qJWZwGtMb1Is26AYkjhATRbRAONdE5NuX5mIRl4y50IX2O/hxMSqDW2WobHRSxkxhX0YAl4EXUW1xjI27E942bYbk3RkMfqGYk2l8DwruRAzuIP+u6WrIv/Tl6pX87+AGsvr+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KKOEdXUq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59AFVN2Q018538
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 17:28:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5RtO9UgOqlSPMcNOTbaUjDba3fAyZ6bvIxzoBS2IW8c=; b=KKOEdXUq6dzVIpSr
	LuJS0xo+4fVpQm9ipytJjhUyIbbZcPvktUogcCD0y3+eJLP8s1aJR8wvmfndCjno
	kUTsWwQnWkASOVtEWbTyeetS2luFQF+r5qQy8uWhjboF7y+oXDRfMwxmjdIUm6zh
	Xucp23vVwHYDaO1dFREHLpY6jQIm0J6Q4lZ2nSt5HX+nHmgSoHO+NZmHxjDcTv4v
	GzKYKwalDfMEJr6CHNYseyZo8a8BXahcS/PwdYG8/Hwq7NyFQzSBlTPkvmHO0NM5
	lqwKsGSiqsGerVXwef/LdLWeyXVc+dOGWsHlNn3SCjrA3fT1wn6pgBa8boEAw6X1
	mSBAoQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4m784e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 17:28:33 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-85a8ff42553so76915085a.2
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 10:28:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760117312; x=1760722112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5RtO9UgOqlSPMcNOTbaUjDba3fAyZ6bvIxzoBS2IW8c=;
        b=ENZpwM9ixqH03XCdf4M1TDX4WBYE5d1kEhoB83JeiogE7abgzjdRJYbCPDqBvZDeEj
         iypuOjV2j9k0HuInI9bnBY0BC4E0E7lcrd+VOYJ4dFmw64oAmIe5g76u9EMAKNQfsb5r
         QTLn7HV66ow1ILvZWA47i4xNBPnc8ZE4SgsMcbwkugPzfJH+BQ5Pe/Biz3YtSbHwAmBV
         Gldx8B9j9f9dSSkWcS80x6l/3xYkzGl6jOdsr+N8scpArY3MXB2yD3CXI3kwPNV5Kq2o
         7M0WQCGXpI4sXWvSlDXAHkBH6fBjvl5RRYbSwbroIvT4AI9KbbZaGv6JM4Jgtgm6QA2T
         TZ5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWNRx2L7iBGvTDPK7Oll2uE9Ibttg0or3iE5LhxP69MagtQLZSyqDAZ9Y9OGRifHtlbjvgjG50fASon@vger.kernel.org
X-Gm-Message-State: AOJu0YyWkn333GjQ0Lk2aCYakGYkbkjsB8BNvKUtldHyXgVDpSecsBze
	agzOxBlu7zl+fehuMyZzS8TCrjY0n0M9WT/oroLjyUkQ5VVXGsrYlMBtAGN/BKV6CxQFrO2eP1L
	T4B7hRSsZBBGIjFDQtI0w9LNeXg7JQdpTmHykAw00iI7X5oWeNQxLFcDcUhpbEQYs
X-Gm-Gg: ASbGncvE8HCXOTHJC41KLgu75Rn4nqICtVynWELxBaeR1uuHoBY106btqCDKuCj2G6J
	LRVM+VMKuQIT6QvCQQItDC/bIss/YrXCEdL98afhkFvKRs65OU2AHtOQuwAQUv0j1y6z65S8VFH
	ziqhPEGXgvdAsKwRZFRdKHFr8FQ3gS7AopUOWb/JG6+IjtWbhaSbvoYDpuqvy9zpqJVCi8cR9Do
	JVQvQAlLZ1vggW6JCtBWiU5sAXJdCSFei9dsFTMSu44dGt+k4DNdiD7vookE69T1DjI8wgKbktW
	AKvbrlTBcc/2fCMI07XsOgviDjIMXyjyP3ghZQiSYiqiz0NRF3hO9kNAPpjfe8BDiYJlPYn+ed3
	sjAY5GXGEu39/wtfU5+hSjw==
X-Received: by 2002:a05:620a:28c2:b0:856:6bcd:4adc with SMTP id af79cd13be357-883544f4e27mr1154162885a.9.1760117312459;
        Fri, 10 Oct 2025 10:28:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEDtsBobK85gPBifHNNJEiQy1NEmBXZH06eJMg5hBaBeDWosJuw8Hx8ajikWbGG7O41+fj2DQ==
X-Received: by 2002:a05:620a:28c2:b0:856:6bcd:4adc with SMTP id af79cd13be357-883544f4e27mr1154159685a.9.1760117311864;
        Fri, 10 Oct 2025 10:28:31 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d951deb6sm281479666b.76.2025.10.10.10.28.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 10:28:31 -0700 (PDT)
Message-ID: <61f77b51-af6e-4625-8d58-fee8f93e1d5e@oss.qualcomm.com>
Date: Fri, 10 Oct 2025 19:28:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: Add support for Huawei MateBook
 E 2019
To: Jingzhou Zhu <newwheatzjz@zohomail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251008130052.11427-1-newwheatzjz@zohomail.com>
 <6199698.lOV4Wx5bFT@debian-vmware>
 <c6880fe5-029a-4f8d-a08e-81a066a79450@oss.qualcomm.com>
 <2386127.ElGaqSPkdT@debian-vmware>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <2386127.ElGaqSPkdT@debian-vmware>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX/km00NKX/P+a
 piqDTgDb21b1SjLU/Fs8jtzyLyEm4SeNZ4UrpqwosvFmymbgfE1+3YdrwP9ye8TZWfnLnVQtBWI
 xZWEMckjuu9iI3F0/gc04VsPqSgDZ0w5SJNZxv9KI6GCdJSGaIN6+UySSvssU6JV1B4RFny+u0W
 5lj4Yr5GAHBUTKwCdupHoeQfTlHTur7Cf2/zDJW9+NJiDPg6ewn2+qAx7bz0AjmFHKtya3dxnaC
 4EXG/mKvn/4oz0XGJ+K+AnyNQduvYLTfIOQw6DqJHqxJvBH7eWO2gHE9PyJC+IUct1W10mVf5LZ
 czifJY7OZnA6OwCFoeJh4/3FnMZtz/IS9YV83MoGRASf5PaG31932Ycc0QQ1IRxEL4wrpPaYNFi
 xdE/hpLywBMC8DvV+CiruE+xouzUKA==
X-Authority-Analysis: v=2.4 cv=B6G0EetM c=1 sm=1 tr=0 ts=68e94241 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=wbXqjQ4oNPLq0UupdngA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: I-w--FcCD6xRPZYEegPMIBDg17k13r10
X-Proofpoint-ORIG-GUID: I-w--FcCD6xRPZYEegPMIBDg17k13r10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-10_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On 10/10/25 4:52 PM, Jingzhou Zhu wrote:
> On Thursday, 9 October 2025 21:58:29 CST, Konrad Dybcio wrote:
>> Please refrain from resending if it's just to apply tags, maintainer
>> tools do it for you
>>
>> Konrad
> 
> Understood. This is my first time to send patches, so I'm not very familiar
> with the tools. Should I wait for the maintainer to pick it up, or is there
> anything else I should do?

Because the current version is v6.17 (not -rc), we're in what's
deceptively called a "merge window". This is when Linus Torvalds merges
pull requests from maintainers downstream of him.

Your patches go through the trees of these maintainers, in this case:
qcom-arm64-dts via Bjorn Andersson
	-> soc-arm64-dts via Arnd Bergmann
		-> torvalds/master via Linus Torvalds

Maintainers generally refrain from accepting non-urgent changes until
Torvalds tags the next -rc1 release (v6.18-rc1 in this case), after
which they start picking up changes again.

After your patches are picked up, they show up in linux-next, which
is notably a release ahead of torvalds/master (i.e. it previews the
'next' release), so if your patch gets merged when 6.18-rc1 is the
newest, it will show up in v6.19.

Another note is that -rcs are tagged weekly, and maintainers are
reluctant to accept big changes at about -rc5, since they need
time for CIs, build bots and users to test.

A cycle normally includes 7-8 release candidate revisions.

Konrad

