Return-Path: <devicetree+bounces-271951-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDPAKXmkqml6UwEAu9opvQ
	(envelope-from <devicetree+bounces-271951-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:55:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B2E21E43C
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:55:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E5F52301589B
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 09:54:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C335A34D4DF;
	Fri,  6 Mar 2026 09:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XCIKXyz/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gOI+Tlhf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2179334A796
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 09:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772790866; cv=none; b=NWGGz9sHNtqzMWpNjwkF8GLcflmIinVIvmcwYeFelnXYFtO3e4DmAKUvI2DO4wtFUHrvcOBhGKIm6NdmNJ4LGq7VTUOIC9yjR8SBfjDNgR5OB+DnzzMkzdsKdrovKIbJ3EI5wudp97h1sbiKzJBMY+bPagcWs8oYekFvVrIR1yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772790866; c=relaxed/simple;
	bh=3X0Ae37Q1fLK9VO0izuDFVSUHv18wq37/WVrPAqT1jY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HTSDkrBSCxV5fPORfgjQxZffZG/EXlRqYUKQ9JDsVqn4Va+Sbc6yIuVMRyaw8OB3HHSLiJZgAb2DtEoz49rcjV/s/lz9RVvCr3m3D5qleSjY4Y3ggtlul5+CHXBMpdew9oXAr4g9+c7o6rjcD7wsstn/vWb/4o/GxT+jytLiZqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XCIKXyz/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gOI+Tlhf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6264akMH266397
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 09:54:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dAh9VqYdtu294ZX50sAgnmUzh6qMAf/0j1gGwUeK318=; b=XCIKXyz/0x1RxUOG
	G9wEGO56LhiP1txew3/k9BmJBIMZ+VWvqSnNWMifpoGWwfbwBfI0uqkaEK9gRxVN
	X8it5sYE4Tx7Xsh21Mpa5HnwLW5+3tf/3SO7hJlxAGXbunsiUkDmyBviF5GzOBd/
	bXRn0yudPbGxZtbzLbIexwXnDXEhA+l9nQ8VZUaN2vo9Om9tQ7tcSJzhXfGk16c4
	DzYuf+HYTu4pOauCpnHuCXCL6VbB9Uk9dpCPsSwXcgIfGh3eEzPSWRnfLL9rmOxv
	JhFIyS/g28xZLS28V5cASGxYvniq4Qn8xxDYmykywR/yxOpTj/VMZNTlKp0kIsO+
	BW/TOA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqdvku335-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 09:54:23 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ae5031c6c5so246171755ad.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 01:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772790863; x=1773395663; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dAh9VqYdtu294ZX50sAgnmUzh6qMAf/0j1gGwUeK318=;
        b=gOI+Tlhfn5RnbCd54h0DOt4kDO0qYthF45+FFOl0XgS3qnHSJJ7E0lUe8RmaobBgp4
         R4tNZ3ab1G4feRSvMzqx4PSj0YWDLxOakBHoCJ8DNC9bm+NHGKD1wzzEv448tnHFNsr3
         3ReSRZ9ZhatTZm5vue/lCGUPYNxc0sivDJ0fOpzgOXDURJGu+wnZ0ub5tOcpFaglfyy1
         aWTdPZy7gQ5SWe6JDqq/Z+JSGT51T8BTen2sg+aqsgDdNPNKQGW2IWsICdJW8Va+dGSK
         bIzS4gWbPPAP7GU/epD744aKMYEo0OeDxiuZtKXr/ednxZM8aeX9yFxo/dcDNMqwFk1q
         k+Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772790863; x=1773395663;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dAh9VqYdtu294ZX50sAgnmUzh6qMAf/0j1gGwUeK318=;
        b=J7bVX/UH28zweFjiRVTNZ7sigDA3fxPYSDbbbw/YPK2DAnRLCTYpHp8pgnQgAmJyK4
         CoQCdGtoAwZdEPNh29Nc9/7bGDdfOXJd69iHu/h4AUOOQ96RdjTFE04FKcwZkGh12NpN
         xc3kJ5EJQJM9vi4X2a+eoFaH2RpFlqCidQdnHNzlNTj3YxOdHDyiG/pFDczll8f3/iAV
         wGJpTlkU3SeT3Jjcy7QwoZkixJveoOYVMLU4EaCEB8ZL8uhqCeQGroN2EcwsLaNn/Mwm
         o9+c6c7LESOT0kIjfjK2+sQ9LTuUYie0rFpE+flLwsAM0ik+nVpFKdm34PlDDnUZlhJd
         FjPw==
X-Forwarded-Encrypted: i=1; AJvYcCVpsijkwYwf6pXoUYHikimMULLtcAEk1OLQVOxhx5yfODAZtOQrzHurHSvFl4Unlzw5StlOgNxBuKEU@vger.kernel.org
X-Gm-Message-State: AOJu0Yzi6LgBKGPzzMk19E1xLz7Tf9rRu8z1WoS04pozY99luFvdSxx+
	NrN6pFajW6GvwObJXgrsMqrlEvGtXaNoqD8+yN8j0Sj4AFZ43HtenBQ+u0QGAseq6GZTpGNBhzj
	xrO2m5TBFNpjAedussVagPjX6orDFtDvsW1WXkUbXziw9spoC2XCWkfEoy4+jANcB
X-Gm-Gg: ATEYQzwDWZDgPEbt+BAsIMiyeo1Lz7H1LM9J96tpRoKG0yMt7W5V6YXFasDrRMBl9yn
	Ve4S/TWVNhLEBZTxjYqvAC0eX2M3Cg6VkPimWj/FpBS6w7UWkmeaGnlB4j3HTptzNQalE6VRn91
	qQyG8zkddVoCyrsFDVGoEU83p5oOg4q1/WSaRP1BX1h3n4D4I4tiS9F7AzHQHIv5HJdwPzOhRLY
	xxmKV2dMhM+Yax326B2an++83TlsOJue8Qt/OUzKdaRIfOlVjoLEDb1CTk4E9/7bHY4qWtFOdV0
	Oypwp4kgDdzq0AEZIMZ655zXLiM1nnqHmEifYjIloqu7Nr+lzjDst8aoq/Jjaj8HIYRulLe7u85
	Q7TkuLNO/6h6bRds2X+Mb9HZqLivRSyiQTe1+UqF36J4lTg==
X-Received: by 2002:a17:903:2a8c:b0:2ae:8055:62c8 with SMTP id d9443c01a7336-2ae8243b575mr19020205ad.32.1772790862666;
        Fri, 06 Mar 2026 01:54:22 -0800 (PST)
X-Received: by 2002:a17:903:2a8c:b0:2ae:8055:62c8 with SMTP id d9443c01a7336-2ae8243b575mr19019895ad.32.1772790862020;
        Fri, 06 Mar 2026 01:54:22 -0800 (PST)
Received: from [192.168.1.11] ([106.222.228.80])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e57b1fsm19197485ad.12.2026.03.06.01.54.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 01:54:21 -0800 (PST)
Message-ID: <09e910cd-d0e9-4a05-a249-b0600705ac6c@oss.qualcomm.com>
Date: Fri, 6 Mar 2026 15:24:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: nvmem: qfprom: Add Kaanapali compatible
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260305-knp-qfprom-binding-v1-1-1b3effb09cad@oss.qualcomm.com>
 <dd14f8dd-254d-42a8-944d-f667153bea12@oss.qualcomm.com>
 <a1622ab4-d656-4015-9cda-4cee7f3044b2@oss.qualcomm.com>
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <a1622ab4-d656-4015-9cda-4cee7f3044b2@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=M7xA6iws c=1 sm=1 tr=0 ts=69aaa44f cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=uL+hpB4jSAN/g3a/thif0w==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=VUY64QdsKBsrmivN9HUA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA5MyBTYWx0ZWRfX2iDbMKSJTaUy
 kfgPccHXAt9/jzKxP3zMxgjnQPVLIcJUEfpQ7NxQ+cSCBLYRFScbQjFhW+VFNOba2AHbfSuCYyc
 T2//z+TrQNLWAntSRcvvh9HXkssXKegc+Ydi+a8eGo0428lDulOUlPzvJgVhnnXfSDvtwAueAh1
 ySkM/nhpPebG2a43mNzJH6Z3Q7bYyt/iuV8QCWWQmSIFcQe8ctMP06MxaH7tX0AAGqorf/bamQo
 I7fCbyyAURfKwy9ARhcCo2zWluccxaXqVOAd6bYjUIOBaPNMAhHvZeyob5u0H7EABsb0vgtH4QP
 mq7sfLnttAE7b9ARxHq65Q6a1JhlLkCBN12zp+TwMyRf8j0SQmpALwUcOmFaGUsErqrXXJEGjQr
 WHobrx8sPPpBl4zSLC7TssO8ouGbxlstbkVzg4zMl0YdI8bB11yuKYNeWF8ldJzTVqjEy3UdmZg
 GW0DPs1Ssggs51cd8UA==
X-Proofpoint-GUID: 8IVPB53_nd7l4E8pbxMFQRrj0omE6y4m
X-Proofpoint-ORIG-GUID: 8IVPB53_nd7l4E8pbxMFQRrj0omE6y4m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060093
X-Rspamd-Queue-Id: 11B2E21E43C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271951-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilpo@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/6/2026 2:40 PM, Konrad Dybcio wrote:
> On 3/6/26 7:55 AM, Akhil P Oommen wrote:
>> On 3/6/2026 12:10 PM, Jingyi Wang wrote:
>>> Document compatible string for the QFPROM on Kaanapali platform.
>>>
>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>> ---
>>>  Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
>>> index 839513d4b499..2ab047f2bb69 100644
>>> --- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
>>> +++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
>>> @@ -26,6 +26,7 @@ properties:
>>>            - qcom,ipq8064-qfprom
>>>            - qcom,ipq8074-qfprom
>>>            - qcom,ipq9574-qfprom
>>> +          - qcom,kaanapali-qfprom
>>
>> A question to the maintainers.
>>
>> Do we need a new compatible for every chipset? If there are no KMD
>> facing differences in the HW, can we use an existing compatible string,
>> like sm8750's in this case?
>>
>> The fuse definitions (which map to nvmem cells) will obviously differ
>> between chipsets, but I am not sure if this alone warrants introducing a
>> new compatible string.
> 
> This is to prevent the case where it later turns out that QFPROM on 8750
> is deeply flawed under certain conditions and needs to have workarounds
> applied retroactively (because we're pinky-promise working towards stable
> DT ABI)

But this is a super simple HW IP, so make an exception for this? In the
worst case, use a SoC related compatible in the driver for quirks?

I am just trying to see if there is a way to avoid this dependency for
the DT series. :)

-Akhil.

> 
> Konrad


