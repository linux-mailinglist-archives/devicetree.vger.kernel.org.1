Return-Path: <devicetree+bounces-233719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9444CC24F19
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:13:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 91DC318840F4
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:12:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 319053469F1;
	Fri, 31 Oct 2025 12:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pxuhDPyn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="g3Qj5VFp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AD0F2EA755
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761912727; cv=none; b=adqLcW5jyMT13skuLtdOuC20iiNw1QuUvuE2sMCBFaYIh9xqxq8IE89/B8sd8ahfbY+q5TF0EiaxRjLfaABHbh1B8zwsumNmnBKsJb9IKyM2dbyZuryez8LjJBhtfWgmSJ3MNPFbWO7nnDZW4iA6DDOPRYbog6SyqcKQu0hNKW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761912727; c=relaxed/simple;
	bh=histqgWYWRJzF/fRVEEH99JEM6BEShvYwzywG0nFBU8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dPs/3LsvsgPzkU0vJSbbwUSyJYXDNuaOICqCB90CJGqMOAbU4s8Hq8s3pflxsFGmy0T4sla4ZVs8yr7jBqYDHjW6pfzdKZtkC2DcXiFFdithsGxj8P9cg8CaIpLy8Q2vhX0HbreVS8JlS+h1XT2hFYRlvpJepHHZFl6NgqNrtF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pxuhDPyn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=g3Qj5VFp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59V9tIHA1513353
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:12:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=t0ntCCJGokp8wjeBNRQ5jO4E
	1nDyS9ibjhGJgiXXXCc=; b=pxuhDPynTe4oatb/be/N1kufH8tqBh8BbQmUFBc+
	Umae1vEejTxvazmw5bvc+rHDy6X0tdczjJq/396cXHR2D1eZbWcpYCcNjHhmdSNF
	LC1jiUmQa3FR7DHngMBz09YZ+OR+le24Hkt4/7DA7RUAOqaAy1rGZmE8d3nBAr36
	VRX1BOc6HJdEUORYGDWcGtja+amIz9ACOq3Sn9yRgGfCpQXAzMi14saO8+P1xJhT
	w2JZ8V676+YMrKc/jV3fkQGy5P0EfXnrPbB/AO/dekXxSWOZ0p1wPP++V0z0R+cs
	vi1X49No2SxHc9HfuRR2Fq0cDjcQp0Eslg/3yj26SrmlDg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4k69hkxa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:12:04 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29526a0d1afso7707035ad.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761912723; x=1762517523; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=t0ntCCJGokp8wjeBNRQ5jO4E1nDyS9ibjhGJgiXXXCc=;
        b=g3Qj5VFpmdzMgFRIWYk/86ia0QXtSJFsijt7DwVPNqQaYLl6juwxZbWawflu9i3RoT
         ZbT7ibdU+fkGOYMbjnIjxrWITdMy9w4TWpDmprxKhS8/VuIDpwEdhp1BZ6hJNlz8MEky
         nPpLgQ44C2SM29xc6TC50/FvKA341keCjQPYbODxR5/cHRVIqCjvkIGI1qUg/X/rV4GP
         GTBUm4Pit3LDDJiHTYE4RCVnzO4gQBwy4DlVVftbfJSG4HIPtH47gMaI8f57nzCdYeov
         w4tWHFuoQq93rVitIypsNeO1ihj0vc2uY9c1nt7g60QwTtbBJQvXhLOm2fSu0OXpabFT
         qWLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761912723; x=1762517523;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t0ntCCJGokp8wjeBNRQ5jO4E1nDyS9ibjhGJgiXXXCc=;
        b=MOj5Pj+Hk2lDplwhDM3EwCoPGw4PBIL7FJg5QRL2m4JoyqOgqJefGIlBfHc3Saaj+z
         dx+csR4UpJbCBfEzaLhRgrpBvgNopJsTbdwKdt8xyYxF+Bg23qlFWPLSSl95s+Xseqwn
         V5eA0v/9UP8UkLH/NHHcBYrGxjQjE8ea1/qBX6XLDoblR5WGjwoVj72qj7ilTsgzhFmi
         gUhLMLRQknlqedNOzTnyK8hmPA9FQiqn8ILfE7rX3vKrYkhApVjkMzihNbrLOP4V4FF7
         D+JRL+qHTLyS90Izks3OjpTIgBuM6uSCkQOgyNIiT/0Oxo8zXrMaM9DWyLGRaf11v4S0
         n+HQ==
X-Forwarded-Encrypted: i=1; AJvYcCUURI+n3fwyf9jXJSaK4PoMpzF5Vpr7pExRKKwNJau6eDfBJ6v8j3+WR6fCseed3lTVPNQcda6zJBi3@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6nq5X4C5CEMriiU4+nZbX3p7u4DiZRukyA+asfUCzVS8hjqaA
	BrOc9/+oHc+odN4H+yvhS2biJRrfbiekkYhRv+Ol4+OEvjMYkhGwfroSomqYhnfcsaFJTVdfsb9
	2oKTzA0TbLwSeMAqXiXyIxd8gq1K6zVmTqYRiPHrik4ldgfzRc7qVaDgb1rH80cRG
X-Gm-Gg: ASbGncu88ZdTshJS9ujFkmlrKfLEHkyIa+ZiiNC87hldpDai+CQ459awX20BKgqdLuq
	S3xM6cN86n/Ib9ivxCrhSlrpJ7C1yJeNPRjZpK7xsxFJRqk1Wu/rjGgVbn9fH0MgWwlbnBaMWg6
	C26YYqUp9Oe3nu22VvVCToQ8AQNJNOpJwJ37I6Q63nGw5iiV0spbY2mpTHY+cA9+isXb1lt2x3+
	8QHIrGYRh7v2ncOugOIemdKag7MDZSpVyIFS4wMC317xE6NZqgs7zJXQLrQAJyy2kvb/6BxSHVa
	o4ptTcKV+rt6ynjb9zY0IUDNTZePU9trKmVchrv0qFVHlraYisRCFG3Rbs2adehJWR2XPKotbZn
	3BV/JO0yN5dz+xm3V2fAGt0RvwC/1jYIs
X-Received: by 2002:a17:902:dad1:b0:27e:f03e:c6b7 with SMTP id d9443c01a7336-294ed0982fbmr89140575ad.10.1761912723489;
        Fri, 31 Oct 2025 05:12:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFkkeZRsiuTlC1EpCac6wkygqEXe2Ou1I4f8XHFqwZycCb3yybQhK+4zAvwptAWwbxS1hO5w==
X-Received: by 2002:a17:902:dad1:b0:27e:f03e:c6b7 with SMTP id d9443c01a7336-294ed0982fbmr89140035ad.10.1761912722819;
        Fri, 31 Oct 2025 05:12:02 -0700 (PDT)
Received: from hu-pkondeti-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295268b553bsm21984775ad.39.2025.10.31.05.11.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:12:02 -0700 (PDT)
Date: Fri, 31 Oct 2025 17:41:56 +0530
From: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: hrishabh.rajput@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v4 2/2] watchdog: Add driver for Gunyah Watchdog
Message-ID: <09e8485f-f512-4069-be9f-3e94fb142aa3@quicinc.com>
References: <20251031-gunyah_watchdog-v4-0-7abb1ee11315@oss.qualcomm.com>
 <20251031-gunyah_watchdog-v4-2-7abb1ee11315@oss.qualcomm.com>
 <13d2963d-e931-4e51-b875-a1650b899bb7@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <13d2963d-e931-4e51-b875-a1650b899bb7@kernel.org>
X-Proofpoint-ORIG-GUID: QBXzaShrAupo9O_-ZDKw2jm5BZe1_Awn
X-Proofpoint-GUID: QBXzaShrAupo9O_-ZDKw2jm5BZe1_Awn
X-Authority-Analysis: v=2.4 cv=OYaVzxTY c=1 sm=1 tr=0 ts=6904a794 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=SWRU6URpa7t1zXFJtNkA:9
 a=CjuIK1q_8ugA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDExMCBTYWx0ZWRfXxDlov/1oHpjN
 z+21GPlloVx4lrCI2Hy+VisybPKnf2hVHijS5qogOoQ8xKidsEJHXYMbuOEpoOjnWspWjMADySQ
 BXAvr9f0+6EWa4BzKGFmEXRGjBl3++FmY4Ujjb0zUJP2Oy2yKTNplgR87bUtTQWto13Q0/TzsYf
 /qwN9NI4Wf1T5uVCYdm7pa4sewpmpSAhQReGyXmuvP0D4ZuaFvMnZcrgL+GmheXj+d8pvuY0Ct4
 44ENSP7ILHDElwTIcc2yk1iYLwQg6+bPtk29x5NIRyZ8fx54IOaz0EtCzyOsF613VaEuNOkefFn
 soJPGuSby1Y9APh7siarcPaRJvUFjmg7NucS497qUvYnIaVHGqEPmXlMJEcL+DT67m7RM4+Qlgc
 zE9Cx/+PaPbwo1XzCZ4skB0rVQJlkQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 malwarescore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310110

On Fri, Oct 31, 2025 at 12:48:18PM +0100, Krzysztof Kozlowski wrote:
> On 31/10/2025 11:18, Hrishabh Rajput via B4 Relay wrote:
> > +
> > +static DEFINE_SIMPLE_DEV_PM_OPS(gunyah_wdt_pm_ops, gunyah_wdt_suspend, gunyah_wdt_resume);
> > +
> > +static struct platform_driver gunyah_wdt_driver = {
> > +	.probe = gunyah_wdt_probe,
> > +	.driver = {
> > +		.name = "gunyah-wdt",
> > +		.pm = pm_sleep_ptr(&gunyah_wdt_pm_ops),
> > +	},
> > +};
> > +
> > +static int __init gunyah_wdt_init(void)
> > +{
> > +	return platform_driver_register(&gunyah_wdt_driver);
> > +}
> > +
> > +module_init(gunyah_wdt_init);
> 
> 
> Heh, what was my last message? If I see module_init() I will NAK it.
> 
> At v3 you really ignored entire feedback and this one here continues the
> pattern.
> 
> NAK, please read how Linux driver model is works.

You mentioned in your previous reply that

```
If you call any module_init other than module_foo_driver I will keep
NAKing your patch because it is wrong. I explained why wrong already
multiple times in previous threads and other discussions.
```

If you are referring to why module_platform_driver() is not called here,
Hrishabh answered that already previously. Please see
https://lore.kernel.org/all/ndwwddd7vzjpgvzg55whdno4ondfxvyg25p2jbdsvy4lmzsfyy@jnn3wywc7xtp/

If this is not what you are referring, please let us know. Thanks for
your constant support/feedback on this series.

Thanks,
Pavan

