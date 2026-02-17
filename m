Return-Path: <devicetree+bounces-266070-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APcIHgdHlGn0BwIAu9opvQ
	(envelope-from <devicetree+bounces-266070-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 11:46:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF88114AFAB
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 11:46:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F323301324F
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:46:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76F4C329378;
	Tue, 17 Feb 2026 10:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eHhjmzeC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VzgvGCDE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638543246EB
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771325184; cv=none; b=hJVWTzVyXJVS4Qq1/HXKkksW3vrL55myIArilyqQvJRbfepx1QLCLHv+PWD/mL/HNm3+XdOmCPDdfJGXxkXxtso33KEC4RhQDCRTPWMZhugPZms1/IlqZ7I7tm8KOxHl0aqmQYruXtseVhDbncYqctapFNGhgSfZdeEpkersRFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771325184; c=relaxed/simple;
	bh=jNNNSpSavLAw2Edqek37HMMRidSoE99rzshxSMThkKg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M7jJVgDqNGm6Mc/9u1XjI80JFSj8HWFhJi8diu57qdq8RNj//ImILQZriP2H0Z80tvf27GXPc8cOuBxTE5U99VzighNiGwdVLwkz/DWuRylgEpHVp+yug/jmQ7ZLCPsXmyYIzqUi29GKZkatqycvyNQp8tNbJfIvF2ReWgr1jqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eHhjmzeC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VzgvGCDE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H7SDSx3394685
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:46:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5FpNV6XCA1S1higqYLPgsYcRxYkRZ8AWy+zYYaa3o5Y=; b=eHhjmzeCm4ReGWnU
	m5txviOSdvx5q5OF9tbzBxM59mG7Xi89YZhfuLcs5V0Zv804dvO2lgs1OPxx8vpx
	1WO0Gz01O0R71t8eLui3i+zWZNnU+6gutlLO2eRorR0M0/XxbvkJBNgyBeS9kQvC
	Bo2Ns4ad5AQe96QB7aVIFvmLoAx6UKM7uSitI9ABLNBEeIWy0pv6I4InADOz3b6R
	3ASRj097G+btQxJRIE/NbUEfuEFfi6l3H9/IdFjVVO1w9AGx1HwZj4cjAGWthvC9
	Nlz6jcVnkWLauvUaQmUoEQ8rRpDJGyVSefaugg1jcGC9Ui3klRA480YyfvO/+lRe
	oB28UA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc5kha6jy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:46:22 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-89496f5086dso33833626d6.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 02:46:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771325182; x=1771929982; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5FpNV6XCA1S1higqYLPgsYcRxYkRZ8AWy+zYYaa3o5Y=;
        b=VzgvGCDET56SvbNEssnoY4bTQhL6o8UD25qkIqUiJU6JJIR8Wrdg0VPVWTqZWC1JHY
         VBMLaphF2q60MMB5K71uGRiH6MXxc42m2fYDqhgeix/fp3QAr9PZXmPX9O8HWazfDTPN
         0UfSnmhzB72veBRSHxB5zLb1mu0XSGqEUgUFsMpvcwEzPqclZEUaW2CjkL+n2G2ue/Fp
         f6lhSCc5mKIQeHVCcECfVObEQjAdWyuM2EEWW8WXFVaGZUDeChikYWIRAGBY73et2/tx
         z7hIiZtjDKFBkkGDvpmjpDC0MPbIxLtzSUItfIfEtMjjf+axZn6220QvrwLTfYp73smD
         JddA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771325182; x=1771929982;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5FpNV6XCA1S1higqYLPgsYcRxYkRZ8AWy+zYYaa3o5Y=;
        b=bL1PhNCK3AHBFXSGJvBJEgSTIe7nxgjQFy2Vj2enIkfLH9IMT85VzKlWGu9rHuoq+W
         vVGqED2XS7bHO4In2wrN5a0P65vo8qyga4F63E7e3jnxUwkY+yFu7Pak+QF/JNknIdX3
         w6nrvmZai8uvAZt8c+AC/V8yy20JJ4xwhA4GEcVSSbU8DhgxYQRhIJ5FwaY7rcsNb/AE
         57j54HzB1lyzdc9TCkPQjiGUoPaKmhMNk9XgOW2O7RyA2HTiv6dpM0kDnCSIjTf7Yy19
         5wxAiwMqLxwuKZJ2ZQbsOTU62SMOlMQt5Y7HP34qOb/FXdYatEJRh5FOdB9kdjbUBcME
         2mxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqWQtVV5cvPkWtL+oFfY4dJ7sanBDTOasAQ93SPJBjhI5f9pjJwD8ByHSCgtPw0zm1Il/YnswpDHZ/@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4YDc5+3IwQD34DQ97KTLPOb3FML3EWVQ0plGgeYFaSInoDNkX
	ZXlIUArG6DC/14tA06Fo/xBCnyuFgGzy5qFtJyTgvHuWCcM8ll5rUpl4D0t39XHq36DmYq5u+ba
	xLYkK4gD40Gv3wbufWAToCQiJ4ez6Ojr4ihIOrbAO3/cVWkdRjxiqy2fOscNPJLWm
X-Gm-Gg: AZuq6aJdvcsxMVCTj8sCcapnjOEslNmQsV/817MLGRkBvCMzfJ5BcTEKF9ikYqF0/s/
	8/3v/kGs5LHreDzOmOqThB/tBavNSvISSe3n27fvyF97X1V7BJf2WwlLLH5EjP0lx522Lr9koG5
	lsBMcw0J1+Wo27JFPpvsanCPT81djSfJzsE8r3FElBbk3fVJwxpO8EGTNw3bjf9OzZ6VJYhNeXR
	PSLHbPsKpf4PC9dJGUyVuogjDFACxslgzA37XG5U4IdSyN4d5uZrFav6c5yyy/+UuJJRI0w71LC
	9QvqcOfU79gkVrvqwiCEIQpiTlr+ACwJflL1nH39+uMQHuwUkNCLW5XI1vRKHnUilFzlWU9+8VB
	6Jz/VcB/gQP8UWdXLzzP0yAG39HKp0DInLGesmZizk2ig4nIzGT4J1jElLKbD/E5pzBRpMzduKC
	k31Ls=
X-Received: by 2002:a05:620a:29d1:b0:8c9:fefa:89d5 with SMTP id af79cd13be357-8cb409141eamr1287147185a.10.1771325181693;
        Tue, 17 Feb 2026 02:46:21 -0800 (PST)
X-Received: by 2002:a05:620a:29d1:b0:8c9:fefa:89d5 with SMTP id af79cd13be357-8cb409141eamr1287145585a.10.1771325181258;
        Tue, 17 Feb 2026 02:46:21 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc763810asm331014666b.43.2026.02.17.02.46.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 02:46:20 -0800 (PST)
Message-ID: <8d334226-b8a3-4e22-9257-e6aa60fe2d47@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 11:46:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sc7280: Drop aggre{1,2}_noc QOS
 clocks on Herobrine
To: Brian Norris <briannorris@chromium.org>
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aWBM5zl1kgvCZdnV@google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Coyys34D c=1 sm=1 tr=0 ts=699446fe cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=7b-pOLRzx534oEWhaUcA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: gpf_gwmG4qmpprzCUDDWLw9A-Zl2JNKK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA4OSBTYWx0ZWRfX1dD/JhSx7wNR
 zLre+9j9EPgM+OzqMQnlhKLa4/sBzHCfQii49W5HMgxVHF0x1jD5G3IHWDwF1MrjLl0xBW1mKnf
 rZQe6wA3nJFUEYxg/JP21CYG38NemPGpfcLHSvqjQayXT0OXTnTBGOezBgMUeFNZkuz7iwjpVbk
 a7a0eGSBIP7X5R1ZMpXkg4PaxNiBfK8JAZ4uHULc2HJLMCbn8roURe/IIFdF7GrvHi0fFZP/itG
 m3WzinTTKHWBUjwerddcOAzMqH4pka5lf2FHBND0eNwA2K4JZzder+eE6ywdYmfWpzkJbW0H+ib
 U3HI0Y6ZqgRtFVX9j6D8ESOBkG1tUMjiWxB930B5sHCO1F36e77ec2W4qgX3XzL+1hSCROmqOiP
 RGgSQB+bK4bzLynF7axeJKmkjleVRcn7q6KemWlK20DQtkI7a6aP+Zf1wCG8l1ZN/tuddZ+4xmP
 eLK66s3b1+X0wJaO1sw==
X-Proofpoint-ORIG-GUID: gpf_gwmG4qmpprzCUDDWLw9A-Zl2JNKK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 impostorscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170089
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266070-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CF88114AFAB
X-Rspamd-Action: no action

On 1/9/26 1:33 AM, Brian Norris wrote:
> Hi Konrad,
> 
> On Fri, Sep 12, 2025 at 12:37:29PM -0700, Brian Norris wrote:
>> On Fri, Sep 12, 2025 at 03:10:16PM +0200, Konrad Dybcio wrote:
>>> As I attempt to find a board that would boot with your sw stack,
>>> could I ask you to check if commenting any of the three writes in
>>>
>>> drivers/interconnect/qcom/icc-rpmh.c : qcom_icc_set_qos()
>>>
>>> specifically causes the crash?
>>>
>>> FWIW they're supposed to be independent so you don't have to test
>>> all possible combinations
>>
>> It seems as if any one of them will cause the crash. I had to comment
>> out all 3 to avoid crashing.
> 
> I'm curious if you had any follow-up here. Are you still looking for an
> alternative to this patch?

Sorry Brian, it seems like all the "ready to grab" firmware image links
for this platform are dead where I would normally look, which prevented
me from being able to poke at this..

Would there happen to be another place where I can grab them from,
perhaps some CrOS CI?

Konrad

