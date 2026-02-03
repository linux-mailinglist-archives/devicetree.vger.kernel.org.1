Return-Path: <devicetree+bounces-262172-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPxEF2vOgWl1JwMAu9opvQ
	(envelope-from <devicetree+bounces-262172-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:31:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C8AD7ADB
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:31:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 20C3A30A85E9
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 10:26:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4B81318ED5;
	Tue,  3 Feb 2026 10:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U0XmhYZj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TEAGuGpy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F392318B93
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 10:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770114401; cv=none; b=t3+fAhfhCaNrKIJH24PvxdGp3PcRFsGqqzn0To4ATUsLLDgPAnOHVI1RlCotsmzDXUM+owwNr2+DUPDFxO4UNyvrm+qwL3UBVUkXDCZRlMs6PZx/4GRXivru4EzkF/XWJlerkm0O5CqRiQNQVrIFZ5kyjtSw41q0dEAe1cAesjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770114401; c=relaxed/simple;
	bh=16/GwJbSkE5/JP2RAIxk8Yz050uUv1ntm4e5GtYsgUM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gnwmYuzeQiaR6ffNyBgpk+0IwlxETOCYyAXcCfBFbjlfWvqX2/EVI6nc4FG249qrCFj5LgBZlDL5OWb0QFVSOzKCKuTQms+rAsPxDOToEffrKDp3bZ9/C9V3+Oul4/ao9uTGyJ+LhuP9t+W1iwtwvvWG5kA10QNGiQMatjEPfUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U0XmhYZj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TEAGuGpy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6134PQMd092047
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 10:26:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mOypfIEDDwh9J504h/zGHB9o7DyYTIn/LffTBkpBEtc=; b=U0XmhYZj3nbf9OSN
	W79UFKkL84xJCjYSMhMJDc3gJrp9FDSnLcIbl7u8XsJlFeK7gkY971tifCZctRKs
	FQJF9+QgPpFfTVqWLRJpGD9uNU4+FTGrGx4foE2DeguRQMw3/We2B67MYVj/KNOB
	0pZ+ZLvniCy6/8F5lALer0ZZcZJD4bQ0gIZYS/SkQpzbjZzNnfKA+qDCykATFyR4
	cXNQaoPNjlh/PXATH5Ns3CLyDTQAawlysr7jU0Ein3jNVVcglyQj4gasVk7mhUXB
	pWMAWfrXowWwo/THv5thRNK+sdYFQMnKkOTwj55qtfV6nl2sMmslhA9JTmXT6Bf6
	1IoWwA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2trbkw0t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 10:26:39 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6a182d4e1so102234385a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 02:26:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770114399; x=1770719199; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mOypfIEDDwh9J504h/zGHB9o7DyYTIn/LffTBkpBEtc=;
        b=TEAGuGpycvGaAbb/2PYEdz5sq4JlVMBxH/EWVSUnOHUhzH0H6pDyGZLtF/cvlhdfTq
         FSGkhnGaALmNvQcXwTN4U2+RA75/aa+1C52PYGHbWEXoOLhIhvqwgore3MdFXT/RtZ7A
         ZlH6A9mGGIO3k1M2pABKRVXUozzp9UWcZJ4wAPh2GDDNwEWSWzqQNkVAVF2+/sgqN/XU
         ei0clspJnK3VUBL4zSoy242x9dYDTRMKky8AfSfquMuapuQAdV//c/g8h1U8JVxcOPxX
         ja8/2ZSORJx7V9Fo8lwZHTkyJHnyoeFcp21IEJA4WP0S1PTWtPBoiAJ9+CYcGx62f3EM
         GYDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770114399; x=1770719199;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mOypfIEDDwh9J504h/zGHB9o7DyYTIn/LffTBkpBEtc=;
        b=ih2k1rAub4vFFVaY96e1KjMWXzcrCdr4wRjy0vQdJF4XDREMqf0p/53HbxZK0htu0X
         1S8v+zLC9lpQFnIcWVJtF+Z0ca3CzMD5CrHpR5EGTUJ8JEB7/p88NDKdrH5wKkHSqpGQ
         JCD+PpEIXuF+NifjBAUy6wchiCLz62WGLRo37OGUQoHGEjcigcUSlN2r5WtSjFFqwaYQ
         CZX+J8+AL3H5aH2+d0RKWt+V7bOC9adcgVmLdXGT1oPd/a+MD2TNgbcfjZ6riX05jpDo
         nKEdqOKOtZrSs3+yhiOh4zrv+GZ5ZA3HQ0m4RNSBdlQrxTVoapCpn4VYU6TBE26wLcdV
         en0Q==
X-Forwarded-Encrypted: i=1; AJvYcCVol/lunyPgLgNGbpyVWUe6SKMw1ZU8hO/Z+4/J+LZ3SU79/2y8lud0Qhpg5c8zNhTDW+AP1u3E40y3@vger.kernel.org
X-Gm-Message-State: AOJu0YwndgCyvj0ZtLjfFhSwqFpeSs7yCMt+V65AyadaNB75sQlfk9Kt
	G6Nbj8MFK91nLHcqPknHyjwGZU7FXdyttvY8HCCEqgD0/VCCZpS2393QR3CvtFueIt3kBJV4/zO
	GoxCAvk1EEcq01Tv+XShAmwbaha5ZVSsYKcAI4zM7ARifRydzHOrJOLEpUnf/n8Cd
X-Gm-Gg: AZuq6aK3tYCDpcvIgQes6KNv0T1WgExReyUtq7ZQ+Ul3B0clcQxDQ7Lc+kA4Ys3QYFN
	6qTJsOevyoiak1odFR+SWOnofuOiNg8wFZnftyJPvkWzb1sohPsZ5GA+5QTgzUUw8N0nHrh6Y86
	uvhi037yQsO8h/wpiRhrHvf/g0fMOiwtnpQO+Rx339ljdTnz2PQmNxiITIW185R9zizrY4WUFTs
	wzMZnG8V53QOnOP9tOb0dzFXmsB3WOr9FwgM0jD4Mdw5io6cRp1FE775/+4C2wxg244es5qtnk+
	ILIg7BYqzH4PcaRKQCpMnlECOrY5hCdok3nScYKb/Z9xjHyK4MfMpeQuCPx7AWdzx04s95LZ0Nu
	NNv+nw+fE1TZ/w9vNhV+S86emR4kuZyhGdWVFt65Krs8lO5+DOW2XlyflEM/1OxxjLrg=
X-Received: by 2002:a05:620a:4086:b0:8c0:c999:df5a with SMTP id af79cd13be357-8c9eb2fa331mr1413240885a.6.1770114398656;
        Tue, 03 Feb 2026 02:26:38 -0800 (PST)
X-Received: by 2002:a05:620a:4086:b0:8c0:c999:df5a with SMTP id af79cd13be357-8c9eb2fa331mr1413239285a.6.1770114398286;
        Tue, 03 Feb 2026 02:26:38 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbeffed15sm989184666b.31.2026.02.03.02.26.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 02:26:37 -0800 (PST)
Message-ID: <6fdee2f6-aeb7-4a41-83f3-57a3e458d0af@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 11:26:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/9] remoteproc: qcom_q6v5_mss: Add MDM9607
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260107-mss-v4-0-9f4780345b6f@mainlining.org>
 <20260107-mss-v4-3-9f4780345b6f@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260107-mss-v4-3-9f4780345b6f@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: OyPLi8KjdWHyDZjo-F7MEWkhJyLXnVqj
X-Authority-Analysis: v=2.4 cv=dcmNHHXe c=1 sm=1 tr=0 ts=6981cd5f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=j8Cu_9a8AAAA:8 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8
 a=Zc5E96dWW4SpJKk7na8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=A2jcf3dkIZPIRbEE90CI:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: OyPLi8KjdWHyDZjo-F7MEWkhJyLXnVqj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA4MyBTYWx0ZWRfXw3QGRhNpQh4d
 xbURPfKx2VMYHzKmE2FoI9zhs/aiLxXSfkXjRqDtwWVvfTPMDiKbgYl2S3rDRmcBHGzacGgcOOw
 A+ivQkydoKmSjePlj0cFfd8L7rfY2vELVPk9eqWGJe/+FTdQGg2VB9MNMENT23vNz9y/my/sI2E
 kdnJdrp+igMky8pKC1chD15MjSjTcxjVpk2jYWmyXaX/dN+CIq12n2ADGz+bUpRhiL29IY3yEKs
 4uMf75LPCQQMiijuVIzd3+bcU0WML/YSI0/H82WVzi/dFBAagvpWXHI5Mstlh9iSryjTvunRB3Q
 vobb5RzBkbVhSi6WHQojsGnBlmo3OSxr6JhM8LYlc/hfKt2t+SXbL9SkBbXtP2B/acLB440Of8f
 zCWjFDbFO+Yb7b6ewpCJER3+lcV1omYk/8m3LOYB/Fa+AXdXwfMb1BaS9eCJCFolVEasarVGvRM
 /PLbi16OouOQ1bpRu6Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_03,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030083
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.12 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MIXED_CHARSET(0.54)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,gerhold.net:email,mainlining.org:email];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262172-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B6C8AD7ADB
X-Rspamd-Action: no action

On 1/7/26 12:34 PM, Barnabás Czémán wrote:
> From: Stephan Gerhold <stephan@gerhold.net>
> 
> Add support for MDM9607 MSS it have different ACC settings
> and it needs mitigation for inrush current issue.
> 
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> [Reword the commit, add necessary flags, rework inrush current mitigation]
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

