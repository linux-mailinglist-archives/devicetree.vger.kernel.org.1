Return-Path: <devicetree+bounces-272834-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDP7OcOmrmkFHQIAu9opvQ
	(envelope-from <devicetree+bounces-272834-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:53:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 495D8237690
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:53:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A4575301AD1E
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 10:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0F473939CE;
	Mon,  9 Mar 2026 10:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KwOwsirh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RwCBTrsk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2EF7392C30
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 10:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773053425; cv=none; b=uSiGgb6HbUOoq22JU9EpGcrzB1vYhQG0bNf+zq/jko4BL4ZUkem9fvrDCY8+0kJYJeth3cSTxsKqNJmfMpmqXnUpb42JdKv0CWXfTaqbOJ8D1AZbAYF1ciJBbkHImCvkyIMI3fx8udgNIdMYWxD1XXXcuHAToH4SMhM89aMTgAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773053425; c=relaxed/simple;
	bh=SHK2r4+lgMeQfLnL9dAL2gOd3BbNVqs8szy6hkA4FSo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iyEwbJTIYkoGPqKLSJfkoCHFdc8F+1OwkNJTcFiFzea3nIIsBIut1Ykrr+QasD6vz1+PkUwbAJYZYW9LIJa7bUFe5HsDoKblVMG0MX5MEP0+IG7BUmqxxQ/2fRYOoTSnQ9jV1lHatP/FTBMJVd3c81rGBDSuEuPtjLfEOFBbxHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KwOwsirh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RwCBTrsk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629AWYBl1587840
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 10:50:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ixmuVqTw+nK6ObJcUf5bGyAiKyAt5/ez5O5UTRkoHNE=; b=KwOwsirh7MxXEGXP
	JuEGj3k6BKDVQaUKC6Ilb0+0I/D5k7FKBe60usvBjxNCpoe3FJeOuLo8sHS7ZORP
	4Od0aUr3GcLYQsORG3VFDEkpMl2px6UiaUBXFqkLP4Mh0QzmEqvbaUXmO3nwBAVI
	9gdbC57ckq3Nbtt5a2uFx7gYNmYE8ktWdbqShrbfT2UHUZoVMz52mw5+cII/f5HP
	dKz8SCqFS9WWbQYPngpz3qmC3QDx/KxWL4JeBMHgagYR7EcX7fFmBZpWJQ7J7K80
	3Wtg1oPbEkQgQ3f/PFK1KXKuFqS4U/SAA/sgzF8mSlwa/YCz25EtLSfntygAHQzR
	+Fxk2g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csqcy96nf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 10:50:21 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd90958f24so10472785a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 03:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773053421; x=1773658221; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ixmuVqTw+nK6ObJcUf5bGyAiKyAt5/ez5O5UTRkoHNE=;
        b=RwCBTrsk+EJNxe/FBksB2wlHnLBVQdgFI7ZJ8dQH0z5e5zrbZk1V2D8E6RHgw+xq9Q
         uiBrHCLldXCwpEbCO2Skc/WDAE4lsQ7PkD6s9ixygIi0VRnCpqgUJuqsfGe+f9OQKUXK
         +VITx7jzlbphKiWxhladXx70UxmtI4XGy5CDOYmtCQpuSnTQ27iGHb+X5FZ5D8l9mAKa
         OWCnuQG3tgSX/60J/x2wK36CpaG3aHS3L2vtinKa0c6JUT4uRoxYpFelFI/jzH21O2SU
         3z1S63Z2KjI7oUrZGC3v7ehVSLdoVgxv5sRyBd3dh8shKnaQhfmNxQEcmcpZq7YAd4sF
         F20Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773053421; x=1773658221;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ixmuVqTw+nK6ObJcUf5bGyAiKyAt5/ez5O5UTRkoHNE=;
        b=c0pHZs8VUwS7oXVwXM7rwb3FLDcqdxtrdF8d5J6IubW16QdYGOkvc1OZ552CpGQktp
         M4qxuiHBvXz89TKZTKbeF7r/qSoAjatCc8LI/snxK//DU6WwNHoHGQLrqnfTN8tFdimP
         ZqAo20sjt2vWD5EJsfgxBwI7VcgdjxQzgaB80Ir1ZGK539xslR3/QoP4DC2Y1qaoUjls
         UNyNGpRkl5hOYUs6MPeFxrNeQQ69/xbifpfYnIY6ifWugwMHxDWm7eT+XluPlK0Vtk+t
         Dzn17bz/+/3x4CosBXqODPPsDe8SYC0dM6jT2kkkghAx6kfMoSWVEInWdzmqxOvly+R+
         fDDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqSojwAZnFweJtOQz8uhC9VpEqWQmdLRqPqkRLLScapLLPHHTXmgUNweu0uDUz5lTQmbW4EKqHQaB7@vger.kernel.org
X-Gm-Message-State: AOJu0YyKCqS08T62VOYxjbi90uogMPfrdBOnYv6ssT3um2bcc5cER2sH
	kKMoRFBza6e0uUbEaDV4W17dse62tXes8o5Y9AGQWr4yLA6cAQvUB6GJH5z+NWbeAjZ/Az988wM
	eUTNr8ADvnkbwhEVnkgBtUZycsCOKwKXdvVjMjXB092IjGgGU2gzkmBnDPjNPvlLt
X-Gm-Gg: ATEYQzwqjjBxbaE7ZXczIq5YwqY8Y4b/0Ze06Ak4jfbQ2kgvhc3CkYf+m61IkDoutQK
	h9sdJeg7khmzLYDVYBxcitp4OdZVHNVOMC3H9atPzNntFGyVCWt33i0lY/jc8NMWhyiS1zp3P2I
	g56KaNhZHh++neCHQijAbUmupacyEtmX/itU1jjbrKaDi1Ke7JTW8Tn4UKxXezB8duXTKzQ5Arx
	fVFNjpuwYuhmNrmibbmJ33F554VSnle8fOXKTHwoBUAo1RMVU+fPkzZBvM28GiQk0xHeelFK99j
	nL37kvMyTaxoga5ZWghZuts0g4VFXyeVmn6i4XbMtx1HMeDcrDSIrkA8yRs2+aGIjWMlRfA7i8Y
	NlfEfNrve0DUhv1rTLOatTtSHiic6CMzXhurrtJDhokoTb7ZoTMrXQ5LLnDje+duwquwXF1jBGQ
	GXuhI=
X-Received: by 2002:a05:620a:2955:b0:8cd:8411:a5cb with SMTP id af79cd13be357-8cd8411a9c3mr388604985a.3.1773053420914;
        Mon, 09 Mar 2026 03:50:20 -0700 (PDT)
X-Received: by 2002:a05:620a:2955:b0:8cd:8411:a5cb with SMTP id af79cd13be357-8cd8411a9c3mr388602685a.3.1773053420459;
        Mon, 09 Mar 2026 03:50:20 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-661a4fd5e87sm3106281a12.18.2026.03.09.03.50.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 03:50:18 -0700 (PDT)
Message-ID: <d56b6c58-af56-488b-9879-6bd7221f7d53@oss.qualcomm.com>
Date: Mon, 9 Mar 2026 11:50:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: nvmem: qfprom: Add Kaanapali compatible
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
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
 <09e910cd-d0e9-4a05-a249-b0600705ac6c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <09e910cd-d0e9-4a05-a249-b0600705ac6c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDA5OSBTYWx0ZWRfX1IlQN9P1+CMH
 4PJwihZjpN1KEuITQrUnc2hZbdhWO+Yepy5otkmIZiUkwrZ11h9Hvv0YpC6goZ6A5w3kj6MPUrf
 XRB+BFiHfldz7ueK4wRtYLs9dV9QA3zIu75C9whoET7Vvnu+/co5MQgUyTE1dyY4QnD2ADMjooL
 Pnijo1JnO4dAmgv0fIoWwD2GFlcRBFlkTST9uaCXag3pgRyqBYCcAmJhLCdnCCr7ySislTjDtq6
 aPjs0D6zNfkSGtK6P54K28BKGYj0Lkw8oHf7+l6M2We95Cgn8LCGY/5sewOsokA/m/iZ//Bp7rb
 mE1IFTSP4BVN7Do0184jHMFUrDwsc6WIch8Ie2akTEjxvtLzLQQFWc0LN5r9EmEQ1hGmAbe1TuX
 Qaolg1Uv26KN7nADJRmDxeEBzKkls3D5gWmiEhVsEFW1HHKy+3S2+fg0l5UhjbyGpqHVLB9CB/e
 CKRFyOJCZ+kmMHMNlvQ==
X-Authority-Analysis: v=2.4 cv=QJtlhwLL c=1 sm=1 tr=0 ts=69aea5ed cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=H0emzAZzOUpNPUpl2g0A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: qQsh6WI4Wp1WlAppeMSI5G8z6p0TliY2
X-Proofpoint-GUID: qQsh6WI4Wp1WlAppeMSI5G8z6p0TliY2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603090099
X-Rspamd-Queue-Id: 495D8237690
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-272834-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.945];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/6/26 10:54 AM, Akhil P Oommen wrote:
> On 3/6/2026 2:40 PM, Konrad Dybcio wrote:
>> On 3/6/26 7:55 AM, Akhil P Oommen wrote:
>>> On 3/6/2026 12:10 PM, Jingyi Wang wrote:
>>>> Document compatible string for the QFPROM on Kaanapali platform.
>>>>
>>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>>> ---
>>>>  Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
>>>>  1 file changed, 1 insertion(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
>>>> index 839513d4b499..2ab047f2bb69 100644
>>>> --- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
>>>> +++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
>>>> @@ -26,6 +26,7 @@ properties:
>>>>            - qcom,ipq8064-qfprom
>>>>            - qcom,ipq8074-qfprom
>>>>            - qcom,ipq9574-qfprom
>>>> +          - qcom,kaanapali-qfprom
>>>
>>> A question to the maintainers.
>>>
>>> Do we need a new compatible for every chipset? If there are no KMD
>>> facing differences in the HW, can we use an existing compatible string,
>>> like sm8750's in this case?
>>>
>>> The fuse definitions (which map to nvmem cells) will obviously differ
>>> between chipsets, but I am not sure if this alone warrants introducing a
>>> new compatible string.
>>
>> This is to prevent the case where it later turns out that QFPROM on 8750
>> is deeply flawed under certain conditions and needs to have workarounds
>> applied retroactively (because we're pinky-promise working towards stable
>> DT ABI)
> 
> But this is a super simple HW IP, so make an exception for this? In the
> worst case, use a SoC related compatible in the driver for quirks?
> 
> I am just trying to see if there is a way to avoid this dependency for
> the DT series. :)

I think this is the incorrect level of zoom - yes, it's annoying, but we
have probably 10-20 more places where we need a 'meaningless' compatible.

The quick solution to getting over this, would be to let platform
maintainers (qc, mtk, nv..) take such simple patches via the same trees
that grab DT changes - and I think there's been some discussion around
that

Konrad

