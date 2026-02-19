Return-Path: <devicetree+bounces-266670-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBMvFn4cl2ktuwIAu9opvQ
	(envelope-from <devicetree+bounces-266670-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:21:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC23C15F705
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:21:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EE1BC30624B5
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 14:20:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E5713382E8;
	Thu, 19 Feb 2026 14:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="myhzW81f";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="frtjub29"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C54329C7B
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771510840; cv=none; b=AiwGGRZ24ddVklGlmFITa1sqlgVt5nJXS9aw2cixaYqSVo8ZE9kTHfQKXzdzrXkGjtDzmTf/E2NDntjR5XZ1nqbtqJKu+lzqZfDO5Vd4w2/elx5zCzOX/OHK3yvaufHKrmmZnUCNB07JWnJYC/pOY0wNGVR4gd8ghitEZPirQYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771510840; c=relaxed/simple;
	bh=EoTRB37SeccKHBtVBHrYRty94wgbxpHZAwwtK3YUt1o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KAz8y712szdlnMl1fplPNMEQJyFfL2VWczjh6RnT/G7+p4v7FykGp7VlfFK9eaoJlF/T905Yoj0LTVlOuyc6ymwGi9X7cY+76aIc2VfwQ+N0BnExk98TJqUJpeG+KQcSvZx4l5PR+H5Uiz/ifvAuTy/kDxjuHrBDuHKRoorJRU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=myhzW81f; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=frtjub29; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61JDQTcG159734
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:20:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AY6SzcgnN1ygLs6NoU90S60oq4F1AC43RaLiXbNMb7k=; b=myhzW81fJU9IimI0
	N0kmSTdqXiTLyaj9ehFU8/Y+CBje0zMUUVH0Dn9tAHEIxiOdn1aLBAyask+DHIbG
	YQKcwl79BFSGG4Pu/YbVs74vwQfwIoU++NROHLJUoVdXQpUWpI7q2rjAnanrl2r7
	aJ0WJzuhTKpkBfrG+Y1Dl1Sd7orJgArMjzn0ptVktb6ILOC0oNJAVZnK0cyFXEGk
	vNuBx//ZWqApdEN2u8L1GtNcC7imubi8NdRBBY/SwMjAVahSMaloej5O+uS5I5Es
	5aLlud4ZBAF4v0/zTf4bll3Np5hcx8bzHXvoB4Mir0aN93WvPNolfv4ZjeXXbESa
	cWyKbg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdrpg9qqp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:20:38 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb3978cdb2so77079585a.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771510837; x=1772115637; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AY6SzcgnN1ygLs6NoU90S60oq4F1AC43RaLiXbNMb7k=;
        b=frtjub29bpGWI9jaL5/HfGCXWDFcravH3rJscz0lSsJZhU2i2OgIukDRuAGkQu0gc+
         UBwZEAWoyywveSJR8uQjYfXRmCyEUYRg7QZknLmGlOasdzYzxdwLihn/IPHhrutW+ZYb
         iME46pqaDnZKNA6yyjqMlan5pxac+OzfSr+Tx5av9EdY3Am4dTAbpfkjsmuBqO1dIf+Z
         ytFPm9py7bogyryWBVhJ6Gm05YPUDvl8PYBGOn24wBHLF6rjv8eSGs6yT3tNExL8TVpS
         L1RoH9d+bWH2wDQpM8rY7UJRBfnYY12UbYUrcsn6xgP3XH1J2ICnzYpm1/Dxqp/Jn4ty
         zEcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771510837; x=1772115637;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AY6SzcgnN1ygLs6NoU90S60oq4F1AC43RaLiXbNMb7k=;
        b=cLq4WuX51ZibeH4lRd1wYywPHiNhH2vcHe0SmmyrH6vRYZV5q2huDO/+d/DDC+dfCj
         YoqUV7LOXAgXPOvfsmjOyk6ibklGTmvdnyaWbU49iJhHAeSSes/0bLCqoRVYUPQuetbs
         /387cOFQ/RwM6j8jXJUIvjiNNaF/94ZPhlnbApVw4jRZikJaU+fQ7P6l86YegQWLVZvo
         cI8T6NnZb6nQbzamSXUClLd4jYoZ9xJallkrL6zNtC7DosgT/Pf4s/NLGInEMqyME70o
         IF/cCPdmRgrAVN6vy/7SNmrxL/wPJ/6Wzk/0R4YWV7440ZZ2RWvKI++MZ/L0gj8NqxQw
         AFdQ==
X-Forwarded-Encrypted: i=1; AJvYcCXh1dZW9s5BSRzd47ejokDeED9lJxETsTZEEICFTiUBeXm7B1NvDJFCTMw/QvkcTuGy3xBE1DteC3h5@vger.kernel.org
X-Gm-Message-State: AOJu0Ywv4NKimg4Evp2wNjrEJ3/3kKfuYi/aXVwDDdhIJjSFFHywiNpc
	N6uunbGpPpEQE9yJM50dP5Y3NSzDX9G8iXmmgyVIUoLXR/iePXgc5Whg9f0GRYZhJwCkVi/6tcj
	kscRo1HFn2CPkSLctYiqdkixBrOOmCFZCsRcyADM0aYkolobXhfNzU9h+d7WMxsD1
X-Gm-Gg: AZuq6aIf8IlNEoY5nrrYEW2TiUwdK+rWCcUywKbqzNSdVJH9cAarEUTN2CNFgB8HV0S
	IOfrq5wzCSe8R+dkzBwzci6PgpEoXs55aSJ67LXAmsHwQcRIBRbIVcbE7yVvpmLCWxYGc0VvtMX
	S3b8HyBx0IN38HOx+g1aD/mptOvfamCQsiRaN6j5baV3uk69uCmW1CMUg8SZMKTT4aJGfCSvHhC
	8NX6k5Ltjjvxui96MShGVRd6P0gi8rPepR/hxPIwZrnJqiwnEsVt9TlH58DSGi3SYujcHrSGM6w
	exc/4+u0a7R+K64JlP6CofK5HbK6QisOoYmFzpOnlDSJPvmpZCVuIXZcr5GzO3dCdfe7DnguEPB
	djop5swCVR5dLX8HYGSHGGjdz194GsCRBe/aKorJ5+b/6orhT9bU+Z483XAYKumo6hnTQrJi07W
	gGc7w=
X-Received: by 2002:a05:620a:318b:b0:8c6:e2a7:ad1c with SMTP id af79cd13be357-8cb40850a4bmr2122379985a.5.1771510836596;
        Thu, 19 Feb 2026 06:20:36 -0800 (PST)
X-Received: by 2002:a05:620a:318b:b0:8c6:e2a7:ad1c with SMTP id af79cd13be357-8cb40850a4bmr2122375785a.5.1771510835889;
        Thu, 19 Feb 2026 06:20:35 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9048d96bb0sm116689366b.18.2026.02.19.06.20.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 06:20:35 -0800 (PST)
Message-ID: <6d2c99c4-3fe0-4e79-94e8-98b752158bd6@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 15:20:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/4] soc: qcom: ice: Add OPP-based clock scaling
 support for ICE
To: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org
References: <20260211-enable-ufs-ice-clock-scaling-v5-0-221c520a1f2e@oss.qualcomm.com>
 <20260211-enable-ufs-ice-clock-scaling-v5-2-221c520a1f2e@oss.qualcomm.com>
 <bfbe04db-bf64-418b-a75a-88879bf0bf2d@oss.qualcomm.com>
 <aY7MidG/Kcrs83O9@hu-arakshit-hyd.qualcomm.com>
 <3ecb8d08-64cb-4fe1-bebd-1532dc5a86af@oss.qualcomm.com>
 <aZYMwyEQD9RPQnjs@hu-arakshit-hyd.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aZYMwyEQD9RPQnjs@hu-arakshit-hyd.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: _uWp9uo2EqpLravWXcPA2rL4w93QvK-i
X-Authority-Analysis: v=2.4 cv=JrL8bc4C c=1 sm=1 tr=0 ts=69971c36 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VczSQE6j7Ae0sFSu3OgA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDEzMSBTYWx0ZWRfX31N2plCT7QXc
 YxJOHGWGrzlKlbNR6QW9Mr7/g3+4nFmG23rWpagmqElLQyWa9mXr0EXa0A7h9dz4F1KDSXGqu2M
 Z+T+u+dYZYbueEj4ky1Ym2H9XR99nPLEbsRWJqVaHqurxt9Md6XrUtWjn9kB46BtZX+/fs/88Qe
 pnH1e4EvcqOlMfgOy14/SkL7+iXiiTlXx/aidRSLx70DJ2syFuHfRpj6r2V8A0EJ0+b1WzE8EpN
 2ACCf0i89V0fUxzHNnEenGTu/ORGuxdiHTBRFwn/jaNk9Y+TAhj2HDoNHBsc4wsJkys56TL5AgD
 q49RXNuK9RRlMTDVVGGm439ph9wfAo/Ym/AWMN0lEmz8njqA5XRWvFlbY3zH37WQIMenMQFj/XG
 k6xNkliziJi1H/oqy+ExtXh4s0oqDpQUVetzEVMgUxh2wGLJ5CqOGF4laQixXuXI78djxNLzQD+
 hrwtxtgi0yO6v7FYZqg==
X-Proofpoint-ORIG-GUID: _uWp9uo2EqpLravWXcPA2rL4w93QvK-i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_04,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 phishscore=0 bulkscore=0 clxscore=1015 spamscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602190131
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266670-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EC23C15F705
X-Rspamd-Action: no action

On 2/18/26 8:02 PM, Abhinaba Rakshit wrote:
> On Mon, Feb 16, 2026 at 01:18:57PM +0100, Konrad Dybcio wrote:
>> On 2/13/26 8:02 AM, Abhinaba Rakshit wrote:
>>> On Thu, Feb 12, 2026 at 12:30:00PM +0100, Konrad Dybcio wrote:
>>>> On 2/11/26 10:47 AM, Abhinaba Rakshit wrote:
>>>>> Register optional operation-points-v2 table for ICE device
>>>>> and aquire its minimum and maximum frequency during ICE
>>>>> device probe.

[...]

>>> However, my main concern was for the corner cases, where:
>>> (target_freq > max && ROUND_CEIL)
>>> and
>>> (target_freq < min && ROUND_FLOOR)
>>> In both the cases, the OPP APIs will fail and the clock remains unchanged.
>>
>> I would argue that's expected behavior, if the requested rate can not
>> be achieved, the "set_rate"-like function should fail
>>
>>> Hence, I added the checks to make the API as generic/robust as possible.
>>
>> AFAICT we generally set storage_ctrl_rate == ice_clk_rate with some slight
>> play, but the latter never goes above the FMAX of the former
>>
>> For the second case, I'm not sure it's valid. For "find lowest rate" I would
>> expect find_freq_*ceil*(rate=0). For other cases of scale-down I would expect
>> that we want to keep the clock at >= (or ideally == )storage_ctrl_clk anyway
>> so I'm not sure _floor() is useful
> 
> Clear, I guess, the idea is to ensure ice-clk <= storage-clk in case of scale_up
> and ice-clk >= storage-clk in case of scale_down.

I don't quite understand the first case (ice <= storage for scale_up), could you
please elaborate?

Konrad

