Return-Path: <devicetree+bounces-171145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B6DBAA9D7A1
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 07:06:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46BFF5A1853
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 05:06:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F49319F43A;
	Sat, 26 Apr 2025 05:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UwiPqJcW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8712B149C4D
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 05:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745644011; cv=none; b=d1L1YiDSua+rrHVq1EQEkEJMI/m4aMJje+C4iGvxuf8pyOgo2UxejN3jVV+AqaLnqAZ0ePiwRaPps8JCwAWMmYwmdfNTLtxDa243dEemkC7Ijq0PtTBfxI9RBUFVVYDoLP914KZI17EAgIgzPGHX8EqwLbeodXFjMDMKdOBK0bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745644011; c=relaxed/simple;
	bh=Q1gTwKlCAG4xFRHE8zkb/zQ2XTPqyY5iTVOl99pSpFQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U280Hn0nDTI2Wew4qp9NnW26c9RL7aW5vErk4gLYLklc7zwcz7BcYnjq8JDBGOErH0EEMFk1H/CeYXierSF52GnJ9uPBUODencfFy+80CHDUHd9YBIgUqPOPrtUNAEgrW84lCqw79HvxiA6H+5sQAoeRiYbqKtAUlU5NBTn3AYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UwiPqJcW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53Q4lx6Z012250
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 05:06:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eIL0w0SaX4fEgbdtMZSS99AU
	nD4HN81VW+RR9ZFL48M=; b=UwiPqJcWeRfXKGZLlT0agSw339wTDg3PCCVj8LQH
	yA5RINtNoHEdSVM1JsHflF+FPX3yiiaGkso7Zz9lz09vSwtO79HJQ50Qh+g8nZX/
	vHhrHJbs23P3OlGSTxLMtHWF3WGTZXU7YZ+MxbgrRvJBuW8D/jiwHBILVxoWvCx6
	oLpQT9fRf9hSZrYbtlFjcNDFg9gAQ7yGtliUCQzzTopF8pV5qpbYkxAYVK41hg2m
	SyXa3VebwcVirsIOEWrc4NQEOOZMmb+yzcfK/nWpZla4JSm/dGtOQbiMnTkGpME3
	T4poN4r+p477qwePiZpI2s5rXEEQNpwZ569C0nlIG8SxBw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468rsb01gn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 05:06:47 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5e2a31f75so925385785a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 22:06:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745644006; x=1746248806;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eIL0w0SaX4fEgbdtMZSS99AUnD4HN81VW+RR9ZFL48M=;
        b=tUCouBELGi055NBjhrxh39RY14XGMGvMzwRLt2B7oD9RALdR8o5WxRVTDzjiBOBXh+
         51xeoYWB20KaMZxkUW0Yw0BszxZ6QlaHgnah+6989lSxorIR2xCE+hrOWBpog59jAYrq
         ZpnaXsX2EUFo7mdkiJn3OqC2VGHQvxKMQ76Rkzg7l4t5kORYkW4oQu4NL92y4BCQ0hgv
         DazzbH8n4SbadaPKf76my2O7a7qcyYCtnumSrBqNEdhrwqdeAkWk+X+udyc2uDQ4POnp
         fAxzPR2apIU1hMRdL8lkRtzQ2wT/Y60J01IWu06K0IUZ1qKeRVsQwqx8vpiBUMJ8nzi1
         n4mg==
X-Forwarded-Encrypted: i=1; AJvYcCVjxLnKZvz7QMWJuxOzB6lB2HmiWl2wjR47nty8pDtBjpTmzEmZRwhMq20xRcvtx7cohBxBgADxgA6f@vger.kernel.org
X-Gm-Message-State: AOJu0YyjcbCn5Gz5yUeYXzrTsJyRcna2Y81SlDbsfcqOO2L44WJMkWUN
	mW2fADmyjV4oBlyE1h5ruHvQhhjy3c9l8hJz4suW7kYUFuEw6ExSms0hMPg3avt175HpoWMrjHW
	PykbhDuDX7nfu6nPZ0AKiBypoplPDAE9zVIBCXCukxUjkPMBi1tr81MPqk6Fl
X-Gm-Gg: ASbGncvtbjlkuD/baayUSFTw+1Dce+vhta84fax1JU4EGK8Qavn9M2vRdN0tOw3txWv
	v8R4uDSaC0rr2efGv3VzARx1fHTEMHOItDA9JXTQcobDqJo3z1fvUQHtla1K91VruszD3r5qRVq
	nTdrb4DMIEE/6HVpd5dzCr+GICFxHdO2BpJNHjHhtrXPlg5n5l65RHs4OjnxpBrqA0I6+p++1t+
	KV/s01RIznwUGDkWaE+QKqz9wEtZoan/LFW4xBPyk6D1Q81/5khN4WjhxfzvywirD+ppK2jKVwi
	Jcc0RI1YNVha4pV5jXkRFcuMqvx/D1lhN2AuPU1HEgGcypASuXOEbYiwe6j17idpyBaPten6izk
	=
X-Received: by 2002:a05:620a:2894:b0:7c5:5e05:df33 with SMTP id af79cd13be357-7c9668cda1cmr346616885a.51.1745644006435;
        Fri, 25 Apr 2025 22:06:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEMaVXLId8fuUgq9yIofTuCxPmggQOFvjAUGTOfOuo8GXCozhFMNKAnbZiG2Wbb5ZGjE45ggQ==
X-Received: by 2002:a05:620a:2894:b0:7c5:5e05:df33 with SMTP id af79cd13be357-7c9668cda1cmr346614185a.51.1745644006052;
        Fri, 25 Apr 2025 22:06:46 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7ccb7bf9sm837712e87.215.2025.04.25.22.06.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 22:06:45 -0700 (PDT)
Date: Sat, 26 Apr 2025 08:06:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca@lucaweiss.eu>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Lypak <vladimir.lypak@gmail.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: msm: qcom,mdss: Document
 interconnect paths
Message-ID: <cmmongeaqwfsfnhpmwdsvozhjzkbdqncktiski4jvqgn5sjmsj@2lw4vesrcwjc>
References: <20250420-msm8953-interconnect-v2-0-828715dcb674@lucaweiss.eu>
 <20250420-msm8953-interconnect-v2-1-828715dcb674@lucaweiss.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250420-msm8953-interconnect-v2-1-828715dcb674@lucaweiss.eu>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI2MDAzMCBTYWx0ZWRfXymseNhNUHNJI wlEDHXuw7IME1PqZZlj3U/+5wmikVy4ox7S6SnyTWc3s56rfLC9HUV6ZfoWH71VA6RPdGkbOJaE IDuLw9vRBQHQqaha9LXw/5qpBH0k6ZWZmNvZ40ugddy0/Ty0nu4OgBNb7CdwXCzpM/xG9KoRcok
 iS0dzEySSiN+fgvIKs0mvRhJQ4Ug7MO1hvQ7vmLKmofh6jY1xe6CrruMA4tD7FgiAuYpCdy/5IU aOmlVRxGcHC4l32tJp2muKz/juPa58QWNozqu23MJKJ7m9LigcisuVrBu67TyWh2sJqwyFQu9K/ feXCd7/W3evC4oBVgC/yC4NlswpxSR517mcWiR+sbzczWQG4v61acNG6Ts0kBt0u9YIF/D6L1HM
 krt/3bsqTpy0Rw8hbiAXoNNhm3cFD29BDxlmtwG66wzFaMtsCu8KfDyVbR9NC0ILGyJ/I1zp
X-Proofpoint-GUID: 0lueShB_9BVC4KhljZ0LoXR7ry4XPngm
X-Proofpoint-ORIG-GUID: 0lueShB_9BVC4KhljZ0LoXR7ry4XPngm
X-Authority-Analysis: v=2.4 cv=I8ZlRMgg c=1 sm=1 tr=0 ts=680c69e7 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=dlmhaOwlAAAA:8 a=EUspDBNiAAAA:8 a=z5yIEXyMNdJ1grE4PEwA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=y4cfut4LVr_MrANMpYTh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-26_01,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 malwarescore=0 impostorscore=0 mlxscore=0 adultscore=0 spamscore=0
 mlxlogscore=999 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504260030

On Sun, Apr 20, 2025 at 05:12:43PM +0200, Luca Weiss wrote:
> Document two interconnect paths found on the MDSS on MSM8953.
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---
> There's also some interconnect paths defined in the mdp5 schema, both
> drivers accept it. Newer mdss schemas seem to prefer mdp0-mem + cpu-cfg
> in the mdss schema instead of in the dpu subnode. Since there's no
> cpu-cfg defined with mdp5, I've added these paths here.
> ---
>  Documentation/devicetree/bindings/display/msm/qcom,mdss.yaml | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

