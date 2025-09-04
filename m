Return-Path: <devicetree+bounces-212968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CCEB4441D
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 19:13:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B99271892839
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 17:12:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA2C12367D5;
	Thu,  4 Sep 2025 17:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ONcRKtNu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D621E487
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 17:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757005884; cv=none; b=hRjWa8PkUkJYDTTUyiAjE3hwtjsWw+hSp6hWIVEbbhrGh4QNyHaBibt+2xjXuZAvCNVVlQd1NiXrCHImXrDIIAY4W24ZRb/8BZ3LDu6WY3mxmQrnguePlT+aGa3hrXrzM2ofq3hbpw6skwHd0WmCX4EaT4Nlbo3En0q9ytCnQrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757005884; c=relaxed/simple;
	bh=lHk4L89lx+vb9XAx8OLCLmaMKvJ+eE2425QCj3EnWLM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bIRfzwyTIwl7QqjgoDEi0cvIl0VgDIAU6hvaI+TvanKg7tAOhT/Fkd5d/jgtkOQNnYxvh4ojEjbEnPkxCcHjRl4uurqSbH0h1mKl2dS4BYG2O/OSPFZG6kr0EZxAZozk70ihcaI4Ys1CVhHlLkEPl3qymKs9IXtNufuqYOU2zog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ONcRKtNu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849Y49L005051
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 17:11:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wDCU2fhHxVtiMCpIPYX39LME
	rM14D+YlATAbax0P9Js=; b=ONcRKtNuZ2oAbf/t4vVU4TRGrRfPX0Mnb9hZS/ll
	rrhvITBJwDhuZ6NitDUYWG7XXmoAklNdYcaQGfIGiFy7pllLIheLBo8isYIgrTMs
	rKun4dQ/cscDt8a9v18Hqn3PH3UQL54uSDDomPArslsdylr5Uj7sODWrl3AjELSd
	h2uc0eqhiTBIDi/HnF8uXQz89L8Cbw5rKYVkT4dFXnvEOU+CN20SNA0eqa7gffSD
	h/GQZeGvozVKvBI8pZkF4L238fP7Y+IkidIFA7BQApCsF85fh3sq1KIl0+NYLDEG
	YbOCtFmWdPWTjL5URfper/1IL0IisOR0M97kVjXSd7g6cg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ur8s8cbb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 17:11:22 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b4fba5799c7so1552609a12.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 10:11:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757005881; x=1757610681;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wDCU2fhHxVtiMCpIPYX39LMErM14D+YlATAbax0P9Js=;
        b=cArzI6xSw0nriUcB8fgYmMlu9wflWFAQC6/WEFqL8uJDqfpn4mrW8SHAlIn2cSLxlp
         9UQR992OZQhf6bZGak+BHpvxlsvA/QqpRzzc6sepZlUcd9YQUKCaZY8mVoJqUTla8Rut
         HE3WSqVKB20CTaIr3GVfQFvxlEpZbcUDHwNrN2prCclaxXW8kJOgbZWDgOqconAVGIXG
         MGcKyy3YdUYFPLJ10o99KRIsJ3VmrEe4i0u+qB0J/Q8WPbc/zpzaGgVqwEn0HWkB34j8
         OJ+sF44RMIzAi7MrsZZ7suvjJuu09x4nuaNZeG2RCH7Oj/Oy5559oZyqN2ON42wtYTyi
         y5AQ==
X-Forwarded-Encrypted: i=1; AJvYcCWeFiqhKsh34vkkclALdYezDzHKZagD5SZcnYQ48SDDbjbFiH6hGpbXdugvCsbNmbPg06S8qYBpljNW@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp2QlfDKuXohqDF/oPRNaAKenGysXAMwwbJsAIbdcQcD+qyrg0
	s6VnRRWpkZWNR2RNHCpvWY6gLeIGioTIsD3JNIHW6+44+i582ykVU6ft3sg59RfLDOVR0UGUGIP
	U216LLBJDdfaZcyQ06AruzxxTmvuCqZv3AS4XwCZikJgSJYl0niofs6wZKMsLF/e5
X-Gm-Gg: ASbGnctkLOXVrrFEE0desXkMh2zT8aYgGysuPJpxjTXb6VgBP7nXgqK2Vw6ic0Usy28
	SDOXsJHRJfOXwbV3qGn6nFH7EKWE9kNAYVya6MZAj4VKAtL+s9AfqNECwSOpPg/F/qVV4avVgRJ
	JPtF+/qHjX6P1/FSvKxSuw5C+pp1B5Y7C1cMUUfVPzaVfiE1wVos7uJb6osxTZeWbrHPsf+16a7
	AOk85EamoWQMtuQ02+LAZGEmx105qAxmr/qYiwSlmM2H9mbYjF0PpY102HPaL5SuYxnzhzSw7JD
	QY//np8XbUrBqw/T+nJrqeIUWzCd510Cf4DcfR9D6arnsx8NiVXSSvg4mOE2Ds45GgE426LmJg=
	=
X-Received: by 2002:a17:902:e891:b0:240:2145:e50b with SMTP id d9443c01a7336-24944a11d41mr292553855ad.11.1757005881171;
        Thu, 04 Sep 2025 10:11:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGR6rm099haqAykbn2/wkHJFgapnLtEXxFqzMUuEYbzOiP4N1fZ9bm5JnyU23uYu19+R3iCuQ==
X-Received: by 2002:a17:902:e891:b0:240:2145:e50b with SMTP id d9443c01a7336-24944a11d41mr292553395ad.11.1757005880692;
        Thu, 04 Sep 2025 10:11:20 -0700 (PDT)
Received: from hu-pkondeti-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32b9be55c1esm1901637a91.9.2025.09.04.10.11.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 10:11:20 -0700 (PDT)
Date: Thu, 4 Sep 2025 22:41:14 +0530
From: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
To: hrishabh.rajput@oss.qualcomm.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] watchdog: Add driver for Gunyah Watchdog
Message-ID: <eaa2bd28-ed98-456a-b374-3183e54123fa@quicinc.com>
References: <20250903-gunyah_watchdog-v1-0-3ae690530e4b@oss.qualcomm.com>
 <20250903-gunyah_watchdog-v1-2-3ae690530e4b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250903-gunyah_watchdog-v1-2-3ae690530e4b@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAxOSBTYWx0ZWRfXwABZ1E5zcN9X
 Cotl5EvHyiXIa5/kA011CBfNyYXQr9v1t3wQrYDP9q5k6XWDptfODbgYcEzAszXdioLpg/f/LDK
 IR4L2LyQgTgE2fc3tbbdGo25BOzJiNAeSQEETRSYw4ex+gH4rL/rvzvVMkq7+9aXLEPBqG4Cj9x
 OyDzYuY5pnpgDc9LMng6Th1ZXfVQDr55/XI39EtIJnaoyRON7HKGSY86PLyLhJTqS2w5qf+ZvEe
 ZnWhfuMA4IlirkwsQHGqBOZ8UPDjsePlBV4onf1mpHfU6g1qN3RcT8lbjitQRGPx9buzM+UVHew
 tJK4p7bKvS36vnBvae04wmdMhKQlzsJ/4eMac05B9UtDgECfIAsh8QensyZUndN3NkjQjK/rSEr
 kPAnDj3Q
X-Proofpoint-GUID: 0lQvOBe71vNoHQIkoy3WMhZPcjz3P9Un
X-Proofpoint-ORIG-GUID: 0lQvOBe71vNoHQIkoy3WMhZPcjz3P9Un
X-Authority-Analysis: v=2.4 cv=PNkP+eqC c=1 sm=1 tr=0 ts=68b9c83a cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=yJojWOMRYYMA:10 a=jv4jVC-EIb5C-n9TUoQA:9
 a=CjuIK1q_8ugA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_06,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300019

On Wed, Sep 03, 2025 at 07:34:00PM +0000, Hrishabh Rajput via B4 Relay wrote:
> +static int gunyah_wdt_call(unsigned long func_id, unsigned long arg1,
> +			   unsigned long arg2, struct arm_smccc_res *res)
> +{
> +	arm_smccc_1_1_smc(func_id, arg1, arg2, res);
> +	return gunyah_error_remap(res->a0);
> +}
> +
> +static int gunyah_wdt_start(struct watchdog_device *wdd)
> +{
> +	struct arm_smccc_res res;
> +	unsigned int timeout_ms;
> +	unsigned int pretimeout_ms;
> +	int ret;
> +
> +	ret = gunyah_wdt_call(GUNYAH_WDT_CONTROL, WDT_CTRL_DISABLE, 0, &res);
> +	if (ret)
> +		return ret;

When I ran a simple echo test, it failed here on SM8650 with -EINVAL. May be Gunyah
does not allow disabling watchdog when it is not enabled in the first
place. May be something you can check if this is a difference between
8750 vs 8650.

It also points out that your patch needs some prints upon error. Pls
check and update the patch accordingly.

> +
> +	timeout_ms = wdd->timeout * 1000;
> +	pretimeout_ms = wdd->pretimeout * 1000;
> +	ret = gunyah_wdt_call(GUNYAH_WDT_SET_TIME,
> +			      pretimeout_ms, timeout_ms, &res);
> +	if (ret)
> +		return ret;
> +
> +	return gunyah_wdt_call(GUNYAH_WDT_CONTROL, WDT_CTRL_ENABLE, 0, &res);
> +}

