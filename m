Return-Path: <devicetree+bounces-187685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F48AE0EBF
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 22:53:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A56361C206A4
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 20:54:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0E6B25A63D;
	Thu, 19 Jun 2025 20:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nCG28X/y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E96E245025
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 20:53:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750366424; cv=none; b=LavpzL0+l4ZydWoL+E+JSId3pbfSTxSGoHefWh+IpDUisJQbbv/rnaJyd4orryeUYA8r2ExjXyLbzGmodjd2vVNAdSaEbPs9rlnkPG8DvbSsCQtjSQ2mkQO0f/4YOooq6Aeo1yspheUt6QpbQUnFkDpHqe5OETO3joqZ8ORWcxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750366424; c=relaxed/simple;
	bh=O7SEft5ZodFpZ+NzpqfkPUaFRACFj8cIYOOxG4CF50o=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h8xMuoYVD8F5Wn08k0dEU2JBo9Wjml2EabGLcUERNW3MyWZrKalLyG7SdSwjDBG8nfoJ7AMVGRq3AgooJe2/NiQjqE/CgYdW34KTdcaULghKTLWL2m5jWLM3+/ogBRcg9xiHH4/FdPoWHn5K1xIxMkNeOJqcEu6NH83HFprmt+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nCG28X/y; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55JAgQvx010949
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 20:53:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iPu5zYQef5SPsWhI914gghzkM1C1M/oubhZ9KqWFCz4=; b=nCG28X/y+8bLLCch
	cgoo/nS7X0ykawRtavoUN0mXAl/l57jMpogrBWx717EJpHaFJijUGNhreGXe66+y
	7oYMMt4LevcUmjElsdUVbdUXXPgP2528WzktvhrfUI9uhmMcgoSvcDgPKdsUquL0
	PVwYusZb9BdvQW1mm03X0k3u5PFff5VK/0vjKn3ZWAIo0Mk2GyGQMQOOCd5wbID/
	4eW6H91i2tlJbMlGfo9x5oZs1LiANWL9905y5kHQvknjy9xXh0JmplLTF6nCPZA9
	ZsoNHCIXR4863zoAWjxjyseU7xL1cFl9y9UA81vCQPIrIeHy3179N567bB9DXKM5
	8bRZqA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791cs0y03-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 20:53:41 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5f3b8b1a1so167403085a.3
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 13:53:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750366421; x=1750971221;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iPu5zYQef5SPsWhI914gghzkM1C1M/oubhZ9KqWFCz4=;
        b=ENlqzqmY4eTDF1wKpWBjnjDQHAYiKNrd0C3mRCBES8bn6mcR0HHDBOK5wKI/bAnD/b
         mgZJRRS/Rjp+Eu8EC35OBlUiH+xAvmkKj9kLvwfceZT6nS/rmv8HfGs9z1KvE/sSbhgF
         4RvSiNas4/jcEkCqai/leg9xO7ldd0Uiwkrm4re6xdF9Mc3z2I9W22TSNzBz4sCCRFZa
         LDBrVGTLVlctp3VnIk5FAX7NsaSriQfwt0tEl7TGNntMbotVVLJwBJ2UsEwovw4yfOuO
         x/F8HDBq4gOaCKuSbzAG0grhD2YE4KznNfOL+Cx9KHt7UmjkzZa2nBLBDhcpPxHqhP4T
         KArg==
X-Forwarded-Encrypted: i=1; AJvYcCWuo+bVnszZ3c25NF5N7X4wzH8uByaEeUwDIG1KIs8kcxAdexTUMw2uCWNU/AjZyBPfB9LW8Win/lUP@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4l+a+x6ingqXqK59LS6zLjiDV21jK4suIRx6F/xk3LqtqZLH/
	p+hIjER8P1Gj7Io5275E3yWBnhAgw2RAW5MvTtOlJowD49vroSOivh6U/l5tfg1V+J4/M+F/YHl
	m1rnzww+/FypowxDAoTjDYexQwHJ8wxtlUabEKYWHvCbVMDT5G91vxMJimn3oVRuw
X-Gm-Gg: ASbGncv/b03ketkTPB6amjp3V3nSEWjz4z2xoTtwP0ZtZ7kw2dSdO+N2v9k8CyqDm1m
	0xZyvq/CyODi7aGFJRH+QE474jGB032vzynaEFO0Baj0zjzv9BjMAgDD83nBjAEGETrG9ue0Aes
	tffiE+1/m6bvdRc8v0099IimUdQlEQcSzJ3q39nDTDuomJK7HqtGDPaYn0blit7a/C7kH/3LaYI
	bRiLN/6B05f9WWaEVPzjGpazcDddKCu065pT0zJ5mZTKBwoI2PaTx1dO96YCeUWEIPrh1cAhZsH
	zvt0ufin5ancNEDDFT2x2bFv2iTiYzmZb9moZwvRMCFUjJYf9jiw7fp66g==
X-Received: by 2002:a05:620a:448e:b0:7c9:3085:f848 with SMTP id af79cd13be357-7d3f98dbe63mr92535285a.13.1750366420918;
        Thu, 19 Jun 2025 13:53:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGlujupLgvSs5a5AyaIHRjZX3uRjpvevuHi2JVJwJp+anGxQJPJMrz4BjOqmrjUIgdSGcb3Jw==
X-Received: by 2002:a05:620a:448e:b0:7c9:3085:f848 with SMTP id af79cd13be357-7d3f98dbe63mr92532085a.13.1750366420525;
        Thu, 19 Jun 2025 13:53:40 -0700 (PDT)
Received: from trex (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a6d1192680sm301118f8f.95.2025.06.19.13.53.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 13:53:39 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Thu, 19 Jun 2025 22:53:38 +0200
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
        quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        stanimir.k.varbanov@gmail.com, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 5/7] media: venus: hfi_plat_v6_lite: Populate decode
 capabilities
Message-ID: <aFR40iuTd6BQfQBF@trex>
References: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
 <20250619142012.1768981-1-jorge.ramirez@oss.qualcomm.com>
 <20250619142012.1768981-6-jorge.ramirez@oss.qualcomm.com>
 <85b2ade8-7283-46cf-9246-f441511ed7c7@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <85b2ade8-7283-46cf-9246-f441511ed7c7@linaro.org>
X-Proofpoint-ORIG-GUID: yU58D0nrxZ35JK7y-O7w9v5RRxopPdVc
X-Authority-Analysis: v=2.4 cv=BoedwZX5 c=1 sm=1 tr=0 ts=685478d5 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=znBxSAuDsvdLRzVMNjAA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: yU58D0nrxZ35JK7y-O7w9v5RRxopPdVc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE5MDE3MSBTYWx0ZWRfX1vtkMK6vU43q
 WSbPArRlwyKwZzAROLB7gX9WM3mmribEOYQf/mXJK3jvKEbjZxfp5kKtFRTNcaJst5FcH3fem4P
 Y1waGqe5lelBT2xDTca2S0f23zxefKdfeogo9AhVhtUyS4GoREwTPwO4lOxf90KPPFpfAUx+WIy
 dx6dPgMYjUwKRbPIU5yK8Xp0uMU3lSLcj6k9Cj2LLqx73AH6XseNH8pszLQJXyvZxaciM5alCJx
 l2nwvwHpQlKjKT6o23UIt4vMj6nQovTZk1nlJgoolpGI2jH/1BoQIwCptLdBWglYA0CFHrVBe/N
 u22BGRWCmg/bkldFyAt/cxe8iDJJKVNPJKU137XYDfK9XzjczDT2sjS5SW9gxrACVRs7KhkE1Pd
 /PVN4WmL2ACvAO3l02EvF42x/qO3CWSpNzroQfkIsYvSjNsZQHWE1bR2Mtao3/ao7XdYidH4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-19_07,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 adultscore=0 phishscore=0 lowpriorityscore=0
 mlxlogscore=999 bulkscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 spamscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506190171

On 19/06/25 20:47:50, Bryan O'Donoghue wrote:
> On 19/06/2025 15:20, Jorge Ramirez-Ortiz wrote:
> > +static const struct hfi_platform_codec_freq_data codec_freq_data[] = {
> > +	{ V4L2_PIX_FMT_H264, VIDC_SESSION_TYPE_DEC, 440, 0, 440 },
> > +	{ V4L2_PIX_FMT_HEVC, VIDC_SESSION_TYPE_DEC, 440, 0, 440 },
> > +	{ V4L2_PIX_FMT_VP9, VIDC_SESSION_TYPE_DEC, 440, 0, 440 },
> > +};
> 
> This looks off, why is there no TYPE_ENC ?

yes

> 
> You're declaring the encoder in patch 6/7 - what's going on here ?

right, so at this stage, only decode support is being enabled, as
mentioned in the cover letter and reflected in the series. Patch 6/7
acknowledges that the hardware does support encoding, but the driver is
not enabling it yet.

I'm currently investigating an issue that causes a reboot during
encoding, and I plan to submit encoder support once that is resolved —
likely in the coming weeks.

Splitting the series this way should allow decode support to land
without delay, while encoder enablement can follow as a separate,
self-contained update. I hope this is acceptable.

> 
> ---
> bod

