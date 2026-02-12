Return-Path: <devicetree+bounces-265139-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Bk7O8cAjmnR+QAAu9opvQ
	(envelope-from <devicetree+bounces-265139-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:33:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F12412F799
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:33:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4233A306A519
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC87835502A;
	Thu, 12 Feb 2026 16:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MCg/guu6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eJ/2VvWM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA573382F7
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 16:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770913776; cv=none; b=ngDFir5F15JOK1hZxFZ44alr9S2mAoGwchA/1xt94UtwbpKr4GrO7tkMKM4ca1rYgy1Rc2oeM6SKKJcKvvlHyJpDOksFQNxEBt3Va3Ic/OJn5IA7P0kh2+M/KL7NNLNUtmXbM7dlWV+3IRg7rU0hxhLvDAOsZWiDap6CHXmZjM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770913776; c=relaxed/simple;
	bh=vLzdA6zHgbkjuHo9/O+CYEw4Gh+QVxCX4cEaXRw+6yA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cECfxe1QIRI5D8c4/F1K3GDXQuYLxhTAsW4QczVBBAnRQHVEpd8gLOepmpbC142x+OJVMkrOO1/BoysHpgdWnPev1tJZlhBqL4ZZ1o+hnhIH1XS/CpJOOb0yAiEvprg9hsLetC3R51eBpxpqBbdjXNDFcLbWKvGC2zw2PLTaZjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MCg/guu6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eJ/2VvWM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CDcuQL4055019
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 16:29:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rNIKed/0hHSPSELQo7Pa80a3MofyYycCRa4/m8vYlws=; b=MCg/guu6KTYk+1ZC
	cGxzw7P7ojcYcSRvK6UiAoPkuvO/KCa+Rh+Oz2JQo9m+XTxZ1OUDsNP7dhydxDCh
	ohz7clJeiKOLlkqFbqBBnAzbULVtW7D/Ra5W12DW2QK1yleQcNu4gQIa4DTOsIo/
	gqPxECywHYbJuSMw+kM8ubbNv+dJxhAksJO3W8nJgdvr2gGAQkcXGlKiRFd4Mpaz
	KY5XRtPhA6qjEr9S7q4hhswFwIbscl9Wh6Yg3oGl2hgNzH7J0s7ZO5J293wVMpc9
	Ck8K8L9k5e9gNjxyIwC0PfBMGXPqGsCSyxDx+cr9wdWkCb7+8OwhFZiPm4synpqZ
	mhZ/Qw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9ck2had7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 16:29:34 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70cb31bcdso1248285a.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:29:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770913774; x=1771518574; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rNIKed/0hHSPSELQo7Pa80a3MofyYycCRa4/m8vYlws=;
        b=eJ/2VvWMiYoU+/zIr+nRbQLsXO/yiN578pWRPx47jQZ+xrfySSlw0ZQM7o1UI+jjtS
         hxbvWTGTtmGlUmib9j86dVUoYaYhFHljsxr/Hlu0pDyPCSm6nBiLMgDNU/exrHMiJVfV
         4gpGF6v1+7W3WrJimQ4fiQEgDuE42QKOj9KX6/kNVyIUDNwGGj3j8dbobbs0RcyNxA9n
         IZangCpniowqIryvNcsmcTJjjiEji3mlbFf1J/ImDlwMYGTMIkiYVeFioN0VYXnu0U/E
         trLFh4pu+2BlvWmbav50wnTndKaww+IuGKd/sg7sRLmWoSc0pCZV/IQwr9cRKmiH5ew7
         8ACA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770913774; x=1771518574;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rNIKed/0hHSPSELQo7Pa80a3MofyYycCRa4/m8vYlws=;
        b=FJ+o1ATYqzKGJnN1mK9KgH5yL7QGQ1oNZp7czcZwxxKbCrvArLpgV5lGZQeJ1bGG4a
         Er/B/58Wc3kp68cuCab4OzsNURuM6DNsrpHFLh/Kpot1Z1aLwrTbdjNR9c5m/YuTSjit
         0RRpRQweoIb110VdU/jm0/wtkKeaKc20LCCgX2Jx/+FZu/VgRE4iJC8a4fxhgrQad+wf
         /Bk92de+48p5hLZobE7dkuswoOKOVFHmzHrAaW2r0XrjqzYn1vAl573czx7nLl1k7S3G
         L4R4sJSltbuusW+363ZXvThh8UsurSHOgM2+ctkTa4YfeJDTzJ7X3sn6llFNO0cj197v
         faQg==
X-Forwarded-Encrypted: i=1; AJvYcCXyxGTwyQCbcMe9xZKRXb7jWTA5bto0GvpnhB1wD6iBgO+X4YUJi+bZzM+Etax3rwMu9An66FYh4NA3@vger.kernel.org
X-Gm-Message-State: AOJu0YwsMyId5C7cSyY3ESjTptnEnXpwIs5c1CUrAlj9satZnxzWs3Jt
	B58Vuc5c7UntuToglHGwAPMP8FeL0Ogiv+eBgm5YWFDyk6rxCBtYTM+wJYQ+uk3ewTDmnrc/7JT
	iNO7XUTrSRFkvIcE85YGwt3bigY6NQ5fxaqAoBKAdHTbQoxOFV85G3TDYzrl3tXkl
X-Gm-Gg: AZuq6aIY70aHrv5HtNfR+6ZtbuI5DzucAvCA15wsJ9YX4Aizuh2Z69M04lx8SPTx/wd
	vihSg0lDUjk8t82SVH7CPHts/B+5X1mSXfkNjgjQ4gQZWjVzImxxtZ2QYAYHVphF1Ju0/g1zj1/
	OPuSJOGbNca1xTrFlH8ERuB6Q1xOgF4romqwfQ9cmv/Tc5FjW9tfyU0xshIqKhZKl92va0/8hqo
	C5wH82zFI7WmfXJjeQ4k/WbPRfy4p1y0NgYpH9tJkrJ4BZeT4zUm6DwxpNBjXx/0uTZLgiCshwx
	w7QaJGbYGzoNg6GmbUgzour5IrWU69myZCDEIkSCutiSzKTgN5F9Xth+9M7lQbNDYvqCejOQjZJ
	k6FCzWEw0HIARp1Y5tkrLwK6e+n+0FxLSQUTIH3RTWS7vFCWkGL+47yfDn/WdzwiE2IbDkVi71V
	1yHEs=
X-Received: by 2002:a05:620a:5795:b0:8cb:3f84:6e62 with SMTP id af79cd13be357-8cb3f847056mr12571885a.3.1770913773669;
        Thu, 12 Feb 2026 08:29:33 -0800 (PST)
X-Received: by 2002:a05:620a:5795:b0:8cb:3f84:6e62 with SMTP id af79cd13be357-8cb3f847056mr12569485a.3.1770913773226;
        Thu, 12 Feb 2026 08:29:33 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65a3ceb13casm1892752a12.6.2026.02.12.08.29.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 08:29:31 -0800 (PST)
Message-ID: <af15dfbc-806e-4731-a7a3-6832a781154e@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 17:29:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: qcom: monaco-evk: Add Mezzanine
To: Umang Chheda <umang.chheda@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, richardcochran@gmail.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mohd.anwar@oss.qualcomm.com,
        krishna.chundru@oss.qualcomm.com, monish.chunara@oss.qualcomm.com
References: <20260210103821.4169-1-umang.chheda@oss.qualcomm.com>
 <20260210103821.4169-2-umang.chheda@oss.qualcomm.com>
 <957d7896-cd01-4864-bf07-e6dbdfff1273@oss.qualcomm.com>
 <2d688258-2e2a-4a86-aa98-eca31627d418@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <2d688258-2e2a-4a86-aa98-eca31627d418@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=cd7fb3DM c=1 sm=1 tr=0 ts=698dffee cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=yyGGvlRu5vKdtQ4bmygA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDEyNSBTYWx0ZWRfX67rHRhLxRYI9
 O1LQauJnBvI+H39Dl2FLVJjrQDpRFNXO2YOmjdd6iZw1lQlgo/clo2UGwi7ol+5/bSoxYSPTv5p
 GZmeFw5Y+bTemFQI/LwW/Twne9ZfcnzjDnhxnIfbjbsbdC0TU06ykBzcjKj/PVsalE/94+Pici9
 sPCh/juomar3xAkCd9+Alh/EW2FklAg/iM69loKATM3eF1rcQEoPwTGyRTeyF8J4cFG/T9NtR4Z
 Bvk8RshGQt7IIbfZQIQ3QmmY0qSbc8MThqvcTqesYJYa4yWea3Kvk7DDHm4WZFGHyhc0gd9ftft
 BdtxnmFLQcHw7Qs90uRpLNu8/MPDtM7TI7IfFP/PsV5egUTYoA2Qr0gVNc4d8d7IqDi1T8GVye9
 g4D3SiuIjbbyTMJDR/U0nKqqc9m60T6aozKZY3Vs0N5/GyM9IcnbNR2h3Gf+n8hfFpf5nsKvUDE
 UtxUh2+y1/yoTztv2GA==
X-Proofpoint-GUID: cIf1jSBWBb8Zp49R-8eFVCpsNyT9GO09
X-Proofpoint-ORIG-GUID: cIf1jSBWBb8Zp49R-8eFVCpsNyT9GO09
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_04,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602120125
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265139-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5F12412F799
X-Rspamd-Action: no action

On 2/12/26 4:50 PM, Umang Chheda wrote:
> Hi Konrad,
> 
> On 2/12/2026 7:10 PM, Konrad Dybcio wrote:
>> On 2/10/26 11:38 AM, Umang Chheda wrote:
>>> The Mezzanine is an hardware expansion add-on board designed
>> There's normally multiple mezzanine boards (e.g. a "vision mezzanine"),
>> is there a better name for it?
> 
> Does, Interface Plus (IFP) Mezz sounds good ?

I don't know, does it stay Interface Plus on the silkscreen or similar?

Konrad

