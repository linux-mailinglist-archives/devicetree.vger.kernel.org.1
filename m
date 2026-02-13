Return-Path: <devicetree+bounces-265337-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEgLNhcDj2kmHQEAu9opvQ
	(envelope-from <devicetree+bounces-265337-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 11:55:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D3B13545F
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 11:55:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4A8B304A5B7
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 10:55:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40409349AFF;
	Fri, 13 Feb 2026 10:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A7/NKsr/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I7MyPJi5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A25B21D3D6
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 10:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770980117; cv=none; b=RdV5fNFwHrfSSC9GIyxvecdR8TCcFppxOT8o57RpGCAFYc3Oc4ScmFZVB+w/VRj5jqL6vroEib8bl6nhw4SGh/Jmsf74UlwtU4YB+PJ1Y11N2p/Ye0Itw0ofPLc+jtWF6eY/SvMNDZqSwFezHxWitBHbYwQ/0ucazJBoAD8jnWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770980117; c=relaxed/simple;
	bh=sISlQNo22rhzeXky3hysxZuotkwCFL5UOEy78QbT9GA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kXnVuNUtKBiwq6ZVmsPNasu8X+IOYQ5IV6C5adnxyMA0CQ3gNOvfMHxMIrM0oW5xw2zyzwo5nQPKOWaSw2RVIXks8k3IHhLHeaAht8rzPCOh/Qn6tkJear4450FIoWGeLO5V8GYjKlEcg4SavOz+DY5PFXJTe8E2DdqB5L79Jbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A7/NKsr/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I7MyPJi5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61D7k81i1642026
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 10:55:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zouAPUjQyVlj9GPmB6CLRV7EXXiZWNs++RVmMWYgHOc=; b=A7/NKsr/Zmc8EQUY
	I/alKTHEJLsf5D2+jw1AOZ40DKII3mqwc83s4ozT+BPS2BbIMIIABDQlmHPl40Rp
	jChC7uwk37NXwBeB3lc+qdukdGDOP3QD9NTER9koqquSMRLb3d2EIe1Go5QKY/am
	uq0jme+Xe9d914Skre/j0TyT1D7SdrcMjy9G76iFdJitmSv9rJcB95lALH9Odivh
	cOnqGieSyX268kU+Tv3kOPVWIT4ZdXYA2O6yPe7ZLOQCC3k8/fvcpAphbaiiK9f7
	v1EoWE9/KICn04TvwGZnfGKwDI4O/bEGKvjbmHQmWlsciF7VFq8+/Jcy97AALBmN
	MdFzIg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9ptv2g5j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 10:55:15 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8ca3952cbb9so26822685a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 02:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770980114; x=1771584914; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zouAPUjQyVlj9GPmB6CLRV7EXXiZWNs++RVmMWYgHOc=;
        b=I7MyPJi5MunLu4BpjxmWX7x9LgdX6VplX3DIkLdaKyMenb/u14Rhv8N/NTf/VAPk+Z
         5NaIV/hRlGNS///thSMQ2x1ed924+0LVykphh8Uhv382CYKq+yXioi77qYL+pMKzxGcV
         HvOcZ1xgoWjwJET32+uwmmX5TOEPVWO5VBGGiYouNornzvFzdG0VBCBAdLpzLlH0nLL5
         ZoqyX7F90+psTJrcJLMnmQJo9I9o149cqEzOMjGW2kc8+Xu+7jW397jbE9rBiNhM+PSN
         v/h7cblSZuqa8SAuAZ/SxUxAuSxxowmkhO53rhLAiJSuSGbjWCdKLEjkMgJLgq1epEpa
         8CiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770980114; x=1771584914;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zouAPUjQyVlj9GPmB6CLRV7EXXiZWNs++RVmMWYgHOc=;
        b=slvPvwG25FBwwtGa96T3qmBkpHZMq8SzsMnH/gCS1ozZauLywTZVhT8lxP5gPGo9aa
         LFI4aD6gU9CTZnzpsI5vEh680iAxkoMCdpiGI2xrcuL2zDX5oL8cdHZaU58sTNdV3Fp4
         wGDixtePkL5I6E9zdDKQxxilsSnY8ZWMJKnEz474r+oVWab3UETA3WuzpVEGe5M37BLu
         iEGsQYblcT8yuPrsG0RJFZFxSaXtY5zV0z0t588miJzrJUkzrIg+88tt1xMy0e8AVhWw
         JFNmnheuWNzu0Cc08Avd0UfCqjKxrlHhxEI9TPUAJ+eeOJrlk0ior5LBN1eRYCRJY+02
         fWBw==
X-Forwarded-Encrypted: i=1; AJvYcCWHQkCmgBXXVJ5jiRA2DBm7ews3BjmJ1RkYpF5KU5QAVRutob3ftGL3X7/yrA8ypLSr/2wbCo1hzLHR@vger.kernel.org
X-Gm-Message-State: AOJu0YxsosgCi0CJKvPbJAuR3YjwREhVJcntvJ3+5LupXKC51pphY0rN
	kH+oVbxc/LqW+NFzunlTlGgoUkjvr7ZRjqCrNKEgfXyf4JkEclOUzA+0QmW4c/9Xm4VBiA/M9kV
	5wN3afU726ySMJqU0nKIbzbtllTP3Y4rcKhWYruAhiF2Y8DkROX/3Aibhdt+75A6/
X-Gm-Gg: AZuq6aJjuVALwBfeD2q1hJh8LtvSxu1uYlaGa3E9C12QBsXIZaSN7F9F1yxk5x8IvBU
	CnvGM8tsLu4p7kgmQm0Eu+SDcClGc6hBu+TezMFdtibmoCJIQ6ZOXnKC+1yGgSWh3VcPb+kvp+t
	BQD/WHo72YxwlSXjSnXg9/EpZeL4kucdM+QYzciK4+3cyNehTTt/LViAGYEHJTZ0HA0KQjj/72v
	chE3lgV6tZ5HdNtpWUrCXrugEUj+J8pBQF1l6hlgxzbZBMWLROTXalJ5SxTCgdHGHCjLnqRDDga
	jjoBxoNt0vyUCFc5GDPAplPsJ3Pi2ltQJ+0tgXv+b52SZCcmeENI7+a1E11FqWV+yBd6GuO85HP
	GFe5bwXfGlecKef2Pe/Jt3ovRM+GNE9ndh2oGFOKPTlMrwrYgbPfICSntvF+XKpWSjeKV99UmiO
	VcPRE=
X-Received: by 2002:a05:620a:258f:b0:8c5:3892:a554 with SMTP id af79cd13be357-8cb408477a0mr171810485a.3.1770980114367;
        Fri, 13 Feb 2026 02:55:14 -0800 (PST)
X-Received: by 2002:a05:620a:258f:b0:8c5:3892:a554 with SMTP id af79cd13be357-8cb408477a0mr171808185a.3.1770980113926;
        Fri, 13 Feb 2026 02:55:13 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f6e95004dsm247492166b.5.2026.02.13.02.55.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Feb 2026 02:55:13 -0800 (PST)
Message-ID: <367a41a9-8e80-4bcd-9985-242469024b31@oss.qualcomm.com>
Date: Fri, 13 Feb 2026 11:55:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] hwmon: Add Qualcomm PMIC BCL hardware monitor driver
To: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, amit.kucheria@oss.qualcomm.com,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: linux-hwmon@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260206-qcom-bcl-hwmon-v1-0-7b426f0b77a1@oss.qualcomm.com>
 <20260206-qcom-bcl-hwmon-v1-2-7b426f0b77a1@oss.qualcomm.com>
 <7911bbae-c507-4420-a05c-89242941f774@oss.qualcomm.com>
 <66e6696d-3fab-4da5-ab89-4067d856f186@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <66e6696d-3fab-4da5-ab89-4067d856f186@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: gNxDMk2JaLiatUBxgZg8tTVhJExlxutk
X-Authority-Analysis: v=2.4 cv=eaowvrEH c=1 sm=1 tr=0 ts=698f0313 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=0IPvm9oXmU5doNSm3s4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDA4MyBTYWx0ZWRfX4V3eJisdS++A
 kezEfv39pCMj+f+Hx91GMi+eKoTyq+QFEnzqnsF0pXnlAe23PoQZt5c3BBrwLU8m+vD4+zzPXo/
 eUH2D85ofBSotx4kA7wHT3W1SzpsXPl3i0O38W0f8bZMbHz8TPPUZY1+K2xkBOso2IvdX8ssY7j
 w74DjW3Mn7tlYrx9iIO4PWDZPdKpOAVKEHUeFrrhjGRd8FVvB+m34VQtNN6COBAl+EkofsBo0ny
 Fg29iJakV3I+5hnWf+1vzZFQYGurpyfWUEbY3uRfkgXLVDSAaSg9lfxwlr+e6mDnP5oJQMpOMXL
 m7yaEziyHqdqN2D/ZFU8PqEzcmJfAfRmAIPOiJM7jCpKXQjqyxx5UyuLDNK/tJYeLSqxMPE94WU
 +ZwiCVgByyj18kIJ4PqVtKFwVLmdjanUIudPW6JO8Efw6OrTLGY1q6uVbbOCqXnQk+zJJYDdIa9
 Xyyt2TV3rZ/XThAXtSg==
X-Proofpoint-ORIG-GUID: gNxDMk2JaLiatUBxgZg8tTVhJExlxutk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_01,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130083
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265337-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 38D3B13545F
X-Rspamd-Action: no action

On 2/13/26 10:42 AM, Manaf Meethalavalappu Pallikunhi wrote:
> Hi Konrad,
> 
> 
> On 2/6/2026 2:57 PM, Konrad Dybcio wrote:
>> On 2/5/26 10:14 PM, Manaf Meethalavalappu Pallikunhi wrote:
>>> Add support for Qualcomm PMIC Battery Current Limiting (BCL) hardware
>>> monitor driver. The BCL peripheral is present in Qualcomm PMICs and
>>> provides real-time monitoring and protection against battery
>>> overcurrent and under voltage conditions.
>>>
>>> The driver monitors:
>>> - Battery voltage with configurable low voltage thresholds
>>> - Battery current with configurable high current thresholds
>>> - Two limit alarm interrupts (max/min, critical)
>>>
>>> The driver integrates with the Linux hwmon subsystem and provides
>>> standard hwmon attributes for monitoring battery conditions.
>>>
>>> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
>>> ---

[...]

>>> +                    enum bcl_channel_type type, u8 field_width)
>>> +{
>>> +    u32 def_scale = desc->channel[type].default_scale_nu;
>>> +    u32 lsb_weight = field_width > 8 ? 1 : 1 << field_width;
>>> +    u32 scaling_factor = def_scale * lsb_weight;
>> Would this be equivalent?
>>
>> if (field_width > 8)
>>     def_scale <<= field_width;

Actually reading it again, that'd be "if (field_width *<=* 8)"

and the div_s64 could become a mult_frac() if you take care of the types

I would then read that as "some PMICs have a higher resolution ADC
but with the same range" - would that be right?

Konrad

