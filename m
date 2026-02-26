Return-Path: <devicetree+bounces-268808-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCgiItg+oGmrhAQAu9opvQ
	(envelope-from <devicetree+bounces-268808-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:38:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B31EC1A5CA3
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:38:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 98229303A5CC
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 12:35:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 206843815D3;
	Thu, 26 Feb 2026 12:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T2EdUfJb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JoSf6Oxx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E0836C5B6
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 12:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772109359; cv=none; b=J+MfDqNvSdOREtDvRubay5TcJFNvgThLEUxf6LmGKto2TkE85V3p1yLg7zv+sVMTxtbkatQvvfzn9eBgFMIIcSPm5+lwwenLn4mQzcRIi/tsiDJPNj4zvYdL2ztr5tqQ8Hk04FHwUJaPMJo0GVLCgw4I6E0CToSzFHMGab9QEx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772109359; c=relaxed/simple;
	bh=jAZH2PQDlPKAfKQhRMxjnSpoFweNSVxAjXUlujWSv0w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H/ot04bLsiDcFJ2LAc3EA7ZVv5Rz+HnbmM+VrwxwWOlmhh/A/3dU+wbM/pmf70hFk6CwDzM8W1Hew2EncK+0oTiZtyRMYj0NXWoeUV9VD2Cd1k7AZtI09A4+gnZR5SoM3/564UyOBxEd9IfLrCKaMdN5zZw/118I/DfUOsc/NPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T2EdUfJb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JoSf6Oxx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61QALOov2377646
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 12:35:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5GMNC82o2PbIp3JNg7h1C+vK
	9NoeCm9TDJIU/C8NC8I=; b=T2EdUfJbHAVI+0GT7fY3kFu4OBWGb1E4XS9vCwYz
	6HJ2D2hfvG9j3pbp2sn07vVBw1gHCoSz5d8vKwxFWh9mrQeJjn7rclgCKLhHg5UC
	xagjwIgPgmWolVBhmpfXuIYaBnZ0BDi6c1KUFHxXwWIZZ3qgEXvTB++XN06xibBh
	pvDDLriwoEoK4//AlKVOiiTECn0tWJe6St088N4D8GLn1DFLJ7fORdGHaGftvaJY
	cy6kFNshDi5k2yAOnBKNwtDHulHSD8mgCUhhXpsI3EZ4tskICgHA+YZqt+HEZAFP
	z5F1xhtDRRmfJ36+de5c4NarHJYwv3/7BaWRnxQBgMT0wA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjm8d8d2c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 12:35:57 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70ef98116so628152885a.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 04:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772109356; x=1772714156; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5GMNC82o2PbIp3JNg7h1C+vK9NoeCm9TDJIU/C8NC8I=;
        b=JoSf6OxxU46gk5kPgJIsYDWnZ7P/El4ZxgJLsZJ27MLUsBzqLJzE+PpQR718dGmsyD
         dKj9qW1fOFrepKyF2pdKZlQgMimbaxaLuOvIizMqkXEwmq9TzZvX4gSw1L+A1fhzDEun
         XukWiJrKxUsJ4+R2idwKDWhw4BABzvYInrxL2UdqYKjzuc6R7EfEjPljOMhKhTleLOhh
         dF5ZhPc19pSsYgZo3hymV9PnfdnIOD6toUoIfId8hSYIOX9INkkOB4M3wbjM3JNMYsbF
         rKY6UmDOrUsRKWSGgsHJa2JHNi6r+QYtVfUgeEXTsoKOAf72X0UFWGpb62wfFZ3hOJBd
         xIAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772109356; x=1772714156;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5GMNC82o2PbIp3JNg7h1C+vK9NoeCm9TDJIU/C8NC8I=;
        b=M0GTsqXFLq2oz9hyIlgWzme1Q8ZllUkMziv2EMWLeVRqJVoBkYUzdthMGjtXQOlzVe
         mCEHcybtfkagYYC9pL3My0IQ57Ys2NaJGRoXe4Otg9SP9VafEPyZUjNZTphtZ8iC2lYc
         xQy1CTM73hTXT/ggCPSafITn589OhdlDgx2vRPfFNZH1b9NIkRDWbea14DpAc3DPE00I
         q/zqD4dL1SHEBYVdiUjxh+FjjSEx2hMIbpltHH4pymD1+LIKAmlL6M9qFKxA2/U/iQyV
         Y/Gh9g40lU9+Orjvu8+mJ1d1vYlwUexM8vevA5ox8wGRjwzXbqoN1zqssOY6RfVewJnL
         RIBA==
X-Forwarded-Encrypted: i=1; AJvYcCXe9yk04e+lyKdxuGxg0EH582GGPMKCRcHgbq8HqhNRqUzzCIG0iM9ixqBeJvdCj14ze7mMjvztDCtm@vger.kernel.org
X-Gm-Message-State: AOJu0YwSW8dqh9oIKUd4gqLr60PbvDH1toYkmBqRLM5GOmC5/VT6VF92
	ZTpXZIUPvcZYBkwIG9aYsogkLmohbyqGcJGY6C+OTtnzrD/ebMMasBD4GxqkxETJSp8dp0s5D5H
	WDp8xAAnKJhCHZcLROdoOer3xnCTwVuOKx0a0DNSn+KH6J3MjV4tVmEi6XeDOxJQZ
X-Gm-Gg: ATEYQzyDca+4vciLLDlEiu14NGbPFtx/X/HAJeT+Nru81OBd7Q0mTVOT/QEins2E6yd
	SC2/zoeD+upqWdEKn06DvblainfV1Znw2zfNXdActxcgSVdszLAex1Nl2tszM93tXmMfUVlTc0r
	fP3BH1GKHf6J5NfDoy1B0C/NXQ4S1FyRQlqToVmcNmRzhzRP+l0z97H76sXXaui+XOqR6OHSAvs
	CnU53LJGnyfImXlvS2XVUIaS7yn0FJUUw/hpbTgWq2zrcXM6fQmnOAoh+INdN6pBf3qxtpGCNoL
	mvBHsGb+OeYPPRq8sc9nB+LaAgPeGbNj8Aw3iRI3+dsPsiLHqg/ShJFboxB619bBb54zsNSKIzT
	6lpvIHR9KNnRp++GiM/ieJD/n3BszxTC9TRDtKml+P89e27/cgr4H+NsepoNN8hicHy+BJD3WU5
	Pmz8EM052zjy2lpNSU0t3NaItrwhSarpvif4w=
X-Received: by 2002:a05:620a:29ca:b0:8ca:4438:b8ed with SMTP id af79cd13be357-8cb8ca83779mr2673675885a.63.1772109356303;
        Thu, 26 Feb 2026 04:35:56 -0800 (PST)
X-Received: by 2002:a05:620a:29ca:b0:8ca:4438:b8ed with SMTP id af79cd13be357-8cb8ca83779mr2673670085a.63.1772109355723;
        Thu, 26 Feb 2026 04:35:55 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f2f4b189sm5886321fa.3.2026.02.26.04.35.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 04:35:55 -0800 (PST)
Date: Thu, 26 Feb 2026 14:35:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Tianyu Gao <gty0622@gmail.com>, White Lewis <liu224806@gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: Add dsi nodes on SC8280XP
Message-ID: <dyqv6ds3tdqcdrdl6zexwdn4mhi4g4p77sdymaqan6nmdhqmxc@mzl372c52wi4>
References: <20260225054525.6803-1-mitltlatltl@gmail.com>
 <20260225054525.6803-6-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225054525.6803-6-mitltlatltl@gmail.com>
X-Authority-Analysis: v=2.4 cv=QMtlhwLL c=1 sm=1 tr=0 ts=69a03e2d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=2VfSu496nhalCebPFTMA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: UONke_weFwhz-v26V_cWj4vtFAjlwSfy
X-Proofpoint-ORIG-GUID: UONke_weFwhz-v26V_cWj4vtFAjlwSfy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDExNCBTYWx0ZWRfX4Zvk9yGVtRGm
 tuKueeZPVt/O+g/QuJjv3+YOL7wYqPiD2Fe7+2R95zfd1jeHjCqaAb39vYr+U/VXX/LP4Z5CJN8
 g+nWyHEfSg2+repOXTR/i6t5PhtCTL3Zd88zMmjpIAg6dKhztwvXDjBJqlGIJYsVb/fq76RMVQ4
 LQMvRlmjAACHWlIcvEmYwgnNvvJ9CPcjyD3lgEYhtco928iyahasijZvC7ttbEUEnAzx8v8xlJg
 yIFxpIS1NZ1h8cEiV+Le5L+oeRmKmmfnl2fXgttZ7lq1738qKDCU/ufEJPjWME+KymMUZxIpFdP
 Xrh745v0kMv75XUwKIWvzjY1OEblyO3eTmUXEUia+nfBgO3HdochcW3NNkswML6OQFvaQy3pevr
 timI8ZEgVh8K8McbKxZlp+M4c4kq68IdYNu86EJmMJZp8HZGDFo3KPa9lNcUDc2VVUnHUzmLZNJ
 cItrNoRcer++KlyrpvQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 bulkscore=0 adultscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602260114
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268808-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,linux.intel.com,suse.de,ffwll.ch,quicinc.com,marek.ca,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B31EC1A5CA3
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 01:45:25PM +0800, Pengyu Luo wrote:
> The DT configuration follows other Samsung 5nm-based Qualcomm SOCs,
> utilizing the same register layouts and clock structures.
> 
> However, DSI won't work properly for now (Partial content wrapped to
> the left side) until we submit dispcc fixes. And some panels require
> DPU timing calculation fixes too. (hdisplay / width timing round errors
> cause the fifo error)

I'm looking forward to reviewing those patches!

> 

-- 
With best wishes
Dmitry

