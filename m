Return-Path: <devicetree+bounces-270403-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0C9wCBuypmn9SgAAu9opvQ
	(envelope-from <devicetree+bounces-270403-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:04:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5EB1EC471
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:04:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 93386302D951
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 10:01:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0FD7390200;
	Tue,  3 Mar 2026 10:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fjG2bt7/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y+nFNjfq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF5332D441
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 10:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772532112; cv=none; b=soXE/KrgL17Y1G+P5bZtDVr2+5Ec8LOkY66ym4EfaNlkVSGyNLg00NngYN9JJdscrjDL12cfRKlWNqW4upcuuNb2sJek0nNJYPsmaiiOXzxo91+7oA1Uvim4kY88eyoLy5iCVxXCKNQ3kMdrzJNHEA/Zk2oF+4UBw+SFp63NR5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772532112; c=relaxed/simple;
	bh=ZFqrnGKk0tnO6TBQUohBuHfE9eyT+0KRooBfFamK1ow=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hnhAtevqUcYUf+QABeH55kDrGE5Uqx9SF5fPLZ7aj3jrdvyv3+cCudNPdAsXQWrvag0+EKEyETYmSeoz9yxf2ur/sGYvw3OmP20FJBut5brg7JEm8bYJG0XLZjWldyccRpiclVXsxpTf2oWasdzok/xU4TYvas3p7kEtN13+NWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fjG2bt7/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Y+nFNjfq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239mh1Y3951779
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 10:01:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dv6VNShe8vuehPuHtL4Udtm22Se94y1co3llD4z7Kj0=; b=fjG2bt7/RQe8xcBh
	ILEyB0p2hKz2SyRcE2ZhhRF3KgFJd65MWvsKPTV6EhTIMoOU81JYyPTNVzoLFiQ2
	ZmTXshfCDFx66Z9IW2PSu5Zzdcd2v4vSOPNJ5De1R/Bo7JJTyIJOMAeLFocn1rM1
	ahFLDmZIrk7Y3ELk2hDCvgcUprsfaOGYSeBOrnTnXPdmGxwtflhJjSWJkK2bKyO5
	24T5arpcD4i7Vqv+7VqWMhjpQ76r0OisVHVzByeJg3d/ojN1aTEN5FO6SBFy+Vss
	QspNHNuaLuMRw31MJAAMk/GKOjiRRuoATPGrzF/mZkwvMDxx3MSQN1/vfrrdwO1c
	nYkJLQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnu3n8jaj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 10:01:50 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c710279d57so451469885a.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 02:01:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772532110; x=1773136910; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dv6VNShe8vuehPuHtL4Udtm22Se94y1co3llD4z7Kj0=;
        b=Y+nFNjfqYjh3zEFtA41me1bIEplLxmwr1sfK14McmjzBTxdXupWW4jbzg3I4xvtVCr
         WNli0DWYx4vIzDiiTuRSpBY+ayOd2hmfN+V1S1Q51H3Dcn1HfX+rtDRqEpONKe2iEHyQ
         EbPjbzWT9IQtfjqA39FHIsGN19nLvvV9DpsBlTqKlXLQG3JoBH+9pQ9jJA26Rz4MzvWa
         1/jnTiihN7ch6WY+tgtPyzx24Pp5JBsItMCVxe6YXVOR0dLPGArAJ7gEliBqC8o8XG4f
         oFKawIgYrq9NSO0npu5mYh5Sc1w0U3l9d5kpez9t7KLqrpXd4CZj2bK2LlKhlPAv1Qfg
         OQ2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772532110; x=1773136910;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dv6VNShe8vuehPuHtL4Udtm22Se94y1co3llD4z7Kj0=;
        b=ptkALx989C/+12bIKtW3hsWW3MRz9iIdfUkd6T/wz3pr4tchVsEJTPzrVhRmaKSnja
         TBPqhyoouR3oipBClhInlrETQWCgDZROJhwz1VKgHpVEjBvDZhvEomuHCallm41r9jRO
         6f3YggaIG/gzpVYAjKBCdunBcwAN299p/xD+ULr4c55+gQGYNUa9wswFU0zNAFnKoLKm
         WlbO1VuQieqvKo/6OL5WBgk6dXaBDMrTS8EP5Xebh7O6vHfEJzcqRJrlv3RAsSTts6Pi
         7+UP6EMispaxhMoqwEOzShxsP7jvsspNoIH8kL4RnN8zGfXS7Rzq+YdInFXPzEXdXOul
         kFRg==
X-Forwarded-Encrypted: i=1; AJvYcCWnpnNPLkXn/jawYB652lAWM98HtryjaEC4fCVjvV61gDIpjgcPYoxHpTBDN9ISHfoOVojtio4bAYXP@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5mzh07WSdyisZHeCgvPyxh4B+xezFWHNecx61qNn+NwSKlX/D
	7CH1skMuP+CqjLMdqyLGKWjp2GmntO3NXirAXEYj/gU8GwA7q/snXXOVkTjo0exZkbyKKKYh4d1
	fRnlw4Qd61f8MfHxHQReqjkmGDoV8SxFWbe2H7OFqcHnH775gD86ORuhaq9vGretW
X-Gm-Gg: ATEYQzyeBX+j780ycVFFuns4j54ZZlSGCseqj5XKeselMVxHMO8/Y4ukSY1LsiplbWB
	mFRsHtsB0TCkja8w+fmiBJMe5SuhNRquajZGVH+PcxY9Ugo7pBWhv35O7GEt3wqtr0pBDy7uJrl
	q/7nTypqspxJ6yUzWmj89T1Hj6ofbduy/ufZOxZ4TdIez/GnAEu7OL7oeV/CuYh9m9XWkYMbNxh
	LN0IHgEm1LfrK5H8GnqoBI0bJAwD6hvc5go8bagwQ0YuO9k+eHPwgP8FmFE6bgMAy9iB58kGodf
	m/1tKi0vs3EwTAw994RMfm7xvsuLI1FJwDXwbVYQPYVKPTE2iNzYDyH+imRyZFj/mAIkux/8Fue
	8NDSyLiQMKvyS3VX3R6uQXxGOfypwl9+rZhCa9BB543HrBTjgns3PLI7ikR/mPfdJHx0z68oQIm
	wAMRA=
X-Received: by 2002:a05:620a:4004:b0:8b9:fa81:5282 with SMTP id af79cd13be357-8cbc8e7a050mr1597177485a.3.1772532109744;
        Tue, 03 Mar 2026 02:01:49 -0800 (PST)
X-Received: by 2002:a05:620a:4004:b0:8b9:fa81:5282 with SMTP id af79cd13be357-8cbc8e7a050mr1597173785a.3.1772532109249;
        Tue, 03 Mar 2026 02:01:49 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-660b5df4bf9sm177898a12.29.2026.03.03.02.01.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 02:01:48 -0800 (PST)
Message-ID: <a1984b36-6cf4-4fe7-be38-7b401629b235@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 11:01:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: lemans-evk: Rename vbus
 regulator for Primary USB controller
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260303080728.479557-1-swati.agarwal@oss.qualcomm.com>
 <20260303080728.479557-5-swati.agarwal@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260303080728.479557-5-swati.agarwal@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=JaexbEKV c=1 sm=1 tr=0 ts=69a6b18e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=BN3gxCBQ14Jbxuf07qEA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: BDkMGAVNZoMBUChhpNSqBiwxUj4r7FDU
X-Proofpoint-GUID: BDkMGAVNZoMBUChhpNSqBiwxUj4r7FDU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA3NiBTYWx0ZWRfX+NF+IuyBnBMp
 gvexTKHZC6tk6GuJHaQ7IhpTIlkUY9DjbsQP0NDUeNRMZ3MMO/HqnH8ESaSxVNRrLgRNq/z3OU/
 LF30yqOzEtcKBII0Ha5mq0iQI5RaMN+kJJMe6PxiZv3NnU1nm4340j1vRnAJ9XXg33+N79lGiC4
 q//K544adufLF10BIlSXPDILcveZgLzO125yuKnwrEXSD79UAQJy5i6meuG3CKoYdLL+LVKNvGJ
 Fv+JyGXIvYDsIXX0p+Csg4CtOm7ZrzFrgp27LTDixZYLYUo9nVk7OsNbrpI14fFAI9GE6M9Chkh
 A1YROB9F243M3AyHdmqxCxmxJGtNDcCO38dQ6BkD7ZgaX3n8YgVzuzGbhYL+AMLAsGCqfKCvWh9
 jiVILggmXVbdb+ZM+WuWa855b/u6pHAawwO37OfF5BgpySACCUGMNW5L/fBmoZ8jAIvDzis4XD4
 AIc0w8qSLdpp9VT3HTg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030076
X-Rspamd-Queue-Id: 6F5EB1EC471
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270403-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/3/26 9:07 AM, Swati Agarwal wrote:
> Rename vbus regulator for Primary USB controller as per Lemans EVK
> schematics and in sync with tertiary USB controller vbus regulator name.
> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

