Return-Path: <devicetree+bounces-205703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A2611B29D55
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 11:12:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 76A5C4E0622
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 09:12:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E95A30DD29;
	Mon, 18 Aug 2025 09:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q+rKIoVd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BBB306D53
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 09:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755508369; cv=none; b=C5O//6sP6HiOiHCxt8smRnbwbMZFJGtev8cKBNfnadawctjVfNkrnsdmosE1IN3Ei5f9NcUYjHep4QreoxKzoMIRzNahXDYa6LxtC3duiqhF2NT8wu6+WBKpbG6u+yHfvow7r68gjLZKdU1KEbboeWFB5dnxOMYizyy+6TOTlbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755508369; c=relaxed/simple;
	bh=hoKhlgCsaez47ChkXd4smB04QyZuLTl2dlMho/S4q3U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XDkgOfqnVISILkXHVYJ1klqhtcVDOnwjf7z7nfOckfcEqInJ+nyw3EjmMUaTYUUqisVs217R+oek6kNDxRQI1t1JYmJYILs5p+cir2yaP12o4MBHXFjNGzM6DijDYnv/D6tIDmxRWmiIrAgAt+SwMN95zuQRJ13aqXThQKj6q88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q+rKIoVd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57I0Rtqs030354
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 09:12:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	miHpGFSXBHte0kT1H33Cn6X49n9fxBNnCXyhZUBomfg=; b=Q+rKIoVdHK+xGXOh
	j9QMZbRQI9sy3NazN30IbbQoelMBHTflj4aFO0bnzu3L9Lm3ZnmNTMXz9xMuy7Pl
	uAVaXwM5rgT4A3f7x60WkOINsZ1romHkqwAPkPaMeteGwCywoKDWd/Q82X3veSOg
	lPrOGEg6sBF6oEPLujhwPau1oFHUjAWtSOsq5D7Nq9Xpk5DFQS4hwWDpbwSi1RAV
	DnpnJ7/W4+Q8JbwEB10ECvAGt2mYlY9sFzbwzXSWWFEaEiTC26Y35LNZYSFMDKAl
	lFzfvPWom2RQwly5WDkIZPA2QBdyQjFB2ZT4v3Ve4Tfvn4ujo44z9Ck+3yjtD13h
	PqoR/w==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jhagv2gx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 09:12:46 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2445806b2beso99035445ad.1
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 02:12:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755508366; x=1756113166;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=miHpGFSXBHte0kT1H33Cn6X49n9fxBNnCXyhZUBomfg=;
        b=WyvJ9hSIp+htYaX171LA9njptNSOGLS0q4I81zpVwmVKyY5eBL95xEtAOxVSP5HOyF
         hv5JBNSYQymeuBX6eAaprRTY+9Wde+Yq2YoNq4ge0yFMJxHBxdy4JA33t6mZM7Tuyhjt
         dyhee6/2uujZf9Lq/nT5NfPPh3dGOg+68WCpRvB5Pj3UrJJK4EJRkYtj5Dq4D8enj9x8
         625iwIOYKz9w/TWZBcl4sd3Mb5OFxqvJFYac5E2LSSqDn4PAkmmYwuMy/1Yjs7YpM6u0
         PCTxsEsQn08QJxI/M6R1Yss/UPfn6ic59BKNjxgJyXE56Law+iReHeBL5oY35CfoUvHz
         KCWw==
X-Forwarded-Encrypted: i=1; AJvYcCXXwCCIRWlac214oggDrFhozB5gG2/N6XYSl+MOag87t/aFPPIs2IIAcRlB1J5aHoohnDiyVgMr7wD3@vger.kernel.org
X-Gm-Message-State: AOJu0YwVHs3HgDMWo97deYPh0hOwbf7HbH75v5Cn/woiHuQBElBnQHy6
	GU5u1X9GhrWDCmOLPPS7huCTlHfexGGhTRVWL0M/vSyeZCuC+EWOQltN7aZeFKZMnlEBZ0FX8YW
	NpGcK6nbdadzikJxCoOJ0q+kefSO7COpXRk+TNSuSXnPVa3oNEZ2PhRXbzajhO9tI
X-Gm-Gg: ASbGncu1WTMFKlTEcvLc19IGRjK1LoqOA1u6HxXdtmE/Bpi1eIIZ7lUCa16k/7euvO1
	rUe36Nb1o1oH6d3tUW5yzYl4h/gs1UOF3ZKKgw7Yv11bwCSUIW+gR93Co1Q2Cun6kt77y1zBvL4
	lLaTk89Dj+85tKGQMtQRgxOX5RP7mppFhruYb5fLGeHQU0lJdQdWzDMQXFh01DCX7ox9JwF1ONb
	RJtIE5BytQsRLBbgMqOy4T+L7x8OmhOesNMTq48TBvtwPzx5rsTyFsnC5zYHvdrq1zTsnxCD9Vp
	blcP+g4FomBATLzItsHW7jC7YpnGvtmrlgvWNGnz0e3ZO6kB0VX9ZCHaTaKx1grTqWFmWok6ObN
	4xZZa
X-Received: by 2002:a17:902:f68b:b0:242:d721:b019 with SMTP id d9443c01a7336-2446d94ecd6mr204860195ad.38.1755508365635;
        Mon, 18 Aug 2025 02:12:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGI+ZnayBkfh1I+LDsy5uA5eP/A0aBudlcf26OZjn8mHjvl9WanZtIa98AhhG0B3aE2tNRFYw==
X-Received: by 2002:a17:902:f68b:b0:242:d721:b019 with SMTP id d9443c01a7336-2446d94ecd6mr204859675ad.38.1755508365189;
        Mon, 18 Aug 2025 02:12:45 -0700 (PDT)
Received: from [10.218.15.248] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446d510f07sm74995495ad.96.2025.08.18.02.12.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 02:12:44 -0700 (PDT)
Message-ID: <14d0e02e-350c-42bc-93b5-c81e11b3bd5d@oss.qualcomm.com>
Date: Mon, 18 Aug 2025 14:42:39 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 1/2] dt-bindings: interconnect: Add OSM L3 compatible
 for QCS615 SoC
To: Krzysztof Kozlowski <krzk@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar
 <quic_sibis@quicinc.com>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        Mike Tipton <mike.tipton@oss.qualcomm.com>,
        Imran Shaik <quic_imrashai@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250804061536.110-1-raviteja.laggyshetty@oss.qualcomm.com>
 <20250804061536.110-2-raviteja.laggyshetty@oss.qualcomm.com>
 <3b79dc0c-0bcd-47d0-ab10-ba1514466d65@kernel.org>
Content-Language: en-US
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
In-Reply-To: <3b79dc0c-0bcd-47d0-ab10-ba1514466d65@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=D9xHKuRj c=1 sm=1 tr=0 ts=68a2ee8f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=smnEWK7FS6KibTvaVXoA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: z_NTqW8buKOaUGSsHrXpv1eZBrCy8_nD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyNCBTYWx0ZWRfX8l2gwUeQlSaP
 TyfnPeU2jQCH9HmeBSGs9k5ZgyPpEs0lnid+0663ySCHg5z7RVQcmixSBiBsNrgtwUI09pUfdjF
 BmZisgWSPcbM4JH07QH5G7Ar2n0R1DGcTXT1PakwuhZY2fwGACsoaQku4C46/sD6ZDkCiszme7X
 L34WniGPYkyeNGewTsnt9bGALvf7CF+P8gg+NOThbKAWjf01zqBkeKGBp1oIALaZ+b01pHUbRy3
 mrOQm+PjrPBiUp3/IkToVTE5BwJaJJ1/Hp2Oz+//6wxUxGc6gVU8l33jnnGcb3fT8on11GNTKFg
 N3opSw4xjzElAwUXEkD01C627Op7K7iOyd5gWr3/GDIoAYVXHSPlZNOfsmsiMv8svWvQDtK7L7J
 aQ248k/v
X-Proofpoint-GUID: z_NTqW8buKOaUGSsHrXpv1eZBrCy8_nD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-18_04,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160024



On 8/4/2025 11:56 AM, Krzysztof Kozlowski wrote:
> On 04/08/2025 08:15, Raviteja Laggyshetty wrote:
>> Add Operation State Manager (OSM) L3 interconnect provider binding for
>> QCS615 SoC. As the OSM hardware in QCS615 and SM8150 are same,
>> added a family-level compatible for SM8150 SoC. This shared fallback
>> compatible allows grouping of SoCs with similar hardware, reducing
>> the need to explicitly list each variant in the driver match table.
> 
> Drop last sentence, it is completely redundant. Do not explain to us how
> DT works. We all know that.
> 
Sure, Will drop the fallback explanation in next revision.>>
>> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>> ---
>>  .../devicetree/bindings/interconnect/qcom,osm-l3.yaml        | 5 +++++
>>  1 file changed, 5 insertions(+)
> No, slow down, this conflicts with other patch and makes your entry
> duplicated. Just squash both commits.
> 
The conflicting patch 
https://lore.kernel.org/all/20250711102540.143-2-raviteja.laggyshetty@oss.qualcomm.com/
got picked into v6.17-rc1.

Thanks,
Raviteja

> Best regards,
> Krzysztof


