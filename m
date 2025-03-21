Return-Path: <devicetree+bounces-159793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 97650A6C1B5
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 18:40:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 182017A6350
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 17:37:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3043022FDFF;
	Fri, 21 Mar 2025 17:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vp4vO6c7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E8622FACA
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 17:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742578661; cv=none; b=Z6Oyp+C/BoCfq7+c4GewokO6bf8IDmDHzCe87EcOWkdvzYjTouPP/yeNc17rzxgUoX+UmwOmBbUTqT7rDCrYZhwP/QBh5GXh6VUBdwVBFZH8+8SymihMZ4YLeLR5JWHU223Oujf3VDqdxRbIDgn4M++stDBFq7WpZlREK/frEOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742578661; c=relaxed/simple;
	bh=b4/ZBTK+EGfy2uuB1pDRH960vIq1os3y3NPLEjwQTaM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rhF7vJTKehGYowFAGLbyvFQ8ofn0/65SKoWp2U0rXp50J7JOP3TZoCI7QZIqDseIFtgCH69iwnUq1X4URn+F1iJoKUM0n1QArWrJ2dJies6maRbFgVL7yYHbRQ5BSCtYyzD7UEIVQXu3nlPv1THObWlIeFN3mVj1WSDZsC8WNrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vp4vO6c7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LCSql7010784
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 17:37:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5EPzIyilGqOZI5ta3x+QlI0t
	ANS6zHW/9qVjSLgS1/A=; b=Vp4vO6c73kU5bmNKyEmP09Krk5Pv61VWGOqeDNFb
	LmYIks7+mB2u+gNWcH1kBFBVPXA0Fl1JXqsM2ObXX3DLjh0BllYGJMr8TsD+IL8V
	RWHGJlARaIlCdwP1BicyOWvsLRnbpcFuginyUV1V+GYSr6K9AdpuqHqcu9+IjGsq
	9ZcNOFiG9L2lbdrojt0CH7ldJtdiIKRPn/98WNA6k3+KZffaQId3OgzEyky5ELnO
	uSjqdWQfC+IEgUNK1tQZCBLpz5VLzAPw4IOWQLs3+qne7KJH5h/IeDI1G4AxCRJ/
	M9e2oMooTPTRR0holz5WdSOormxc3Y2PZ35WNrHVLyzwig==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45h85e0trg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 17:37:38 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8feffbe08so49998256d6.0
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 10:37:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742578657; x=1743183457;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5EPzIyilGqOZI5ta3x+QlI0tANS6zHW/9qVjSLgS1/A=;
        b=ZYCgxHDDkjJEBBjXiMMWSrvRR2PE9ZODfTpawKsbPJFwP8xydoGYUYB62A1/+Ta7Sh
         3HBRH+MK0/Y5b/0z1VsFdEpc9ZvkCme4345sWlYzyItkC6o1zeOobXV+6b8xYDW0ALIH
         GWj1xaiEevc05k0KcatlU9MNeyIsLlsV6ulRISGZz7AQvqdqPz8KPY6LXeBXxKMpZiLC
         xMnqdcvhC4ZMIbQXoIm2njlSkZVMTGb8wW47fvCk5RvJL5ofgPTm6iWCMqZK4nuPGqil
         tZ/k9wkYGSdfnHahoNzLFiRgt17lRt+cbhd5P6PHaHAOFRpfNOFdAkoiJRSx2lzbJ66t
         MJrQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVlhwVqb2d1+6IWAcJEHzdMZL0Jlp4fG8wFVXlbYka1Q/sV22eZWl9oe5uN7gKXjVncX7vjRAc3hND@vger.kernel.org
X-Gm-Message-State: AOJu0YwefoQuv7BYh3mNXcWtfbugKYX45BzmvLfxQfFkA2EIr0L2ErBF
	3GPTnB5Ako3+6TZH5B6864ZZFQVRexLpAdzQ71wHmBVkpXIEqLwdu0MGycOLxRn+5IzWQM1dFra
	kA4RSb6RohbCry5OiVEwb3NWplBTTbzqNeB0saecE6REiWcOwJoAoEXVq0b8EtACTReCy/Bo=
X-Gm-Gg: ASbGnctr65sOoZ/CUWq+FZBIIOESTFExuzfHj1uZrs48ryRQNXIaS7suQNUmNa1iS9w
	fWFAZuIapRzQnDiHQl0GmHnrTQ2uYkVFcy/2XwZt/mGM53qWKtauKCXWu3k/IOjH86HjUyNFJ7+
	ZjLtmEBy0Ja8Se69T5dH/I1pt011WtXDS6g9QlKUgIFpj4VwffcRNecL9/dvHXo+zFKlwgZ+yxw
	KQMFHMYQeB9P0JSQn2AZG9Xd4Spf/8eEapncGxa56UxSX61bngmecsJvJ2/Gyp4cc8c07xyfLs7
	5hFpD6BeSg1pBobUS0pOCsmQ2xj0P08wsmoaSqwuOQwNlamIp76CkgYCRJhQMiABoYh/CMbaUPo
	/vZ8=
X-Received: by 2002:a05:6214:cc8:b0:6e4:9b59:d9ce with SMTP id 6a1803df08f44-6eb3f2858e2mr61754956d6.5.1742578656891;
        Fri, 21 Mar 2025 10:37:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGADBjRs3rs94/YLnkpOq24pSnDwxMlG2hCY2p4qMNbSXk/dzNtWVVKJ5jRUhsoAdgTEJUHRQ==
X-Received: by 2002:a05:6214:cc8:b0:6e4:9b59:d9ce with SMTP id 6a1803df08f44-6eb3f2858e2mr61754516d6.5.1742578656395;
        Fri, 21 Mar 2025 10:37:36 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad6469104sm226950e87.20.2025.03.21.10.37.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 10:37:34 -0700 (PDT)
Date: Fri, 21 Mar 2025 19:37:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: Dmitry Baryshkov <lumag@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        robdclark@gmail.com, dmitry.baryshkov@linaro.org, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_jesszhan@quicinc.com
Subject: Re: [PATCH v2 08/10] drm/bridge: anx7625: enable HPD interrupts
Message-ID: <lkeezxmjs6qn36qzhmvmtngvrxuwng53rgcb75centx6ds5h4d@dx2iz4aqrcho>
References: <20250311122445.3597100-1-quic_amakhija@quicinc.com>
 <20250311122445.3597100-9-quic_amakhija@quicinc.com>
 <5hvpacx3qeqhjqemhqizws4esdhwg7reli77qey2nin2fggljp@ykgyayj2v3e6>
 <3abefb09-c1b6-4339-8cd9-cd86652c35d6@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3abefb09-c1b6-4339-8cd9-cd86652c35d6@quicinc.com>
X-Proofpoint-GUID: EyTlBAxLrIS1L-GzPlAo_nxc2lsTUG9t
X-Proofpoint-ORIG-GUID: EyTlBAxLrIS1L-GzPlAo_nxc2lsTUG9t
X-Authority-Analysis: v=2.4 cv=LKpmQIW9 c=1 sm=1 tr=0 ts=67dda3e2 cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=R25bk4NhV3WDM544LqcA:9 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 impostorscore=0
 phishscore=0 malwarescore=0 suspectscore=0 mlxscore=0 priorityscore=1501
 spamscore=0 mlxlogscore=737 lowpriorityscore=0 clxscore=1015 bulkscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503210129

On Fri, Mar 21, 2025 at 02:36:21AM +0530, Ayushi Makhija wrote:
> On 3/11/2025 9:09 PM, Dmitry Baryshkov wrote:
> > On Tue, Mar 11, 2025 at 05:54:43PM +0530, Ayushi Makhija wrote:
> >> When device enters the suspend state, it prevents
> >> HPD interrupts from occurring. To address this,
> >> add an additional PM runtime vote in hpd_enable().
> >> This vote is removed in hpd_disable().
> > 
> > Is it really enough to toggle the HPD interrupts? Is there any kind of
> > programming that should be moved to .hpd_enable() too (so that by
> > default the bridge doesn't generate HPD interrupts)?
> > 
> 
> Hi Dmirty,
> 
> I couldn't find the ANX7625 bridge driver datasheet, where all the registers information are present.
> 
> As per my understanding, we have anx7625_hpd_timer_config(), where debounce timer registers are getting set, which help to manage the detection and stability of the HPD signal.
> 
> anx7625_hpd_timer_config() is getting called from anx7625_runtime_pm_resume().
> 
> anx7625_runtime_pm_resume
>    anx7625_power_on_init
>        anx7625_ocm_loading_check
>            anx7625_disable_pd_protocol
>               anx7625_hpd_timer_config
> 
> So, I think HPD programming is already taken care in anx7625_hpd_timer_config(). anx7625_runtime_pm_resume() is getting called for both eDP and DP configuration. 
> 
> If you suggest then, I can move the anx7625_hpd_timer_config() from anx7625_disable_pd_protocol() to anx7625_bridge_hpd_enable().

This might result in HPD signal being generated after invalid or
improper timings. If we can't get a feedback from Analogix on how to
control HPD generation, then it's better to leave it as is.

-- 
With best wishes
Dmitry

