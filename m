Return-Path: <devicetree+bounces-271342-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHlfIFj7qGnVzwAAu9opvQ
	(envelope-from <devicetree+bounces-271342-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 04:41:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C34820AA20
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 04:41:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0606E301859F
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 03:41:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B79D327B343;
	Thu,  5 Mar 2026 03:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GqfYzYRF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dEbsvkh2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E0F226E142
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 03:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772682068; cv=none; b=QIUBPbX/jZn5nUlDOcblHu3qZYqi0lYTfsKO8xvZslAMh1xv11wHyryXd1KebcZtxC6k9KDhZgwDafd6BPWhiTwrVr6LBmcYlthCv7BL/071UZHPbGtZVMcJFK3JqnfYftPnyXl1xpBqg9s1IPHm0keZz1nf2JfUT+Z1Y8wdyk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772682068; c=relaxed/simple;
	bh=HaNITUyfD+GBmdX1X/Vb2Jcxk5484wXAuiJIkuXv0LU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q/Mhly0U5ANBy2X70Jj60dJ27M6ggPvPXC5LLCvU+khWpgWzqIsT80oc82Yd8Gwo0hVjOZk+A1BiXmeKQxnUWGvwsNDbuVoOcfS4MrCd2vkYl8gKa62PgRJuIDhrsnCxMuEhShNTt+PYj9BisyUckiNGGCwdDv5pziT6KcYRsNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GqfYzYRF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dEbsvkh2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6251Bo0m629141
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 03:41:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Y4BdL9DSWsAx+T+ghZWQ0w/E
	FG7qShwRNJI0u4mTcF4=; b=GqfYzYRFZ6WP459QoXUoGydQK3jYL5uWr06eBv59
	92K6kWYHQNe1wODK9sAfT+HtjAJQPwwZg6hQ34PVLtTOzYlKSZkHsu6o8D6ULbL2
	Yz+Fum7hB+KYF67vr1VrnEw+t3/OwdMSQwuyz9C2JVPe5kMvx4paIdsnYgG7//yL
	55UW5NCU1SrH4dcTKD2KQBh7k34mIVuRRaaLqz2ZVJDkt1HiepxYWYkUSeL3XsRV
	bo3LjY+RiJJdM96DTwnNjmDEV5Koj1k7naAjnYiQxoX0WFh/NRm2Ni1FgFv4OSrW
	i7jv3vY1bXwawaonsEcKJ6wA87Clyxr+R62tKhzNKr9giw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cps0m1mf6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 03:41:06 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb4b8e9112so660248085a.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 19:41:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772682066; x=1773286866; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Y4BdL9DSWsAx+T+ghZWQ0w/EFG7qShwRNJI0u4mTcF4=;
        b=dEbsvkh2kUeKXkxHvaTIjydsL383V7yF0iP4/hW96QRs/T4lHgsBMmEL+B7UsAmkTM
         28KW4r0pHjodkztvwTk7yvKZpmW99S9Suj8chmsyMY3rG2cIcB5UKHhxWlVhK68icSm4
         YsyAyjWKRZpFC3CLjpovGHvWAzp+0AUWAjMlxy+UzYqJi3rFARKSC64vCWdMZykY1C8S
         TAx8QP6mJC3YQPd1eK6JuV6JfWTRIpcj/QI6UIyWjihAiDy6DcIN+y9TiCfmVXtuLMS4
         4xhmjFVUZ1oXbYmhJ73na1RTNuUp5wqZfS51O0kE5/cjSRSzG6fg9CRuUehWsfOuQs7b
         +CqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772682066; x=1773286866;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y4BdL9DSWsAx+T+ghZWQ0w/EFG7qShwRNJI0u4mTcF4=;
        b=G5cSS7kvfmS3b1xc4lz6U4yFB5A9xFcOqcHUl9pzh8f/yFr/w6TnnBK8pVOLiBNGXk
         ArM2rvK1eqr0seNn+xra8NpEDUcfW1DaUzkq66FmRedxIMY1EYWT9pbFrTzwR2kfIwZh
         SOO1AZSgOk63A5NW9I5Iu+copJlv1J0w/S5MVvNw7GWqqpQ4mbmjJjlvGqcz+qGcqwHN
         4xjL9MpQvuQmHdAdHFOLenle6tXjB2u6naEjciMFRdMKHlC4D5NBVYSVrwn8GqYdlMFy
         +dbwET/lXq/zOYPYalhrFLBTT4uN/U3iOrVoO/g6gY9K5K2YdEHqMUnNrns/P5R2ipc1
         JMEA==
X-Forwarded-Encrypted: i=1; AJvYcCUQypM+QR/V+9YaLpJcFEDudXAHGcQ13+R5WGO6ngH/L5y99Y9I1aYXGXj90Xtdmy/Isf51LH8rN9Qi@vger.kernel.org
X-Gm-Message-State: AOJu0Yy51zFT0s4nHOsElav2mPFaim3ZHKw+HtvaralXtXSJ5KfecEvQ
	te6U58T+8lQZZxs3cCN7sFECZg3e9zMgXddW4E21m2ACvxtoGoBeSG6j+36HODB9WNAOCnlu8Ca
	PNQx2xHGHNhAr7k28AaFM1TiKeWdUMd2agPntbFIb0cTzpxeJKTGnd0E2MBY/eOor
X-Gm-Gg: ATEYQzyzrHBUStoM8Np4qhhNKwzoOfwQ8rHIwhEbrLExaSOIAK+SyDPwH5LhnpR1bzc
	r3ugVrqVhPmBDnO/luWCGibGoNwErcQLsf4tzcpRVG0nTnKvJjQwMOmpfKoQwNaH7+JTfElis/s
	R1WZZedJ7bS7VUxhrW1BZ4FJSoE1LSkymv1vZUmaf2/YKR85d/oSfP1noWSiKNXdcGaHjOHV9ok
	OU+qvO6WWGTiAI5ur03dw1YyGqV9zUSVL+WOPQ9KLIcppvhTkLfk26clT6dXikgcFctq43b5gw9
	FP67PO36RS+pwC5PimkZ6+q5HmnUfgcCLa3V+xFn4Fgkutr2JdGwUmtBi+P3WaH6inGF0raw5j/
	L1uZOB+GVCc32DbhBkUCwYBYmh8tXqqBg2e60mWxXnXmWKiGTJDiqqyo4s1b7nbZtFS6N/Rfd8C
	pvfMOUVCjH4faz+BUeZtEcC9s9rhd70vOFBNo=
X-Received: by 2002:a05:620a:318f:b0:8c7:136f:3fb5 with SMTP id af79cd13be357-8cd5af9e0bamr543315685a.54.1772682065779;
        Wed, 04 Mar 2026 19:41:05 -0800 (PST)
X-Received: by 2002:a05:620a:318f:b0:8c7:136f:3fb5 with SMTP id af79cd13be357-8cd5af9e0bamr543312685a.54.1772682065184;
        Wed, 04 Mar 2026 19:41:05 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a12e56544dsm577958e87.29.2026.03.04.19.41.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 19:41:03 -0800 (PST)
Date: Thu, 5 Mar 2026 05:41:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v2 6/7] media: iris: add iris4 specific H265 line buffer
 calculation
Message-ID: <mp32nyambs6jrois2w4qysztdtcw3xtcqmpo6lim7d5pjlgvyw@soltgnfpytgs>
References: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
 <20260227-kaanapali-iris-v2-6-850043ac3933@oss.qualcomm.com>
 <cbwz5wtd55enswdi2zvvy3d66nsxlemyzdypheibvljnewmkax@kybx63aveepn>
 <ce80e60e-90ca-415d-83af-4fe2e86ffd91@oss.qualcomm.com>
 <hrjwyqz4r6usqvxhnsvtap4byfu2zvumji6whudda55vuym5yk@u6s4heswm4rc>
 <22534cad-8940-43c5-a7b9-01d002943093@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <22534cad-8940-43c5-a7b9-01d002943093@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=e6wLiKp/ c=1 sm=1 tr=0 ts=69a8fb52 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=P-IC7800AAAA:8
 a=AZpcuS3xHcn0W0hrMwMA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-ORIG-GUID: KREMttAA5kkziLUwWcki2YVC27AYT5sw
X-Proofpoint-GUID: KREMttAA5kkziLUwWcki2YVC27AYT5sw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDAyNiBTYWx0ZWRfX+FP7rhKPdks7
 WEg7bhsx5BvDEWxogKP3AhU/JMTGm6AHpM5QQKg7wAN5tucbai+YAuBQqPy942zGkC72LRXSCcw
 asTvDxAWEZHCVV1rJuFGIvFBWWNls7lxq18nEuFdtKSEq9Jy7tt9/efj35u9MaKzrBaQqbh1uvC
 t1D6aVgx7kk4Gji6BSlF8lblUJmUQ74PH612ZVs5BWLBfbMw3PQwoFm95bQ0qryUj5trvVXV0o2
 L+xfFIaRKA3hc3eMzQ6WE7KbEq0PYeOqp6DR0BitWMLYuLYR/AP5ktlF1914jGWkkv2t4//OM3L
 aHg1xWFwPVH9uHG6tGMA/TkRHIgzNHAyFpxMov1gWmhiku0QB0Kvoh1Wn57B+mDAAievxMOnulA
 HZJClcLOVxI/7ecPnz2ldYROBTd2h694nM8MUKpVQFvOfF0Vt+e2coqnL+VywRoYuwlSpyZmsJt
 7IqoKmLgTwbQwP9MOQQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_09,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015
 spamscore=0 adultscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050026
X-Rspamd-Queue-Id: 1C34820AA20
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271342-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,bootlin.com:url];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 09:10:33PM +0530, Vikash Garodia wrote:
> 
> On 3/4/2026 3:58 AM, Dmitry Baryshkov wrote:
> > On Wed, Mar 04, 2026 at 12:18:58AM +0530, Vikash Garodia wrote:
> > > 
> > > On 2/28/2026 1:58 AM, Dmitry Baryshkov wrote:
> > > > On Fri, Feb 27, 2026 at 07:41:22PM +0530, Vikash Garodia wrote:
> > > > > The H265 decoder line buffer size calculation for iris4 (VPU4) was
> > > > > previously reusing the iris3 formula. While this works for most
> > > > > resolutions, certain configurations require a larger buffer size on
> > > > > iris4, causing firmware errors during decode. This resolves firmware
> > > > > failures seen with specific test vectors on kaanapali (iris4), and fixes
> > > > > the following failing fluster tests
> > > > > - PICSIZE_C_Bossen_1
> > > > > - WPP_E_ericsson_MAIN_2
> > > > 
> > > > This reminds me of the commit fixing SC7280 support. Should SC7280 or
> > > > all VPU2.0 platforms also use separate formula?
> > > > 
> > > for vpu2, there is already a separate formula
> > 
> > It was more of "do we need separate formulas within vpu2".
> 
> vpu2/3 uses the same one currently here [1].
> 
> vpu4 seems to be using quite a different formula to consider it within
> vpu2/3.
> 
> [1]https://elixir.bootlin.com/linux/v6.19.3/source/drivers/media/platform/qcom/iris/iris_vpu_buffer.c#L313

Ack

-- 
With best wishes
Dmitry

