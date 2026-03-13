Return-Path: <devicetree+bounces-274814-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uErIEW5fs2lcVgAAu9opvQ
	(envelope-from <devicetree+bounces-274814-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 01:50:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC8727BFBE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 01:50:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AB9F530EE799
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 00:45:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4133130DEB0;
	Fri, 13 Mar 2026 00:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R4P0Hlc8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="feW2CL9b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B9BB30F531
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 00:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773362749; cv=none; b=mQU4WJV1E3vdYuA64kS7TXy475aHYAdp1LCcNBUlygWay3Qegd7oYBwCFDRxzOeWNAjETk4AWsguN+mIZ44Ix+RjMEuIex/8ihazOWgqMjdqfi5Qngn+SWy2Lq+sYjKLTDB9qRV4ckJjYd3PocFI/aXyFb9ObiSakgZHQ4S7Bak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773362749; c=relaxed/simple;
	bh=ZyeABGqCfKq3vco0fRRAp23zrjgIeusZpfBZ0Opv+rE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FfLGQeLGOy8MycQrxGL6SRB47wQYVzc+NHhaazOil3PB+gcp5OadmINDAmtcY7AqBh+10n01/kT5Un6FC7rpeBt8qCIMlsj8yAZV+puN4wcvqbuDkuBlTZ/IgaFvOktu9dpEBLEQyWJdmmqGeIcqhILke6LDJBbQyyQrAINrP2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R4P0Hlc8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=feW2CL9b; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CHV9pA509808
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 00:45:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PuLD6LTrr3Q3pWoNLdnKssDY8cst/Ajrx824lOib/70=; b=R4P0Hlc8FGygrGJE
	l8r+7f4IcULEpx6CmjzAIcySqZzvgAryyJioOVMksbXjijdlO+iuvvHVr3wlpuBD
	Jq007k6bWEzSimpG11ZoN+Hy+yumz5bOGNOM8ZkeI9iaRswULRAsdbIOTXAm6Lpu
	MtRqwm3PiHfcwcWoaQyZZkhYFnUgJyZ8U2f5k+KGbQN28IcSdzwv7+maqORYwquN
	L7hf+DvpFTBtTvPMYg1AtA3nf8JpSFWn/FgPm6qIwWeZViaODI49UqNKZv/ZR+Ho
	2WrBLdfMDtCQJ+WuGIUBmcpdIehs42JkxjSX25B8eoZBVO68VNWi5wMeUWV70TDZ
	yckhPQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cus9w2m70-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 00:45:46 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5091a96f0bcso91013681cf.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 17:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773362746; x=1773967546; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PuLD6LTrr3Q3pWoNLdnKssDY8cst/Ajrx824lOib/70=;
        b=feW2CL9bxJZbI1Gim/fbPjBXJ8h4ORXIWc1JGz9rQE3yGUJyzqsO1qZXv/3K8QaCMm
         jEnYGCIS9Ko/mKUrnKX8b+cmLYkKClMZ3OSzUKkZy74y5mXXmL+rMY3M8e5mI4o9fDtn
         8NBYbYWxMwehgEkvQAiW1WLDcnusIdNokU8YmAfnX29afCV4UfS0YtZMqWRfSsVBCSHW
         579qXrv6rIwoDURyUkho6gCRGwAzItC0xyzTV5EwdKasRgeChOdyS3WtcZW3wHmfP71m
         mhFT5xiGZWieUyKz9tqoOGC78ep3zoPZiiEu30AdJBi3iFxR2L8phPpCE5UWfNRcMY/a
         iecQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773362746; x=1773967546;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PuLD6LTrr3Q3pWoNLdnKssDY8cst/Ajrx824lOib/70=;
        b=Y2TnnHvM2h+PgaQc8xHrErzfrHkEGHllEASlA7+8yMcxXipk0PY9Sa2n6GCjHTYXND
         pqJPyknjx6UYRpZ2G/3xmiuz2ZjptluJVk1ofnGempbCngGIYHuGIjNp1ylkt2b4NDBb
         Yy/58AlcMleSFvkyW7Fp/7rXL+WX43pIpyfvR/IZNusIo+EXMwZEv8RY6h22A+Fa7VO0
         xUW5NPZiJwOFwITbROlaF+SvnK1OprSgiu0b0EpKaIJ/pdRDSijZF8tmUzXU/Z0enz5X
         fc+dMAeugU9/bQxwsYM0oxpjWxiXjS45zFF1NbZcXxdQ8tzj8FUXghuAIfbpvZuyxJ+h
         LTIg==
X-Forwarded-Encrypted: i=1; AJvYcCWOdPr8iwTRTKQlH/fkgBiFGbrFIRjNKgahtQvtSuWxalFyaq8Ujm80hB2skcMEmxb9+zOU3HRDUmn+@vger.kernel.org
X-Gm-Message-State: AOJu0YzBhCigHX+j8EVUnK2ElNLXzgrmut28s1cmHXMZXqjfsZOHFsDS
	Tk0ijtWa0R96HVCDZvrPWxDA4G9c/ylkZ+EbiSHpc3HJhmNjI/fhgTEE2VXrhzoPxtLqA4Y3JLR
	6w+DvFF900DCFNO/I1+/RqmR4sEpToGX/K4atTccFS13Xepq8/XFZ3clTgcjzs7Eq
X-Gm-Gg: ATEYQzxvgCffYKFmOUTL6lU+z+uES5e0Pl7qCTYGUKuzPtYqTD/TFgaXGkeXbzzj44p
	4V+5cKkuh3r2dcVPNYtd7nkvep2RguXT8sBuYvWESnbHx8alDEZ7LIx4sRXPZNmS3JfyYFmf3WV
	pIDPQjH2bTGtzBVxGOBuXXFaOAO9HnlHqt16FsgQG+4e5umvhV5IDhDx6Id90KI9JGTdT8TMrOz
	cA/dczw2HeS8yN7wEfY+4MgnfoqDQs8caEa4+TqxCJ1yZMoFk2GuGoUOcTcuHzerh/ZnULSSxgZ
	mbK8qrYE+m6eNjEORf03hbdjbgwqk89IiQAscqELGjJTpguECOdT1Wbz2+CS94rrLTAVaGpVkb3
	/UVjAle1awERVhe+oDPbiQ/bUI1+1nVWb5FcJBlCDbpSyGGe+XMZVJ4I7Vx/GBSYK2gX3pDI7bW
	C0fTyKqKntVnKXRUx9wZP60MB7QcPGGcLJeGc=
X-Received: by 2002:ac8:5fc9:0:b0:509:27e7:a067 with SMTP id d75a77b69052e-50957b89146mr21206621cf.6.1773362745742;
        Thu, 12 Mar 2026 17:45:45 -0700 (PDT)
X-Received: by 2002:ac8:5fc9:0:b0:509:27e7:a067 with SMTP id d75a77b69052e-50957b89146mr21206251cf.6.1773362745220;
        Thu, 12 Mar 2026 17:45:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156162ba3sm1219995e87.47.2026.03.12.17.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 17:45:44 -0700 (PDT)
Date: Fri, 13 Mar 2026 02:45:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Alexander Koskovich <akoskovich@pm.me>
Cc: Junjie Cao <caojunjie650@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Antonino Maniscalco <antomani103@gmail.com>,
        Jonathan Marek <jonathan@marek.ca>, Eugene Lepshy <fekz115@gmail.com>,
        Jun Nie <jun.nie@linaro.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/msm/dsi: support DSC configurations with
 slice_per_pkt > 1
Message-ID: <jivp322t6tkw2jcvfurghhogrveqhamh5wxkptkygiel2dsnf2@k5efib7zixow>
References: <abL8qtbnNzspJMGC@prism>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <abL8qtbnNzspJMGC@prism>
X-Proofpoint-GUID: 1qHdm75CnwhtbWNEMhxvTGH0wkTonTgJ
X-Authority-Analysis: v=2.4 cv=IIIPywvG c=1 sm=1 tr=0 ts=69b35e3a cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=RAbU-raeAAAA:8 a=pGLkceISAAAA:8 a=tBPNNmzy5-6KNAIXalIA:9
 a=lqcHg5cX4UMA:10 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22 a=JiizpSU_mAIq9zsZDqn2:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDAwNCBTYWx0ZWRfXxeS3nSc0/Xri
 p9AusE07e9yEC6VWZV2UQMcxoZyL49mBBwIjnpwwOsE7TIx5jAhJgGWqg2D8iW9H7Gf7QpvNHJp
 0oVJVnAZ3aKkCDRRHpmawHuMMbAdem5ahTnbtWw7vPxcmjaQ7PfjnL7/DgKVIeE468x1+RGSRkY
 duNbTIAXh4MavqYq88nq8waS3NvHhG/6ZAJ0lJUxbHy899m4qsmrAkHmpl+9Ej8KunUZKEc+evo
 oKKjcf0N3LHXDMLdbDAg7yVzLWGs0gLWdpyO03C9gUzheY/SZaMLI/4u3V7wyAoECehPurMK32c
 ohQjys6YD+TPb7vBhQaNoKfD0QqCJdB3ZPk3RVnGJp2hcH1zUMkos3wop1Ius+DKC4dsVZQ+Vuf
 n5bMOVn3M0najnzKqdQTI4fTIF9XZ2F+NOJjW5shsejjcEnru9X3pL6IEQvrwHaOrL4lJ1L0TXZ
 ipUI56qHvdtCmhe3Ibw==
X-Proofpoint-ORIG-GUID: 1qHdm75CnwhtbWNEMhxvTGH0wkTonTgJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_03,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130004
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
	TAGGED_FROM(0.00)[bounces-274814-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linaro.org,oss.qualcomm.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linux.dev,poorly.run,somainline.org,marek.ca,lists.freedesktop.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,linaro.org:email,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,marek.ca:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9AC8727BFBE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 06:18:59PM +0000, Alexander Koskovich wrote:
> On Mon, Oct 13, 2025 at 05:34:06PM +0300, Dmitry Baryshkov wrote:
> > On Mon, Oct 13, 2025 at 09:17:04PM +0800, Junjie Cao wrote:
> > > Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> 于2025年10月13日周一 20:31写道：
> > > > On Mon, Oct 13, 2025 at 07:04:43PM +0800, Junjie Cao wrote:
> > > > > Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> 于2025年10月13日周一 17:39写道：
> > > > > > On 13/10/2025 04:52, 曹俊杰 wrote:
> > > > > > >  >Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com
> > > > > > > <mailto:dmitry.baryshkov@oss.qualcomm.com>> 于2025年10月2日周四 10:04写道：
> > > > > > >  >On Wed, Oct 01, 2025 at 09:59:13PM +0800, Junjie Cao wrote:
> > > > > > >  >> From: Jun Nie <jun.nie@linaro.org <mailto:jun.nie@linaro.org>>
> > > > > > >  >>
> > > > > > >  >> Some panels support multiple slice to be sent in a single DSC
> > > > > > > packet. And
> > > > > > >  >> this feature is a must for specific panels, such as JDI LPM026M648C.
> > > > > > > Add a
> > > > > > >  >> dsc_slice_per_pkt member into struct mipi_dsi_device and support the
> > > > > > >  >> feature in msm mdss driver.
> > > > > > >  >>
> > > > > > >  >> Co-developed-by: Jonathan Marek <jonathan@marek.ca
> > > > > > > <mailto:jonathan@marek.ca>>
> > > > > > >  >> Signed-off-by: Jonathan Marek <jonathan@marek.ca
> > > > > > > <mailto:jonathan@marek.ca>>
> > > > > > >  >> Signed-off-by: Jun Nie <jun.nie@linaro.org <mailto:jun.nie@linaro.org>>
> > > > > > >  >> Signed-off-by: Junjie Cao <caojunjie650@gmail.com
> > > > > > > <mailto:caojunjie650@gmail.com>>
> > > > > > >  >> ---
> > > > > > >  >>  drivers/gpu/drm/msm/dsi/dsi_host.c | 25 ++++++++++---------------
> > > > > > >  >>  include/drm/drm_mipi_dsi.h         |  2 ++
> > > > > > >  >>  2 files changed, 12 insertions(+), 15 deletions(-)
> > > > > > >  >
> > > > > > >  >Please extract the generic part, so that it can be merged through a
> > > > > > >  >generic tree.
> > > > > > >  >
> > > > > > >
> > > > > > > Sorry, I don't get it.  The generic part, generic tree? Do you mean
> > > > > > > the drm tree? `slice_per_pkt >= 2` is seen on the panels of these
> > > > > > > tablets that are equipped with qcom chips. I don't know if these
> > > > > > > panels are used on other platforms, and if it is necessary to do it
> > > > > > > in drm.
> > > > > >
> > > > > > There are two changes here:
> > > > > > - MIPI DSI header change
> > > > > > - msm DSI driver
> > > > > >
> > > > > > I've asked to split it to those two commits so that he change for
> > > > > > drm_mipi_dsi.h is more obvious for reviewers and so that it can be
> > > > > > merged through a drm-misc tree (or through drm-msm tree provided it gets
> > > > > > a necessary ack).
> > > > > >
> > > > >
> > > > > Thanks for your clear explanation.
> > > > >
> > > > > I don't mind to add the field separately. But should I submit it
> > > > > with the panel driver together? Otherwise, this field is unused
> > > > > for a while.
> > > > >
> > > > > However, as you mentioned, this is not a part of standard, neither
> > > > > mipi dsi nor VESA DSC. Recently, only Qualcomm devices require it
> > > > > to calculate parameters, then we use them to program registers. Why
> > > > > don't we parse the field from devicetree?
> > > >
> > > > Because the value is uniquelly identified by the panel's compat string.
> > > >
> > > 
> > > Yes, it is panel specified.
> > > But can we set it for every panel like
> > > 
> > > &mdss_dsi0 {
> > >     qcom,mdss-dsc-slice-per-pkt = <2>;
> > > 
> > >     status = "okay";
> > > 
> > >     panel: panel@0 {
> > >         compatible = "foo,bar";
> > >         reg = <0>;
> > >     };
> > > };
> > > 
> > > or moving the property to panel node? We access it from child node.
> > 
> > Why do you need it in DT if the panel driver can provide this
> > information.
> 
> Hello, I need this patch for the Tianma TA066VVHM03 on the ASUS ROG Phone 3. Is
> the only change required at this point to split the generic part, and is a v2
> in the works to address this?

I haven't heard anything from Junjie (nor from Jun Nie) regarding this
topic. I'd assume, nobody is working on this.

This patch needs to be split into drm and drm-msm parts (they will go
through different trees). Please describe the data field, clearly
stating that it defaults to 1 if the field is unset (and that most
panels are expected to work with the default value).

An alternative (and maybe a better) approach would be to add the 'all
slices in packet' flag, which would clearly identify that it's not about
having some slices, but about having all slices for 1 line in a single
DSI packet.

-- 
With best wishes
Dmitry

