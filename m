Return-Path: <devicetree+bounces-270449-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDr3Ee7Mpml8WAAAu9opvQ
	(envelope-from <devicetree+bounces-270449-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 12:58:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E321EECB0
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 12:58:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 561D93021C30
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 11:45:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 583554279E3;
	Tue,  3 Mar 2026 11:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WREJv8gG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dj/A4JHS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6F9423A70
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 11:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772538111; cv=none; b=dAkvQWUU/d33duf0uAjqXg+9MQwX7nGzrC/Id3roY4jRtyDRRmrIT5+PY41OO1yGCCe5daubRDQF5VjiRCoXVU5j9lZ2l9tYGGfR6dCFmcWBo+12U8521ALtxPUik5QRBKeI5sZ2Tc4V3B/gtrpyEkR0H4tnfZ8wAcn2hGQkICU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772538111; c=relaxed/simple;
	bh=44fcpOWYOj4FnsEC+MKniDNEyf0PATusYI8QPwDh9hc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vDOmBlPKAnLnCORMT9Os6yCszjhHzM/8W99taTCB/jDAEnz9gm9PvN8JC59KCkx18v4cgI+SUgJRrlBCy9Fw5nBo8MulxEBFlj1Gb+kCchrB2pS5fWKV9qTPhfRmzo2TRQZ7MG9AgV1N0WhTdzb9hD63tYqnd9oq76KK91PkQx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WREJv8gG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dj/A4JHS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239mvAo2307846
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 11:41:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SKRyKAlkLeLrmqMC+IV1+vMx/meYXsEvtAI+ChByOqM=; b=WREJv8gGN+ODwKr/
	bJ/o/6BJ87+TzCTObakAfGcsFjfuwbdUCRRtt+LeEcPFmzT8obHU96CF7ktJlCNu
	akmmLUbNhj4hjbbzRD4McNAvS9A7rvijPwZvF9qSW27T1KUAVQLH2MhD4DJ9QJOZ
	6+azjct+6k79p0heu//vJ7qzMA7aHXys3zrNgoPKnHgAixQrY5ldxFOp243yeaqV
	xUVOvpPCx48IsQ3c4ledQNvTV9lnU+m078H/B22cTd/DhggDVZ9kST00LUDXjbOl
	P2EAUPciX7emBTUqVq2Y7bVu8WbQ7gItRdKbEUByJrqLYwHbEOyrFLoAG9PCvIVv
	dLnQuA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnvtu8evt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 11:41:49 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-899ebdd0b08so18132656d6.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 03:41:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772538108; x=1773142908; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SKRyKAlkLeLrmqMC+IV1+vMx/meYXsEvtAI+ChByOqM=;
        b=dj/A4JHSisWQePe4141GguSxw1ladKCM953FzXQN8f/trfTIN2+TwY5hSoTO+j7B4X
         hxYEsCcj4rT4pyVBfx6sA692J8Ou8AemrssPPkbioucYcn31RdNQ7E7nklNA7NHaQ+wq
         Wvq9q47upzm6JD3IpgybOLTKi49B6pMFojWDubMaLKPjwrJJhEQZnoIlxYrQfzcU9gTG
         NB+rwgxiCDHRJXeu/3rItJxy1up1B70WtwVOE8WjFDFRtm3Qs0Ko0F6+tl1nCL6tAYAO
         IO4944vlrlpqnIZSu4K7L4gBqwcEIkpy33Zq3oyBn/OAFAWDhQPgKjommrFJoPxYAsk1
         ZygA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772538108; x=1773142908;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SKRyKAlkLeLrmqMC+IV1+vMx/meYXsEvtAI+ChByOqM=;
        b=ezIzbaHJGfpqKzg9oMdSMA9n7Vzqhyoude6rRiEoamRDHz/Fzh8m2tsifVvJKpLfaz
         LCOX7C/PFq9pUPc94Ax5H6mPd42YpMuVuW3XeIe+11+Nwcq78O1gUuCxKnbahn7XzkLz
         oS7cApZ43SSBkf4sm2xghWclIXoklNEOD4fmjMGcRUaU0h0vUgS2LJh39m0hNCUXCmUI
         Z9LZruyoLEoyOMUkNOM+IQb7l5iWEj35jvFPFMUXwUhP9alQSGzbnIoUhP70mws4k175
         hP4EOJYNDlsLfCP1p5kDvYvVzndsd8Jgd04JZDfiHVLFpWRggOn/U1Db9aS1SDqzSDJB
         yGQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVa/Lc/ijL/BUdIdaTT8QOrfgy9MdbbQsBwnfr8jlnPhM64Iy9Ekt0ar0GzLNJKO8j4hkTm1OcKKyFF@vger.kernel.org
X-Gm-Message-State: AOJu0Yy149yMktf6tpAPnMP8B9KkyW9k/xWOenWHUdY2Z4lgqOo5l9e6
	lRp0O2CI+FTUHQk2A5kaEJdlSPEzO77QZDQsjBJ2q0ahxNXTcsNmnn0BIgDZidgmd3U8h6IrC4a
	r802PUUmj6UwYKKwfTJyyQs7s2MWX6hVbB64Olf+zbFPjybY+0Q8nXGDQL5bl287Ftqbur/go
X-Gm-Gg: ATEYQzzkAehuHdNBhQq0jZY+/9MyQDQ0cSNhvlWJX8QNNh1GTik8DuDVjBpF7HFivqZ
	hpnRIDjkQhUs/Rqoj6udVtxDGGwZf39SSbKc0nMxksA/LwFjsQjMqLM87ZtZnsa57AwD0cFR8hd
	7Ny9eFqgOKRYVscNWaziCOjV5vgly/trIs4n1d+aK2hQBkzuSAfEtATRGHHptvNEqA0vfGZ9MLH
	/aO9welze5xTQXXzk5TTOGUzcy2+goUrkGKkhNqmN56qSdUBv0VeF823FRpbPZr6CbKkLdP1NWc
	4d4Ypy4RbeFKQs1VBmG9ICYKemL2rF/Jbn+Xfh1r9WIaf7FJvzLjODubc2+WeGFTD44oB0XQLjv
	ZfKh8kOJTFm/YpJRx4184ndeTBhccaSzMbhJ2ZGl/CVnD/JbmW94WVVwoi2bKXZ8zEubjQO1MXq
	aNrL8=
X-Received: by 2002:a05:6214:4f07:b0:89a:ebe:1cd5 with SMTP id 6a1803df08f44-89a0ebe1e5bmr8817586d6.6.1772538108252;
        Tue, 03 Mar 2026 03:41:48 -0800 (PST)
X-Received: by 2002:a05:6214:4f07:b0:89a:ebe:1cd5 with SMTP id 6a1803df08f44-89a0ebe1e5bmr8817246d6.6.1772538107791;
        Tue, 03 Mar 2026 03:41:47 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b93c9fc1808sm113845866b.62.2026.03.03.03.41.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 03:41:47 -0800 (PST)
Message-ID: <0b95b756-eb56-4b45-9c43-21379f1bdb58@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 12:41:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sc7280: Drop aggre{1,2}_noc QOS
 clocks on Herobrine
To: Brian Norris <briannorris@chromium.org>,
        Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
        Sumit Garg <sumit.garg@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Georgi Djakov <djakov@kernel.org>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        cros-qcom-dts-watchers@chromium.org,
        Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Douglas Anderson <dianders@chromium.org>, devicetree@vger.kernel.org
References: <20250825155557.v2.1.I018984907c1e6322cf4710bd1ce805580ed33261@changeid>
 <20250825155557.v2.2.Idebf1d8bd8ff507462fef9dc1ff47e84c01e9b60@changeid>
 <90b13660-1844-4701-8e63-7fde2f093db0@oss.qualcomm.com>
 <aMMcNn82AmSavJYf@google.com>
 <b51e1230-d366-4d0f-adc8-fac01b5de655@oss.qualcomm.com>
 <aMR2diG8zwvPRSXR@google.com> <aWBM5zl1kgvCZdnV@google.com>
 <8d334226-b8a3-4e22-9257-e6aa60fe2d47@oss.qualcomm.com>
 <aaYBrQlaSSf4aWpz@google.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aaYBrQlaSSf4aWpz@google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 4RnbfvMQIyku4_9CiNZBdIPSCfDqyWl3
X-Proofpoint-ORIG-GUID: 4RnbfvMQIyku4_9CiNZBdIPSCfDqyWl3
X-Authority-Analysis: v=2.4 cv=A75h/qWG c=1 sm=1 tr=0 ts=69a6c8fd cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=rqkR2MkYeUT9DoRLdnMA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA5MCBTYWx0ZWRfX9+AzielHKAaP
 vMPA0xI/dp6Pykcf8VjHQoICJORfONAa/Y0Z/lqip7YRKbxBumQlenBeCXE33SEbGQ3ddJoUJWB
 kRX4iJKsNMXI4C13MXAAXEfvBZiv8Ealh8SnOFrkdrwPkrFkWA9T5lV21404xSVkJbNlYNM9L/K
 danXENGQOH2nUDosW/NIoGiZ5IofNbmZy5CSMiZNMYGHBni21qs6Ej24eERPRA4JR0tUFzSP+4X
 hvdrSVt8EyBynuVNwSlle0RGmOL6s7Z+gNLejUSha50/F1KY72e9NiX6uvsm8D+9ClkBeIswZxB
 fqWEMH5tarQKiDm7t8Y9tHCCNFXZGeOiYKKF9KVWvVF64nJHSb4AXuVYrAuYK7emqw7uJVYaFJ8
 bN9IZdlB95+0lJh8hTfmAthbAjRi9RoO7e+l5UKOiULr355DbcIepMwHxR6mMoBVgojnzh19ONX
 KLoETXpyoYRA9FXuA9Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030090
X-Rspamd-Queue-Id: 45E321EECB0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-270449-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/2/26 10:31 PM, Brian Norris wrote:
> Hi Konrad,
> 
> On Tue, Feb 17, 2026 at 11:46:19AM +0100, Konrad Dybcio wrote:
>> On 1/9/26 1:33 AM, Brian Norris wrote:
>>> Hi Konrad,
>>>
>>> On Fri, Sep 12, 2025 at 12:37:29PM -0700, Brian Norris wrote:
>>>> On Fri, Sep 12, 2025 at 03:10:16PM +0200, Konrad Dybcio wrote:
>>>>> As I attempt to find a board that would boot with your sw stack,
>>>>> could I ask you to check if commenting any of the three writes in
>>>>>
>>>>> drivers/interconnect/qcom/icc-rpmh.c : qcom_icc_set_qos()
>>>>>
>>>>> specifically causes the crash?
>>>>>
>>>>> FWIW they're supposed to be independent so you don't have to test
>>>>> all possible combinations
>>>>
>>>> It seems as if any one of them will cause the crash. I had to comment
>>>> out all 3 to avoid crashing.
>>>
>>> I'm curious if you had any follow-up here. Are you still looking for an
>>> alternative to this patch?
>>
>> Sorry Brian, it seems like all the "ready to grab" firmware image links
>> for this platform are dead where I would normally look, which prevented
>> me from being able to poke at this..
> 
> I'll say, I'm not really surprised. The firmware here is probably not in
> any maintained nor widely used state.
> 
>> Would there happen to be another place where I can grab them from,
>> perhaps some CrOS CI?
> 
> I don't really know of one right now. I expect the CI is not active.
> 
> To speak practically here: there are likely no real users of this
> development board, and if I'm the only one actively trying to use it
> with upstream Linux as a development vehicle, I can simply carry this
> change locally. It's probably not worth a lot of people bending over
> backward for it, unless I'm wrong and there are more people using it. I
> was just hopeful that I could reduce some friction for myself, and the
> limited (possibly zero) population who might also run into problems
> here.
> 
> Unless you really want to move forward, I'll move this from my mental
> back burner to cold storage :)

I'd really like to get to the bottom of this, especially since TF-A
support for this SoC lives on.. +Jorge & Sumit who are working on this
maybe you can repro/find the culprit

Konrad

