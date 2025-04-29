Return-Path: <devicetree+bounces-171799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9B2AA03B2
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 08:48:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A84073BBE5C
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 06:47:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB7EB27701E;
	Tue, 29 Apr 2025 06:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bolIncu5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7C227604B
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 06:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745909221; cv=none; b=XSQ5sABqtFxn2sPaEhns3JNRh64MNWGSU2w5/jJG8LtvZmxLNqpDH2NA5BF9AJhN72U5EU3Y09PhvKBYEaHMeMdo/quYy2LNkYKGcbTXLw59ohjHeJy3noY4iM5a+QtZWSaVUdQTNMN06VVwQPHoX/+XOdfsdivgzRMwt9Q300k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745909221; c=relaxed/simple;
	bh=tQU+tJgVddGo0bZ/bNkT49GRl80Y7q0CE1D4ZaVxOes=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ksCsk+lobT5ucZjGhpn9IUcJTWb/Gm5eraq4wjKU8Qz6fwKvFVohAj2Thc2mVNo4Ien/4d/iXMcuAmO3t1NnGjsxinY7E5esCymvcrWC89fF+dWwt9+t0RO/SRSd7Kv2M089Zmf2X4iXA10rlvu43TuDyqBak9cgrJbdK54Y2Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bolIncu5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53SNq1gO030391
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 06:46:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fXD2/4RoMwMAQOQGCSOHyCUpamVhGvGUtKHG2LOsDSE=; b=bolIncu5OQPUuPaL
	qYylJxx/SL6MPyUEVmUMJy/rzA7MH3AT2sbSWoqguy0S73DIKGRMqHzUXcu7ltTs
	PIo1G/rfcbNcULKMzZ+o81pE8s/zmNuYgbtzQ00r781iuOMsjbGjz/dRCprBg12U
	P/k7AV5Fby1h0ZH7eRWEMw9xIH+fXi+uivf3sgPwR1WE82xiCH471mGI3pn18QsH
	0f30wJPw7kg74bafHZ8FqlJbea+LD8XSbXSqGJWVOCS42Ub1yU0La29G3Pr4QCGq
	h7joZdVkDcVwh2oCYymRA8Et6ewwbUjinyldzN27gllqDmBHRPVk+0Hdkvlgqh58
	tAVnbw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468pevjmp2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 06:46:59 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4766c80d57eso97624191cf.2
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 23:46:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745909218; x=1746514018;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fXD2/4RoMwMAQOQGCSOHyCUpamVhGvGUtKHG2LOsDSE=;
        b=dbbV5WdDq8AVEAqO+uV+4HuQxr+tLxnL/w0VJvJnXx9tQVPvEiIuf1tIhfzNT2k+VQ
         6rWsgGinQnpsn3y+KfVWZEQBj+5Fa/05oxq99ifIdNwCvG46No++/Qkwr1seb/pHsT12
         6dqVVABmncyB7LvefRHxnnehpbQiFAhQeZq8b2HwS0RMdlUxv+RjJo3OlmmJCx+xkMa+
         U3DV3Bb3Y6gjlB4PO97KGXCii4M8HPDPEoJXJFleTh7aGv4Bo5KHSpGM+GF4IXFZrEx2
         RFj9jUSFZzIgme7rtkXMGCk69hF9DqIII1/SL05RBvAueAuzJ0vUydWLz1Ak8JpmPUEd
         4cVg==
X-Forwarded-Encrypted: i=1; AJvYcCXIJuu87kFpLxprx/sb1OnG0GXj9OZg6CQfF9lIWMbS9MvbzbfdgNsNVzoHM6dgXvBZsPBbpX6BtVX8@vger.kernel.org
X-Gm-Message-State: AOJu0YzNb31DYyVZtcgNBEqC7y4x0rvG/kM7giqmxMhd0xr2H/kBw2D0
	6O+evC6gfeoCFC5oB3b47e00guCH4ngb0F8w9d/fWkjq8TvNyh4Z/Jrj3/p3iEV6ILlwEWAKtfp
	sb3Dw+ijkLl1Kd2ne8e0yIJ3QrR/N7jHPK3car5vcjypWVZy1ScECMRRCcHOj
X-Gm-Gg: ASbGncuN43Tu5U0HfTmLlo5+jis8l5j0/PHFbFf/UwBJ4fdrAx8kIE/6zn1jSNUSNTL
	FA/lSyZ7XJSc0VdRMlqTZCYu4GA14XjJbEBjOydI1loEEfeP6QVCg617HPLe5SMXLb0kWBlHZ2I
	27iL77ewKHh0t/maJ1YEbzCPk2IOruePoA3IOp5R4oz5BxhFPODSPzRyH1GXOqrLk0cL+ACllZj
	RvB26uqgUxhQ4KIr++0vLbnxqAfKZmQ9mS134kN9C/JGZZ9zDoOBQOCR3tKzjNqs3Z2d9RqLrHW
	JwN9NRuDUx5zBzCU3RuLJ28l82nTIh12brstK/Kn3nt4c/tvQrtoGWzFI9ce42abtG/Ck4/7AyM
	=
X-Received: by 2002:a05:622a:4184:b0:476:790c:73a7 with SMTP id d75a77b69052e-488682fcaf7mr32644051cf.40.1745909217936;
        Mon, 28 Apr 2025 23:46:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGK6Va6YvoqH/CzYGmylSrfBRs/HdUH0nb1egjkaNYM8I9FzI8kODYjY4grnbVXKRtCr8OiFg==
X-Received: by 2002:a05:622a:4184:b0:476:790c:73a7 with SMTP id d75a77b69052e-488682fcaf7mr32643841cf.40.1745909217649;
        Mon, 28 Apr 2025 23:46:57 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7ccb8a03sm1791093e87.259.2025.04.28.23.46.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Apr 2025 23:46:55 -0700 (PDT)
Date: Tue, 29 Apr 2025 09:46:52 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stephen Boyd <swboyd@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>
Cc: linux-kernel@vger.kernel.org, patches@lists.linux.dev,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>, Benson Leung <bleung@chromium.org>,
        chrome-platform@lists.linux.dev, Pin-yen Lin <treapking@chromium.org>,
        Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
        =?utf-8?Q?=C5=81ukasz?= Bartosik <ukaszb@chromium.org>,
        Jameson Thies <jthies@google.com>,
        Andrei Kuchynski <akuchynski@chromium.org>
Subject: Re: [PATCH 2/7] platform/chrome: cros_ec_typec: Allow DP configure
 to work
Message-ID: <o5xngdkolgrkjp73yhq2gwzyo2koztpqxm7scbf6mfym3biwr7@msvf67d5envs>
References: <20250416000208.3568635-1-swboyd@chromium.org>
 <20250416000208.3568635-3-swboyd@chromium.org>
 <03cb5084-38ef-4827-9951-f54880ca8a07@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <03cb5084-38ef-4827-9951-f54880ca8a07@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 8ga3HzoARJA9FFZWgPg0WFajSBS-t90G
X-Authority-Analysis: v=2.4 cv=aeBhnQot c=1 sm=1 tr=0 ts=681075e3 cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=cm27Pg_UAAAA:8 a=VwQbUJbxAAAA:8 a=1XWaLZrsAAAA:8 a=yEET-rYJ_iZV8nkrigoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: 8ga3HzoARJA9FFZWgPg0WFajSBS-t90G
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI5MDA1MCBTYWx0ZWRfX6jK753k9jame JwC/IjKPGuqvVBlELXvVf39451PVPyQ2TpyOmKTy/JXq/oGZn37T0VDHPdMuVSr+Suabf0Q/XJE s1q+aTHE8mu/8Zl4Qpv9PBatuMSSrl6kY/V4eJWWMdagtOmc2R336ZwG++BBy6FXx7vDHQa0t6m
 vNYosseyxHn6nmzaAMl+EUj4idZ+Tz1lgOGPhGdm77veFLLPVoKM5zVHk9JhQEDcnwpqOr+iHlL VEX2/pF30ibx6ql6Ny7Ir1EOO9wkzuIdWTBC9TSNpOhPM9zM+xuBcO6JKkCQMQh3pdcXZIisu3i l+MlaGw/5NknU0hdD8+CZcSuGUC+Dn5O6duLAtf6PW83Q+6ZbLOTP3fMY9KF1ikjayb+PYo7Fhd
 K1gmpeJw8WrQEseQkJ5waYHFRQ5KVwPk4GRcI0fCwWd+tlf+rmy4B1tao5BUwb4QHyf4BlHx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-29_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 mlxlogscore=999 phishscore=0 suspectscore=0 lowpriorityscore=0 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504290050

On Tue, Apr 22, 2025 at 04:37:53PM +0300, Dmitry Baryshkov wrote:
> On 16/04/2025 03:02, Stephen Boyd wrote:
> > The DP altmode driver fails the configure stage because the status VDO
> > that is spoofed in cros_typec_enable_dp() is missing a couple flags. Add
> > them so that the configure succeeds. This has the nice side effect of
> > properly reflecting the pin assignment and configuration of the DP
> > altmode in sysfs.
> 
> 
> Fixes?

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 
> > 
> > Cc: Benson Leung <bleung@chromium.org>
> > Cc: Tzung-Bi Shih <tzungbi@kernel.org>
> > Cc: <chrome-platform@lists.linux.dev>
> > Cc: Pin-yen Lin <treapking@chromium.org>
> > Cc: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
> > Cc: Łukasz Bartosik <ukaszb@chromium.org>
> > Cc: Jameson Thies <jthies@google.com>
> > Cc: Andrei Kuchynski <akuchynski@chromium.org>
> > Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> > ---
> >   drivers/platform/chrome/cros_ec_typec.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/platform/chrome/cros_ec_typec.c b/drivers/platform/chrome/cros_ec_typec.c
> > index 6ee182101bc9..2cbe29f08064 100644
> > --- a/drivers/platform/chrome/cros_ec_typec.c
> > +++ b/drivers/platform/chrome/cros_ec_typec.c
> > @@ -531,7 +531,7 @@ static int cros_typec_enable_dp(struct cros_typec_data *typec,
> >   	}
> >   	/* Status VDO. */
> > -	dp_data.status = DP_STATUS_ENABLED;
> > +	dp_data.status = DP_STATUS_ENABLED | DP_STATUS_CON_UFP_D | DP_STATUS_PREFER_MULTI_FUNC;
> >   	if (port->mux_flags & USB_PD_MUX_HPD_IRQ)
> >   		dp_data.status |= DP_STATUS_IRQ_HPD;
> >   	if (port->mux_flags & USB_PD_MUX_HPD_LVL)
> 
> 
> -- 
> With best wishes
> Dmitry

-- 
With best wishes
Dmitry

