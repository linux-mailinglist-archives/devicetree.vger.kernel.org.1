Return-Path: <devicetree+bounces-257454-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uA5TO9yib2l7DgAAu9opvQ
	(envelope-from <devicetree+bounces-257454-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 16:44:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7FB4683C
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 16:44:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 21BFA78B569
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 14:55:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81A8944DB81;
	Tue, 20 Jan 2026 14:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JXDW4IGN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IabMKjdo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33E844DB7A
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 14:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768920236; cv=none; b=HyH/O1wV35rY4cGkgmc9IUdwj4uH62bXPnu4NtsYxw4YNQn4Ir5JtEag1mbG8sfKGQr+sUbSwQ884+6sYSabSttXmmILEmFo8vfCSCFbdiYJjlCHB4sRNfu1ENw5ab7OfSPqFe7kOvuZ42OxiC/K64KexZl6gTHIhsoK92aNWgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768920236; c=relaxed/simple;
	bh=lfDfPgLnzLb3DFJx/z1f+XkYJVZarEdcqDRTCYUPooI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Qj8USWck5c7FOd8Jo8vuHfq8KqTOqr32VHEd3SjLdMi/chnaI6TNTfC2AihQ6d+uvw8s/hRXDPCWcTB3lWRUOHoQtpHJITAI+OhGlRISYVVlcpIVNt5wj0mDZcnFYxddOE/ZTVe5J0d+w1lslv0sTsJjkBTo4D1zShv2YvoUQuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JXDW4IGN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IabMKjdo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K6hoRA428510
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 14:43:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2F2MscGUxOcgirT/V5wZPZEuDvjWdo44geWYhcKaiJk=; b=JXDW4IGN4Wz0LPrN
	pZWHAkDrMhhIkdEUc7fmc2sfuLODg8GKIKVMY5Lvbev4z99jcTBBkmMQqdXuWpV7
	KP2Ew4VD2+VmNcV0iu1w+FEnsAFSFnv6750j11EOanrSavqV92KwC0vUuo1U88sm
	JJ790XauOMG92IwakOKxYF+DVyOn3uySpO6sSUFNZLl/cfn6FLvhbebqURfdGukq
	s9ewUJ8rEnut5G2zIURU1V6cAYUy08+hws/dBSj2WOTdTo4l3W+HyXHTNe62Yzbh
	YMVFj/hnqNo++YHmj5jjesXCjCi8Ana9niz38QrVx1sd643xKtEMk+ggVRDyeyv7
	GHujhA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt4ps1cgb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 14:43:53 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8888ae5976aso21098946d6.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 06:43:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768920233; x=1769525033; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2F2MscGUxOcgirT/V5wZPZEuDvjWdo44geWYhcKaiJk=;
        b=IabMKjdo7IbfcJPBa76Y4gCONRB7MzHJk/CzGqHPRSJ19VHBhTjLh0DAUMg/VPZ5Ap
         PP78RMIO3J8HYZ2pkYbk6NexX/PmXNxlNq03TCX1pyAgFLyG2yRINIQHwX0nKi0R7pO/
         yZNcddHx/aQ+Ku636qBbDFUSrpIe/WJBOnWvGq0bUEARwt45PE35l9E6BDtYSJXLQd9n
         A3RKonAp1bl+Rmcc+L7+LVJSfdNUVAUHpB76CBeSMtwoFjswGhpS4+gliXjYgnKlAxkC
         6CVVTwQ9x6dy8yy8ep+v/4h9A2QpVa36p3Zl+MmR1orFcr4Y0O1VlARy3+MC8zzUQufV
         NK8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768920233; x=1769525033;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2F2MscGUxOcgirT/V5wZPZEuDvjWdo44geWYhcKaiJk=;
        b=vjhR5sWzKGSgIhorFoEDjk/e84sWyU9Bg7m0CzU5ywRvehDkHAVAPp8rqucRp6jPEZ
         /+pOUjv8gW+Mo0EoP+XV2Oa7+RlcwtQG154Geuae0TFNmlnltORj8rcmNDDbnMaT2lrG
         UVhkp1/c3BpgtYZUxMr5hdb+LPq6zWT651TK6JkvkGmThsjFmm4hox9tIDanpYIT1Udg
         HmbC5E5jWXlFLb0IRQvAsnQnQCqraGlOABFQVMf3ZgfJSQzZZeP994NkYilqctYl9Vb8
         txeK/sAo7N9vUrZbtNAhn9lDhwm4cs59Am4aHiAnsBFSu96ylpblaV6Dwgs1x/L6yLck
         906Q==
X-Forwarded-Encrypted: i=1; AJvYcCVxRYbViNl4JCRlTKgtH79enYq/R6CZLgiXaGxs2FVgd5OStoDZ+y4+9xOyIkLeHnIizjHw9OyMXwEM@vger.kernel.org
X-Gm-Message-State: AOJu0YxBzgLK5Vye9yltmRzewllbJXN15RhhQN50BlumR4DM0qHVvNhL
	1OMkhmXjjY/wuZKWCU2EYgk5VusWMTUb6X00yvkpru3wDSee3phV9y5qlPvcbYiQRxgXUqbfLKd
	QbHc/InKUVnX7Qw7dgOWtALlrR8xOrIiWkfYtNgMrPwEc+XZJrUMrJoH71Y2CkdFr
X-Gm-Gg: AY/fxX7vgEGmrFjxbuWnXQ3cHSQCD7bhBdmKluwyy0gH+q/8t6zsZCWREmlOt0dLxoF
	MKrVTBdYGk71/fn2+yNsEVlvehYIos7xGFCfJFSPkE9RF7rgC5HL0z3nva1uzKBKcSUUPVUUQsS
	blj8SKHG75nxVrqUs7PP6zJ1wyILAXBv89uvyUBqNQCs7RUMB5ElMTbDZl76+KyedsUpuGH8p5/
	e6i/tTPD6xa9dTjq6+PAZl2jOk1JymD/yirRkcysv3IO+dPF6sixYmYa+VHmpz4TY7MyDBZ7Rxz
	42Hxc+d2wFqDKgu/lmzORfuQdCS3uV1fjpLSuh5NJI9xg2/N4x3g73kF9kpStzwgyJWoIQPvg6j
	4IXSoWvJbsZGO1Q6BodODqhpx4U9D7NPenYUFr9+TFPX6Wy8iAY7aphqnkfnQs5Lgk8A=
X-Received: by 2002:ac8:5ac2:0:b0:501:49f9:7495 with SMTP id d75a77b69052e-502a171fe7dmr164515391cf.10.1768920232646;
        Tue, 20 Jan 2026 06:43:52 -0800 (PST)
X-Received: by 2002:ac8:5ac2:0:b0:501:49f9:7495 with SMTP id d75a77b69052e-502a171fe7dmr164515151cf.10.1768920232227;
        Tue, 20 Jan 2026 06:43:52 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-655a21abc55sm12521521a12.28.2026.01.20.06.43.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 06:43:51 -0800 (PST)
Message-ID: <99796cc0-f29b-40d0-b8bb-ebcbcc950b23@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 15:43:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: SM8750: Enable CPUFreq support
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20251211-sm8750-cpufreq-v1-0-394609e8d624@oss.qualcomm.com>
 <20251211-sm8750-cpufreq-v1-2-394609e8d624@oss.qualcomm.com>
 <d8c24f26-3ee7-4966-a11b-1e2afcad93cd@oss.qualcomm.com>
 <908b64f1-f6ac-4c5e-9c72-1174cba62017@oss.qualcomm.com>
 <f10ade51-b29f-45cc-9895-d66a319ab26c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <f10ade51-b29f-45cc-9895-d66a319ab26c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Bz4kWCbTWhUDgt1cm6yr_jHaOg9bMTp4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDEyMiBTYWx0ZWRfX9bgcYsxGwnk0
 DdsBiVU3X8wxMjZLndXvRtCteR2J4f+xy8tqGP0B89Ndb8tTYYMvkrHDxIVd2gO5aC4k0wBrqOU
 dTMm8eW0mD8+e0ZFG0OLfLb2G/LRvoyLXhOeZBGOsdu6CZC0ajGRAoc0+5csgjnmXbKV0MqZ/eE
 CB8e4jpnY78iV1rVrFliSdVap128qfXNX7HxBzf/CGPFRYREzHW1VhF0awoPOh+8ZGFhF3xhUZx
 y01L06m0GNvgcKevAoyb8ZEbYvd1DZdlltSSq+60pBzmEdsN4rH1caHhX9PbuzJ8EwLihnULfBA
 ik7RM5BuAgiNeobByB+4o7QVdM+SCVNqA6mTgXByVX54AZQZXsF9KnMRgQUMXRXMFVxmyNt399I
 wKKvpN8fxLU+aJlUJ0WoEYtoqMsoq4IdYwTS5YOaXntl4sc/YmZoBdz97RGIggQNnml2Q26aIIL
 E23cSIae3/RyYs+vsLQ==
X-Authority-Analysis: v=2.4 cv=PdfyRyhd c=1 sm=1 tr=0 ts=696f94a9 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=INXtvDbky3fP8RKYrpwA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: Bz4kWCbTWhUDgt1cm6yr_jHaOg9bMTp4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 spamscore=0 phishscore=0 malwarescore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601200122
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,vger.kernel.org,gmail.com,kernel.org];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-257454-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9A7FB4683C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/20/26 12:25 PM, Akhil P Oommen wrote:
> On 1/20/2026 3:44 PM, Konrad Dybcio wrote:
>> On 1/19/26 8:00 PM, Akhil P Oommen wrote:
>>> On 12/11/2025 12:32 AM, Jagadeesh Kona wrote:
>>>> Add the cpucp mailbox, sram and SCMI nodes required to enable
>>>> the CPUFreq support using the SCMI perf protocol on SM8750 SoCs.
>>>>
>>>> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
>>>
>>> Just curious, does this patch enable thermal mitigation for CPU clusters
>>> too?
>>
>> If nothing changed, we have lets-not-explode type mitigations via LMH,
>> but lets-not-burn-the-user would require a skin temp sensor to be
>> wired up, which then could be used to enable some cooling action
> 
> In some chipsets, I have noticed that the gpu cooling device throttles
> GPU to the lowest OPP even with not-so-heavy GPU workloads, making it
> unusable-ly slow. My hypothesis was that it was due to unmitigated CPU
> temperature tripping up GPU Tsens.
> 
> So, I am wondering if there are any additional CPU cooling related
> changes required to get a reasonable overall performance under thermal
> constraints.

Yes, something like the aforementioned skin-temp sensor at least..

Today Linux will not throttle the CPUs at all (they're not even declared
as cooling devices) and we sorta agreed that in general it's a good thing
(tm), because otherwise we'd be coding in a cooling profile into the SoC
DTSI without taking into account the cooling capabilities of a given end
device (i.e. in an extreme case, a PC with SM8650 with a cooler that's
3kg of aluminium vs a Steam Frame headset where the SoC is centimeters
away from your face)

Currently, we have cooling policies for devices with fans and the only
other action is based on a skin temperature sensor (sc8280xp + x13s).
Everything else is left up to the LMH defaults. AFAIK work is ongoing to
create a more informed solution, that would have to (quite obviously)
live in userland.

Konrad

