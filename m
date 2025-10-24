Return-Path: <devicetree+bounces-230573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E2BC041FC
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 04:32:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B56E63B37E9
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 02:32:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 586C4248F48;
	Fri, 24 Oct 2025 02:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ei+CveU6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA7F1A3172
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 02:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761273168; cv=none; b=bhfpnRMD6VFOl7pTd3JoVtIoyQ7DoJ128PXkU26k31jKqbWgtJntEvo6QdG6iaX+CC8JEEfNqX4z3dmV25pxvPc2ojyLX4nuKjnUHrmVfoxUUNxR/A53RiJlsAhej3k7kxuIUpzYnTJ7IoXvz8Kf/lVPOK/AwkLQ/eltBIAzYy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761273168; c=relaxed/simple;
	bh=Fmyb8/uY0fVcZFJrkmU4Ph3E9829amQmCC9ZWilJrIk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n/riyBaSURZJqdmRQbSr5IHUY2y7cL+FGW8lRFws2OTmjPztw+TaSmJTYlosTIZFfXEOyhdEpAhb9/fi+m1LDihbPV8IFLyKanzZCSQWuLSq0eMVmD/hkD7KneqVqScqTuxNbEDV8jQqpxL32tuE7dOY58QtJ0syLXalZN71wqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ei+CveU6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59NEm2Fn010377
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 02:32:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=K8n4jQJ0OSelSp8GbDvqIHis
	YCrNm03CqsfjSom7lUs=; b=ei+CveU6DUojLyPgBThAtXMSMw1ukexnV7Y1Kbuv
	/oKwWUCmC2Ig4HRts6V3s6+L7yzD1KSuChwZqPGWrnVttXdd2+s2xkMp23AM+N2b
	hyBOULPPFdvIL+PJRqoyrOL8nuolzMNJzyEELU0S2c1oXgYJuRQjE+J5fTM0PXo3
	GTQg6zmgbzpqBJW8aYZoS+84+8TdFn63ne/xLAqu9SyAXHoUlw7y7vRWdO2aKd6y
	bVYOir0kZirfceU0onX6Uwy72XFyQma2jPraEj3lL5q8+WNoh+Vfogc9luDInfg9
	2+OCWBpbYTnHIi6I4wvOTFnXP1uZNByHgUKm44dArZ95JQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v344ajx0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 02:32:45 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e8916e8d4aso76831281cf.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 19:32:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761273164; x=1761877964;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K8n4jQJ0OSelSp8GbDvqIHisYCrNm03CqsfjSom7lUs=;
        b=sOGKUn4Bd8gd8am9y+LD2QASbP3KgkXNh4VN+58hXqI2KDcUyogp96M0fdKVNUboZf
         HAE2BsOTLY0+VyC1Fa0uzT7wS2CFGjO7BUivPJElk6olw68Oar0/5CBhiqR8J8VTHtmg
         TFqyQqZ+LAdoyLpQIMZnn1aIJkplZuKByjta63Twt1LDfQDCDTrlLIeCT8dbj/SV94wc
         kF9uHMYis1i6FMf1uHCD4SVTx3x5ZWxkDhNDCXSPXo54dA1NFj3SQW9IAfWOPNgOFQx3
         mYAo4PjvtJ6kcTaQsVT+SogjO5SPBRipZvr/SWDbR9/GdUW//hlKp8jE2SoIsRKs9+pV
         hBPA==
X-Forwarded-Encrypted: i=1; AJvYcCUuXoFM+564pVB9uKz8jH5AYAUI/dOnUYPldpJ3wRqqeVAjkEOlEXsJonM4WJz3v3K788bIA4B2+GVz@vger.kernel.org
X-Gm-Message-State: AOJu0YytOkNWMm+ABe4gsL0U+6ynQ+roO3IlIE04jJqwn7Dc+isNzcCY
	+HIWgT5GxSyBreVSmoWMOXx9wPKtsvXaHQEov9VSmS6fVhAvND05lvpTBjVNRADH1GPvNdE3AwQ
	1SQwBpI8oOHmSmCkZFY9D4ESqIiKRmbgjtEZvCc+87htD65XNekq8zIXAMZ2JwKs0
X-Gm-Gg: ASbGnctSZtzHws6BxSnqo1oijqtFnRcIFzzwzhm25C0Gckhy9a7Ea4UWQF62oUK3CoN
	vLfaLcDcViDOmjyjCfX2jY3r7GWPcDYkeXZpTLjQ4u5qp0dBik1/RD5y4vAzd5f1o3KOEmsZWAq
	pe6yYz07aoOe1dDbPi+EHR2tAiz47I+VR/IkaVLpD4hhwwliQSO4mahHOR7OgL+93vCyX0Wv2Lp
	4dHR70Q/cdeF6F9tN+qQPOor2vUmG6FSc0V3cHkESTRlLYbt3RQjFnVHY7eBg9+cPveH0vTR5QX
	Ht2fiqiEsurTzIL90SGxk3fz6qXmEB48SYUBVOHMfVCmrulCmflbKhZAR6ByNoTxZWA/nlGJM/H
	nt8WV570BDMYav0hAeppwEBi1f4FbndPg+VmdednWDjvCEIQYfJA4TI1rrvvg
X-Received: by 2002:ac8:5a46:0:b0:4b3:3b2:2b4b with SMTP id d75a77b69052e-4e89d0507eemr299679911cf.0.1761273164476;
        Thu, 23 Oct 2025 19:32:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH8RJLrpZlLDIekUoulVf3HkGeQaD97twoWzv+nd9iE5tF9H+Ujsga2U2zLGTAjXkx/iNwf2w==
X-Received: by 2002:ac8:5a46:0:b0:4b3:3b2:2b4b with SMTP id d75a77b69052e-4e89d0507eemr299679691cf.0.1761273163987;
        Thu, 23 Oct 2025 19:32:43 -0700 (PDT)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-89c12056aefsm284098785a.48.2025.10.23.19.32.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 19:32:43 -0700 (PDT)
Date: Fri, 24 Oct 2025 10:32:31 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH 00/12] drm/msm: Add support for Kaanapali
Message-ID: <aPrlP+vtLTt/j23E@yuanjiey.ap.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <r6kjuxajnimaqazeimzc5gscv2qxudjzkyooxumzakjzojibbl@2jiw6duxfbtz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <r6kjuxajnimaqazeimzc5gscv2qxudjzkyooxumzakjzojibbl@2jiw6duxfbtz>
X-Proofpoint-GUID: K1DeG97jfdeMzSUz6v7cJeE61tTn7mun
X-Proofpoint-ORIG-GUID: K1DeG97jfdeMzSUz6v7cJeE61tTn7mun
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfX05l8gJVxv8lX
 qeGJg5EFy1tE1celWsaDiLKiuule+AQnRsuXoZcvEGFn4/NEo+Vbb26WOBudknYRMGd2zvmXjGs
 Jp44+QK+sOvaQZLzmNU9poV/jbDYYhgPfGa7EcA8kg3e4KiQgQRkwM/fkJhUevES+9twobBfeAs
 dW/62oi9P0m/kAmJdoRFLvTkvss1t3xh6Qj9jDmUDoWtgE5iuKEQPU2EMq++IJlKRic8fFZqEnM
 UcB+N3+kOYdtU1Z+4pO7DbInTZ4dJTzqSO+uCtsloor3Vd93zFv2eBFpAznQ5GcF8nAuZ9wKgg4
 MrksSrcO3wuAr6WTJGFHJXyKO4d21rUF10nUht4YIt6DTvjzhgWAn+cpv8rqPZ+kIIBek3LckR9
 J7ldeNEElUlw+nnWG7lbEvcoDvZZWg==
X-Authority-Analysis: v=2.4 cv=E/vAZKdl c=1 sm=1 tr=0 ts=68fae54d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=qC_FGOx9AAAA:8 a=EUspDBNiAAAA:8 a=sB9pjYolMnSuqpLAuykA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180023

On Thu, Oct 23, 2025 at 02:46:10PM +0300, Dmitry Baryshkov wrote:
> On Thu, Oct 23, 2025 at 03:53:49PM +0800, yuanjie yang wrote:
> > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > 
> > The Kaanapali MDSS has some differences compared to the SM8750 MDSS:
> > - DSI PHY/DSI base address have some changes.
> > - DPU 13.0:
> >   - SSPP layout has a great change.
> >   - interrupt INTF layout has some changes.
> > 
> > This patchset contains DSI PHY, DSI Controller, DPU & MDSS bindings
> > in addition to the driver changes.
> > 
> > We have already tested the display functionality using the Kaanapali-mtp
> > device on the Kaanapali branch of kernel-qcom repository.
> > Test command: "modetest -r -v"
> > kernel-qcom repository: https://git.codelinaro.org/clo/linux-kernel/kernel-qcom/-/tree/kaanapali
> > 
> > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > ---
> > Yuanjie Yang (12):
> >   drm/msm/dsi/phy: Add support for Kaanapali
> >   drm/msm/dpu: Add support for Kaanapali DPU
> >   drm/msm/dpu: Compatible with Kaanapali interrupt register
> >   drm/msm/mdss: Add support for Kaanapali
> >   drm/msm/dsi: Add support for Kaanapali
> >   drm/msm/dpu: Add Kaanapali SSPP sub-block support
> >   drm/panel: Set sufficient voltage for panel nt37801
> >   arm64: defconfig: Enable NT37801 DSI panel driver
> >   dt-bindings: display/msm: qcom,kaanapali-dpu: Add Kaanapali
> >   dt-bindings: display/msm: dsi-phy-7nm: Add Kaanapali DSi PHY
> >   dt-bindings: display/msm: dsi-controller-main: Add Kaanapali
> >   dt-bindings: display/msm: qcom,kaanapali-mdss: Add Kaanapali

OK, get it, will fix.

Thanks,
Yuanjie
 
> The order is wrong:
> 
> - bindings
> - driver changes
> - DT changes
> 
> 
> -- 
> With best wishes
> Dmitry

