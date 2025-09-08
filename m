Return-Path: <devicetree+bounces-214140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8382EB483C8
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 07:49:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF7D9177150
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 05:49:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5291722CBCB;
	Mon,  8 Sep 2025 05:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gIaMVnUG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACBA4230BF6
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 05:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757310568; cv=none; b=SeRfwkr8luv7sDB9wsRbTGWTB7/FmWq2dTRY17bj7LikZzjF1GL5SwXxcZx5nC7E6hQESxq5VRhV/XY3emyZeFPmBDUlwJm7PqMyrDlDIqDYrrRgpVQO1R0DohTuT6s0VA0OGMprmuGecsdrseL6otaolNH8NzPbHaQ5sNcthfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757310568; c=relaxed/simple;
	bh=qyyzHcfumVHL+j2s7KL/IsLGqQoqyh556LdxwZIYtMg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WOCOH58C/KUWynhAzoiiZFhcIUZgrli6FYXWkRJALUdc1KcLVqzKDUHSeJ2QBpBa+ht2RNsbUbyLRe7aUKVeX5OSUpQF5DI7Vu2V1WmD6qaHT9KSzYifPVKbAFB2RegHZW3lXGXKhejXTeQsi42trYrAIEbb3VZhv2EjYJUXv+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gIaMVnUG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 587LuMTx029406
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 05:49:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2ElCUchBrKSszQElvyrhk0Fp
	wx2I5MCqcQFlUSaDT6w=; b=gIaMVnUGQy2dxqYddL47kUfPSjdwIECBprXODOUN
	g859EP8XZTMGD7LSnR6K3xz1Gn59wQJ9KGuZKD08P6Rk/M05wmBuC7LPwHPjwyx2
	fVveIyFbw66RnF6SeuvhuCmiPIkqZTXzE487hrtbGOGt000kyLiruhcmjjoL8kTH
	gstcIcH6QuhwpKSdKKJoyJW63xMUgnoEUL4WXHzTQkv3TqEib5MBrWGXvDAgKIf2
	Cqyp2m1x4ctdPawbsaZ1BmqbyLWSmbOwAmDud2PPZKBjSe0TaE0TZIEYBMF5PGrH
	DahFK8TtjwC8VaYh2G23BP8B0LjQUgzBASdILywGxE5uuA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490by8uf2c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 05:49:25 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7725a76dcb4so3563260b3a.0
        for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 22:49:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757310564; x=1757915364;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2ElCUchBrKSszQElvyrhk0Fpwx2I5MCqcQFlUSaDT6w=;
        b=C38EzMbqsJSpbpO4CPmhgFtXYucVPa0t2U85aJcDZwS7iVZrRgjAJMg4MHZdL2HAr2
         ef6BMwB7W0K85bruAv5Q2rKxy3el2Gw2CFMYGYnCwCdovGvrgVxtsjKplzTbr+meIjB/
         fNzZnw/NyOp2ujkBKVXUf07zQptekuSdp7+StlqdpCeBTIza7XkcUzeL7Uz9SHbzMEiN
         3AkxQ+7LDvC8dDuSJum7t+qSMLEFKjMJtbQzNWGIqJu63uiOYzwbANCYKaGB8K1ye3zb
         f58Totk8FlsAn3RnIpRIrjXmbkoQG3WO6CIR233TSbb/xcwkMtzyk4Q6M6vstAa9NVbu
         ZTpg==
X-Forwarded-Encrypted: i=1; AJvYcCWH8A/ibx8+0CupaXR/+twpQp5zbRWoAhhCUWkk30xawh2mtvzD8qg0KTyDdxnkdLUaTGfXg0MCagIZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwxHtiisDzxiGhpEtahvz9gXyJ1UVxnOjwDYPG3GAe7c3+IpmLp
	NBExzVqICee3jEyXzmYlt3xhIhUW+c2LWhdD2tCdjkHlPOI0bz4hXLNesU+an76pPnwD5wAfgoy
	shlvFMng+GDYxgw7N8t3mg2RhnWPUalYG2MYa/FhUIyeCeXz8SET/R1sq5xok1tx2
X-Gm-Gg: ASbGncuvm9sLl+j4QG1ZhU4H04bfTPTwk6/UkxHRTqZutf7kacjIauCqqoEEV2QroR8
	YNnvDsgM8BAFuoW+V7bfGOUNgwv3oXw9fzGKmZJhatqy02/mPW8e6tcCtoiEvKLLjb3W6mTR+jC
	G+Gm+hez7ZTlU2ApoaKV86MrrUDfSLwzFA4YVl7EoWUJsytFCfA+uJmLIa17/y7LgLry4cUg84c
	XEbGomU/TIVnhVPkNzh8t1xRodaqrZ9l4oUzIWS3/aQ8dl2sBtQgukVgEhmJYl69J3ayqSFPpSW
	H5fyUlwbOgZ6fL0r3GX2G8pv8xEKkJGviBJC8CmXWV5t0BVQXDJNnfGTDjtwiFHB7j39sQs90Q=
	=
X-Received: by 2002:a05:6a21:33a9:b0:249:18e4:52a9 with SMTP id adf61e73a8af0-2537746f99bmr9696169637.9.1757310564132;
        Sun, 07 Sep 2025 22:49:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHAK7iuQyO5FD7MZvZmx1lUHoGW9ZJA2QTZ+HOELrkcmlWk3nSRLy+QV9ltV5l0BXRVky6vlw==
X-Received: by 2002:a05:6a21:33a9:b0:249:18e4:52a9 with SMTP id adf61e73a8af0-2537746f99bmr9696143637.9.1757310563622;
        Sun, 07 Sep 2025 22:49:23 -0700 (PDT)
Received: from hu-pkondeti-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32d76adaf0asm2692287a91.1.2025.09.07.22.49.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 22:49:23 -0700 (PDT)
Date: Mon, 8 Sep 2025 11:19:17 +0530
From: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Add support for Gunyah Watchdog
Message-ID: <499f88af-30f5-4507-a90c-d592d0bb4657@quicinc.com>
References: <20250903-gunyah_watchdog-v1-0-3ae690530e4b@oss.qualcomm.com>
 <20250904001014.GA3405605-robh@kernel.org>
 <a547ecce-31c7-4627-ac6f-aeeef81bd0ff@oss.qualcomm.com>
 <CAL_JsqKuoJrkActpLXVUW9e9=R1FESUbD_rwBd5NGX2_Yv2ASw@mail.gmail.com>
 <99cacf08-0fb4-4b44-9036-96ea5fe01c10@quicinc.com>
 <e7f0b014-3dec-4276-a2dd-479d4248c7e6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e7f0b014-3dec-4276-a2dd-479d4248c7e6@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Yv8PR5YX c=1 sm=1 tr=0 ts=68be6e65 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=yJojWOMRYYMA:10 a=Zv0-hWJqaCTQErOTT84A:9
 a=CjuIK1q_8ugA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: QInRYd0clAwApAKE5tUGnwPCQt8gU2aZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX1rHR4QMJoah/
 hFyE3BUT4oBCWPeQVw6RjNjgJXUxJqIOokCdcT5bhMC3cNgzsZw0kyQVu/9T6T1EOs2JtVr0OP+
 s7bHffDWxN0viSfRJCz5ROVdHV4cocxxltls6o/9QNlJrvz3tvVOyBpK4MN3VNM/3ellPckrdBP
 5binyeRkx9aQPK3qn5zvE4Fiv6QW9elKUoBEK2SnE0BzwY8lP0tOhaoK1d49kGSqGElw+3kcd54
 poNIT7vVttu4A4ig9wDRK3v3SjDxty36XJ42Sa8+1ayIMtjQuzIHaruL0yKfN1EKYasthXNIu8b
 C00f/wUBmbUogqMzWI0vsyMbVu9/BA+R0yXUnd4Y4xOaqk993tnRR6gGHkWvnjsuBiwXRbfyqh4
 LS4xjEGe
X-Proofpoint-ORIG-GUID: QInRYd0clAwApAKE5tUGnwPCQt8gU2aZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_02,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018

On Fri, Sep 05, 2025 at 12:18:06PM +0200, Konrad Dybcio wrote:
> On 9/5/25 2:00 AM, Pavan Kondeti wrote:
> > On Thu, Sep 04, 2025 at 05:51:24PM -0500, Rob Herring wrote:
> >>>>
> >>>> Why can't you probe by trying to see if watchdog smc call succeeds to
> >>>> see if there is a watchdog? Then you don't need DT for it.
> >>>
> >>> There apparently isn't a good way to tell from a running system whether
> >>> Gunyah is present, unless you make a smc call (which could in theory be
> >>> parsed by something else, say a different hypervisor..), but then this
> >>> patch only introduces the watchdog interface, without all the cruft that
> >>> would actually let us identify the hypervisor, get its version ID and
> >>> perform sanity checks..
> >>
> >> IIRC, last time we got just a gunyah node. Now it's that plus a
> >> watchdog. What's next? I'm not really a fan of $soc_vendor hypervisor
> >> interfaces. I doubt anyone else is either. We have all sorts of
> >> standard interfaces already between virtio, vfio, EFI, SCMI, PSCI,
> >> etc. Can we please not abuse DT with $soc_vendor hypervisor devices.
> >>
> > 
> > We are trying to make the watchdog work with existing SoCs, so we are
> > sticking with the existing interfaces. The newer devices will not
> > necessarily need DT to probe hypervisor interfaces.
> > 
> > To answer your question on why can't you probe watchdog smc call to see
> > if there is a watchdog. Yes, we can do that. It is just that we won't be
> > able to support pre-timeout IRQ. This IRQ is optional for watchdog
> > functionality, so this is something we can explore.
> 
> FWIW Rob, we moved on to SBSA watchdog on newer Gunyah releases..
> Which is not ideal as it's still over MMIO, but there's some
> progress

Gunyah running in Latest SoCs do support SoC watchdog emulation, so
Linux does not need to worry about if it is running under Gunyah or bare
metal.

> 
> I'm not a fan of including the hypervisor in the picture, but as
> Pavan said above, we're trying to squeeze the least amount of hacks
> necessary to get the most out of existing platforms (i.e. ones which
> will not get newer Gunyah).

Thanks for enumerating our goal here. we plan to support watchdog (hence
collecting dumps) on existing platform where Linux has only access to
this SMCC interface.

> 
> Perhaps we could extend the MSM KPSS watchdog driver (which pokes at
> the physical watchdog on the SoC and whose DT node represents
> "reality") and have it attempt to make the SMC call early during probe,
> making way for both physical and virt configurations without additional
> dt alterations..
> 

We have to be careful here. I am told that SMCC interface might not fail
even when Gunyah is emulating SoC watchdog. We can do something like
this.

If we don't find "qcom,kpss-wdt" compatible device, then we can add a
fallback to Gunyah based SMCC.

Thanks,
Pavan

