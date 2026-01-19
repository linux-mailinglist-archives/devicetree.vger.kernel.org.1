Return-Path: <devicetree+bounces-256886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 64602D3AA78
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 14:37:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE174303D31B
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 13:35:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3475436921C;
	Mon, 19 Jan 2026 13:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oExCwqPi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Lvta7b/f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA19C329E66
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 13:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768829717; cv=none; b=VU8JhVzj7fiImNTo2yrxY1iug44yVFMnTUHh2MbLgIBBG91+BNpBIcPTB1ndKdaoFhhOi2ySjH+37RpYU2S9P6waZJQBZMwZOf38Mp1gypEaxZ9CcLkvtZgFtcclZ+zjemH+95b8ghoGqfVf4x3VjnMYA2cOT/QVEgkc4XKcp+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768829717; c=relaxed/simple;
	bh=LcNp2f8q93RUTbfP9ds+4Zh/pnj7UsD40Ky5QggKGXs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iunbARHRHW9+OkruJKpzA4wh2ZCuP2Xi69EIcqXkskc2xYpImketGhVPwGbbugRBhmHOynvXAhkD4Ydt56ienUdO3NhubDQybyequdqXqBm1LUV4L2G1bFKXK2hZD6ODliTGyL9LqqzeAPSCUGobmPGGzGXKBc1vDwKFQYoXPxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oExCwqPi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Lvta7b/f; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J90kwq227975
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 13:35:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2wsfR28Qd0bd4VQshSV5qcHqV1r2GYy0XRWpfzmbx6A=; b=oExCwqPiA+irlMXL
	A6iHfmoF5WnG/g0MX1UhCklqibNTP3r8zet0u4pXEUHnm+j0LE+aWR0LzCKgS4bP
	jspAaDDC4IZjbcgJEDRm2aFfmD8pNJE+u3W6HFecLmRGykLG7nrgSfbiNYWWKJ/Q
	MBzjRvSLeqhX8wkI/ZkdvSuG2CPkmlW8a4oAVzyp6bmJR/lpd72HLcSYixmGk/9C
	d04MRYpglOg4Dl4Ectxsa+a+H3e97bTyUMCkuncaJqlYvfl1bvPdrKqAyyUbl+Eb
	XvjYbbdBXtsqcExlKbX/b0DsTioNRkulTkHQPN/FJN96kfZUtfmYZlmvY3sYqhYz
	Ga7+iw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsgfr93a7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 13:35:14 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-502a477885dso6352121cf.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 05:35:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768829714; x=1769434514; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2wsfR28Qd0bd4VQshSV5qcHqV1r2GYy0XRWpfzmbx6A=;
        b=Lvta7b/fOGNIAaHS2B0tA5H5pAqg8XrMZnQeOCnli824+JszX2RXjddWKSYEr+zMAg
         3NusCrs671ILBtYpJa2r3TWuEXIJDtYXA90QGCOcpmCTEdav5QnThL0MGIG795c5do+x
         gsnu4mmSGbh2g12DDI14DDVvWOm7ysB0PpszVaa972gVcvxJ49P6/bVvJH6iJ8fliXn2
         9MN7II18+WwY2r3lHfijIm5IJbZTvWD+FwFBk/Z1SWf0dSoPVvtbLmmwi8l0VUpidgEk
         tnr1DkdabQOedIX/aZGodx7aFqHqEWCHWUHoGZPpBa/oCvmlZ2wFiU7/a5gSj0DX1xbE
         Zp4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768829714; x=1769434514;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2wsfR28Qd0bd4VQshSV5qcHqV1r2GYy0XRWpfzmbx6A=;
        b=h8gHpsqHNETpG0c071w6XRO5IYbz6QDRwk0gOLX4ijlBNrLe3R9qxSFeDNY6BrVpPZ
         PooHUY4KRv4WLiSxVwYQyIlQl9Wr/7kAZD5WwoNv+g4J2jILAjF1NcMsEJisEh/f2/Wn
         eofsO3/+5z9BY9F52k6mgu4Qh6mGe/o2uqrM3Vd8Ru8N5zJ7oea149wJ3inRy5ylCg/C
         +y9bwg143R5HomHGsjChAYGsWErYzuTghaBmmQAdoqrDFP21u5yiqHdSOqj2jtdWEC+p
         sqGxf80oleYSeCHc5ho1h0ye7j/FX1OS5prfFCjaLj97yB6chFvaf4RV+gFwI6cnMTXn
         wUQA==
X-Forwarded-Encrypted: i=1; AJvYcCVBv1mjGyu6Amdn5KylbZzFSg9QxjrdW2VO4aB1PDeN8sOOEcHvf7MhC8pz46cU8l5W0B1kJz1a9qkw@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9dA5kbUI8XXtoUoglPufveIWeh4jerNYu3GDaUuYAjfR+Ah+N
	K22/Ul34V+DZP2oDotohVfmMtmFl0JBE+1qJHO5nbUWXDrc4rHEYti7vIe8yhONKIJ5QNUcYl8W
	DqE2I0fFY6EZpZbry6Ehw8Qg+wG2GmqufwRtxbCNrJF6hP42bc+oaykt4i54oEvTC
X-Gm-Gg: AY/fxX5OURGAzMAI7e76PeeWmEysU+JhgN53Vf0nc3sIbty6PqfBNaJZqnOo8Oy79li
	32qlDEW6av1uR7zMkjn168okyGoIRcCi2daUO5d0EyhSEgX8AjvKIzDi7sV2idJHcLlFlJnih88
	udPAHGrLdmjclutKVS6OnqGiSGNOmAoLjx4gwY12E5vJ0NsGGD/YphtP08t9nKVmN0tDPhRL+xP
	oL5Vp2IATVzp7K6M3KWdWzGLFaSo0zMjErnDuhEGhUw2GunRCBrAmeEY9r1XmjCHxNqYHGymJ/F
	qXICMXS0KRYEWXfAgAq5fAQuLi5gCRFfQfifSqKkn74W0sE67hTsvhtSk+AnEXQCjkNZgnP7PSR
	908ILKmOFE4L4Q35FSdqwOuYdSp5IkkRNs9CCqXeiYeMb5du4H8Nb8whHsXFgiBzdw1k=
X-Received: by 2002:a05:622a:1794:b0:501:4767:a6f with SMTP id d75a77b69052e-502a16043c2mr113525501cf.3.1768829714119;
        Mon, 19 Jan 2026 05:35:14 -0800 (PST)
X-Received: by 2002:a05:622a:1794:b0:501:4767:a6f with SMTP id d75a77b69052e-502a16043c2mr113525061cf.3.1768829713584;
        Mon, 19 Jan 2026 05:35:13 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654535c4aa7sm10604078a12.34.2026.01.19.05.35.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 05:35:13 -0800 (PST)
Message-ID: <45f650d7-7369-4a0d-b931-3ba9ac998f75@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 14:35:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/4] Initial patch set for PURWA-IOT-EVK
To: Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com>
 <jeyj5wqu4uw7tnm4h5ryatoqupdrqpkjcynnydgbum6oj2d4jj@qvvbbifrvud3>
 <ed49abf0-c2b6-4496-a3b0-ef040fd94615@oss.qualcomm.com>
 <b3p5yhstng6nbrrdavx67vlv62hqqlnms7742txbimpeswqklv@eomkmkkearwp>
 <e2dfb857-1fd1-4d29-b04b-6dec0b7563d5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e2dfb857-1fd1-4d29-b04b-6dec0b7563d5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: oZLutiobnVD0GNWCFDpjlsGbkF8JtG_U
X-Proofpoint-GUID: oZLutiobnVD0GNWCFDpjlsGbkF8JtG_U
X-Authority-Analysis: v=2.4 cv=c4OmgB9l c=1 sm=1 tr=0 ts=696e3312 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=h5xPNbTZ9WlByCzVmZAA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDExMiBTYWx0ZWRfXxGcXUWfcWNfj
 YJQMTSSWpwzt9N/nIzxBMQpE4OLIeRM7+LckvpYwXqaqWLwlHRdCfikSPdYwyHgvC2LvsTTcnlh
 lBQhUejelkBSL5kl07iChZvoQhUuBn279JlWqD4smOvTQajS78DjMoTf7/vH2JVESg3xY5kIcHW
 XMR+p7+3i1X8roB1yKBrPZAcATk1PWVEqbjgXd4rl9FVxkfq+Q5WvqLkQoOWW8UZeYMPq4Oo5vW
 2TyxTZ1A7zIuYHg/qBpSovqB3N7Euha9JxhLc4K4rMr6MgyISYZon1MQqp2utrrrnnYvaM7C8VT
 fiQJY2YLeiY9j3OBL4XvFdXQw5xKvpJFguPqF2kCJD0SdZWP8I/oUq+GfRyoCkwQ7tjWC76VRKN
 6UfAMP7xZ0XAQV6QDBYshkbxI+d5N2TVj/clQOM85b/HxpP+dkV2kFni3izf1aLMejAPGIzcucS
 /v4xyGrwQDQIwougEmw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_03,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190112

On 1/19/26 7:54 AM, Yijie Yang wrote:
> 
> 
> On 1/19/2026 2:34 PM, Dmitry Baryshkov wrote:
>> On Mon, Jan 19, 2026 at 10:39:04AM +0800, Yijie Yang wrote:

[...]

>>>>> Changes in v4:
>>>>> - EDITME: describe what is new in this series revision.
>>>>> - EDITME: use bulletpoints and terse descriptions.
>>>>
>>>> Oh no. B4 probably even warned you about not sending it out.
>>>>
>>>>   From this changelog I can assume that nothing has changed. Is it
>>>> correct?
>>>
>>> This section was generated automatically by b4 and was not reviewed
>>> carefully. The actual list of changes is in the section below.
>>
>> But why????? Why do you ignore what was done for you and write it on
>> your own, reversing the order, etc? And even if you decided to ignore it
>> for any reason, why didn't you delete it?
> 
> The confusion was caused by mixing b4 and git format-patch to handle fine‑grained patch formatting. The Git configuration Konrad suggested did not work for me. I ran b4 prep --manual-reroll <msg-id> to allow b4 to track the upstream thread, which caused this section to be generated automatically. I did not notice this and mistakenly re‑wrote it myself.

I found that I have additional options set in my *local* gitconfig:

[diff]
        renameLimit = 999999
        rename = true
        algorithm = histogram
        renames = copies

Perhaps that was the missing piece!

Konrad

