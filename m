Return-Path: <devicetree+bounces-264273-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMKpLXXximmwOwAAu9opvQ
	(envelope-from <devicetree+bounces-264273-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:51:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3770211866A
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:51:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9520A3033881
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 08:50:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A76F933CEB7;
	Tue, 10 Feb 2026 08:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ej6eOebH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FFoCtRMa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533A9329E40
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 08:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770713451; cv=none; b=frKqMfbd/JFga6FHfVZe+8YkWrS2jztiSUV9PReJorNr9WrZ3s0xPQj4CrPmGI1B9G938i5T6OlPIlu+kbEhPo6c/MrUgs0mKP4eCu11lAIUx7XaGZBXL13P+66BSGjroR/a7qtACs+PdRNKtC1iqLUVhvoXcmoyjfjqFAHRWFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770713451; c=relaxed/simple;
	bh=4WjXZMiHTnVMkQXgkBZ1mAa1eCYmZSPkXFVid+2ZXcg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tpYenAWA/pCDLnYdPN/R4at0GjN5/GZgfr0ZeTThFZlOpbZsRT8zWdQSMMcORs/uHc8OxsyXpF+MPQACkafEAuvcu5uFVolj9AZ3BeWrZGiPQfadNqIWgeTSS10/y541gDvjf20KXqRLWMtObqmK2V/aXYXTd1xrKoRnA9VYmNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ej6eOebH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FFoCtRMa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A7Z5r12169318
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 08:50:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cjJsMTqeLmT7yOVgT+k+iOAaAjGP97Qosgb57h/83MY=; b=ej6eOebHBehMnL+O
	tRSqgZpp5slX52wC2Bwe59eGM/RqtJ4wmx6/k0E4Kboz+XhzWg7If0MggxAqG1JC
	cx8dcRf1qPeDy7zSdB6DiJm2zhr9iQtIAJKwS+G6F79YcEjFFii0U98tCi5PZ3gs
	+6E+oSBLB6E8OLRRaFK4YYahON6d2RoZ0LEx8UakunX51/khI1AOLjGgMTq6OhgD
	Wk4UbzkFNwIi0H8IV9TequRsKCyq8yTA6udSFvcasV+ZtF2mZMORutjaAW2k/C+O
	OZTubJcj8KGPaPFlsw5eDc0LUJwUIWNbvhFsT+SmRMJV2Ofvw1KVizWyyVG5Pvb8
	WaB3Sg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c80drr7w5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 08:50:48 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-89547ddf32bso9746296d6.2
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 00:50:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770713447; x=1771318247; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cjJsMTqeLmT7yOVgT+k+iOAaAjGP97Qosgb57h/83MY=;
        b=FFoCtRMaQHPgKSHGkHGs6s8ALcnDJq+etdnO8jzzRLIMu7jCJ6AmteOosp07AtuaNS
         6nRbZ2iXsnFb6X4bMj21a9IeTct1p452tIbPhkw0FGM52McIw8xX6o7q510yRj6C8knP
         KLb2f/WSKaO2Jl7B6SJUVKoQCng6tCFe20L+MOWOWsDp9Gn4O1di1shC0ifSmYzYcP5O
         KxA2aip7g2zOTdRi0DHa+KyUI+LqUnB6hGdpyHIi3TRrh41r979EAA+fMFUEkoWpxySH
         RXS3c48MGWErA5AR1D/i2txCoPQHTYpZFWjpXwyXW7QEbd8vv3K6OusBBOhyPeOUAC87
         UCvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770713447; x=1771318247;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cjJsMTqeLmT7yOVgT+k+iOAaAjGP97Qosgb57h/83MY=;
        b=NHxgtSB7JHmhSOmcq1nj4+ZOdPgVAZP4lrjxM5/EA/HNzyEd0EbIRsyvsM6nm6Kis0
         VEaHq9ccSr+QI8bpfKKrX6H7afFseOgcAfApyV2OPtRPCDyt9gLgfT2FiWswTpi9UkRz
         TN0Fffx+3FGfoBYDRC2j2Z0szkWgwEhU6en/SVIFipQsSsT7Ks6Z6uRG4iGLOi3eVkXe
         lipMOljX2v3p+fSer/wcokzsfvJou+amRCyA45wWknZ7Qgf3O1FtsGlMiNplWf6mPEKr
         ke3kj4XnDICBzRBPaAZz5H0D9Hn8L0iSHd0o0yC3abx2CpBlVeFft4r8WFUGxjl5wMRP
         fuIA==
X-Forwarded-Encrypted: i=1; AJvYcCXVkswC3bMIzIkl4laAL+4F+DQeqAWrNW1KtA/bd6WsWtddh3V+2ZaCcral+TFU8vVovJ2Xqpxcp1KA@vger.kernel.org
X-Gm-Message-State: AOJu0YxdjCS41GftdyxAZd7HOTXSBJU4Bc0cNGuurehpyACpII1wQ5as
	OAOBAXTVcIUk5Hi+4nDk6bhZ6IOMOLeH+j2HA67Nlnv9lF86KEMXeWCyCdfCGsywlYPyBepFRMz
	N4irH2Vz0ZzgRzUo4uEwQN2HzlnYMrh91ZvPJ7dVrMSs4WTNi+m20lPxVaEkvuxuV
X-Gm-Gg: AZuq6aKJOPRAsehwkhBORJYWG2G/x5385+/LFwTmf28QpZ2ZxoCXudQXKQuh2GwHT9o
	n+MA1E37312j5t2+rjx507xzx2wFmpzy7nFOXgPCj2UkV3oW4LJZR6nIpSPf3djFvXKRO3dlCqr
	XhJc4j5K6o15jTaquFpjj/Fg4ZDzfuMDaSimlJpuIQ0FOGtIi4ZOJTDdh1Ege0w9nBGCxFVrfFb
	b99levjIPfPL2/KvFrlW6lLinAHZ6zJGg4mNs0e06mwjo15rJlMzjGNcjCzhBhIiM5V/F5qllRI
	vocOoO+1lRrhIQw67e/xUMX/xXv8eH/XI9sok0E6R8zZXWSRFIkm7Pn9yrQVfC9yuBgHKUQCfk4
	2RYeCNoM1DZ6qBSCJj3iuwas7kIwroMVznuWqO4L88p1dS3sel+RDm4o3J5lTy8Fo/Y6+/jIjJw
	OvEFA=
X-Received: by 2002:a05:6214:800c:b0:897:1e9:578c with SMTP id 6a1803df08f44-8970fe8c040mr7321106d6.4.1770713447511;
        Tue, 10 Feb 2026 00:50:47 -0800 (PST)
X-Received: by 2002:a05:6214:800c:b0:897:1e9:578c with SMTP id 6a1803df08f44-8970fe8c040mr7320966d6.4.1770713447197;
        Tue, 10 Feb 2026 00:50:47 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65983ec70fdsm3520525a12.15.2026.02.10.00.50.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 00:50:46 -0800 (PST)
Message-ID: <0003915e-26ee-4f8c-bb5d-f4823b88a2aa@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 09:50:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8550: Add tz-log node
To: Rob Herring <robh@kernel.org>
Cc: webgeek1234@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Kumar Sharma <quic_vksharma@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Lei Chen <quic_chenlei@quicinc.com>
References: <20260129-sm8550-abl-dtbo-v1-0-abca3be14024@gmail.com>
 <20260129-sm8550-abl-dtbo-v1-2-abca3be14024@gmail.com>
 <eef70e37-3841-47f3-a436-13e18c157176@oss.qualcomm.com>
 <20260209170714.GB1401643-robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260209170714.GB1401643-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA3MyBTYWx0ZWRfX2SJGvLOhxo4y
 bAks5MSGUYkdrIYhRKsIqRPuvrB/OPs1SDdPvlCFcBsROj7qNtyrLU0HNSuUtakvPL704qIqmdq
 Fs8iU30l5MWzPYAYN5fN1s2nSy4zMNxjFToIMofYgFYEcWYVc36csHCbBsAafVzCIoaL/2EURN8
 OZtQXTQjoPS/UsyB9PQ1ZrCcybZ0/4BjsI5qz7XQmr7qPGEfsAiuTbse10SMhfwoRquxrCQ/vdr
 msPhmhYEK5FmG5Crd8XnWoWV05pEdcpbGj2jRlv7XD1TrKejtwM1GMnY5dJQJUhu6ZSqE5cBZ+u
 WtISNlazuaty3miAwk69AAj3ZkXJFOesOfMJR5emmFgKkr4YaQFiKxsP/tW0aSOCtu+K81f/eL5
 OfItxtRVJuEqjGWASjwXFy5K3r2oBt3Keln+fBCz+a+QC63KpLzAUpMyOoDg5GxB7w6ZXWPBp/B
 fI4KauBvbrnLCqCeZ0Q==
X-Authority-Analysis: v=2.4 cv=fd+gCkQF c=1 sm=1 tr=0 ts=698af168 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=COk6AnOGAAAA:8 a=pGLkceISAAAA:8 a=CXT_SgqONjOjVZ5XLaYA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: fs3G9QPKA-RGawOULjTr4UoEFX5PnSNZ
X-Proofpoint-GUID: fs3G9QPKA-RGawOULjTr4UoEFX5PnSNZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 bulkscore=0 lowpriorityscore=0 spamscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100073
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,quicinc.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264273-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3770211866A
X-Rspamd-Action: no action

On 2/9/26 6:07 PM, Rob Herring wrote:
> On Fri, Jan 30, 2026 at 11:59:15AM +0100, Konrad Dybcio wrote:
>> On 1/29/26 8:46 AM, Aaron Kling via B4 Relay wrote:
>>> From: Lei Chen <quic_chenlei@quicinc.com>
>>>
>>> Add DT node to enable tz-log driver.
>>>
>>> Signed-off-by: Lei Chen <quic_chenlei@quicinc.com>
>>> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
>>> ---
>>
>> It's nice that you preserved the original authorship.
>>
>> Please extend the rather lackluster commit message to explain the
>> "why", which is notably different from the original downstream
>> addition, since your goal here is to mainly appease a grumpy
>> bootloader.
> 
> Humm, that's certainly good to know. Though I don't think it will help 
> the case for this binding.

FYI I'm not really interested in having *that* binding upstream, the
patch contributor first believed that it'd be necessary for the
bootloader to consume it (refusing to boot otherwise), but as we figured
out in another branch of this(?) thread, simply a label was enough

Konrad

