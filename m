Return-Path: <devicetree+bounces-264951-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDXjNoSYjWkt5AAAu9opvQ
	(envelope-from <devicetree+bounces-264951-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:08:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D3E12BBD7
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:08:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E87A93054C95
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:08:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 093FA2DB7A8;
	Thu, 12 Feb 2026 09:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="itir2PcM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Vxcintm0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF21A2D6E78
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770887282; cv=none; b=eUGCBYbi2R9du0ZrN6st6rvHbBzmxjHdBq2Gdh9f0UVPd05KxY72M1Ca3LkZ4ngfpGAjtcgM20Vp5nPs3h78yWKEBq8sFsoEgIsCRdN0BIfJllgtMCQAlzCRkseALT9r8exkA+v16YOW4KeDxN2kzpE5GYUYpHY7kSaaGsl0100=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770887282; c=relaxed/simple;
	bh=QkIlC2c1IrycbIOZYSpNKUjw2hE8NTS/y8gf2m829fQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EeNJ/3OrnVVtxK0CyrtwbNRctJIygkc/K4e+CcxiXaxQiW+bDyHm9jDChDKkyJUtEJxXn7cbYoqMad6dpo/21U6PU8yPnpzyGGQ8awlVBLL4rY25IFUhrwDI2cCtDc5smpIa8J/oMRk7FL715cK9ArTfQnqGytvtfa+AIpaYSp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=itir2PcM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Vxcintm0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61C3RoPX3615837
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:08:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yY+YVjt0peQ43IwlSakYCF9RfkCKpZ2GlunAx/uQ21Y=; b=itir2PcM0dzoSoEk
	NW6TEjvYhCp7mB2lHsur6XmYp9VUfFUIzBwMDMUgaQ8TbcQQPf0yum328ICCZ/Xr
	xMJbVMTvU+1uOzQhSZoVs+6kC5qrkZWsPBoG3PsdhAwWj4j/ct/xP2E0eMFVGEaO
	MGZE1oUx/cNRDI5RurJV5ohmVpYFtLj9sbCUtFCI8s0/ppgMI/ukh3cFn1+2Ohbg
	DNWgYF21vaMn5cYusZTAi8QRGoAXYMT44M5+S5fUpEHxHAUTp+DGs8Vni3TgjZ+n
	YuYeSLXsJdE0DxxbPr7TQSWOgYyXli8qL8LzmFAjUDGEKsBVz59s8EDfXsPXb2jN
	V3EpNw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8ydn271c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:08:01 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb399597fbso4193985a.3
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 01:08:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770887280; x=1771492080; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yY+YVjt0peQ43IwlSakYCF9RfkCKpZ2GlunAx/uQ21Y=;
        b=Vxcintm09ASzxKWlhqN/O+qj35iV4JItLOOCxcOsUd+a8/env+xNAYo2Oj3yvDFI6S
         Q636ES6/DDFa+9txQTFpducKZK/jrqM9XRmXpShPTGVIESwDbq9CN+1T/9/2AyBEBxJ+
         Lw8Xqdult4o3LWyDjWMqzophNPWIfDJhd+8OzdI8e/wJKIhUXuIcNQ4xEprBL6sZ4vIB
         DuLCZh1vKajZXulwhJoxoo/rmPg4qU4/vRiSKB6kSTsZ2O+C/o1Q1C//TP7DQTwQkIpE
         84mrX6yapSTPw3v5c4AXSZ0JaP/Oz6W7X2b00jyKoVtRKogkDjMBZ6GOcIyU6vAZHhCm
         phbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770887280; x=1771492080;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yY+YVjt0peQ43IwlSakYCF9RfkCKpZ2GlunAx/uQ21Y=;
        b=UsXAav/kekAmsFSzoJoph7ucTa1FgPgXLPEkOX1a7fngdJZHvknpkDQ6pJePHSf6CF
         siackWgt4JuQz0WnS7jHDGmQ7hVIy85fEEiAR+WN9zCM4pz4SLwbTaS5Is5I8emxEgpD
         rV2CqtHuzlMyY46tmcIb4o/gmb2mUQJwvHLA5ssz4rmTWXossFDL4hLuHsAYK+R8zC6G
         EbgBsekcILXCKZcOwdUinyo9+P4tHmy0ZCg06UmB0RfZRyTjNstl52lGxlW9yS2F2AZY
         MkY6964SRt36H9GnxG4spsXjmzQnxfDIWA7A+gaKCNGY3IJeoADSg5pcB0P5TG08xikY
         /q7A==
X-Forwarded-Encrypted: i=1; AJvYcCUgY8tz2T12q2pYlvMNtRmdBqJRP+IWAW6u+FF2Kr9pxL2q/mBfutaG4x+4LQSNkBeWC2+Pj+VhdExY@vger.kernel.org
X-Gm-Message-State: AOJu0YxK2TG8Bi0yS4ASj3PZrqCULh1e+PSIi2EfZ8bY6NNA29i4iWwf
	pDP1EMhAluaByeUet5zCfeXrPR/oYfv0NGj4DkjPCUwdGZy7LaxhEj5DbqJddr064Ro3jXq1ish
	9+x6HInUwmjQ88a4qhT1hrBqk849BepWy7mdyMVtifQLEzUKfJ5t3+7i+gouYeAp8
X-Gm-Gg: AZuq6aI6OM57rtNm1Xykm4sknsgpWouguMPNGBBEtS++F7e0bXMUzkh9vuktP6WyRc0
	SF2a/NOSvCKXApuzTWdiV3yEx2EakbyE5hIDrjGLE9LAE6eyqcJmP3pPpvpMQJA5b9YzITtxz/r
	pSyYumufI07MtyNF8sNxt9IoK39bk/TZx4UOio9DT+w8FILz09c2LNQLpDuVqPsOenB9Ze1C0fd
	EpidEgC3RqN+YZ21w6/6mC/9k1qlKbg0bGZpc5ROek1TfHHDGMOFB4o4+i9OPFqQ6S1bra5TKpL
	5g251QYdTrgruS5YIpPKxEXNmtK6zcx/KAD39dMNUzoCfvAS7GB4xMPopljdrDDsDaXqPHD1sNA
	1kEujWnAWmhx+v9prCOC4hdazXrmB6n5pzHfk7PgrKnj0TsuQOtC1B3u9Ub2OwiRIknZVpX7CJW
	IAEnM=
X-Received: by 2002:a05:620a:1aa0:b0:8b2:e177:fb18 with SMTP id af79cd13be357-8cb3315d0f0mr199956885a.9.1770887280074;
        Thu, 12 Feb 2026 01:08:00 -0800 (PST)
X-Received: by 2002:a05:620a:1aa0:b0:8b2:e177:fb18 with SMTP id af79cd13be357-8cb3315d0f0mr199954785a.9.1770887279609;
        Thu, 12 Feb 2026 01:07:59 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8f6ebd976fsm139926866b.34.2026.02.12.01.07.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 01:07:59 -0800 (PST)
Message-ID: <e7e8db84-d30b-4e10-8b5b-926c618579a5@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 10:07:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] pinctrl: qcom: add sdm670 lpi tlmm
To: Richard Acayan <mailingradian@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Linus Walleij
 <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
References: <20260210021109.11906-1-mailingradian@gmail.com>
 <20260210021109.11906-3-mailingradian@gmail.com>
 <5fa188b3-d060-4513-bda3-6608a9bdd7ef@oss.qualcomm.com>
 <aYvOvYPDnAfYUk_w@rdacayan>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aYvOvYPDnAfYUk_w@rdacayan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=NLHYOk6g c=1 sm=1 tr=0 ts=698d9871 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=pGLkceISAAAA:8 a=gj1ucRnNfbViPrpgjTwA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: j1f_jythtIzRqaGFlsd5Rx7NRgvcuwUx
X-Proofpoint-ORIG-GUID: j1f_jythtIzRqaGFlsd5Rx7NRgvcuwUx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA2NiBTYWx0ZWRfX7381UFNpCBAP
 ymt8mCM/Zyyvy7lBEg0z3bQ4aXLRfIrjrFEex53tqHryXO6zdoCIz1zvfP2adFQzpmMLTTMISmw
 b5CiESx7CIyLXV+MNtRZfdbfgVP3lwi5NIgkEPs5AfbqX8Xh5aHjKt/k8JVrykfyC3Xosrizlu7
 96KA248EF2+lIW8g+xPpnqYdCpbWHFPEIyayTmljPw8jZWTUAHi24b1/Sp2MSqpWW2syesXhmsk
 Uz+ikuPlqcn3LbHhfK9nWnpzVXorbEbpc8r/pda9ufgFhjAJSJUsPsPemQGLWlee6Lcyzs/IJ5e
 UDuJic9GQJ77sdQ6tORu9hTfskyX0SyLukYDi40wlnuNaexE1dzBiV9fFK5UGjhR0RZOBYQOtY/
 4ZspImei1eAyLq2QeqmWMRUi8EKK9En5/lNbqohpwg4FYCHr96Rf7I+U2dtqpABCoCBPmW4ZGJd
 PAvDGFByDM59o4Fgo6w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_02,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 phishscore=0 malwarescore=0 spamscore=0 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602120066
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
	TAGGED_FROM(0.00)[bounces-264951-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 57D3E12BBD7
X-Rspamd-Action: no action

On 2/11/26 1:35 AM, Richard Acayan wrote:
> On Tue, Feb 10, 2026 at 10:08:19AM +0100, Konrad Dybcio wrote:
>> On 2/10/26 3:11 AM, Richard Acayan wrote:
>>> The Snapdragon 670 has an Low-Power Island (LPI) TLMM for configuring
>>> pins related to audio. Add the driver for this.
>>>
>>> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
>>> ---

[...]

>>> +	LPI_PINGROUP(12, LPI_NO_SLEW, _, _, _, _),
>>> +	LPI_PINGROUP(13, LPI_NO_SLEW, _, _, _, _),
>>> +	LPI_PINGROUP(14, LPI_NO_SLEW, _, _, _, _),
>>> +	LPI_PINGROUP(15, LPI_NO_SLEW, _, _, _, _),
>>> +	LPI_PINGROUP(16, LPI_NO_SLEW, _, _, _, _),
>>> +	LPI_PINGROUP(17, LPI_NO_SLEW, _, _, _, _),
>>> +
>>> +	LPI_PINGROUP(18, LPI_NO_SLEW, _, pdm_clk, _, _),
>>
>> "slimbus_clk"
> 
> Again, what pinfunc? Is PDM, the protocol between analog and digital
> codec, using the SLIM clock?

Where I suggested other names, they're at the same index as the existing
entries, just that they align better with the documentation I have

Konrad

