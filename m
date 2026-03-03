Return-Path: <devicetree+bounces-270531-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNhGKp7opmlWZgAAu9opvQ
	(envelope-from <devicetree+bounces-270531-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:56:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DBA1F0D84
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:56:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 778F430A4A50
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:49:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9B8B341055;
	Tue,  3 Mar 2026 13:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="irsBFP/H";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BlNHARpA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61160350297
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772545750; cv=none; b=pED06nwCaej6YsovlMoi0DhmpxO514ORW96L3A9R8rawojc2srivjho8QSS276kwJHqQDGTtappA9YLh97ZtlZPl2EtbVNWDcppt2Me/HYk/d7TzgN9NoDhnuKBcyRHQbe+r9pcF4s00tDxZejKEfTvB3WD2kMoa4sG35DFxr6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772545750; c=relaxed/simple;
	bh=Qz0Itfmc725Xjw5kALOulUloOD0i5TyzSalYoaho4pA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TJukOa8wEriSF1fNWKwJX6NVQvJd8izDYwzhlQq56jZnh+/NblGQiUxN/N7f2lTwY0UmuwNMtrJAzECNTEWhB7Nhw0K3PeimBxtFf61WPblQDR+3LKALYxHdIbGv1jJ4GyKxQDGkrtuwdz/3u5mSgleWUMbzgSvs/Ks8wSYdb+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=irsBFP/H; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BlNHARpA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239molp2734200
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 13:49:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9qTYU08p+T1/fcxXhU5ojAEg
	8g2sM3hAogy14uVclO0=; b=irsBFP/HEFrmEibdtU7XU03+cBf+XO15fNus2Fcb
	Ks7SEXwMWmYCO5nrhIsorkivcrIVQmw8G+QLZ5tie5xr4mEgLj/rvucKjyFLSD7Q
	kuxsbzZMirf3NUy0YVNH6boxb7J3IASf9UOSe9MR2B0xXt2S9iSf1PESnviSUXwD
	zYQm8vl8lz6PReE283y6z73TtbBhwgUe6bvhOs42mFNklry6u/xEpbjRbEk7SW6X
	Bmvpz2Rzv8y7gVyFy1WO8eHYwQzb72gDFdbdufM9zAbHB4CPhm8mk2rQZC+8Wg4e
	sIqbbtlxyiCfzfkf/9gu7B4xGcfrIDroU3EqznvmJV8YSQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnswe1fqu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 13:49:06 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb52a9c0eeso4371348985a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772545745; x=1773150545; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9qTYU08p+T1/fcxXhU5ojAEg8g2sM3hAogy14uVclO0=;
        b=BlNHARpAsyS1uvkZi6bzf5OjL8smLc/cr2BJ+KjC82Kb+uNzuMHjJplRyMR63Qtyx1
         o40AMK9bZe4j0cDAcaYRmZZg7TagH2HEhGLyfuYdmIfW71+Vw2YVWddy1qnc5KPUi1bD
         R830zHfviDY29X85SgZbhGS4iBoEatwxbcpVQupJXSLsxEqR04MelNK7smDYBibE1SLF
         oaBY/XV1W6CWc/rRYkIV13kbiiaKY2RzaQ/1YA15X9KSigv8PUYjMfc9EJ2uoEEGt0I9
         IxQ5LPttWcv+AQ+bGaJpanS5d6zYRMsUs59/VcaQYCkcHgi+4oAoCWtO5TsDjbeZgeOe
         fuTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772545745; x=1773150545;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9qTYU08p+T1/fcxXhU5ojAEg8g2sM3hAogy14uVclO0=;
        b=SCi6QwQ88EqanustgOlQibJs0VrJoh6v5kjpX1VY0ymNETxn+H+dALYOORh9nulDFd
         JjgOWtyv9KOXzXIyjvGqhroyHqCgSrNm5LITDxPiRZtXdn99dcA+kzgi4UlQGllxp/JS
         ImxU7JBoMC8FvL6QTnbn2GrE5/HbP4Xc87L5fkrAkOwQISw4YP5PQPvz14Z1eZgiKBNv
         xpsQcTzvUgF3c28Lwe6fV5INMTWomPUE2DUR3ujqeWS1Ri16HTFlu4IWHd+1uwky9kRL
         WvKXZxRkLVzOjwV7iXLMgbCEDihLEKtbDikyIE2x9hhLtkr8Z4cjznxXVtX+oaF7RdbX
         Ur1w==
X-Forwarded-Encrypted: i=1; AJvYcCU0kv5Cla6k4SP2nOJjuWX/W8msiVc7MaCrHPax1mYmA7vyUHR8l3Eask9amegRWNCBpWKvUe0sDcfu@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3zwuP9tVq2rbtndMai5VNrsTXUAD3tex/g7UaRHCpu5JiucP1
	WHv45/3Uw2es1wov6iOrI3TFyHWh5JF0sfIGyPx151zy9sv6yENPnBFlT8zW7juarPh4eK5nkSF
	m5zZVl0H6WQkJNa/OXDr3/i4PD0mf37Cee97XwO0Jkn42UXKkxqGDRj2+H7i2x3Rv
X-Gm-Gg: ATEYQzyKB+tOqdlbPqm8yQiiLtjmNH7gu3myZyT4q6eUE8JLTFum/NIPdjAAvboMJiH
	ki0D9AfYd3AtqMeqfW9IlT9DcMia/0NxC4mry8V7Jq3XdFB5cCYJm/Ugl1St5k2dlvZsE4M7GvB
	B5BdYFudvXGrjN4Ix+1LZYJJ1bmfFCfunGJBgnDxi+OtjL3rVkkCDT5tB9tIyEy2/ZY1jjL0WGi
	cmFH4i5o+iUfOtgQhVKKkhotL/jlQsC+XNmiMy6lOjJO7qV8L9gPNMVBVjG5mTArXEF1ju6CLAR
	lLtS3kGiHKpy9cB4csn6mKAucgMld1ypNlGu7PPPzksv4nLrZvZ4fly+0XbGU+noaXevh9EUhec
	d8Mj/pBQ/GIVMwXk7fPHiPyeS8CavdzvQYD1KIg6xgivvdSivGxGu03FRPpxFnz5QoMsXcLjvFw
	5B83OqUfXiEhRuZukJdAE0zzZ98t04kYXxlEU=
X-Received: by 2002:a05:620a:1905:b0:8cb:3505:443c with SMTP id af79cd13be357-8cbc8df0658mr2155305685a.44.1772545745280;
        Tue, 03 Mar 2026 05:49:05 -0800 (PST)
X-Received: by 2002:a05:620a:1905:b0:8cb:3505:443c with SMTP id af79cd13be357-8cbc8df0658mr2155301285a.44.1772545744808;
        Tue, 03 Mar 2026 05:49:04 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a123578ad6sm607700e87.57.2026.03.03.05.49.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 05:49:04 -0800 (PST)
Date: Tue, 3 Mar 2026 15:49:02 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 4/8] dt-bindings: display/msm: qcom,sm8650-dpu: Add Eliza
 SoC
Message-ID: <hdwuintcfv4leg534qedh2segu6vn7fhdpl75rddwns3whadvo@n5jaqp6ea3sx>
References: <20260303-drm-display-eliza-v1-0-814121dbb2bf@oss.qualcomm.com>
 <20260303-drm-display-eliza-v1-4-814121dbb2bf@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260303-drm-display-eliza-v1-4-814121dbb2bf@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 0LYo--Lw7WUJshSVfdm_kYSyOe1KMkzF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDEwOSBTYWx0ZWRfXwu029Ha9Ykuv
 hBQnSaLIIsmTkIHqQambnwBJyTieGZ9YMowofqOy9T+fn69WqUgb8x0htw9x42IM4ND3qvvmYNn
 Ihha9XDjE+jm368ssSsEWqQ5Jncwu+akNYJl1WJqkChsWmIMCxDgCSonyP+TvbXULZtrA/KVEwP
 JhsY+99wKttUYUVXTFdQnWvvbU0zMMtEWXuwOG6ei6MbtYy1v7NpHtxNOcMdI06CXClZgtXb7oF
 4ANxyG0Ke511c59pqkIbp+fBqE65Q2ZDEWkEbCRRWDeVJGwVpcfLE17OTpQNhvlJFOjBurhn8ru
 MDmN0orLyWOIuvyvlr/VqUPJk6/pRTdQM1D7wzf8CJiLsOzchI7TBCxpuP2HhgebVKQTUhqK1co
 3IEf6Mi4nx9+n6y7iF9ZasDw816y/OlOjfSNqWCCt2m+wn+Vce7uoMxCJ8/vpUjcLUpkKiKdFYm
 3RmMnEHC2bZ4efLiV/g==
X-Authority-Analysis: v=2.4 cv=TtHrRTXh c=1 sm=1 tr=0 ts=69a6e6d2 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=fTnWfZjI5X7wAvt4R4YA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 0LYo--Lw7WUJshSVfdm_kYSyOe1KMkzF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030109
X-Rspamd-Queue-Id: D2DBA1F0D84
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270531-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,quicinc.com,marek.ca,linaro.org,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 02:07:54PM +0100, Krzysztof Kozlowski wrote:
> Add DPU (v12.4) for Qualcomm Eliza SoC which has noticeable differences
> against SM8750 (v12.0) of mostly removing blocks:
> 
>  - Removed CTL4-5 blocks,
>  - Removed VIG2-3 and DMA4-5,
>  - Removed LM4-7, DSPP3, PINGPONG4-7, MERGE4-5 and several DSC blocks,
>  - Added HDMI interface.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

