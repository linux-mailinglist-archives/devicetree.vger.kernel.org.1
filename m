Return-Path: <devicetree+bounces-262510-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHQLD6PcgmnwdQMAu9opvQ
	(envelope-from <devicetree+bounces-262510-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 06:44:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1C1E2110
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 06:44:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9B34B3022F7B
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 05:44:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FD6D34D3AC;
	Wed,  4 Feb 2026 05:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="htPMq55m";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HfQIMDss"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F23C733032B
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 05:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770183840; cv=none; b=GaNAROO8y56u/7wG31tXWfFHRM1DImx+9csBmNpyUFLI5ZoPjPSb0EUMe1Q9CSnvu+YiOLaHG9VvSquSHVIAdaF2HsYuOelgCxEeFTEKGjA6ZJDXzTbIH6n4IOxrC4rRilShuoQ0mLYYcLr3/I/FqMl0aDO51XyhFVWe+TWV1KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770183840; c=relaxed/simple;
	bh=go6m8g8r//fiUrk5B79pQDICJEzKqS0qc5HSpLjpegY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tOC7Vvg3Vhcax7rbD7PWG/lz/zXluXt9noCJZeu6uuhUaG9pPtkPSLLCKfYLqjoOuslwSXjr7y5TiFQ1R+sUBO3piAksVenXRYEH31ZkQYz3Monx65/FJJuClbSoFYipqhCBPfWVkJTlNnQISVxLcTklCioNt/ys7BtQz/n9++s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=htPMq55m; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HfQIMDss; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6144cxkv4122713
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 05:43:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	POZ441e2LFMbxIQBK+YboacBpaYFysPEfDX6j0TRNhU=; b=htPMq55m0Y/EQ4Rf
	oO/D1UE2SoCF0JuHd5TI55XY9BQh0RoDqLs906WG1TCCee4UnauKZiDl+okExb//
	ngLSTRPfPO5ssMVIgLgCES7gNNn6S24I8igrHtKTf68j3AmymW2QsXANcJdBIWSl
	pLuRpwGjJN4n+t0rFE6YTOBVMQlpI6jazw5mbSVRSSGUoyxGsY0jg3Y28GeOS3h+
	il9ZHXop5mNHbsH3nDbHGRGYPDc1NQJ5nkrENk5OD0svTBXNcwnKkUOYmFtGz7BP
	aa7ZaQ4NkZ/YmGWNN4ACY7tXkqHsXWcsHxeClyiy0HrXwq6Azzhko84VCenqyiih
	BClj2w==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3kbkjnx8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 05:43:59 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-81ecb6279d9so5848906b3a.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 21:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770183839; x=1770788639; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=POZ441e2LFMbxIQBK+YboacBpaYFysPEfDX6j0TRNhU=;
        b=HfQIMDss3KUrVtbA2o17z0kyua+yIno7C/tR+E5puEXWxb4+b37NXqkQgyfpM12s8H
         y2zdC49x73ZM+FX+kC2A9+j/QtgYeUM+mhK4/fBWPBm4DfdqVopdLFItDO6nlcu2QX6q
         JwgKeGLOKU7yUQq0yekL8ovb9FmARhYlWU811DVNCO8l/BgZ2RLUoHQ8aZO2hXk+8N+u
         RuFtPUi/qbE0X6w2xcKp5UmmGq5g6ZHjujKje6ygz2/pGVbVByFCPXN1b6vbcwKAI/NQ
         9oGCKVUz+U1sD1l9LDsTKQguPCjr/QU03xO44USl6gBKaC+qkWpxMPWgiU9nV9gHyZoH
         OuSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770183839; x=1770788639;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=POZ441e2LFMbxIQBK+YboacBpaYFysPEfDX6j0TRNhU=;
        b=j22rz1e3ZXQapFn3GtALzLGTfG7J6XHqTeGZjPrlGpLN7qyMJ4HLZu7E865u8xyq8b
         KJjCO0yDlaR7VOHca6FdI2/Sl1QAAl12TsNT75BIlgl7fSvF/cSrVfmcrPh0TpkvCg+B
         Vual2xXsk4H7H9HBFaP4bgiGwxt6/Izt24nq5CnNaDVDd/5ni/PiFZUAJLsl106BGdhi
         N0L+1ED+OgWtqALhc14KjgUl8xMR2uca2C1rwoboILusFfRE1A5dNzQmJx4doh3aEF3U
         L9s8clBBiYppL3AbZnJlF5zIdE5MGyHsg/RCWFIRIqs8hCVZP4ReSq5waJPbhjQjBshZ
         gZkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWuCYRSyxn1m2Aw/Y26VRLPg/rINPoNjEHmLi+Z0pHNj4vc9JXg1N6hpkmFIZEv84UFf9TAM06wX0YB@vger.kernel.org
X-Gm-Message-State: AOJu0YyLDOIoyCvkIRC3/Rz8JDhj9m8fPojSY2SSlrzDJu2Kn6F8255v
	azdadyJhyzCEm4PK7Fnh7zLszHz3WzZPIe9PFg5gAOKUNbJhbzsNpSXtmifG/lac253e+vi2XmK
	7MP8Zr1v+lRrSSyaREXe8DXCwJwOy6aoCK/h0du+C5jkWFivUm7pUqEODHjvYRyAp
X-Gm-Gg: AZuq6aImEki//S/CV3Iefhwn2CK1KSVmtuacc1ZnQ4TUsUWnz1448HKDQgAJpMnLPNe
	HKP4Mx8MR9vG6rotviIrXh2YTxyAVZ0qZsyfOvOWedE1BmIccHJ+H2gTmZOxUEl4RuY1T8RFl6W
	YyHm9bNbAXpCx+i+lB1fNTnLTSXW5XYl2s0tZW8xF6IVxIOZy6przD99rM1xFpdf7oq5G2S4w9E
	JCSfGauiolbVjcoFIrWWBmzQy+fL6rt2rK5eFJjQxl1jdtsT8zcuAOp5unWahOJArWA7t/T3XgM
	jP8PsALB5rVviuJuEMjDKGhPIDn0UQpt2ogOoO8rZ9vTCmZf4yLUUT/4rdfh/G2nJx5q0KPJZfW
	Q+DiO57yBT2OwPTGn3IHxNI4JohsBLCD2qRT59147gQ==
X-Received: by 2002:a05:6a00:4c92:b0:81f:4c37:7647 with SMTP id d2e1a72fcca58-8241c79edfamr1857639b3a.68.1770183838559;
        Tue, 03 Feb 2026 21:43:58 -0800 (PST)
X-Received: by 2002:a05:6a00:4c92:b0:81f:4c37:7647 with SMTP id d2e1a72fcca58-8241c79edfamr1857609b3a.68.1770183838024;
        Tue, 03 Feb 2026 21:43:58 -0800 (PST)
Received: from [10.218.32.171] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8241d4a5c28sm1239114b3a.62.2026.02.03.21.43.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 21:43:57 -0800 (PST)
Message-ID: <bc743f55-75ae-42d6-82bf-593ad2359134@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 11:13:50 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 12/12] i2c: qcom-geni: Enable I2C on SA8255p Qualcomm
 platforms
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bryan.odonoghue@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com
References: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
 <20260112104722.591521-13-praveen.talari@oss.qualcomm.com>
 <8e410852-37f2-452b-b851-19b7c4222727@oss.qualcomm.com>
 <e9d3c0b8-2abd-47a5-b594-83f0288d95ba@oss.qualcomm.com>
 <6e5924f2-a9e0-45db-8a79-b328ebd12a0d@oss.qualcomm.com>
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <6e5924f2-a9e0-45db-8a79-b328ebd12a0d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: ET8o2easKoy809gb3D-8Y8tqHL5ocyu1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAzOSBTYWx0ZWRfX3EhI1S1K8UfD
 wsDp2Mg1wnR48fREroHSqURtNsiJ6kFWgBZMozy//BSfR9n81YyVIvKpyuc265g4XqOAfi48clg
 l0qlYgH3cFT3RnDanmenYZzGOtNnwl4o4sTfIvk/je6JhLOcUae6VhJsOc4qHde53myrZIAeJb7
 H2A49uBgUlWNm361Ju0AQMPWWQY27cQPGauYTuWxdoaNRdLW8g1i1cyXHDQPa40C3uThhOt2Y56
 4YLXpS+Z4VAh5zpDnb+ou0bcTnelcJu0Vied7gyqFK8tTlCUnDfI99n5K4eflPMZnziuqYdj46M
 EHzuatOsxD8YZEa7jHJohthaYfYL3LQ59lrgQyeePu59S26e3OBlbZdfeMtv2PxwLwvUTMjTXe7
 WAB6td4qH+cQkwm9t9IW5NkEupwu7YH3hYLnmMm2UseW++Izn2U7JLky0pkYNLIWAtGRIcf8cb6
 9AGzDLMv8Jst2YwcNUQ==
X-Authority-Analysis: v=2.4 cv=BKy+bVQG c=1 sm=1 tr=0 ts=6982dc9f cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=WgL0-2sr_UKP2Gu6nnoA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: ET8o2easKoy809gb3D-8Y8tqHL5ocyu1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 spamscore=0
 impostorscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602040039
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262510-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AA1C1E2110
X-Rspamd-Action: no action

Hi Konrad,

On 2/2/2026 8:23 PM, Konrad Dybcio wrote:
> On 1/30/26 5:44 PM, Praveen Talari wrote:
>> Hi Konrad,
>>
>> On 1/30/2026 6:04 PM, Konrad Dybcio wrote:
>>>> +static const struct geni_i2c_desc sa8255p_geni_i2c = {
>>>> +    .resources_init = geni_se_domain_attach,
>>>> +    .set_rate = geni_se_set_perf_opp,
>>> This means, on SCMI devices you won't don't the vote on the POWER
>>> domain (or PERF for that matter) and switch the GPIOs to a _suspend
>>> state - is that by design?
>>
>> With PD_FLAG_DEV_LINK_ON enabled, every pm_runtime_get_sync() or pm_runtime_put_sync() on the device triggers a corresponding genpd on/off transition. These transitions are translated into SCMI power‑domain commands, allowing the firmware (GearVM) to perform the actual enable/disable sequencing.
> 
> Does that handle the >1 pd case too? If so, then all good

Yes,

Thanks,
Praveen Talari
> 
> Konrad


