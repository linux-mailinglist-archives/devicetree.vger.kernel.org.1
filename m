Return-Path: <devicetree+bounces-269569-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HuJBE/xomky8QQAu9opvQ
	(envelope-from <devicetree+bounces-269569-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:44:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 642261C34CD
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 14:44:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0A2B4304A6C2
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 13:44:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F2B6344024;
	Sat, 28 Feb 2026 13:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D73xBBRI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="E/Ref6Rz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBDF2D1907
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772286284; cv=none; b=Aq00J+oXFdqy6syC/p4I+EBUgtfkTgkvb36TWvAkAkYH+kcXVF2//Xyx/2y2oRiAjX5x5hNqA0vGg0CJBEzWImcpa4SsP5tcU0WjPRgPjStfTjUH615Df80Ij93ce5T8xekPN7uQioJe/E/P1iNLbis0CEyIab28wEkdXWnBX9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772286284; c=relaxed/simple;
	bh=P+e5o1cQrQflpB/CVOsVhRKdS/Hx/amuhzDTbwuAOfc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qIN2XAPxdqLoLmvzzAXwudu5Y9ssh+VvCmdeZ+2ZezusLRsZLZ2Kn6FbqNWNCt8pKHWyQ91a2fJdqGVPTQT5J2ypcgXQnBUmuTWERfy45FD4hiN2C/YLV7J6EDJs5YAlnV++ebBMUlzeKrpEQRTcsubZGiCiEjEpuOGLCULjRTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D73xBBRI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=E/Ref6Rz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61SCHt2K059235
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:44:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Kid1uH/M+z4u9JpqFpkIkkB9hIR5xEKvvYiiuhLyEn4=; b=D73xBBRIn/ZpINYz
	baafx2F2XNDmjYo8t5Kwt6bXZLcvBGi3XqbKf/mbKDGYf6TQoC6EEl8dmMWBLwfr
	n3IwqOZW6LnwjyxYfwAjzqkwlN1fmofM1+NxFRo0uAv8KXAPaqSKELwXeHnD8Saa
	YhMu8JalMNWQu+/Y4ToiGZybBjcWXGYYkpX9PvVwpl/uGQtJc3ZmB1eACsUI0ITb
	oNohoE+cqN+jqrMHe/6/HsEih4TZNB3+6fzs5a42+6NVGx80RWDQKBpNcewbD1Te
	rXjmXenKbJFcSSYcGePNh1chZXaC1P5WUX4m+dzECG5YLEbdF1ZWarnbCrbAzgHP
	wYJQmg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksf6gxf4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 13:44:42 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c71304beb4so1962532985a.3
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 05:44:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772286281; x=1772891081; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Kid1uH/M+z4u9JpqFpkIkkB9hIR5xEKvvYiiuhLyEn4=;
        b=E/Ref6RzWUsFO7olhX/N2Lq3FpMVz+c469+wRBB66TFx2IhPFquxBHETmA3KN+nDRa
         /ezKh+vED7HP+MqMY7GNl7Hvu07X3wWIfBZUwW0UyAjp2VeZwMP1aiGR9A+nt9R49Zss
         1hfzZhQzJYx2svTz5XX7Ids0BiRpQyjXrfPHEy1GLYg+4jkevVJJcmgTkyj4nGtbfDkB
         qMv9PMEKeFeLOqiTxyIvq+KIKJtqTo35kG3QfFCNYZXfH+7/vHNPbwOn8CYe3Co4tIyi
         84Lg71vKr5pxPhF0aMxfyBH3B8IS09XNKOzAplMGMkPadJdXb+3bW+0AD3fdT7SeEbUx
         f5pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772286281; x=1772891081;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Kid1uH/M+z4u9JpqFpkIkkB9hIR5xEKvvYiiuhLyEn4=;
        b=SaVvk7eE3RKAQAS7EnXIGd4R7ZH1FhBKJENOhpeeqcHfXHjXn6q8J0RSEsIn4sQ9zh
         6HZjCtn5Rv9zNCnSk4G73fOxq+RA9BWHxxHPrNLLFgaW3eM1k/rT4bQBs+xe0zdS6zN3
         M/Glf6y4nt9jc7iakfT5a8t2WkH3lBa8xD6V/Hhniu8mCMrjB7fN92OI6HKmY1PSbnDp
         cv1y05OVGMEuPT/9Fkp1Q4pFquOnU+g8Yr2/fiRCPzbVaPsy3WWm+Ke42xot2c3Bk/uT
         H03cGA36KkXlGlJbGVtcWpEMfFJxymc74vxId4d6lwx77GSxvn133jf5Qe2Efh363x/P
         v8MA==
X-Forwarded-Encrypted: i=1; AJvYcCWobpBYtdC6WUBslmtKY+Tl85eq0JxgJTU6YPfY0BVA8CCnnnRK/9ARpM7ofW499oJbTPxEhxY2Sc/i@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ8PiTXS9b6S8W9g34xDbpi+G/m0hg08C+hPqyZl9lCNxYUnrI
	RvCBpOD8h22JzOdEYq7cFEoMjpPUqS7trsKsiPbN/trnnWAGMIZMUUJ42boBfMuwSvEijSX8Z2f
	mcUZf7CAFf3Dv1IPg9RjNO99Gi/3Aid6GtYMmypV3KSxQM93I3eiKa7PWJGWtKTX3Lk3GMfEC
X-Gm-Gg: ATEYQzzSMOvjhrHpn1F0nl1L/Aro4Jf2AmyzL4GJrbardbfAGFOK68J9iWcwWXEQrPj
	fsc0H4RKdlPhN7baBMk/4aroi8iS92lBMCjjq4FScOeIJZa6uo9AinEQHaJVAFcAIRXfESI77d7
	yxXQAI1S5f3OQ/O++/BToTNsTsD4/NbuXD3hi8CiFH0QXSaYvQyzfNc4UyNB6uUdQqp5Qz0SWmR
	S2cjx8MSpEENEBy5mHESrTfRn7TN4CdGncyxI8OWyBNx3WK5ZfQXisl9bnzeK3Tnlj2XA+ws3JC
	6mT+z0M2FgRrZY0xFqUtCDVdnaPgspHNHESgQF1+aR4hnOEeTMWVpaey5mXBgP7DNCMcsLSaDqB
	kevPaiM7M2+TdZ5hqtz5JlsngUfOzjYnWX+QtMjIet7mA22d8X3IcLjyOfgJr6qjA0k9qDk5QVt
	i/wIt7nAjzNfuKeVj7H8bVJOgKisQeQI5JSJo=
X-Received: by 2002:a05:620a:1a23:b0:8c6:ed3d:be60 with SMTP id af79cd13be357-8cbc8e3456fmr781791785a.71.1772286281520;
        Sat, 28 Feb 2026 05:44:41 -0800 (PST)
X-Received: by 2002:a05:620a:1a23:b0:8c6:ed3d:be60 with SMTP id af79cd13be357-8cbc8e3456fmr781788185a.71.1772286281057;
        Sat, 28 Feb 2026 05:44:41 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a115bce0d9sm570896e87.21.2026.02.28.05.44.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 05:44:40 -0800 (PST)
Date: Sat, 28 Feb 2026 15:44:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: use refgen regulator for DSI
Message-ID: <7gba4xjc3rk36y6e7ztc22jortvteo4lsyywoxfxl3xa5qb6pp@mgm2mcczdrk5>
References: <20260228125431.23098-1-mitltlatltl@gmail.com>
 <awrfjdwsf4gyyg2s6ppw4jfmpzp5s2aavosmspsp26oqccco7y@csij6bpnfpu7>
 <CAH2e8h75H5ZZ88pkFYTwr5xir_giW5DxV16Pvo1_DFQuqWGFKQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAH2e8h75H5ZZ88pkFYTwr5xir_giW5DxV16Pvo1_DFQuqWGFKQ@mail.gmail.com>
X-Proofpoint-ORIG-GUID: CmDhLpP3wbM3q_mT59-C5BC8zjL7gDWB
X-Authority-Analysis: v=2.4 cv=JoL8bc4C c=1 sm=1 tr=0 ts=69a2f14a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=VwQbUJbxAAAA:8
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=MoLNtlHzH6ZT-cqGeYEA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI4MDEyNyBTYWx0ZWRfX/tsju8j7fdBd
 6v74MZoax1LmErUkJ7Fx20gBIy3+IDqkywZiNEV7dmcXR07s5dJN1E9qJlUnh+lgoWE9XwtgSiI
 nWZrszxQW0TM0Avq5HqXSjP2uYK0kVPNPLZ0H4hBXryG2msMVlsamJBBpw1RLN8mGCNziWA/1w0
 UCDlJPiwJvMZqiI34i9/JuGCLQJsDgpqX92Olcw8/hZoy67ZkSaDDCmsFMwirzUu4+SDTpVtTEu
 iwnCSJ6oHx9bm8uc/jZ4hEEF7Z7vWO3cIAF+Ec0RqgpibXGpH1ZGQyDt0waEiCCvRZeNtIsme+/
 JOJDCHz4johv5h+5mVIZptWrVqP81T5ALJ7ynGi/yEmhEF+WVbngHvYNqvHoIocLncG7NcrHqiN
 nyo9bKRJZ79g3732eOOVZ3yZ7re6DbJ5LYVa3ov0dYG8vzMcV7CeLfUKwjbQyslcTtnXakF/xh9
 oD2SIrkazJylatbOtVg==
X-Proofpoint-GUID: CmDhLpP3wbM3q_mT59-C5BC8zjL7gDWB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-28_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602280127
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269569-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 642261C34CD
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 09:38:43PM +0800, Pengyu Luo wrote:
> On Sat, Feb 28, 2026 at 9:13 PM Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >
> > On Sat, Feb 28, 2026 at 08:54:30PM +0800, Pengyu Luo wrote:
> > > Use it for the DSI controllers, since DSI nodes have been added.
> > >
> > > Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> > > ---
> > > This patch depends on the below series:
> > > https://lore.kernel.org/linux-arm-msm/20260228101907.18043-1-mitltlatltl@gmail.com/
> >
> > Why was it not squashed into that series? I'd assume that DSI nodes are
> > incomplete and are working "by luck" without the refgen supplies.
> >
> 
> I had completely forgotten about it until I found the patch when I was
> sorting these old day unverified patches. At that time, I just sent
> DSI patches. I will put it into DSI patches.
> 
> Many platforms should work without refgen. Bootloder may have
> initialized it and be untouched later? Once there was no refgen
> regulator, my sdm845 phone worked.

If there is no refgen driver, then the bootloader setup will continue to
work since nobody touches it. If there is a refgen driver, then the
kernel will shut it off during the bootup procedure.

-- 
With best wishes
Dmitry

