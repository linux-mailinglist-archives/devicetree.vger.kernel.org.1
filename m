Return-Path: <devicetree+bounces-276704-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDY+FixauWlpBwIAu9opvQ
	(envelope-from <devicetree+bounces-276704-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 14:42:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BB52AB194
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 14:42:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D5DD30E084C
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 13:40:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C20962C21C2;
	Tue, 17 Mar 2026 13:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VzrliR7z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="chPpQy7m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC7382BCF5D
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 13:39:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773754801; cv=none; b=O8lg2LnaygqXNHVvmGiuFjy611uZnfYSmWKyxbFGPssgYHbN3EMDEQh/Q4BW+TWFsMx5QHDY9+OpLu9H2H5bqrFKjD4YIBy5KQ+bWleh1RVdyXs/JpcarkHrbOaedZ3OdnhSdtXkoVpyHkbUVfMfK/vUT47Qcvc7I1/8BBfGNJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773754801; c=relaxed/simple;
	bh=HunAAgOjoR0JoAyZG9x2HT69RJ/eMoGtrBbZjFlQxe0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KJ1Ky/QF6b9mooXqMq8Vib9CXuUA4ksgtW1ywxD4N37HOd1OmwZpOddkxgsS4uqspK3YK0V5xkYlCMe2r4yIxJ6/4PmNGDvelIJHaf8q4Q2BMxKkb+VDyFjnhmlsHpFvOHTzIBte/06wKlLJdffHCCisoeVF14uWGlYcvaxAzhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VzrliR7z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=chPpQy7m; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HD53PA669823
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 13:39:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nFRMtnZO+13TGvwOg+Z9PNle62EKUwsSYqYDGn5wI1o=; b=VzrliR7zwuWp9n1M
	A22ho/vsmj7IesWHmwG425vIZCcr/FcSlSGb11HXfdUOAufL++f14Ta7Ebp3FVph
	Jcy3Fs+1iCumiRFDd2Pdr6Fb2DXar0cNXQNpBikAfg0WnSJMO5m7TKvv0qEajBzr
	BHEsn0bAdM9Nl8ONOVGD3/p7SW7DIvMxzt+QPlob3meOx0HV9gDXWeO1tHTWH6MI
	czEsmmrMHdyGxyFn+KOZTBfwAGrNkpd/Hlkt5bauKdb+4pFSlRexk+RV+Xjfva1e
	w5qX4m/+PWVjCH2x2stopJGv0W9PDk+GD2Yu034OVOSeeF4iblwrzHT+H7qmYghe
	Mdorew==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy7he04cf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 13:39:58 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd7fc27cf7so462525985a.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 06:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773754798; x=1774359598; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nFRMtnZO+13TGvwOg+Z9PNle62EKUwsSYqYDGn5wI1o=;
        b=chPpQy7mqPX3GtJUQ8bF15ok0SC6hrFsr/Gf6TPxsWQGCBEqE982h7air0wyhn7iTh
         w048kdDQqSwei2joLOAxg+bCz+R8bvCdd6T8/1cLPJ2R2XVrudwFQRxAKe/HJj79VYQX
         e6YPn3zGcqdfTRW8bNOcjQcZNQrl5Hl8/K1RQew5pXK4aCL3V/9k+Lh1pGSMU29q6A6x
         1F+GN1koYak0254NoQxljPkXLtmHexnh5qRJ4G2vWYUI0LmcVd8hQAWFVvPl+M3LqwIC
         wmV+S7YkXzQ77+8waUi6AS5k7ZxI0h8eFlUsJCQh5hogq5NENFV4XHRiif8nvA0wkbjx
         KbNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773754798; x=1774359598;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nFRMtnZO+13TGvwOg+Z9PNle62EKUwsSYqYDGn5wI1o=;
        b=VzUUS85l1jnnuIz2uXaK76XolAnVP914I9irnzB1rYoGhIMLEZeEUni+KBbTSerYnW
         7IY+l7tL/r/G9xoqIX8RqBv9gB9Cnhp+uuxdLab6JI4eYPvzNyg2oNXwJqi4WvcdJj2u
         OaPNF7y+9ZyH+Q2G7um9Hng9rlBidB1IZ39BBPWw+RRHkBbtLQUG0OPTxt5U79hV9jmy
         tDiRKfiXJy1Zl2NEdEMMRTKvvw2e+g6SxRkpkxbz2gnv6LImgSUhmv1YRpwIsW3s+F7S
         MCMx0hbO8QCBquS86ifIC+c6UAA6F+OVUEBOdqWAd+JfEbnNSj7eMnilH0G57Xr07wR/
         i/mA==
X-Forwarded-Encrypted: i=1; AJvYcCXm4ZbiD8NwxiGDz+MrKQDdbi6p9umyFpr0uUcCBz7RWYx1DcMNhxQanM/V5l8HEbFXq9gObiBH1fYB@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ79nmXMQYO+0HYWmcRaD888IgzsQ4nIx4rh9LhXZgbnqJ2fUV
	ei5ipSb6cvtzJbJJuBcqy2qZHY2KNXEa0rB3XYCmz2w1Gk2lsvk+A35PAYieOCr3Ihsbxj3DpBa
	l5oDTwODZ/cMKOaM0HYhUTGjfkvtmw/mJ6AUO4dnvtWDq4xdiR0tUoBzTuZAiYz+7
X-Gm-Gg: ATEYQzxMMuzc/Tw4WviCLfWH6X+f0laNa4JoTO+ew+J9waBfp1PORifLFJRvpAHHXt3
	Ze3WUMcv8sH21pUVE7GasveOoiZkHzVSpg8geISBCSFWPYlPI4W5Dzt9juEDSE6sPbkNQACJW5G
	MWlhcVEDb0GhI4AlQakQ8uSgwJ0DQdkPOkP9McttVMZL8s7zl98yU1INDZ2xRbT9g+s/ReyNYG8
	pO2E/ouvwD3j82XSol8tPpISD0GysN0wvNf6oahKuCvAPd43munA0XWsz9SmlllMSchxXn8VWz3
	bJbv+xf1IfmF6gPLVWCF9Fh9+bgqT0BJYNEHAMBhSPVXfGjH8KQqQk85Ipcr2P4pm9ih6JJT93F
	HnsiW81jYKytlutgxFWdFUzV5Ow3S2E5fMYwoYezAAAM1HV6CrFb+hmeuxmd2OVymbBmhFwJCuP
	3OtkXE3sks
X-Received: by 2002:a05:620a:29d5:b0:8cd:982d:4101 with SMTP id af79cd13be357-8cdb5a6073dmr2130365985a.27.1773754798229;
        Tue, 17 Mar 2026 06:39:58 -0700 (PDT)
X-Received: by 2002:a05:620a:29d5:b0:8cd:982d:4101 with SMTP id af79cd13be357-8cdb5a6073dmr2130358985a.27.1773754797576;
        Tue, 17 Mar 2026 06:39:57 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:67fb:53f6:20ba:ff45? ([2a05:6e02:1041:c10:67fb:53f6:20ba:ff45])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4855777bd37sm189801525e9.3.2026.03.17.06.39.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 06:39:56 -0700 (PDT)
Message-ID: <890bc81d-6bff-4e2c-8514-c22c52ddf767@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 14:39:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V10 3/4] iio: adc: Add support for QCOM PMIC5 Gen3 ADC
To: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        agross@kernel.org, andersson@kernel.org, lumag@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org,
        daniel.lezcano@linaro.org, sboyd@kernel.org, amitk@kernel.org,
        thara.gopinath@gmail.com, lee@kernel.org, rafael@kernel.org,
        subbaraman.narayanamurthy@oss.qualcomm.com,
        david.collins@oss.qualcomm.com, anjelique.melendez@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com, rui.zhang@intel.com,
        lukasz.luba@arm.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        cros-qcom-dts-watchers@chromium.org, quic_kotarake@quicinc.com,
        neil.armstrong@linaro.org, stephan.gerhold@linaro.org,
        Jonathan Cameron <jic23@kernel.org>
References: <20260130115421.2197892-1-jishnu.prakash@oss.qualcomm.com>
 <20260130115421.2197892-4-jishnu.prakash@oss.qualcomm.com>
 <20260131173941.68b8116d@jic23-huawei>
 <6012ad64-3a10-4f05-9f37-f2d0c36df582@oss.qualcomm.com>
 <20260207165638.0ed27302@jic23-huawei>
 <70b77d54-a6ab-426e-a7e1-3e011adad6d4@oss.qualcomm.com>
 <20260223203145.4a4493a7@jic23-huawei>
 <cb11a2d5-fc4a-4956-91b8-95bcf9e7d7d5@oss.qualcomm.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
In-Reply-To: <cb11a2d5-fc4a-4956-91b8-95bcf9e7d7d5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: xUAuPuwa9gVn4-tghRrsBA8zy0twFkWF
X-Proofpoint-ORIG-GUID: xUAuPuwa9gVn4-tghRrsBA8zy0twFkWF
X-Authority-Analysis: v=2.4 cv=QsVTHFyd c=1 sm=1 tr=0 ts=69b959ae cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=VwQbUJbxAAAA:8
 a=0Zxp68U4Wu1vdwFdiBAA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDEyMCBTYWx0ZWRfX0ngMhPbW4DYn
 OjkLveA+LxpExzQ53zPO6NyuBO/DFVj821l14UuUFWOsRjLOuaD+PzFrojapHgAdUSV5e9Vb4TG
 fM8mfw7qGv97o0x31D8GDGFihRP0CisfBMell46jVtVlqN7jEjG0fiAg91qUvCM4yHC9+mX4ujS
 SnFXyzRdKBz1Sm0IO1B+RtKo91l8Beg4VPC0BIdWUpRn0IgYDVbkIUGJ+Pa2/lSGq4Xxsb8ujFw
 ypbHSnOLZM4mdUddrZ54DhnWZoRcunAvSwZLTL5n28IMLiW1pQ0EW1aXZjvIJj91ecAk0h/rzCK
 EJCBH3BSzUShh68O7+p/wz0O9LUCSNqlEuB19gq4mka9sTWP/qz3bsH8jqoaJ61ew5ouXiAg1IS
 0ELhHiw+fT45qXsco0sl6FXQCi5OFw1TDQYvQeWyBxRVdKxzohkPeDMPaM0RSFXSr9ytsUMIlps
 TfPzBJA9PxM4kkKpKQA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 spamscore=0 adultscore=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170120
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,linaro.org,gmail.com,intel.com,arm.com,vger.kernel.org,chromium.org,quicinc.com];
	TAGGED_FROM(0.00)[bounces-276704-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel.lezcano@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C2BB52AB194
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/17/26 14:33, Jishnu Prakash wrote:
> Hi Daniel,

[ ... ]

>> Sure.  Immutable branch created. However, I'd suggest the thermal folk don't
>> pick this up until it's had a little soak time. Today I've pushed it out for
>> 0-day to have a look (as part of the testing branch of iio.git). Once those
>> results come in I'll push it out as togreg and linux-next will pick it up.
>>
>> https://web.git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git/log/?h=ib-iio-thermal-qcom-pmic5
>> https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git  ib-iio-thermal-qcom-pmic5
>>
> 
> Jonathan has picked patches 1-3 of this series in an immutable branch and I see
> they are also present in linux-next now. Is it possible for you to pick
> patch 4 into the thermal tree?


Yes, sure. Let me have a look before

Thanks

   -- Daniel

