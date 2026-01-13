Return-Path: <devicetree+bounces-254276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F47D16C19
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 07:00:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7F49E300F31C
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 06:00:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 166E8366DC5;
	Tue, 13 Jan 2026 06:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J//v5bxj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bdox6zqg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89556366DC1
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 06:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768284029; cv=none; b=iyRPnnLN8+RtdpcU1MNVtXjjJ8EeNIjeLws56087YUiwY6tHID8SGXQuJD7FsTT0LbvE/r5UjvTXhSPGFu5kEAsWO1Bb1UMCdYi3OLsz7Au+mUQ+f4912AwPrX8bHOKHfdokwACO2L33as9rQDgYzF4T/cCF2UsK7gRhMtdnlso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768284029; c=relaxed/simple;
	bh=GyizflXmDkeMwey8fNWeYA/n7FXwx8/LmQyvu/lTlU8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EGBu1FlRu7vggNw8VLYZL3eOC1e9NbaAUFNbdLHK83hfmNzny3+xN4dMB7Xrh3JqZDcWYlv6qFq+QPuKpB5Ide3GYS9ji+95PhMsYBpPuV8wcbhhbsCC8P/mpWMXD2KMHJ/C3dGrrveLK+oV3Trx9dl8hMvjle/+bWyCFMcYEZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J//v5bxj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bdox6zqg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D5gqfh3810630
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 06:00:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=stonWrxw1hOrnnAAqvCCp8ye
	sATlJrTV8+OUqTUDzM0=; b=J//v5bxjjb+ZuYEfGAiDKenJdVB+ZP0IgkBb5IIF
	/AvucgIaoUeJtEuQg1++NgqKY+ZPlLFcup9DuUfe119aGwgRPvcAwGDwDKWfZW8J
	hOohHBd4jgAbQxNZvEASJsRu8w9vRGN6tZDHnY7GKRSqbT5NH0xuoABNnrFr0rbf
	skyTVEFzxos0y59cvuYpKBNiLwaN4q44bJzpxVRRWwURmT/k9u5OuKMWMtPX7ESt
	bGktXOY3sbxUCswaMzpFwacA/ZGWIfS1L31gzRMrGUl/fSnFebi2ifPYh+LuqMUh
	jrgESEGn88xk54HnXnDjk+86EgkIqD1iQClSPNGzN1A6dQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bng55r1rp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 06:00:26 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c5539b9adc3so2334566a12.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 22:00:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768284026; x=1768888826; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=stonWrxw1hOrnnAAqvCCp8yesATlJrTV8+OUqTUDzM0=;
        b=bdox6zqgQ2zYfiuS8ah3JU7ZeDIOmym1wwjFpW6yXiUuYT2mRpzQYFrK9gIpHksfVO
         2NOlVm+Xrr+7unU10miPeCr3MqCyVLoL3L2QpUAOmg957x1fxcLlDhfC5CDD+qrT7ULR
         tWLJzM5FQ8zne78OPuZLIH8iZ5sjK323u3qd2zVi4KavK8t9S+h7wniKb5FXG5JSExG0
         2e0SZ6ICz8gDOIHL50d9AGlV+E65cZgmOmh371BHH/uyr1u4boPKkkILHKfHdbSciJtb
         iNPuVBBxHpPPdiH+pn3eKBlAxYyw1ZqYUBDWnWmDWTZ6o3SZK2QTJa7ZbgosMICEsLb1
         O/vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768284026; x=1768888826;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=stonWrxw1hOrnnAAqvCCp8yesATlJrTV8+OUqTUDzM0=;
        b=LInU0GdjOy6pbtTM6EndSAgdQr1r9FEuh7XthQCRQqwCwp6u8KzqYTo9axI8cQ8E0L
         CDZQUFpdr63w8e8hIXovu2W+jm8M4fFQB9xMpJf+K2d0Gf3Hemea9m9DYBZM9rmGxYN5
         OXy0wn2eUhWG+1C5dzYOyG4LRJtJOnliAeTPcrj2pPQcgo8T/Pm1DZh4VS/ay36G5fpl
         /behPY4e9oSKLbjLJ4j+vQXAWeMWRQXgO7WZQrqLdrEhMOP4c202fxkocXV6hkMsyrgm
         1XLsMh7QDqRyzU34T5BgNTDfdRiNqQ9iELPVq73u1CaKe7QliOeQL3IGGNbU3mMDoMKg
         LTSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkdBB1E+QGtFsLn8MkaA9pQm9qAzty4xyUzWdc38XbbEwWTsReJu6pslN250WQZN3tC4fN0dIP6FWn@vger.kernel.org
X-Gm-Message-State: AOJu0Yx66QGsnNVb08deAeyHHxXLGRDUhilm0eGIuF6TjYynYkpUj4SG
	WRhprmS47KMRpXgShpwm3RnH7ZVuVtVACti5VM+FiYZwuCgq77Mn1EhX8JLcB1QhY8gDieLuYmg
	ZpDqBVYauNUnut8WMS4QkFETBhitoTC+dEIZdSuOE+ciF9JUvcftrZO1DV0ua5ASN
X-Gm-Gg: AY/fxX7pLn5VSAmdY8BFPrerVOdYCCF9Ki/oNGr78D0zXu21blQMUHCr8dN3KK9ryPO
	zmpbpJxy47wbEjQDf+COBs3F99QwCjXBsMK3u1w/kKPuhrlQzhe3itbcFR69Y8wx667woayjsoL
	5UdXPFh+B/nqxKcDDKwlCjl5agkd4aFzEr61xb+j/NStCPZF0jUIfupihCD6ktwllSEQ7XvfuSN
	4M+YTqTWDcd2GtR9sHYKIwPlUxpbYaYIoSY+Yl8W5dIsu9KVrpsWPmkR53xnfYzid0z4JaJLIU8
	dUqstd+LQgWDFs/dKzt5yoMxNhWWUv/SSFIyziOY/eBYAIw6kUXMarsha9QPXQvvsqBPaIlSXAb
	ZeXrXsftlrQj9GBL1gJ52TZUP9wb4ni+b9cvvUVUNM9c=
X-Received: by 2002:a05:6a00:418a:b0:81f:3c34:fa87 with SMTP id d2e1a72fcca58-81f3c34fc40mr7134642b3a.43.1768284025718;
        Mon, 12 Jan 2026 22:00:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFzriEAv32sShwkYbin2lZGXWxPg4JUE3UwnURDPe26bwdwWe5NY1cKkZKtIr2dNdLtWQQyqQ==
X-Received: by 2002:a05:6a00:418a:b0:81f:3c34:fa87 with SMTP id d2e1a72fcca58-81f3c34fc40mr7134610b3a.43.1768284025227;
        Mon, 12 Jan 2026 22:00:25 -0800 (PST)
Received: from hu-pkondeti-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81e7fd708fdsm10435100b3a.65.2026.01.12.22.00.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 22:00:24 -0800 (PST)
Date: Tue, 13 Jan 2026 11:30:18 +0530
From: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
To: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Guenter Roeck <linux@roeck-us.net>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v8 0/2] Add support for Gunyah Watchdog
Message-ID: <52bee465-192b-411d-92bb-14defea6e070@quicinc.com>
References: <20251118-gunyah_watchdog-v8-0-e5de12e2eef5@oss.qualcomm.com>
 <6a8f5d62-f6ea-44b3-9baf-acfbc1e58efe@oss.qualcomm.com>
 <992d46b7-b053-4a9e-ba04-f5653525a891@kernel.org>
 <43e48560-2848-4474-b858-a3d15944e2ee@oss.qualcomm.com>
 <e9e7dbbf-f7f0-4b66-9e3f-7578441dfc5a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e9e7dbbf-f7f0-4b66-9e3f-7578441dfc5a@quicinc.com>
X-Proofpoint-GUID: H_0swKxQi3Q_Bx5JxaRPPp5VI5w9zYb3
X-Proofpoint-ORIG-GUID: H_0swKxQi3Q_Bx5JxaRPPp5VI5w9zYb3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA0OCBTYWx0ZWRfX3cwgTKdFsXHF
 61RX9/XX4cMRBRV11rf0NkTIoiL/zUu9WqnSHiK64dlDbCm5dYs4ZHMQgXO19b45jp++C0pEdq0
 8tQdTs8Lu1+GOJ789nPk6kg2wWAYqAe76gcHckFpL0B+AeCkaJ1vLShWtMeEKRTQVjqL9rtXNhg
 ocrpJ5SoCbyRhaZs+D39hy2pRGwqpvaKOkGIIh6BFTlMuzRlnqrzAJOxsGj44piFuoZtDxx+5RU
 Bvyyrm+hoYJ/z679gVu+toStUYthzZpMIgPaKH2fnQNHJKNUOX/SQRrJjiBaEQ0LZ3wT42o5PLd
 ukZLE1EwmjL5d0de4y930md835kKWxN81+5tke+EpaGZ2uurlETmHeoLCm5Z6vN92XRX4esACii
 0OuTBsas8FSV9ySKl/N/K+0LDlwIRzOmD8VnuFyNwxMmCLLmC6hmPraV8KkO9u9advMyJ8SYw0e
 bxg/dWr45e9SNpFa5dw==
X-Authority-Analysis: v=2.4 cv=IIsPywvG c=1 sm=1 tr=0 ts=6965df7a cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=q6RYwQjEvDeYRQ2b_2sA:9 a=CjuIK1q_8ugA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130048

Hi Bjorn,

On Tue, Jan 06, 2026 at 11:25:49AM +0530, Pavan Kondeti wrote:
> Hi Bjorn and Wim,
> 
> On Mon, Dec 15, 2025 at 06:30:47PM +0530, Hrishabh Rajput wrote:
> > 
> > 
> > On 12/2/2025 9:29 PM, Krzysztof Kozlowski wrote:
> > > On 02/12/2025 12:23, Hrishabh Rajput wrote:
> > > > Hi Bjorn, Guenter, and Wim,
> > > > 
> > > > Just a gentle ping on this series.
> > > 
> > > It's merge window. There was no point in pinging just before merge
> > > window and is even worse to ping now. Nothing can happen with this
> > > patchset and such pings is only noise.
> > > 
> > 
> > Thanks for the guidance and apologies for the noise created during the merge
> > window.
> > 
> > > > 
> > > > Since the patches have received Reviewed-by tags from Dmitry and
> > > > Guenter, I wanted to confirm the merge strategy.
> > > > 
> > > > Bjorn: Are you planning to pick the QCOM SCM changes separately through
> > > > your tree, or would you prefer the whole series go through the Watchdog
> > > > tree?
> > > > If the latter, do we need an explicit Acked-by from you for QCOM SCM patch?
> > > 
> > > Where did you document dependencies between patches and any non-obvious
> > > merging? I open cover letter and there is NOTHING. I look at patch
> > > changelog and also NOTHING.
> > > 
> > > So if you tell us nothing, why would we care to think we need to do
> > > anything special here?
> > > 
> > > You must explicitly document every dependency, both external and between
> > > patches, in the cover letter. At least cover letter, some people (e.g.
> > > mostly me) don't even read them...
> > > 
> > 
> > This is a miss from my end. The following information should have been the
> > part of the cover letter:
> > ```
> > This series spans 2 subsystems and is split as follows:
> > - Patch 1: QCOM SCM - Register Gunyah Watchdog Platform device
> > - Patch 2: Watchdog - Add Gunyah Watchdog driver
> > 
> > Dependency:
> > There is no build-time dependency between the patches, but Patch 1 is
> > required for Patch 2 to function.
> > 
> > Merge strategies:
> > - Strategy 1: Take both patches via the Watchdog tree.
> > - Strategy 2: Take Patch 1 via QCM SCM maintainter's tree, Patch 2 via
> > Watchdog tree.
> > 
> > Since the patches concern primarily with the Watchdog, I suggest we go ahead
> > with Strategy 1. If this is acceptable, I request an Acked-by from QCOM SCM
> > maintainer for Patch 1.
> > ```
> > 
> 
> Is it possible to pick it up for v6.20? As mentioned above, both patches
> don't have compile time dependency, however the QCOM SCM patch is needed
> for probing the watchdog device.
> 

Please let us know if we need to split the series into two separate
patches? or is it fine to get first patch through qcom-next and 2nd
patch through watchdog tree?

Thanks,
Pavan

