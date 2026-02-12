Return-Path: <devicetree+bounces-264949-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6NniBb6XjWkt5AAAu9opvQ
	(envelope-from <devicetree+bounces-264949-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:05:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CA512BB1F
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:05:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6686E3022F58
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 575932C0F68;
	Thu, 12 Feb 2026 09:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fpdrd0Aa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JROHkkhU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AEB221577
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770887098; cv=none; b=E1EuGRMXCyiFjeLP4+/VXYWtwnf/kieDLd8Hw7VnnXVl8BfxF2a13Ywe2OpH58HvtZT8rYw3xRxUwKdqxAD9i/2sKilyJb9yMBIiZcLTPNUmsTTAoWlkfaxteqc5M3CMxK4fA5bhzvQ1ygmlAf8aA+eYbubAa34khyBJmfhi4Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770887098; c=relaxed/simple;
	bh=5sQ2jJqOX1/LwiHPYiKSNdCWIrPuuqX8X6sC8tPtEBM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NR/KPUhPgbtVJ9PRbjpoauiQeh7OxCjY4oD1SaR5Fdg1gBiRaxMIoU6L3kpeFEC9RJvKAmQUnJyPeBzWjB0IExQ6ucnoMLL7BJoieWvFJfNsf0+0qmw24kljOS0cAvZWiAjWLAhZDB2lgSdmhjygVf5MY9wpQdBzjG/lGGExuq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fpdrd0Aa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JROHkkhU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61C3S05h2545213
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:04:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cH9yMO90bndi7L04SC5MFFpMq8JCLTqAqJegxW58Uw0=; b=Fpdrd0AaGKgV+q7n
	7m0IsqPj09meoshC3Pv5zLALQQSyRLqy/s1tDuKBOcAnKuVnrig2zp0WP/cIRTTx
	OKdCJpD4CBgEJHsOB6TU/H5OQJdTLr1H2m0pFd7ixbI47l+o7VnGhY1P5xaEZw1v
	1Qs+RL3KPRa8MTcNDaYT3rZghazdqWGMPf0uxp/WWxcGOHS0YIDhaNbARr8wqenj
	Xki1j4/jPBgdaHx4iVZWzpPDn8HUhVHPTPtQVSxWri4auLSffneQgCyVHRx+837F
	uvHP+peVL04IOj92QPnPp0J7K5VBn+TlUYtYPriQbycM0L01aKin5K5ej2VKp+HR
	2mgSXA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8wtpjn55-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:04:56 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89547ddf32bso17002276d6.2
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 01:04:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770887095; x=1771491895; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cH9yMO90bndi7L04SC5MFFpMq8JCLTqAqJegxW58Uw0=;
        b=JROHkkhUUdpaBMOgem/k10DlZwROuJJnZ7rLv1eaDs4vUg9gdUXxQczGAFSlKFCG8s
         bKiZZNSXju5EGARtgdeBB5LSnDnn1cXyALTWMR1/dg9Yd0lgwX5JeZ5cY1FRAK0Tv/Sr
         b2qiPn1tl8Brh+mUg9MnodlWE+tp1QhCSNERxAzQ5HSmamw2NjFIoOIRT4cYBcXb8Vi8
         jmrlsOrOW8NesA8TXGaehyDOzYtkKsb86ZzYRVcwMkAX56Q/IxohtBcO0Nwso56BOKvC
         aZa7wSgGzCN4tKfJFpSWOm2Dah1CG0TF+Ugm8DZtFLqUCq+gHSRmqVGRthPjy1lIyd5X
         mi0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770887095; x=1771491895;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cH9yMO90bndi7L04SC5MFFpMq8JCLTqAqJegxW58Uw0=;
        b=UqGhuTAhr4XnikaFItc3N3pb98zOJeMxiAdciRMvMF9Ju6j1/uuh60TOPjLMxP6Q05
         HO+pycjBpzCy72SIIH+oLkg/B24pVruSr7+0eL7V+dEioBIlam7+jDHfygnv9vQBApR0
         reuTaXk7bwRciHvA+jHYUUWfVO0PZ0TUxuSwKb1KAbFgJUSq24zqfNtYpY0vlNkmz7dq
         6Ny296sqSVRWeJoCx6O4akeVb13ihloYNLwI+yqth2ko4Vf8gDoEDOXvA+LIDJ5FJ6Vr
         TRl6l12WsVDugDC4Ste7LjNhekG6zafS6zYXfsgC+c80ZM3b834xmHDZ2n+vQ4r9ZSkc
         XzAA==
X-Forwarded-Encrypted: i=1; AJvYcCWFUr31SBPV2x4/LVu8SE/Kb8OOk5DjMmgpM00bW2mq1wdtyXPnZ0nOMjXERMHeFEtPax0yEvuYtacm@vger.kernel.org
X-Gm-Message-State: AOJu0YxNxSJFq+AiWUwE2iCunvt2aDRh8brTxdKUn2k9X3rQujMr5m8V
	a5GfJ9f0o+UmIg5WB3nwTA/FZ45UyYlDvxMYibKPocK9RR0011AXVKtP0Duhv6tGEfPkhlrX5RH
	/+21OsiH20Vv4/H8CGQ27DYxqgnCTgP/zxmH2vDDGOTpVKmo/vf0ktrQIVzolvOHm
X-Gm-Gg: AZuq6aLDqxIxTiNFVlOeu6FVpiR3lf7TQWD4hf5SZWN9UPiY3yxB6S3jAl72Y5mMvbB
	vdc079SsCjgyKyXCSX3q9wjl5tp4N/nvny2b4V9eKXw+02IwXAsyJiJR4cg/qYUtJN3DZMaBOeU
	1zHgStCA7RPMt3biynNrT9B790HWNtPr6foWLUTuf/TMOMVtCdHIkBCH/ScysWw2m4atk0uVYex
	qWPMdbDyZahnw5EmHeeZRFd42i1MFwdURc2tTGGp1ZJziSnd8Cct6ailYt6xRSyDx4S2uibmSGT
	PS0j+5ubAVefXmZwBQLOaWek49hFQB3+BRnO2IxnJbAv/P3mC+anrOsWKS5zxCaTEV8xOFwCgxE
	TJIPuv0vcvTPuOBcUrZVtWE64kWhymfo3GVuIVUKNGEKyuFdIqblVayAH/y9rhTkmNNCdFuw2hv
	DpQKw=
X-Received: by 2002:a05:6214:8111:b0:896:fe6b:8bcf with SMTP id 6a1803df08f44-8972797232cmr23393586d6.5.1770887095410;
        Thu, 12 Feb 2026 01:04:55 -0800 (PST)
X-Received: by 2002:a05:6214:8111:b0:896:fe6b:8bcf with SMTP id 6a1803df08f44-8972797232cmr23393366d6.5.1770887094940;
        Thu, 12 Feb 2026 01:04:54 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65a3cf506c8sm1585773a12.32.2026.02.12.01.04.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 01:04:54 -0800 (PST)
Message-ID: <f8016c0b-1e64-412c-a8a7-e09eb677e35d@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 10:04:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490: Add Thundercomm AI Mini PC G1
 IoT
To: Roger Shimizu <rosh@debian.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <6cd569ad19ae8efb5f4244b3aa185754@gmail.com>
 <eb9c1489-4496-48b3-8709-739cd45c11b0@oss.qualcomm.com>
 <d398cd57-41b8-4646-834e-ff0c0b7ff749@kernel.org>
 <CAEQ9gE=kH4Np32xZdp+jzaTo9TMjtLVRD+xaimuKWxdag2Whew@mail.gmail.com>
 <b1d791e3-849e-4d76-bda0-816418f98e39@oss.qualcomm.com>
 <CAEQ9gEkA-Gw=96LJe3vf3S6ada5o-mDqjY9B6NNpSaO8saSfvg@mail.gmail.com>
 <24cfbe35-c611-4d52-8a4c-b437287717f0@oss.qualcomm.com>
 <CAEQ9gE=p_94p5Rnn===2qMq9MNUePbGaRgJkbkoLXg6X5oywvA@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAEQ9gE=p_94p5Rnn===2qMq9MNUePbGaRgJkbkoLXg6X5oywvA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=baxmkePB c=1 sm=1 tr=0 ts=698d97b8 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=xNf9USuDAAAA:8 a=EUspDBNiAAAA:8 a=wH0ZIneqvLbjNBMju9UA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: 9KpllwkEgRuGVJeq1DMxNJINgz4sBaFm
X-Proofpoint-ORIG-GUID: 9KpllwkEgRuGVJeq1DMxNJINgz4sBaFm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA2NiBTYWx0ZWRfX3VNlb/gXA0Fl
 rgULNvWgN7ES+QVzT9nvtzkbxiyrZCEp8ABd+s8vF3f1ss3j2YlqiZCSwAQedvVuK4PeAjZn/w/
 Esvphf/IuKnsFo9ZZ40pEknRX6ZYHAiMSM8EV5UoOROb/Gsnnfiyp8OHuPfrPFgCX8Qrkm0CrzN
 7kq59UayzQW/U9DQ/VvuPyrnqifCeXGQbQ88PAApfXQNHPV1AutDO3Kq4Jqe5qxtiUBJhgE/JuL
 KkJPFrfxbFxfhnv9jwEJ63mljHF7Yh3ye2OqjR2TuKac+/meJ7Y8BBZntvFfTk8EwC6rBB3wQxE
 gQv8GeaHPo2xnMsORT0h7Z3rAeBFtVZ20pVA4PdReHhXXXw6mhYI55P70swF4xom2mCateiJHIP
 0Al0EsIza2eSgCnb0kaGuT3sGHTwwWfMSKjsM8dtRtt3cSNHnE7WH34mEhJCkO/sLZ8umhZz4zn
 sJkhvIBdr6947p7XXhg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_02,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 adultscore=0 phishscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120066
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-264949-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 75CA512BB1F
X-Rspamd-Action: no action

On 2/11/26 8:27 AM, Roger Shimizu wrote:
> On Mon, Feb 9, 2026 at 12:31 AM Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> It may be that your version of pydtschema is wildly out of date.
>>
>> Nowadays the general expectation for using bleeding-edge python
>> tools seems to be for one to grab them via pipx
> 
> Thanks for the info!
> Sorry I forgot to mention that I spent some time last weekend, and
> resolved the issue in Debian [1]. (patch was enclosed in the ticket)
> I prefer to use deb pkg, over pip install.

Thanks for being an active contributor!

Konrad

> 
> Now I'm using locally built dt-schema deb pkg (updated to latest tag
> 2025.12), and and run "make dt_binding_check" successfully.
> 
> [1] https://bugs.debian.org/1127460
> 
> -Roger

