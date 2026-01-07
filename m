Return-Path: <devicetree+bounces-252437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7A9CFEE07
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 17:30:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4AB1A301E692
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 16:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA09034847E;
	Wed,  7 Jan 2026 16:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M7ommpBt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="X8yxXXHD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9EE733C18E
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 16:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767802706; cv=none; b=rwhHhYeaI3ZhBCcr0bQ7fkQZCXpiAQIdrDUEtgzAU3Usyc+vvM4xZ7SjAzDNcDS+f5YtLGCwp4uubI0gOzKhWX2W/RYk0b9HMS5BS3ByrTxELBOHMCIT+keIq5uEjXNU8Ea3ewSiiSpJOvrOFOCvUA9QmRMe1+qbUPquOuhhyKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767802706; c=relaxed/simple;
	bh=QyFvZY01qp66pSTuvlh4IWF/M+0kAl3dI8MS/igN/8Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h+q0S048pkes0yFxCO2mZHM1jWn/cTN+Dqz2kVhGNfEtSk+SzEPEHBRu0iOFiEFtiPNSPo86WvouKbRfJNqVmCehSRvDNeqQi9FS+bGIPfNjS9DFbdDQdsP8Du8lkcVQ/sIyBVdupY1sW/oWrQbuv7e8W/nhkQsxpLWa8zLqsgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M7ommpBt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=X8yxXXHD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6079dv2L2593341
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 16:18:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IVuHe0wt1etXnyCGWeXSp+IZ
	3Qg2MMH2Kny/0EnRpgQ=; b=M7ommpBtDPH5Y2ncr1awtSMNvETTSlM1jTl+9vJP
	WmQGzKpcCpRugST+xcH7Z+lv0RagNJ3ZEMe3aWzIMur6OwWqMElh6SRhrGC9dwA3
	as6c/lkESylKRgTqvcR6XUUXU521nL83yf+ZKdUrwg8CYucGIXKKLcQm2s7PUWiN
	y2JGdPQ0F+R5YOrPPthSHj64qgu7sE/UFbEA8cckO1mP7n6eGkOqyXUiNT1p2Sd0
	AfrACZnMFWHwgiXaszqyXKUJ+Zdx7hs1C6fD2His0GATr+lbzn+v+fqAenK2O6yx
	vg4roz1ujWe2Z6j5IyU9jKTuSkZJq8J2F+zhsgzVNgYA6g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhn2917g6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 16:18:15 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c38129a433so567463685a.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:18:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767802694; x=1768407494; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IVuHe0wt1etXnyCGWeXSp+IZ3Qg2MMH2Kny/0EnRpgQ=;
        b=X8yxXXHDddDwz8KvvEkBCECN0V4T+PD4OS+Iac5M3brcfsJErf2Ig4wAsqlXtYHFwM
         B4U8hhaPl+mbEqqZbwj8JYz5YFPZ/dqFHUw63jaZgzyXPWrvWCu9H9zLw0puQWSUt8jY
         U9nm8nYhNE+vwzGERtn3+d4xe2opFa2N/p4DssAfmgMYray3SMSeP4A9dXzWiTEosRkF
         CDybyEkrKCCQVSrVLFGCM3FjLquR11rfCS0ka5XYDDdHls1v4zHloo1xuuyVljVOt1FJ
         2ghAl+zS2rO3JN+wOZPzeWJFuDI5XGGHLjvwwWbKtCoFQVOmTyzBunmcjQCnqmhc9bJH
         I6EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767802694; x=1768407494;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IVuHe0wt1etXnyCGWeXSp+IZ3Qg2MMH2Kny/0EnRpgQ=;
        b=iKNH/BkFiSxj7iT08DH5p/V/UB2/tC438mRiDqF3jt7btqCVCU4+cwajMRCMw/qB0G
         4FhQtd2iMUdC3ZzwMuscKcGb197L0657a6HJo7hWah1cvue+V3G2XTC4KpZwRM/ZQDr9
         LOQBztRFybehqmJS7UlbliwaPeev7LeUj9lEYp4C4MuB79UnpXILTeD7wDaFYckXvO3d
         +Umn/5ZsK0AAA7NhLCTs4q9fsDcLXv3bjVPYuO7q5bYSxVP+YBkZmesl4/9SFWdijWtI
         fgLOnxpPMsYTgN4FCRgQO48Ys0H6kgYOqeel8NzE2r7NlRFofCl/FaqvlYKhHbt1YiO/
         NUyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIPjqRTwtSbdV8WRataGPwFoX3Q/qehGKZFeWx+RDqvsYOnqzcbtJaDIh23GVRPqlDV6MheWX9uxCv@vger.kernel.org
X-Gm-Message-State: AOJu0YxEZmIz5bJuDIoBI8t4VyWOMTsPa/xhqOtswGpit2ivrEDJGjdk
	+QjzwLzy1hQSJlBi1Vi6YXjF11sv5fk+B/DRrHPyTp/6mmh9FrgVLCDq4onBcUYSMU3jb8yAMmR
	0G/046cS9pmX+NlUUTXuk1UlAoolZYHwxkCGgVFBJYGAinQOaoTIq1CtLtcqrAIjd
X-Gm-Gg: AY/fxX7cWVmU4/PLtr0Nq/5GFraLTC4GKDhfyXgYXp25CDQCUZ/kfc+rQ5A3298SUoS
	t/XI0/53YCp2fkzaOlS8AEs7F/X93XCVuwANMAObEusbso6uWll/GVfeg3nMWI5GHncQWs0o35H
	rwSqv2HV2lTsG7CfP4aoblZgNl28jEf35fS/EB1cjP8Qczyskdkwo9z+KlsRBQ2lCff3t3cTrT2
	Qaz8bFVf1EqiSQZiGWQ73ivTRNCjqlFG4CKFwtauqqSSkvK8CgM973YF6NDMRkF0nW7ZQZn2vp1
	Gl15wF3ydJNWiaiPdJax1MoI5eX8fYuJmC9WCSrMOeM8FSv85vR46i/n8pyaSIQ5TY7QuN6heZy
	94VvqvLP/NcoeX5l3AuE59OqEApy1qh+LsDWN1BSs8MsNd6VBfvNc0rMmsVwteMsID1eqhjMoQJ
	dVPjIEdOZiAypJS2feWByqdsA=
X-Received: by 2002:a05:622a:4209:b0:4f4:e6b0:7120 with SMTP id d75a77b69052e-4ffb4b5da0emr34184271cf.82.1767802694050;
        Wed, 07 Jan 2026 08:18:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFHY38emXXXkVnOMgdE65Id2wbfbRgInUDB1ehakjGirLO2ZFzXh0B1U67TMsqyhlMzUF0FBw==
X-Received: by 2002:a05:622a:4209:b0:4f4:e6b0:7120 with SMTP id d75a77b69052e-4ffb4b5da0emr34183661cf.82.1767802693489;
        Wed, 07 Jan 2026 08:18:13 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65ced9absm1402000e87.5.2026.01.07.08.18.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 08:18:12 -0800 (PST)
Date: Wed, 7 Jan 2026 18:18:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 10/11] clk: qcom: Add support for VideoCC driver for
 Kaanapali
Message-ID: <cfp2ukahbgay4fbm5bqq22mn2jumj5o577wskrfsjtftpznpa3@cksi2qp7igjm>
References: <20260107-kaanapali-mmcc-v3-v3-0-8e10adc236a8@oss.qualcomm.com>
 <20260107-kaanapali-mmcc-v3-v3-10-8e10adc236a8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260107-kaanapali-mmcc-v3-v3-10-8e10adc236a8@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: KHKE_gGa4opOoIQBDnbshq0kjLo22gIo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDEyNyBTYWx0ZWRfX3ed5ke8NwnIT
 C6inSVAlRO0H38L/gNRntWt1ajs3dL7xzkrBzxk5wm0+NugvSGV8ed7fYyCzxEEDVFIFCpRR++e
 V2iq8Np4IAtthR2WO9+uTdUbwNJDS1221dY1bjwA7OjJfG3jkhjBpsPI7XUKh4LclmvuQ0qRMzl
 T7zB4RmQlwKlmqb4opFg2HXw0ATVDDAL87bRS7f3VZN3nO6q5hodj9bGawWimkoaGY+1ufy3g3n
 M6vRuBY+7sM2E0g7opmx1rMdLt4sJP0Qn/F7L2yL0GsF5LOZTVSyQZ6qJhdsrhnVXZb/QZQI8Ke
 9AV4pAHfj28IlMHZm+hRgCobLLReQRcjRPhkbxShhCamUvFoNxysJvPhFYMOYBbIR0WMU1WHijx
 +SG2Jf8uwQAnwzLUhP4Zyq32D2MoLIYomyYr786Np5jhjisVXkIzjFwpoxKviEg6Yd2mdT47Pbk
 m2+fwQWFYjNlxTGtgsg==
X-Authority-Analysis: v=2.4 cv=P7k3RyAu c=1 sm=1 tr=0 ts=695e8747 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=0FKzuNh7WTnq1YNKSakA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: KHKE_gGa4opOoIQBDnbshq0kjLo22gIo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_02,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070127

On Wed, Jan 07, 2026 at 03:13:13PM +0530, Taniya Das wrote:
> Enable Kaanapali video clock driver for video SW to be able to control
> the clocks from the Video SW driver.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig             |   9 +
>  drivers/clk/qcom/Makefile            |   1 +
>  drivers/clk/qcom/videocc-kaanapali.c | 821 +++++++++++++++++++++++++++++++++++
>  3 files changed, 831 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

