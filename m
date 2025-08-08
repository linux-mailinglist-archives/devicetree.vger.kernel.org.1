Return-Path: <devicetree+bounces-202671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3611B1E54D
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 11:06:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A7573A3720
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 09:06:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A370D26560A;
	Fri,  8 Aug 2025 09:06:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KHXrNcvS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485621E520B
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 09:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754643967; cv=none; b=Kd3y+X8x3mO7Q4hkmv5NGv6mmSvoIO3BIKnHzPNKH+q55bGtSoc95OO78+mmIj/ttQqfGEgMJg09zwTvcfUcPlNANa4qclpQev3995Dpvg2VvDlpweFFFud2aVIHMULsYhqMJNh81/oQ4ZEvtP8NB/WoQsDOMn6kIBR8g9mmke8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754643967; c=relaxed/simple;
	bh=AgYL5ykopYSyKknNc3hxEA75B6meDQ6pQm7/9sGu2CI=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hrbf35QjNX4h3WnhZuAgF5fxSKU2iKNpa7bsL710TZgNuWNVtqTUEA/ZdXPJb0T3CSWCXd0VNoNoSEgYuFwgJllSRfrCXQL6EYQ7oHOfB8I8mJ7+dOMFPnb7Iheqo/6fQaaI2hQCOKv/th2oP7K/LVslQ4hece/y4WFVW9XUDik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KHXrNcvS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57877MBc003578
	for <devicetree@vger.kernel.org>; Fri, 8 Aug 2025 09:06:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=K7HQ3WGypHi6Xpz529wL4oG7
	Pm7HPPB9mqOQp+Poh60=; b=KHXrNcvSI6RBt0+nl3nywv+wydu7sNx+TVKPeGd5
	VRDHaqzDP1K+kZvse8lF4brrbQ1BrvgifObfu+xspTup1hATtK3JV0Iy97dY77+T
	antlxhKbTIYcJTmcim6LiTjXbdFxNxGDQh0HwEq51PDOm4GVnKats1E/wM0UmdaG
	jTvKfOV24EtnxpW9blEkeO3IDw1k3dwU2e0v0e+HfvXkbb+DdJJejVnEGm5ApY/k
	A3ET3nMCfI8BtNJUDj1PDXqdVAlAShechBmYX4CA7zNcIO0Q7A6XTwyj4p+1Phx6
	VX1blcq+SOf6ZZrCGMEVxTEDQyFP33gwOUKvhg0qMcN9Tw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpyahf2p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 09:06:05 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b0884559cdso26847911cf.2
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 02:06:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754643964; x=1755248764;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K7HQ3WGypHi6Xpz529wL4oG7Pm7HPPB9mqOQp+Poh60=;
        b=MLATG6lgq/gUVFxuXjJJMT3Z9LScqaEB8kJtS/XPtyp7ZEzy6g9hhlnTLwsVQmX022
         s6HnmmC+QRMMfEbpCcoe2eMr+LKs4LIHYIK9GLWbzFe2OtYrn2IsvrwPafthjn16kLQR
         LGEly8pNX461Q1ge+ZDGLzFB3silSAhCzG9E4B2QczoHPyWii1r+Y6g4kUBPMjynA2mZ
         SApF4Ad9vwJ0UDScUHZHZGro2jkhfarnlf3kmG6cDaFEJ1RniZ8JgQd1lvcv5V9jqEXk
         ZMgB0y5B320A6JaV8C3iuOsEtZmD9dZ1qFbqajWRe8tF6HVaJK0H9SzoMAHYS+oAHoud
         eTqw==
X-Forwarded-Encrypted: i=1; AJvYcCWqy2MVfPSTFNlsSsEuaULV9jWXdPGPqiO/I+DN/xS+VSAcPPiKJ/KcDoHVWmfZ/ZJlcuh7zYeu3jno@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2sKedrLmWP8bWChxBKyVt7xRnUjERiFrpEEFxeNu9DmgMLh89
	bdUvj77AZ8rUuC83CPgVndRUHxnz9ya7FKbfddn8gkz+suDKFLkZnUKy4JPB7E7BJioOVL+FLpa
	/HfCTrauzlfR88MHfGozfLKakMdLTpi8pqmwxTvwk4DmFRwkipggvWaP4Fs/90HhX
X-Gm-Gg: ASbGncvYSRTnmoFWyAkQUZynIhL4qotP5G/ZJXCHAGLvx9JXD7BAp8ceFoEGXXwWsSI
	zfIQ6fPHv49ZJBrfMdVyEc3HO6ojUSMU0a9Tn7kgrqZepaVEM7CQHxT0f6VLJQghxLA1tLTQ3hO
	HT4Aq+yalnSnTbp3K6jwIvUG92iUPuN3MXWvZiR2kACAuW9VbOTs9fdnCO7xEFWeM4l5GzbgfXh
	iPrhoQRDRST1x7lDaxoeMxJBEpFq+t0GsWG2gsjAiGR2eJMbOn3FC/1OAcdSIzOYxrueNSZDzJ6
	ALA+zHpclRTShuOpDLLOeARa3Bq+gpfVqE/NgZT54RABdzRuiN/U+orHIk8Hykt818UH3w==
X-Received: by 2002:ac8:5a41:0:b0:4b0:9dd8:724e with SMTP id d75a77b69052e-4b0aed424f7mr24559141cf.20.1754643964101;
        Fri, 08 Aug 2025 02:06:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErIz/kzht0B+Rw6IN0fBC++6ASXeuQvJylo5upEdS9T/SVuOdpmMJslhAjiAsivP+04buUvg==
X-Received: by 2002:ac8:5a41:0:b0:4b0:9dd8:724e with SMTP id d75a77b69052e-4b0aed424f7mr24558761cf.20.1754643963609;
        Fri, 08 Aug 2025 02:06:03 -0700 (PDT)
Received: from trex (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c3b9160sm29690710f8f.21.2025.08.08.02.06.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 02:06:03 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Fri, 8 Aug 2025 11:06:01 +0200
To: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
Cc: quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com,
        bryan.odonoghue@linaro.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, mchehab@kernel.org, robh@kernel.org,
        andersson@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v9 0/8] media: venus: Add QCM2290 support with AR50_LITE
 core
Message-ID: <aJW9+YP1PYJo6+Uq@trex>
References: <20250808084923.1402617-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250808084923.1402617-1-jorge.ramirez@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: de1MuF-DhMe4Xrc57xCPBh5NpPot-hR4
X-Authority-Analysis: v=2.4 cv=MrlS63ae c=1 sm=1 tr=0 ts=6895bdfd cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=kj9zAlcOel0A:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=Ym3L-MIe7AMF0NBZbT0A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX7XIBaMV62B3d
 MeHMJCJpQJkSiIy+Wziq2V8CDhP+O7rc9JaBrfgCGVVBENRSIKFcaSW2iYjZAMVyP36LLCG54Sw
 Lg5SlvLo5rN0CZJ0+Q+Kv/9bj5HCptcgFdSNAURqlGla4qCeBDe1QY7CgrQptBuzHSr1f6ZNxHF
 CQbZNEoLaJOYXeXLbwVb5aptrCqKp8R09rWF+3r4lUJnEXUipYhR5kMTVcMNgcquZv1bkysd0DY
 pZeTY5H5n62MFZdk0aDFQDxwGmRXUdSPnkPZp8Gb1jRCfydmQad8WFQZzdrB4iF6bEkk+tKMRaQ
 8aztTfRRYRkItUy7UE+Ynh2oYIZVWzNUp8AR/KKoChRqGvLCKXkhIUQzNNOcv1mN4r7jAvmnkE5
 5pAd2eyt
X-Proofpoint-GUID: de1MuF-DhMe4Xrc57xCPBh5NpPot-hR4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 adultscore=0 priorityscore=1501 phishscore=0
 spamscore=0 bulkscore=0 clxscore=1015 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009

On 08/08/25 10:49:15, Jorge Ramirez-Ortiz wrote:
> Changes since v8:
>   v8: https://lore.kernel.org/all/20250805064430.782201-1-jorge.ramirez@oss.qualcomm.com/
> -  patch 1/8: Add qcm2290 dt schema
>   - no change
> - patch 2/8: media: venus: Define minimum valid firmware version
>   - dev_err on failure
> - patch 3/8: Add framework to support for AR50 LITE video core
>   - pass core rather than the lite property to the hfi platform
>   - remove warnings
> - patch 4/8: HFI platform V4 capabilities
>   -no change
> - patch 5/8: Sort dt_match alphabetically
>   - new
> - patch 6/8: Add DT compatible and capabilities
>   - sort dt_match alphabetically
> - patch 7/8: Add Venus video node for 2290
>   - Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> - patch 8/8: Enable Venus on 2210 RB1 board
>   - Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 


Sorry missed some cc, please ignore this one, I resent v9 with the missing linux-media


