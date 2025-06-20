Return-Path: <devicetree+bounces-187989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 518BAAE20EB
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 19:28:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 74FD77B2FD9
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 17:26:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38E192E763C;
	Fri, 20 Jun 2025 17:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n5SQ1nhE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 754592E6136
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 17:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750440430; cv=none; b=FAeRUbjvpZhYorTdIOstiBGOJZDXHvob45lSRuv6kwncVZ1430WVK5ppwa7IkjyWGPkagg836lNU0V+psPcHL6bBLRjvUYEshp62MZEZ4hwLgHmWOL+GmktduzL+lSl1bj3kOkaVlrmrJjFTBymMpo06nB40ohuHrDdOrmzwfVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750440430; c=relaxed/simple;
	bh=afDg9nn91haB9rfUtxnbz99YfZDDgCPP+SbrAya2c8U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WCjTcfuwgUBHlDXcc9NcQxGY2dBmp1XtBJNJDA3oNtXKq46NbBmQjZgdcDr2+mALG6WVvcKF9NwHkWM2AsoFvDPOrpGY02l8dvffHcby156RBcXQmA+DSOgQWVq7W2ivM6ZOLO9yqJYSfYCiUIohoSeJGBDORnpb++6YnSd+tbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n5SQ1nhE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55KGY4kg014418
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 17:27:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WHVZwsBe2mPFE2r8rOIceTU1YN7PAHuBHgv7EehUdXs=; b=n5SQ1nhEBTEMloFm
	VecGOa3kVZ/WwP3+oNFMvLCmFalNvpv05iJSsytBi6wSVHHwNF4fuzS3ytdRbhyW
	7vmGCzMgq/51HDaAXUhLWh+uocTC0ETVCOVzHRZ+ELqIOHM2y+KoUiobMtH60SLL
	Y+9jD9mVsC3wjaSDzZbVRz5AhNkpS3BGRIy4BiGhq1RQaiSgFXTF6pxRP5rk5CQu
	TD0XUGaqRUBdOPPHCBhhhFk3x1ufbeovG/P1gj7Uy8N/6kDWJ/b1F8lhnVXSgqZA
	cRbbqUJwDo3VSFIq+swZmUcyUunuOz0rDm1IVHFg0YnZLpa+2xR69ye3jRDdyG3x
	JczjGw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47db9803wy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 17:27:07 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d21080c26fso60400885a.1
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 10:27:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750440426; x=1751045226;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WHVZwsBe2mPFE2r8rOIceTU1YN7PAHuBHgv7EehUdXs=;
        b=r1Xv7vB35egxsmhw4gY7DlcBE/Gdv8ljy+ngtoUEoikzdOFVEypPnufK2qWVN7b9mw
         pDi5S0zKFi37GJR432SVAe6Stinhy+y+La/p1zGlvyuIRrEz3llCc8svAQfskncpYZ0i
         yURA1LVOoySCYVu6/HLcFllsKj/Ej5e5yz80P1pl+10wD8678Kt+YPfC7hgQmC5Vt6Ui
         Xfo8NRaiRm3pt10GplGOWWBRvgpkGDJbuZoWrO1EWtsk/Qm37RMSdfXiP+IuJ+FjNOKA
         X56IR7PyA2i6ghDPEAAj03b1psrYhXJKv20s01laU8325hIh5Gl2OKbq6ZWfAP1Ug7G9
         HBqQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwLt1GCqU9i8FFYeGRBKoRwb/g4RDnyKyuMz8MKcsxsR+DldD3gYbwlcpjxVx1HFx1+DxmjmzKKoWT@vger.kernel.org
X-Gm-Message-State: AOJu0YxOc8qRxMBNoG8hiWkEly67YLIpTHt4lFdtrsmCAEOazIObQ9VG
	c6zYjrmXm+Ub5/MKStA4UYfIgweyRS60BT8HDQOH8R16yeN8PlouxhA3RlKButdC0G47fi3HDof
	uIgBT0oIxG6jGj4N2v0nxpng+fWhbvAUcZP3Qzie44JHOw2xPEcrFzkSoYjVASUro
X-Gm-Gg: ASbGncsUDkewhJM6UfZMgU6xLlpZOW+6LK1kG69F7M4D+3bFjMUL/jn47RleVaeGf1i
	WApiORe3XdUzSom++XH8YK1JGsAjgCFGkJoiIJYTkBoctaQt3Hcz5dJtYAwa+p3+zqlqU323JX7
	YrU/vexCRI2P6FZvaphVal2ofw+AnfvMAYQQOT7KnnOwAXSBz8MMg/WzFFXW25YIVHRMLJi2DPP
	WqtMHhDhHiRNImklF5/ZkGNPNgVRQWUWDh2h1jC4O8lhXt5nek14eTi1nv2BmJjImODaCzt7cdw
	YXpEFSRhbWF96n9tTvdpwEf9EKpaIzVpkRYo5lsCTEFx0j/DHRXYtxd7CqyLCtBtgj+hCbuYYIi
	kDVQ=
X-Received: by 2002:a05:620a:454d:b0:7ce:e99e:bc87 with SMTP id af79cd13be357-7d3f98e6631mr201593785a.6.1750440426280;
        Fri, 20 Jun 2025 10:27:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFoHeoLi6ocQ6ShmQtPpO5w/YjYEMIJLujZ0mwcIBnaXy139EfNwGSJUB+wxzBmDAUpuuwnGQ==
X-Received: by 2002:a05:620a:454d:b0:7ce:e99e:bc87 with SMTP id af79cd13be357-7d3f98e6631mr201591985a.6.1750440425818;
        Fri, 20 Jun 2025 10:27:05 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60a18c996aasm1664679a12.39.2025.06.20.10.27.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jun 2025 10:27:04 -0700 (PDT)
Message-ID: <2bd17ab5-950c-4260-ae7c-9ba9a6441496@oss.qualcomm.com>
Date: Fri, 20 Jun 2025 19:27:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: media: qcom,sm8550-iris: add non_pixel
 and resv_region properties
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250620-video_cb-v1-0-9bcac1c8800c@quicinc.com>
 <20250620-video_cb-v1-1-9bcac1c8800c@quicinc.com>
 <a35d3928-8ac6-49ab-8689-16ba69afe197@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <a35d3928-8ac6-49ab-8689-16ba69afe197@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: V2ZKnnMukyYTIg6K2vCcaFc37DLGC-vM
X-Authority-Analysis: v=2.4 cv=TYyWtQQh c=1 sm=1 tr=0 ts=685599eb cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=qbq4ObjMTheV2eX5J3QA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: V2ZKnnMukyYTIg6K2vCcaFc37DLGC-vM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIwMDEyMyBTYWx0ZWRfX6NjS34uk5u31
 9mjDb53kHW52uByYMjYt0BowhXu5hM01Tt+pBAgLrP3oZIGI9ukIS4ZsfYJeHu8PJ5/RAFdqBix
 yzzxhXyvd1QWZdElbi6/e3IM7het0Z119bHAqAZW0yt56WZTVMGttYrHdzeNdncbmiGbY20Ju5V
 aqfSFAeTl3UWXcforgFW1LNKVBjG/WmM+dO2Fl2GmkHRohCsU487z8nhrwLVP0uZnmf96mRLyrw
 HAmWNlz+9llDRTNwvjpwCKda80Medg2sm1vdkTB4N+dnypF9VOMlScfnMF7HhP0VDtvD1RSDHWp
 vZjCTH28HJCkDm9856jpwi6rkbFZbgyVystgQQqiz1Ha9Zb7r5TzznuPcmA3V8P2uuDC7mPFzaY
 rma10nAu/EenlVRCuGvEkHcOa4NmGFy05U22ZSxkaMhZHE6Xs+oeKilS2pdyuGCC20Vn2+EH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-20_07,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=913 clxscore=1015 impostorscore=0 mlxscore=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 suspectscore=0
 adultscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506200123

On 6/20/25 8:39 AM, Krzysztof Kozlowski wrote:
> On 20/06/2025 08:20, Vikash Garodia wrote:
>> Existing definition limits the IOVA to an addressable range of 4GiB, and
>> even within that range, some of the space is used by IO registers,
>> thereby limiting the available IOVA to even lesser. Video hardware is
>> designed to emit different stream-ID for pixel and non_pixel buffers,
>> thereby introduce a non_pixel sub node to handle non_pixel stream-ID.
>>
>> With this, both iris and non_pixel device can have IOVA range of 0-4GiB
>> individually. Certain video usecases like higher video concurrency needs
>> IOVA higher than 4GiB.
>>
>> Add the "resv_region" property, which defines reserved IOVA regions that
>> are *excluded* from addressable range. Video hardware generates
>> different stream IDs based on the range of IOVA addresses. Thereby IOVA
>> addresses for firmware and data buffers need to be non overlapping. For
>> ex. 0x0-0x25800000 address range is reserved for firmware stream-ID,
>> while non_pixel (bitstream ) stream-ID can be generated by hardware only
>> when bitstream buffers IOVA address is from 0x25800000-0xe0000000.
>>
>> Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
>> ---
>>  .../bindings/media/qcom,sm8550-iris.yaml           | 35 ++++++++++++++++++++++
>>  1 file changed, 35 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
>> index c79bf2101812d83b99704f38b7348a9f728dff44..a1e83bae3c36f3a4c58b212ef457905e38091b97 100644
>> --- a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
>> +++ b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
>> @@ -65,10 +65,45 @@ properties:
>>        - const: core
>>  
>>    iommus:
>> +    minItems: 1
> 
> As discussed in other patchset, this needs clear explanation, so
> imperfect patch won't be used in future discussions as argument to take
> more of such things.
> 
>>      maxItems: 2
>>  
>>    dma-coherent: true
>>  
>> +  resv_region:
> 
> DTS coding style. Anyway, regions go with memory-region bindings. Use that.

On a tangent, FWIW this is a discussion related to this patchset that
never got much attention:

https://lore.kernel.org/linux-devicetree/9439182e-3338-4d57-aa02-b621bc9498a3@oss.qualcomm.com/

Konrad

