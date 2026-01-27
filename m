Return-Path: <devicetree+bounces-259982-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cIbwCUDaeGmwtgEAu9opvQ
	(envelope-from <devicetree+bounces-259982-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:31:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A7296BE1
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:31:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 813DA306F69F
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:14:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EFCE35D610;
	Tue, 27 Jan 2026 15:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iKpDgcHI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="etrpjvTf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB8735CBA3
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769526552; cv=none; b=ofHdRMXall7wzUp6s9yVaiffPSTvYjYV8Fh1di4SOz7ceB6AJSpUf5KmI4imJpQO307ZiPvXn2quOXemYbu3Ay+7BHbHvQBvYGQybeQeJcxhkiWKeodSoewZk2QlQCEUCTOLOoswVB+KYTVrbFk+UfCoA4YNe+9EDdi88DCfpRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769526552; c=relaxed/simple;
	bh=oz92nNe/0jQO/YoUvvjkb1eXuR88e+7C5+ksv9MjMGY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KzBu39XM0jBnwxOR1zABPj/YpY8aeA74shlEEXl78CJia9Gw6rdgT02Wnv3+FSPlb7oMyVEgU3ND1FCNic4FQ9j3HLiT1tQmmYS/Avg+YLcXdHP1I9W23fLOr0Lj9RGu5RtZkNt06YOvFRfXPv1g8A2AN0j4wpuovyQMejhkAug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iKpDgcHI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=etrpjvTf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RAbvGU1268765
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:09:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=27wgVHbQ9lzPrRPmK3tFXLzr
	eFllIGFd+b8eFXO3QbI=; b=iKpDgcHIzfAAIohNIXVpVuF7Xbu3dTHnjf5l5tQJ
	6oECx4fEBkbq5fZFTlzY7Myq3GFCp3bTBqZ4YBthzca5TDZ/5DcrKDS1HcVtgZXv
	98HzOpqRWJN6phict5+G6CG2Z+LPoRhLFZGu36AUspGJbr5BWoVw7qsgdhvRWqUa
	JRLkm5FkqTp8zGKj/Q4yw5Q3bwctk9yszcpka+XylflmQSy6vNeaGwckkElHbwph
	C9nj169bgsa+js7trEIoHWuDTD0xTU3td0d22x7KGTIu8Kp2RS278oCjcBcF3Imv
	KAtr0RaAKMEdlpDzZtuGBlZ5mqOcwO1WmdBPtElta7V4Zg==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxnyat4t4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:09:09 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-948474e04b4so2582458241.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:09:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769526549; x=1770131349; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=27wgVHbQ9lzPrRPmK3tFXLzreFllIGFd+b8eFXO3QbI=;
        b=etrpjvTfQI+JHMznygnmOik5GkmGT4WkFlc9sD9YDlnJY9vRnCFm08pDf2tMqVKScp
         +S3M+nMlAsFOUGEMPpNBFPY4861z+NQIfNetL2IvBn7q20yP75kkEiwrSDoFVd7iTncJ
         1OoUbbGZbLEIhKWazbCmRavWxG+dBtyz9qhAn5oMITWSUlhIDQrWR9ow5Jc9uAHp0Z4r
         Z5sMoj/3Ry9gz20FR9jXrzdsDJ5EVN8M9MqeSXaR21K017duc2+VdmR02Y9kVEc9Emn0
         NGH6dCU/R3/NTuNX0dhl6EnrwWYn2qftvsDp+hEOZAoKoeZO0l744F2bytuS/9A/picP
         hxCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769526549; x=1770131349;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=27wgVHbQ9lzPrRPmK3tFXLzreFllIGFd+b8eFXO3QbI=;
        b=FG+URIoDgcsqNrFJSLkvDUVMFzsqeUhz8c57fBW+cawVn8uywpJMaOy73wcB0QdM+z
         jES511lTwjKwFUXuWhJtm7rKWhL+ykKaO4t6cTa+5ID1wBeUNiY0dtg0+vtS6Ax9tPB5
         huPdEsk9T7YgC0EGDP0lJd3g1Wj5KHD5ZIy/xBNdTivzFk744f9jgRT4POcA5lYY3kB7
         hLwHRcak9VQE+eq5CuCOPxHVg5cGyMpvlExarViJFeMq6d5f/bAtEbQi1VapnqZUxlqI
         kQgKbzds7na0u58TEYzo21YpSWD2VW4RqvE+tTiojb1znQwZ44aAb29TqvYopm4HULmm
         Msqg==
X-Forwarded-Encrypted: i=1; AJvYcCWmZJAGPwueC0tCgnzTtQEsvE9zMlMmCwaFMEwTfdRFGmKWCDw4B4CRUr588QqTtn8EO60O/pVHrFAN@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/rfCEeBlY5RxRc05Ub4FdLELVfeb1uhagX/fSffs2VfuETADZ
	Jh32FOjhF08qFlrcq2CKnB9uWrvMYTFySZVVgsSirMWjCezOM9rcZHoKEsJails2/mToi2CVatI
	WINE5a6MKCpaUhTV3rrdjHle38fuAe6+EnA95OvUKyOZdbyGrfL1CtqOA5vIMyYzP
X-Gm-Gg: AZuq6aK6GMmFQ5LLRYbcvMPbi5HCGDU23tf6NJMpIxSMPtBPm7U3bB1NkoT9dwqjAlW
	PJ4jJ2gTMWyFPJpaSu+ySw3w0C5rxc4B0no+RkSCdNvETikbfvOWaeEvzcQUOhQbnWFfpvbTutc
	Xo9+QH5VnqskuPnKdzZs749LHsIEuByZfqDWVuvF2HqYorg0S0BKl++zCEO0ZAhkuovWGLfUqnN
	XsQgwHvW+ulm12oNHRyD6JWmEaSJL27xRIRAXBUdapJ8u0KOh0LMgyUY4DD9xddRAe+YsjpaYvH
	rNerAWSkExi+7sbE+inUl7ksm8KU4OQu6wzdOCvVBPQNG1NDzGEtA928MjG0qivDXLpcK0/anX6
	KpjvNhHkmD+uMxo8FmMvLlrG8xYn+iErO7AouNMTuqHxfyrgarXfQeai412/dkGg42IrpB17+DZ
	fopDStYrDrHcGUggN9hgxDUjo=
X-Received: by 2002:a05:6102:390a:b0:5ee:a2a8:2e73 with SMTP id ada2fe7eead31-5f72378e4b4mr772184137.26.1769526548903;
        Tue, 27 Jan 2026 07:09:08 -0800 (PST)
X-Received: by 2002:a05:6102:390a:b0:5ee:a2a8:2e73 with SMTP id ada2fe7eead31-5f72378e4b4mr772143137.26.1769526547175;
        Tue, 27 Jan 2026 07:09:07 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-385da1daf40sm33193441fa.46.2026.01.27.07.09.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 07:09:06 -0800 (PST)
Date: Tue, 27 Jan 2026 17:09:04 +0200
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
Subject: Re: [PATCH 1/7] media: dt-bindings: qcom-kaanapali-iris: Add
 kaanapali video codec binding
Message-ID: <r642meaclfme7thmb6spkna6xiuhbjuqw6x32jndjqhwqjtbbr@qkcziz3cyxb6>
References: <20260126-kaanapali-iris-v1-0-e2646246bfc1@oss.qualcomm.com>
 <20260126-kaanapali-iris-v1-1-e2646246bfc1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260126-kaanapali-iris-v1-1-e2646246bfc1@oss.qualcomm.com>
X-Proofpoint-GUID: 6oKQmJQyvrGxYfNqK_tqHwvfa7S8cFwZ
X-Authority-Analysis: v=2.4 cv=JZqxbEKV c=1 sm=1 tr=0 ts=6978d515 cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Gjm7CCj-TAD5GDm5kmYA:9 a=CjuIK1q_8ugA:10
 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-ORIG-GUID: 6oKQmJQyvrGxYfNqK_tqHwvfa7S8cFwZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEyNCBTYWx0ZWRfX2DMRx+RHLKYM
 fVAq6dXrnevSmbOGYmjA7LIbdFCPXWEeJHgMtfTDT8DhxGp58vKJF9xa0j+w+D57Q+psXmTJhgT
 WEybpskwNUFv7w/Ddqvu8cbFQasawLRmVkmHQ8rnCYO7njLeMFbrwjEesyh58b/EULcys2VlTWY
 wgf/NrVZCBbHpaCN1uh1ZVyaAI3ByxngPna7FCECYREmq7Rt1jpNgGlDJ3KOe+DQqwfXkADyPvm
 Qml1lvYHxeyPxJAwLPnbF9NtJN8gBalysF8LgdtGEmZQKylX8XeTmKuNEMqUNJRHMzIFawbky9u
 w0qiHbyTC0yl1FAlQ82q2Bck4qyXQ2JaBPKZ8CkH9ADLUTRxM+ePkVIZeKG/6Q1kEhMa52gpfSY
 kgpj8eK0fpYNKEvlslFu6+NbpGSRuvJ40e5Tjo78Z1EfgpTKEFxnT88C8VIY2anFjrScLgr6Kc9
 2LntNohau0Tvmgw8wxg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 suspectscore=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 adultscore=0 clxscore=1015 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601270124
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259982-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E8A7296BE1
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 05:55:44PM +0530, Vikash Garodia wrote:
> Kaanapali SOC brings in the new generation of video IP i.e iris4. When
> compared to previous generation, iris3x, it has,
> - separate power domains for stream and pixel processing hardware blocks
>   (bse and vpp).
> - additional power domain for apv codec.
> - power domains for individual pipes (VPPx).
> - different clocks and reset lines.
> 
> iommu-map include all the different stream-ids which can be possibly
> generated by vpu4 hardware.

It's not how it can be defined.

> 
> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> ---
>  .../bindings/media/qcom,kaanapali-iris.yaml        | 234 +++++++++++++++++++++
>  1 file changed, 234 insertions(+)
> 
> +
> +  iommu-map: true

This is totally underspecifified.

> +
> +  memory-region:
> +    maxItems: 1
> +

> +
> +        iommu-map = <0x100 &apps_smmu 0x1940 0x0 0x1>,
> +                    <0x100 &apps_smmu 0x1a20 0x0 0x1>,
> +                    <0x100 &apps_smmu 0x1944 0x0 0x1>,
> +                    <0x101 &apps_smmu 0x1943 0x0 0x1>,
> +                    <0x200 &apps_smmu 0x1941 0x0 0x1>,
> +                    <0x200 &apps_smmu 0x1a21 0x0 0x1>,
> +                    <0x201 &apps_smmu 0x1945 0x0 0x1>,
> +                    <0x202 &apps_smmu 0x1946 0x0 0x1>,
> +                    <0x300 &apps_smmu 0x1a22 0x0 0x1>;

#define the functions in the ABI, provide them in the bindings.

> +

-- 
With best wishes
Dmitry

