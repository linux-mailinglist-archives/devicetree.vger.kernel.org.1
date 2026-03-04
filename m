Return-Path: <devicetree+bounces-270985-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMHcLK4VqGnUngAAu9opvQ
	(envelope-from <devicetree+bounces-270985-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:21:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C821FEE03
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:21:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6C6FF306F022
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 11:17:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E479B3A960E;
	Wed,  4 Mar 2026 11:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pg6RJo+7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IZT1GUoa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8F9A34D4FE
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 11:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772623026; cv=none; b=dju1qxxcS+yj5XA1fU7R9Eo3+64QcEc1SgEAoLpJ7FwRYBokeyWrJeAtHSuxs0+vQaz4MWZbyRhoHfpn1ZO04b1vevzMvcRYpJFO++vjy6kcezs2pgJONVguRawgWUso9TtKc9DWADVev5+5MrJhY3K1VV8ywMx+CbSueb4ThRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772623026; c=relaxed/simple;
	bh=zzFtqBWtH6Dyz1PW4u7LQ+cdDpOkgipEInVKvdMpbps=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s9wL6ayGZGQ9K6KNn4sXDe1Iu4z3uq8W29OdVod8BoM/OAyF+/37OOtuYPKRMdDeIlavtjdrtU+HKkIi/JllPVjeJA1SY9oDS3iUG7kGWc7z6Qx/iAsa0J89b1Jrw3wzAkwnOA1i0t/hMAmIcPfVvKu9WZ3u7y8Y3wVJw7ddx9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pg6RJo+7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IZT1GUoa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245SNNp1421884
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 11:17:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LJAzlEZvvss30vWHUxUWvbLG0CgV2anuQPFTAryGkzU=; b=pg6RJo+7kdIbLWnc
	w3k2aEf0ZvRr3f0JpVHsRr2A6Qi70uBfld7Ep9rYaVGYOz3jV3jHhHuAvjKlryAd
	tuuQD7b7oB15qLAYT1Kaeqkyi5wMxiLL/Y7Rr8JiRtV48+YHmUpF7xdyg6QAErTH
	EtpHz0ot6K9ouIlzJ9UUC2bgT9O//hCk7ycyfaR+T88z8DFBs/y3BMpheT3ue5hM
	0DXeF0NUDA9ucSsMfYSzvtruUet/voVSGIICYMhlDFSxGHJT50EVccF/PRpDYjiY
	HQMARM9gN3wJUbrQfIXhdT/jmvULbUVeUz49lvq6I+5g4Ceej6mxXi7f0QiQxtmi
	EDSKeg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpe8u16qq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 11:17:04 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c7385a1476aso81986a12.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 03:17:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772623024; x=1773227824; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LJAzlEZvvss30vWHUxUWvbLG0CgV2anuQPFTAryGkzU=;
        b=IZT1GUoaM1yRSyoeL+IdvSyX1BudX/4jwvxXsd8D2eY8RQVLmC7bsdMgpOR5q3G+d/
         vRUlq6Eo06qGCM1fZfkRG56PSleHlhC7grf8+e/8xlONY+c3OHmJs2bigVBCMPS0KEl2
         0Fddw1PvFQk9fEtVwQ8+ChsOqggWcPu2QEk8d0zmiUScPNSd8Jxq0f3RA9qmzx/YXhrq
         S9NLb6iTl0J7hnFSr+LkWQy9a9NCgjgk07bjEgD+xuJOoNur4yZBKAEMl6F7apKSm9nO
         2GQQn+fSWYssfJEaJ+cr9TGQAzWZrnerRMIg3Hw2Hnky5dX96UTKHsqirWJVWjVAlxoC
         gzJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772623024; x=1773227824;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LJAzlEZvvss30vWHUxUWvbLG0CgV2anuQPFTAryGkzU=;
        b=WOLEcFABGsHkri6jILVpAGa7UhAzk+KfLTadSp09w0gXj0yXbucWWmfNbpRnzsFxuR
         5W0+bPzIkwIxkZJtoHn5mGO57uG/ey87dFAsslSyvLC9BzqcqOy7WYNBElV9xXFUA9lK
         P0j8qJ2nq10IOFCNdxDVVV1TKfOy6kUfj0vuWcGTRDWdCWfFccg37CgSf0QP5fmIF/EY
         seHb41ZXcrgLExrr4MWYmR741oRdgxNyUdh8kIJIrDw0ykmEJMuNVXXizoXonLaNdNHQ
         oUBCHnjjJNDFBI7/n9UY1ZV8NkftM+ak76L7R0br3o/x5PRtJBXWoMsZbREpkfqxnrCJ
         AP4Q==
X-Forwarded-Encrypted: i=1; AJvYcCX2g+jQbQv4TdgsvKRA9/Tu7N8gCF0+baVZvAJKwt4E34Xkvg73JNKRujuFyYThlNKxfUOUnz2OjAIK@vger.kernel.org
X-Gm-Message-State: AOJu0Yyhizxu+M8Q4WX1RQaHxqKpbETdt9OWvAWdRmNINmxU9CmGm/Kc
	cjmCKyTuh751Fz5UzzH/4sWD/wgUsrN5wETLjawhk9KXdJK6B3/JmyURGzd/ofQqTr/lwiA50A3
	UZxNmJwu2i6z66qW/7kayzpTd4wnMB8J5tFhxfmd3zpWCLh+KCIDIVSJCJboDsl6a
X-Gm-Gg: ATEYQzx14Y2fqxrQ4JvTenVtYmViGnv2nhoOnEv76IyKqz82u3Bkw6MFSPGdpNjfM9l
	k8nbwco6Z3ja2YoWn22vJjv4UpQfuPxdKCLWrZNLb7tvMYABZfXDJbiMXhtY2pJp6Ka7sOkIYwS
	neMEHZBiGSfDT/0h6PcXroj966Bh/Ee0H+X5RnbgJMdNhO6bzs4pp47/Fh5id7op/MyOf55wx5Y
	OcVmNpbrbeB1Q4vomaP8mdjc/IyHDvOcPByC7gm67naC/GzscJ1YItOpO6DsbxTqfcfUdiupNd+
	mwCrT5WSfZHB3nMa0QRA3KESn/KFYv+751O9XKZXNoykvp2BomAYCnnl2LdhjbaiR9NfuBp+70I
	iY+BgKMnYR7/X/IG6NS7Qc7y33AawxkbRSOlj/7hJgzUFpS38dReHVvi650paGxp9og==
X-Received: by 2002:a17:902:ce8e:b0:2ae:4a4e:1e25 with SMTP id d9443c01a7336-2ae6aa649dcmr17231185ad.25.1772623023357;
        Wed, 04 Mar 2026 03:17:03 -0800 (PST)
X-Received: by 2002:a17:902:ce8e:b0:2ae:4a4e:1e25 with SMTP id d9443c01a7336-2ae6aa649dcmr17230875ad.25.1772623022848;
        Wed, 04 Mar 2026 03:17:02 -0800 (PST)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae534088c4sm106087535ad.26.2026.03.04.03.16.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 03:17:02 -0800 (PST)
Message-ID: <0be1b15f-df0a-4ff0-ac97-8aaa46dd9b7c@oss.qualcomm.com>
Date: Wed, 4 Mar 2026 16:46:57 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/6] dt-bindings: sram: Describe the IMEM present in
 Qualcomm IPQ SoCs
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20260228-imem-v3-0-20fbcc1a9404@oss.qualcomm.com>
 <20260228-imem-v3-1-20fbcc1a9404@oss.qualcomm.com>
 <20260301-secret-exotic-nightingale-80f55c@quoll>
 <4cf9c98e-767c-44d3-9e71-bcc790e83997@oss.qualcomm.com>
 <edffecfc-ea3a-4c1e-9e72-58c7c134248e@kernel.org>
 <d3de0b25-861a-4261-8d9b-a3785187bfdb@oss.qualcomm.com>
 <6606bdbc-95b0-4adc-92e5-cad70d250cee@kernel.org>
 <33737c4f-b668-418c-ab03-f27ed3b6fcff@oss.qualcomm.com>
 <cc30861f-1e10-41d5-87a7-496e18bd358e@kernel.org>
 <78d08114-d573-42be-9cff-39c228c68848@oss.qualcomm.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <78d08114-d573-42be-9cff-39c228c68848@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: SZsubHU1DUztj4QXZxlpS0h91VMar6zm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA4OCBTYWx0ZWRfX+E/ezZO5ib8s
 LPRi8YR8OuyS7IJBCUQxiPZlG1ctuwghFCPHkBf7yEpM6BjGvf/4m2rMzLjlSdtMx1T21zuFUvn
 WHLGMiPeKbiVbHZJy6c/jfocKM/J17KvJTbSq29xqAVLbhBg6rTUGROLty6aivgt0llF2a/kI9+
 e8eRGz200PNEE7sXe/GGjT1mPDFZ5GlfgtvyQVToraaa3X6JDm2U954EIOuNNgXvHPNOx2reEAC
 WPsOmXzg3Y2JWEsoDN+rbloeyQRHHWgq1MJbzpLenNY3arbOKum5oaxQueA1+I6sSrVK6kuZi9y
 GA/TrVtU42xhhSKvOob55S25pJioJ2zSMv1100ZDVtJiAoHUiGSf/LZJcBRmPPl5+POq11bZZ8I
 ZSDX04C+OngyH0s9WPZZZrkCGYcHWka6XQCN2xPEQKHqd089/M9qnIlC7jJx3k/dXyCpQwEX/SE
 /92kSGdBB7OP+vphJ7Q==
X-Authority-Analysis: v=2.4 cv=FpAIPmrq c=1 sm=1 tr=0 ts=69a814b0 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=EiiTORyVyZtV5cGE680A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: SZsubHU1DUztj4QXZxlpS0h91VMar6zm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0
 adultscore=0 phishscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040088
X-Rspamd-Queue-Id: 13C821FEE03
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.131.57.192:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,7b0:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270985-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action


On 3/3/2026 4:18 PM, Konrad Dybcio wrote:
> On 3/2/26 5:33 PM, Krzysztof Kozlowski wrote:
>> On 02/03/2026 15:56, Konrad Dybcio wrote:
>>> On 3/2/26 3:54 PM, Krzysztof Kozlowski wrote:
>>>> On 02/03/2026 15:10, Konrad Dybcio wrote:
>>>>>> Also not accurate - "sram" is not the reboot reason, which has node name
>>>>>> called "reboot-mode".
>>>>> What I was referring to is:
>>>>>
>>>>> patternProperties:
>>>>>    "^([a-z0-9]*-)?sram(-section)?@[a-f0-9]+$":
>>>>>
>>>>> where the 'sram' (not 'smem' as I typo'd above) is obligatory
>>>> I know and sram is not part of "reboot-mode" name. It is "reboot-mode"
>>>> in existing binding and DTS, not "reboot-mode-sram".
>>> In any case, I believe it'd be good to drop that requirement
>> Ah, and one more thing, the syscon-reboot-mode is Linux driver with its
>> own Linux requirements - syscon - so probably not working with sram
>> bindings. That's another reason full binding should be posted and tested
>> - I speculate it simply does not work.
> It won't even probe, we talked about that a long time ago on a similar
> occasion
>
> https://lore.kernel.org/linux-arm-msm/f6b16d1d-3730-46d1-81aa-bfaf09c20754@oss.qualcomm.com/


Sorry, TBH, I'm confused here...

I agree that, DT node should be as simple as below for now until the 
child node is added.

sram@8600000 {
    compatible = "qcom,ipq5332-imem", "mmio-sram";
    reg = <0x08600000 0x14000>;
    no-memory-wc;
};

When I add the child node, it will eventually become like

sram@8600000 {
         compatible = "qcom,ipq5332-imem", "mmio-sram";
         reg = <0 0x08600000 0 0x1c000>;
         ranges = <0 0 0x08600000 0x1c000>;

         no-memory-wc;

         #address-cells = <1>;
         #size-cells = <1>;

         restart_reason: restartreason-sram@7b0 {
                 reg = <0x7b0 0x4>;
         };
};

which seems to be matching with the binding requirements.

and the consumer can reference to this node like

sram = <&restart_reason>;

I'm not following what's being suggested here. Can you please help me to 
understand further on this.


>
> Konrad

