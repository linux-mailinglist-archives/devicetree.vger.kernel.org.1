Return-Path: <devicetree+bounces-247846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DDACCC0E6
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 14:40:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 220F6302A0A1
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 13:40:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5D1F32ED4A;
	Thu, 18 Dec 2025 13:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ixE4ki17";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JVIRe8MT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480DB327BE3
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 13:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766065250; cv=none; b=sHFAHo08+EoAbKIsBo5QLDxtGA6Wz2L3pI2HS4t0SS0iUEKa9AXHmP8OCATXlCr7fzySUj5RyAQ3DxK+GhWmqsGUM66e01hTRX9eqTNuyrV+aK0U8fka18xEb2iZrzL0+h9gtvSc6I2K0XlWoQ2iKvH7fxK3oJjGkjGbT8hrMRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766065250; c=relaxed/simple;
	bh=Okgxv1NkjVZ8eluSDjuQq6gAO3FD4dYsp+GmAWEU/rE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=onEvprBgJmaWZ3qfFTRue2PfvF3uxu7okSxlYj6p3Vg/OKdMRDEjSfgErkiWcDMy0Bg/+VwlIEGL38ZAf4PL6Lmx2+JIgH/ePQnZbkjp1g8oR3wjkqDMDNBmz8B7b7rzUpTSTAYHTZ0yUFbHKm8B0My9mMcBTJ7Z+YFkpaRdU0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ixE4ki17; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JVIRe8MT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI8rAVf3447027
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 13:40:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KSp4nOkML7GsZiZB0OVroa94
	kpwiB2xK0hpFLWKl7S0=; b=ixE4ki17PeLyoawevgeon6/9zdzHsbbsGKMg21GL
	Iy82UK786Uwrsf1iKRYnpgYODlulXMszvmMZFEEMzWBnTYaHJlMSZ0tLdfft6/el
	hwGCYjohku1BJ5zdtKuz5cgvfLhSJNd8RnsNH9daBUcRH3luW3FgVDrrzTCtmBCl
	A2wq0rdm8/IkDYToWhvEmQ/gHjG8NFaHMmfr0tkfBm9Q80YYr8bejF8wtkRA48Nh
	tQh1MX/cTykRe90dMO7ZMORTKQSIHZPCAj5g63dP2DvmY8PBqi2cjB2p+SBksfD/
	2SQIH65h6qK+iqcg+y7DGj6ftQSH7Dzh1wl50qmF2rwpNA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4egb909y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 13:40:48 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee3dfe072dso15504401cf.2
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 05:40:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766065247; x=1766670047; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KSp4nOkML7GsZiZB0OVroa94kpwiB2xK0hpFLWKl7S0=;
        b=JVIRe8MTy+gdM2QHqc1Y4XpwLjwOIGGcZzxUTKLTmukZ6NjsbcW2Rz1fiPsM9KVPCY
         iCQ0nk/pJiX2/38Z5hFFaair+NjjTmWV4rl3ihDV6FBsjp5E5QGjcUeghDJd0mHpzM8r
         36JG4T/aAWV3jJvVklA1My8BkJEEAnhqrLiY8v3w065gbhf/cfy0VkU0o+Jn/dfkvPCB
         nnvoTqrhtRomRQyrOzzLFGcs7Y7t1nIclGvaw2GmqIWaw6oA6qTAhu+emz8LPgTITyoY
         o98Z52PKNijq/I8s+BOWz48wMlaed0I9G/rVR1FATG476YJHuMZrMIBitUHv8kMg+RPS
         JAdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766065247; x=1766670047;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KSp4nOkML7GsZiZB0OVroa94kpwiB2xK0hpFLWKl7S0=;
        b=D+CzCn09jX2HMtv8UPWOmsgS5nebF6aB8p298qYXGvbHc9nbA0MLoHAgvxVj+4Lp0o
         QLyZ6Jv6JCyr/mJyZN1T5d2x9BucdyIPULa4sAPbOyaVQtIx4VgfhQEfYrZD8hMoRPyc
         9w3jgLxwKeUjYQoyrXlT4muGEq9LX2eNKRlDOzJ5IkM8r7dPVisESemOabA3IdHT/G6r
         fvTGRhIs+Ti2ZFrH5khQdxIMQn5eOjOhmWHXvz+4OJ0P9BB8wzp70m1pc3YyFzZLlS6e
         AidLD9Z1rAeVxD8SgtRBxuHlsCPPPoD2bapLRSyYIE6dIcMkd/4gPFaNSvjzUn7dAeat
         TsrQ==
X-Forwarded-Encrypted: i=1; AJvYcCVt0KoYg6czI5e5wN9pBHkJwjhVCVLCmcJ+UHdk6a/mWCrgDp6tvofsK3C0L2se38ietuyjbKiufpOP@vger.kernel.org
X-Gm-Message-State: AOJu0YxRRW82Yj85Qx4bVAHhWBtao9UrX2S25BGXqrYnT9/TsSG/Afs0
	p+B0q8J72k7OB6VKrgzQ4Q8A7iCpVBPIIOGfGCXkNLGtCON9IakhIG4IZXXHdXPTCbn6lLoP+Ex
	jpxAp+N7AnJvdIfAP4B0zihYZclOa44fY6TcsZkNFbgBfYWV8ZZpOqnzlCNzuTNBS
X-Gm-Gg: AY/fxX7SzDXvC7bWhDKs+uXh3Fyp+DxbGJpPPqBXnKGmus/zHndo9cQ3WYlt0WCzhet
	nqzW+VC1O8bGXSq6rrxygLFcxX3IiUnIpefAQyz7dc4YjwGPrR6Z9EFILO0X6D4r70XckLYl3L4
	oAq9q1APTuAOqoPjGFSZzaZvZm8s7B/NuAnBBNkfZPM3qHdE69rgHNZPqRXb27ns76Y4c1Tv5SY
	RpXT0aLm0V6ZZpLdh1XI3/3aNRkgi1camp34emC0fDU96qFGmJD0eLPa4lMyDs5jpv+mX2uqkiw
	pzyBl/dRycxCPgaNKBW+rSpklyEmwGv5GS3J8ssqbwJfY7fu9ZV0svU1Jus0CrU1Q3FV6TZeZuY
	tyM3Ui3mxeHGqjyu9tYWuTp7trLzfHLPpuwwXDEUs6us2hvdIYmAwMXJjKOhUDr3RB4vvbUHDgo
	ludLRw//y0txQ14PxlsuFQxRc=
X-Received: by 2002:a05:622a:4a84:b0:4f1:b93e:d4d8 with SMTP id d75a77b69052e-4f1d0636f97mr283606431cf.71.1766065247577;
        Thu, 18 Dec 2025 05:40:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGzuJ1gvoI4VRXqN3u0TGfdiU3xAVVJBqKptf77gpHj9DjRWW63NA9LcrIopaaichhpKhoY6w==
X-Received: by 2002:a05:622a:4a84:b0:4f1:b93e:d4d8 with SMTP id d75a77b69052e-4f1d0636f97mr283606151cf.71.1766065247151;
        Thu, 18 Dec 2025 05:40:47 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a132cb37dsm1097703e87.5.2025.12.18.05.40.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 05:40:46 -0800 (PST)
Date: Thu, 18 Dec 2025 15:40:44 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: Add '#cooling-cells' for CPU
 nodes
Message-ID: <isjyk3ngoyzzhf3c7edntb23n3smh2uazgeyhwqnzjvdnafzmq@42x35y3emgkv>
References: <20251015065703.9422-1-mani@kernel.org>
 <itksdoavfha6xnozfrh5jcc4g75gcfyxp7ns75yz7xfb6wruy3@qwkcavvxrljp>
 <qzpeft3wmmh7idysviyevrmfs72oeoz3c4dddizfovd7ix7yoq@6vtqz5fhknij>
 <b2bff591-807b-4041-bdd2-feeb89d4f7ae@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b2bff591-807b-4041-bdd2-feeb89d4f7ae@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDExMyBTYWx0ZWRfX3/sHHTmAr04+
 fSlX0wC2G39b8AYS/7C67WnLw8/g+ZLbxYpn1wc/rpmN6QA/Z3O0BjKCMtAXbMZ5cRjv6z6v/Tn
 OBilxlokWk32AvuKpxba1cl8gTR70rWz4CJ4lCFwdaKrhtWzPlZWG3qebY3+oN+qzzGYESGJBcX
 MadODgIjEnKwl7RMhdiUPBU6DkuPxIWl5unkapHMx5pGteKiOHnKR1Jnf4M8zPoTog46L4tY86Q
 FmhM9Iw0griddVLARkpHitOMRkTMx26GhryPJXkwkzVOO7jlaTdyO9gziZk0gC1DbsN1W8L/XFC
 A/aUS1DYrQlVXvm+5cVHTvRQtLK5UxaR4JLa6BClTwJPYz1C1l+nAGtFZD5xVx4SfFEYfFUtw0P
 QC1uefdoxfhVPZBbWjSbm6y5rgyKCg==
X-Authority-Analysis: v=2.4 cv=M9tA6iws c=1 sm=1 tr=0 ts=69440460 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=DVH7T5g6_hVQcxv55skA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: B2sN2RbXfFRe69EAFqQIRcicyqDQz5FP
X-Proofpoint-ORIG-GUID: B2sN2RbXfFRe69EAFqQIRcicyqDQz5FP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_02,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 malwarescore=0 phishscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512180113

On Thu, Dec 18, 2025 at 01:54:30PM +0100, Konrad Dybcio wrote:
> On 12/8/25 6:13 AM, Manivannan Sadhasivam wrote:
> > On Sun, Oct 19, 2025 at 07:01:30PM +0300, Dmitry Baryshkov wrote:
> >> On Wed, Oct 15, 2025 at 12:27:03PM +0530, Manivannan Sadhasivam wrote:
> >>> From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> >>>
> >>> Enable passive cooling for CPUs in the X1E80100 SoC by adding the
> >>> '#cooling-cells' property. This will allow the OS to mitigate the CPU
> >>> power dissipation with the help of SCMI DVFS.
> >>
> >> #cooling-cells isn't enough, the devices need to be listed in the
> >> thermal maps.
> >>
> > 
> > Not strictly required unless the cooling device and trip points are wired in DT.
> > But I don't want to do that yet, and just expose the cooling devices to
> > userspace so that I can experiment with something like thermal-daemon.
> 
> Rob, Krzysztof,
> 
> Would it be an overly ambitious idea to make #cooling-cells required for
> CPU nodes? I'd imagine some sort of cpuidle or cpufreq is desired on almost
> all platforms, which could be used as a cooling/throttling measure..

Looking at my museum, i.MX devices don't have #cooling-cells before
i.MX6.

-- 
With best wishes
Dmitry

