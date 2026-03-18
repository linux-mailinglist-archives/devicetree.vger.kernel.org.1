Return-Path: <devicetree+bounces-277087-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JxTCUF1umm/WwIAu9opvQ
	(envelope-from <devicetree+bounces-277087-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:49:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B68C22B963C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:49:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E1EF03037435
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:45:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 867E23A7857;
	Wed, 18 Mar 2026 09:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LqKOsjZ4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZLdXVj2g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5A53B52F7
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:44:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773827094; cv=none; b=YEym0Lk3zkLhPjLVOdhwzfY+WFOneTnbG6p0juVbH7oJmG5yBQJu3f0J8BM+zxmYHgAqrXylI+uQSaAicDz6pkGnSVs1Ky/OkqG76Nwqo/+GkqmKyEQttcmLkZrzB9SrP/k/DXF4lACJcgfF2aXljON/3RemYL1VkvTAIf73xsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773827094; c=relaxed/simple;
	bh=mIywxV+98elXwDiIMtGd5IEKkhRCt5Arbn2dohoh/1U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kfH3njE+ergvjVivF9hInd4j2GmsMZfiRau9soUUKGZTRl0dGCNpqCdO2Ot4J15vAjucMsB6kN9yJpLcSh3TWLsBTLgD40xRihFY65MBwXgo78Qw3GPp7hjDK5zODcAROmQwalPhCdV+WSyoDgGN3tl0PgJfpKVQDPDRfkm4+Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LqKOsjZ4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZLdXVj2g; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I6ZI0K2878120
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:44:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4iYQQUUil/57LBAD3eiyFUNUgqmJlQBgw87fPx+tjj4=; b=LqKOsjZ4yUtfuBPr
	zZuGQ70GagYg5pXHip6JqM5qQncLb4k68YKS1XO0l4eD9cs+/8e0/XuxbT6ik3co
	EtuYk2u77HLbvJv96Z2YMxyfDcIKDjZjqhvkqbm3tmIe8Oh8dAMP1kHlPjEoyzBU
	vAA8XfwkiL9Sm2RIeH7rRNx8Nd+FezU0I2NLLIX8CboKo3TGE6nWZTbvQVW2OOV6
	4yaVwbK2QhklZ7PpUCIgZu7FvPBoGQLkExRGfQeg9wNdhqu8QKuGOK0nA+yZOIkI
	HZR/pvnrYDD5UimVkqwtu0roE4u10oGhGX+xNt6xnLDbVyPA4MJSMnlyQZUSnuwb
	y3TUdw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cypwr0vru-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:44:46 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50910ca6ccaso86937061cf.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 02:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773827085; x=1774431885; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4iYQQUUil/57LBAD3eiyFUNUgqmJlQBgw87fPx+tjj4=;
        b=ZLdXVj2gPodbJIZoEdPiidUe4T0s4gHk+y+hdt8zBoNXzhQ6e9Z/ZPZJwNo4qXKuX0
         /jaDawN8b7k+0nSWK7B+tc11mKVEyi947CkuIyqR9+mudqqsBPH7NmiqrkKihFba79Or
         +KR66eIGNuZn9knDkZZSBTko+h7wyNZCge8735r1vKmQeowLWehQKUzy7VmkZxAxHpwI
         PeXyH1Yb9YzO3dm7Yk/VxA1vb/k3gAlrA4Dlo0EY9cd79b3cvTRTLBGB+pJFuBQvIU2X
         D2fMIYA0bzGaNapVfWw+Fgjaqmwws5YSI60QqKt+0h6gyAMjGFSW9z78HbbBWqWSNlAV
         g2+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773827085; x=1774431885;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4iYQQUUil/57LBAD3eiyFUNUgqmJlQBgw87fPx+tjj4=;
        b=OxIXsUpZPRNRvYjqdMD0qjMhxlepjAUsovux5IHUPsz8nqMHIhdAJEP8++oHyLCQ9S
         ii4I6qZP99D0rhjkV8bmVENu1UN4kLatYIzie6H8QYSMBdo/K0ZaKIbsNcZoLGj7wfyh
         imdEw1SnIU8AeOtJX5ZzRJTeohob19haFQpmoPvHqqunHOhzikblmXj/ZEtSTZdYSJ88
         zZWTki7Jy8kdadsb7RXc+8fHb3N7xEbCOu/18OF6dVsxzXc2VGCz4MlIWTD6acsg5KUd
         YG2bumMr1+mjhrTrlQrYoUvyYaK2QFhkldzXJF7gZ2BnfZTyPEej1tdNgGFgL+LGhImI
         GshQ==
X-Forwarded-Encrypted: i=1; AJvYcCWACUKUUAuQRWxaICIR+bdue6rkN9F+hikeTbjEKS5C27kH0eFMQn8dz9yhDRPct9W012ltcsSQjlPS@vger.kernel.org
X-Gm-Message-State: AOJu0Yyf+yQT5WL5HYYZvYw4fPMw75KS04UC90W4bcaG4nPzrZO7LVMa
	b2MbZ5VGGCNFlQAoP1ZD1zcwAL3su/cDIP49KKcwkrH2N+CgQFcF9t+eFh53IkobeYzTyjYRo5R
	h2cf8uyrQv81/I4qDQsLaY1b0/KB2xYqJIihLUIaB363ApwGxsIofjMD0xCO8oylM
X-Gm-Gg: ATEYQzzXGzRRE6NndcyGJakrYwlBTpaW2V2zo67ruJs4JSC2BnZt0Lbl01SmCWcY63b
	aIa7TlJxioNUdDE32N42O8I2AqExpzxGr7WcQiGQhNXvAEWZFh+wxKbPV0xzmnA1amScyps5Ayz
	GXE27GE7I4wvG0ZL6IF4z/XsoQMDmfMlGvZZonmgdV9IBnS9oPKJGILWdD78m/7AnVsCw0XZo65
	gEqHPmSGKUdrtOh1kxjAf9BqI2DdJfwLZhN6fUbtIYseMyDfXLw5QTd6mFwfbYSi6E8BC9JsPLv
	i1CPseL3kiXYmQUX4ZNaiG5dVsIHs9IYTUzZmbOxUaAL1LrE+ZMgqQVmJhIbjpZI6E/OhOxuH1j
	09onFHEoG4qkThYhfAk/yKDZvp1Yk2msVAoenbkYL9FCKmp6rGA8xOgXLSSw5INsjh+1Yr+m9uQ
	rXk8Q=
X-Received: by 2002:a05:622a:1899:b0:509:2a92:809f with SMTP id d75a77b69052e-50b1474847emr24335191cf.1.1773827085617;
        Wed, 18 Mar 2026 02:44:45 -0700 (PDT)
X-Received: by 2002:a05:622a:1899:b0:509:2a92:809f with SMTP id d75a77b69052e-50b1474847emr24334991cf.1.1773827085200;
        Wed, 18 Mar 2026 02:44:45 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f142cb46sm167704366b.21.2026.03.18.02.44.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 02:44:44 -0700 (PDT)
Message-ID: <37ba895f-95ac-44f5-ad54-20b04a079250@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 10:44:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8750: Enable TSENS and thermal
 zones
To: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aastha.pandey@oss.qualcomm.com, dipa.mantre@oss.qualcomm.com,
        Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
References: <20260313-sm8750_tsens-v1-0-250fcc3794a2@oss.qualcomm.com>
 <20260313-sm8750_tsens-v1-2-250fcc3794a2@oss.qualcomm.com>
 <c4376a88-a490-4b58-bff3-b0f4d2f731b7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c4376a88-a490-4b58-bff3-b0f4d2f731b7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=bIcb4f+Z c=1 sm=1 tr=0 ts=69ba740e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=RYkhNht3YKPCQp1dbvQA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 7lY97Fv7GMZDI0_iJfLcZlgNpBhBj7vk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA4MCBTYWx0ZWRfX1ejqKbmlAZHc
 ugvhI1derJM8Pao4cioFO3zfLOXWqrcbJahY1hQsrTVW50dDCoULCHZFTUk+J9+Ac0YGkdyowd8
 WbXUmhq7dRxX8WjgxrKC48UIXtTtAygMl+TgcoI8d/GhHYCI+5ZFN7upVtUJGwB9wDydvM49v7b
 CBpHBclmuowLQQrTgymBpP0eAYeFizKm1eZsx8XE6P7BHEgom73q4ij3JQMkDMlWPci11pd7KDD
 jIhEZI1g3TwQpVo3l4YDNSRdUm16CXiSf/IsrTgqPGN5tbxlvmR1O7m4lfrP1CIE5xFGnchyFKt
 4bqRaL7cdGLgL2Sg2g3F4Xp+6fPl9almfLCwkFh24xBayYhx88GwAAoScmyZtp6V7hl98lPx5WF
 imr7jaR6zuNqkVc9so9LvLZSGeKzAPJDj5dcoJyIEMYhhwud6wvdaqJGCY85nwWIdseXPhlpPr3
 6NyGX5A1/aKGXdwpicg==
X-Proofpoint-GUID: 7lY97Fv7GMZDI0_iJfLcZlgNpBhBj7vk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180080
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277087-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quicinc.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com,intel.com,arm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B68C22B963C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/18/26 10:44 AM, Konrad Dybcio wrote:
> On 3/13/26 11:34 AM, Gaurav Kohli wrote:
>> From: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
>>
>> The sm8750 includes four TSENS instances, with a total of 47 thermal
>> sensors distributed across various locations on the SoC.
>>
>> The TSENS max/reset threshold is configured to 130°C in the hardware.
>> Enable all TSENS instances, and define the thermal zones with a hot trip
>> at 120°C and critical trip at 125°C.
>>
>> Signed-off-by: Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
>> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +		cpu-0-0-0-thermal {
>> +			thermal-sensors = <&tsens0 1>;
>> +
>> +			trips {
>> +				trip-point0 {
>> +					temperature = <120000>;
>> +					hysteresis = <5000>;
>> +					type = "hot";
>> +				};
> 
> Are we going to use these trip points for the CPUs? If not, let's only
> keep the critical ones (again, for CPUs specifically since they get
> externally throttled)

Other than that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

