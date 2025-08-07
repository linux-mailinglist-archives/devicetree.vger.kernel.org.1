Return-Path: <devicetree+bounces-202404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF5DB1D5A4
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 12:17:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A3A63AE238
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 10:17:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 473C923D281;
	Thu,  7 Aug 2025 10:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EdrQb/x8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32DC22370D
	for <devicetree@vger.kernel.org>; Thu,  7 Aug 2025 10:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754561830; cv=none; b=U9N0SCD4VWNUWwkg6FcYzD4zefh9XdRvVbxXjnUhMnOIN7L3n0eV/WS+AKKR+8Py8LYBqZ4h3XjSESmEAcv69lFt3uHj9j5f8faXznFpRUBxTbwRgfNakb3K6mlBc5+f3dl2fqLl1wVeJKDU56H/HWKjZEdov4/eUyJpDSVvjbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754561830; c=relaxed/simple;
	bh=hQqQrB9x5CTf2+b2miREUHPTZdmUilKcUNXrLQs7I/A=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AATUbXuep8btzb9mWSMetwII3RLfXuJzDN17gJcLCV25RW+/eizr8SOdarpun21xQn+9CSJYQiT30uGd3vuZbZiylOL9C+wB/pN8SdzSUNfH+aEauMmf5GnazLqCjTSk2yJ8f9Ce9bZVwmYXO2mRAEz02Jqyee3Kg0FC/7l/JyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EdrQb/x8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5779D9YL022646
	for <devicetree@vger.kernel.org>; Thu, 7 Aug 2025 10:17:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LSMAw16rqz9HkkSbuIAhf3q5
	6NKWpVJbEjxeVNYRh0w=; b=EdrQb/x8xQH956TsVerEzZsaOrg+ke6vrRoRE8XI
	SUZDkhNRRCezKN4sYiKnkBPNA7wG+ocvMa0ewCJA1ZkaUdDkMSfsh9D9L/zbGpvk
	+GX1f4hcPsRfA7hzhNvEaRN6vDh/j2kLB+Noe3sem1xRen7QwqtAkU85zYiIw9Iy
	kx/iEge4nHjXFS0QzHhR+Dfwgmia4gURjzNYdFoxeE5Q6PSWkFHI5mZdp4/5Fq1+
	Xz6PeiijbH7qS3fQYMz1r+YSSZlkw08PNI+rGofdBmNtC1Hi2wwVrEEXSOQvInDs
	ZkFep19tiGaQbm6ApQNP+WZ167uIMjLDSMJQHTI/v6u2Mw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48cs5n86um-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 10:17:08 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ab7464e3bfso10108041cf.2
        for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 03:17:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754561827; x=1755166627;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LSMAw16rqz9HkkSbuIAhf3q56NKWpVJbEjxeVNYRh0w=;
        b=wuJSQRkaas511JWX/GmlDBsdfPaYjPZOPBBzimapuI0pgos6UhXgoRA7k/m9AL+LJa
         /KctP2c0ZWPM5Zvq8f+p9S091TCsiTzsOCJ43FzadDySQfvJcYeegXkfz7ghCw+70pBP
         RsDDhWAtaESAt7xNTIQs/lJ4lbHaMVLmSZNMmJpzqfqmxPcbB2Cs1lBD1E5h8SMOn5gz
         Oe7IGMjCJvm0HPsbp04HLVZuCaAxPewShcPKI0zz5Kr42RcrDJ5dqhjd5R8OCGIM6yWz
         hOyRuDxh9HTI463q0s3hoeQmN7teu4+Ipd1SjrKvlHIulINwZ8qO+oTpTV7KSkZTPGqK
         0IxA==
X-Forwarded-Encrypted: i=1; AJvYcCV9Qp+cOYE5xRXDRDYqLgd63tuMf2WhJ2QEFRsmkqbh6nisV2iSFDgJB9U0uguloHWXKVVIor4pn6sO@vger.kernel.org
X-Gm-Message-State: AOJu0YxhkRqi4INzqUf38P5gc9AhZuGparMpf02F8OUM4pQtA4c+8+Ze
	9AhaOebqgbaBPWt+4jNpDHhtIhI3W53bi1kQN37NCXBWL0PvtlMxVlIx8mZMHsPr3cyfPl/vLn7
	oRl+pp+UEuUrM3jsNeVbnU1V92CB7kDeS70BSSu9V6IhkI8/WnrQuqzLP9B4fqazV
X-Gm-Gg: ASbGncvFNyrRxGsbVbOnlbDoB5VTfh46gxJ7HuUYFS+bDiwpMNha4Oy3Ywst1Sov1A2
	a3MwDbSmfBbg3qSooWlMPHsXVWVulCT8CfdPTVpuwG9//6PSZ9QpRzJ7Me+bx/CijMAtM+86ou9
	xPQsvWPv6FOtTSzFFAtiuE9atT3WGKIaVmBxU205tdFeGwtfAkm8w/FdnkrYOyv5J4C+IPJwEub
	eVLrba69MLpM4+Ky/C8ErhsWSZsGLSPmVZZRjYp/mOCku98Ve2ViE8bU9UGBf1IFhzw10dOUZ4M
	i9xBnrLvgdf/i2s7FP6fqerbK20vNCAGO38aLSEln1m23FOgPK8PFT4ksWGYi7S+/J1dzw==
X-Received: by 2002:ac8:7c44:0:b0:4ab:b0a0:5b58 with SMTP id d75a77b69052e-4b0915b2ea7mr88011121cf.46.1754561826685;
        Thu, 07 Aug 2025 03:17:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFog7XVeNO1DWuYUw+8uakXHI7VfO0Cam05IxQrT4njSSBu3k4GA9z89rCO/DGT0Q6+Lpq0A==
X-Received: by 2002:ac8:7c44:0:b0:4ab:b0a0:5b58 with SMTP id d75a77b69052e-4b0915b2ea7mr88010821cf.46.1754561826232;
        Thu, 07 Aug 2025 03:17:06 -0700 (PDT)
Received: from trex (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c453ab0sm26613983f8f.44.2025.08.07.03.17.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 03:17:05 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Thu, 7 Aug 2025 12:17:04 +0200
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        quic_dikshita@quicinc.com, quic_vgarodia@quicinc.com,
        konradybcio@kernel.org, krzk+dt@kernel.org, mchehab@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 5/7] media: venus: core: Add qcm2290 DT compatible and
 resource data
Message-ID: <aJR9IJYz47EfNamO@trex>
References: <20250805064430.782201-1-jorge.ramirez@oss.qualcomm.com>
 <20250805064430.782201-6-jorge.ramirez@oss.qualcomm.com>
 <4chbcvub4scnv4jxjaagbswl74tz4ygovn3vhktfodakysbgy3@kukktkwd2zsr>
 <aJHgh8mon9auOHzi@trex>
 <ce9cf017-5447-457c-9579-700782f9f0c2@linaro.org>
 <aJRMUzF0GN2LFIZd@trex>
 <40d543e4-e53d-4289-9b87-5ca8c0139bbb@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <40d543e4-e53d-4289-9b87-5ca8c0139bbb@linaro.org>
X-Authority-Analysis: v=2.4 cv=Q+XS452a c=1 sm=1 tr=0 ts=68947d24 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=kj9zAlcOel0A:10 a=2OwXVqhp2XgA:10 a=7TY_VEaP9L5SwCdglBoA:9
 a=CjuIK1q_8ugA:10 a=ZXulRonScM0A:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: HRWT5zPQhrg6Moc3-A_KCtjT2BcjVwwm
X-Proofpoint-ORIG-GUID: HRWT5zPQhrg6Moc3-A_KCtjT2BcjVwwm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA3MDA2OSBTYWx0ZWRfX3XaXDCiEJZA+
 BDfdUydpr1JIMyfy1mtFJFuWRqbdpVGWJEdeLNhvaykJ6j8HB0fx8v9w+LgEDiXoPVszMFP+0im
 ZnXfEW8XvqApB5LfiTjgFQQG+I5ZtCPuf2vOysLdG5GsTa3LsZIst30H6WJOy13xU63JGlnhz71
 1JQuLCo9kyBrPVw5IeIMrfQRG7BFzg4eA9ei7vCPxFi2N2rlibWR+CuL2hT+sldZFHORA3QwL5A
 hiPzNU/TpT8L8Y1+D+7WhjXUa37P1lIq+Lgv8mHuvvb9xMRrYxKBc6XsMc0H/v6ZwPoHouff9Nq
 J0wqEecnyWeq8507GSNaYy26bFyMAW2Focsmk7vFEvLF9vcHVDmPpatrhDyEBRykfMAFPEOwi+Q
 GQJ0hpJW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-07_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 suspectscore=0 malwarescore=0 spamscore=0
 impostorscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508070069

On 07/08/25 11:11:31, Bryan O'Donoghue wrote:
> On 07/08/2025 07:48, Jorge Ramirez wrote:
> > > There's not alot of value to the user in that configuration.
> > I dont know the user base but when I originally did the code (v7) I was
> > thinking about security conscious users (signed firmwares) who might not
> > be able to switch to the new fw release so easily (unnaccessible key
> > management and updates).
> 
> Since the driver for the LITE hasn't been upstreamed the # of users must be
> ... zero

sure but that is just one dimension of the problem isnt it? the other
dimension is the number of users with a signed firmware that could _now_
enable the driver and have a working decoder.

that could be zero or plenty (I have no clue) 

> 
> ---
> bod

