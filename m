Return-Path: <devicetree+bounces-249329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CF072CDB0D9
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 02:12:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 96B013023565
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 01:12:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CECE263F44;
	Wed, 24 Dec 2025 01:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SeY3+F9c";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BBFn8V5j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D221424DD09
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766538736; cv=none; b=PlLC7zB618PMYV4UEP0AvwgO8lRwSwmqUBLmnqXRea+ssUoVsjY8Xdc2mrLquNOWGM2HLUr167gCJdVXgqbgg9r0nmbNO7jelSANBG6Ivnq8mlUXwRSIXNuYpbhND8AjqV4rsqIr9a0AkfYoitZAxmtmIrCxa6j4llMvUrS7TD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766538736; c=relaxed/simple;
	bh=nxgSG18DrGDuC3R4yuOZSyEx86/vqH54re/9ZvYHNeQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TGGKyoS9/vY+M3dtMinmSl44oxJt0bLOhC/hUOwu9AGZzexRuP3KQuyxQ7ingkL0TUdsHUet4Kua1Hm2MunHkOlAjjRFBrbS/zWtiYBCdi0KV4CvYPxss5IcEHNRZHJLOjh6Gmb375PGZcvIMwB9tZvnJwzE63RBSxe87kOMmCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SeY3+F9c; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BBFn8V5j; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNFR9Gc4044571
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:12:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YXuhZkCXgoOIEur3KF+80czd
	tsFOs/7rJU6d1bOIu0o=; b=SeY3+F9cH+rD4m4rxdQTI9vpb5+PpRMC2wMxIhSo
	4CJJBlgox3EzksK393Jk4/6WHnCj8/8Hy4KnfbY5luu3kznnZ1YWeBFZWQk1anc0
	2D9IbrKm/3o1wH1unHepQK5DQxp54a75rhoYykaH35R3uFc+XYwxCzy9AY9zukS4
	IEib33rN/H7YOmhNhBQfGbtJMB4ECCcX/d8d86jsnAYLfkbOrIMiObRr76YD5VpC
	a4vWRJe5h0ys+SgnT8PfmZRHbPyi5ZwlD3IjVC4SAQgxKRcLgNMzKpCOrnjFWNcp
	Pf+AwczAtpV/sTLvBFo/C1gSZ5eGCAT9yVrleChnHR20+w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7cuhckv1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:12:13 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f35f31000cso77291501cf.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 17:12:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766538733; x=1767143533; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YXuhZkCXgoOIEur3KF+80czdtsFOs/7rJU6d1bOIu0o=;
        b=BBFn8V5jr/vNk7xJFOwPftpnlGblcUWbDqgBZ+Eoie0VRwUWFX5xwXmX1yYBEO3Y11
         CQWxFZvp55BM3NIrYjcSEHoQlP6Qn9Jw+w8cMu6gwDbz+1s21zJ0xOXeeeX3tbvACIbN
         y8FIjiDw64i3ANnOE2svuPQXT0MEXnL9PpyAn+9xJ53iMewhlWOq5qVfcNuFQLfVm70Y
         TCXbUPqM4GfRi6tu/IdAq7Yz4eqFRbp0u1ky/bfrWYlhtorDaidq7sdww8A0fWx5AFcV
         gXq+nW0UlEjNP5+mRCUHFL3tsk3PgwtrwwGA1aDSsRk+pafrEr12VZ/4ayMCXbUFEOUO
         8hyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766538733; x=1767143533;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXuhZkCXgoOIEur3KF+80czdtsFOs/7rJU6d1bOIu0o=;
        b=gqdhHWo5/eZS5CX4wrjiWAsoI8egVw6N5/q8j7Q9vMI8xrZNNtpZr85deRq5VXxVwp
         GSOt43cUsIfvTNAF1OcjlsY5HpRW1c/ftExAKQNemc2lF+y0ljlWcfYlqCojO9QpScgW
         593H9xT8OL5ul3aQqbvvJLccns+Wc3cLbhJ7klJgKMZVzh9tcfYipPNN8xzeU4+nrNz5
         MbNRpJ9sj5hGM5RrCDM9EZFIzHyjxNL7mvpbv2UwlIc+Ax55LmPAf6RpzukGHbbJlmB3
         oqkBL5EyN50JkUHRfrSZRT8nGeRMAPTK3EjUJf6l4fFN/2dF7oc/cXk55ysnacSkPGwU
         IFSg==
X-Forwarded-Encrypted: i=1; AJvYcCVIWaZ4TzHk4/vm+Y9Tg9A69DDqlaN22G+X53A9mJzU/8fCbVxUKp3F3ZO/QKhoEtMZuVhN7Iq/g38T@vger.kernel.org
X-Gm-Message-State: AOJu0Yxjsv1EcCcTn1YzbKYRgxgV6DKEGdg39XCMAT2eaaBZjNdYl5oH
	C+JQxpPOzUGyoaN+AI3GMs329AFQoEr4ISeBHmuZG7BXWN8r/nW82a1opzZlGlCWPIuojCAMWTA
	fGULrloP7YOcuglLsmntBKvt+Zc1hC4QI0JkjT9NbrTcVTyALoUkUyiy45N+x6OtR
X-Gm-Gg: AY/fxX5jlfl5t3/L4waz/19mY0eym7c+BrtjKKO8cXn334XdLEBlPau0dbT+ar6YpqM
	BQSNwgsUHMuJBBeyvqpAQ2EmCw8lJqBD9nAzLpfW6IYJh+NGOhKR9uL4SAFiaUI0H1Ge7M7s3Wk
	F1DrknQY71MKE0enEGosWhgJYJXXtSD5I+qJioBP/fepj2lREBWrXL1Nzpolzaw7ysX8j+HZAvL
	qLHYSM1HAeNc4s2OZFky/Cb4ZAY9jftWw66FrSN2e688OV166kBArh3Gm/c35KvmNB8qV+vVWQB
	uuuR1rLzoZW+0tRQLf8Gon3BbMxaSL9DneKSzDT60s9Q3N7lDX3ZelrlY1Hv2t7OENIxZJxHLRF
	OMILfuNNHA/yrU083H9R8/64FMkv67CX0naioCeeTA+kiVo8+hYtsIESckNixz2/QkXpJAgtgJ9
	wTupC1uFT4MHrmLI1d/tV2CB4=
X-Received: by 2002:a05:622a:4108:b0:4eb:a3fb:2864 with SMTP id d75a77b69052e-4f4abdb452emr236091651cf.69.1766538732555;
        Tue, 23 Dec 2025 17:12:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGiIEwoAJycDNPNnrRQ2r9Fdhu/zOetRe43PPfWrkAnUXdp8EiynL1H09rqeLnPzb9P/WXeoQ==
X-Received: by 2002:a05:622a:4108:b0:4eb:a3fb:2864 with SMTP id d75a77b69052e-4f4abdb452emr236091351cf.69.1766538732093;
        Tue, 23 Dec 2025 17:12:12 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18620305sm4515497e87.79.2025.12.23.17.12.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 17:12:10 -0800 (PST)
Date: Wed, 24 Dec 2025 03:12:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Marijn Suijten <marijn.suijten@somainline.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Simona Vetter <simona@ffwll.ch>,
        Casey Connolly <casey.connolly@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Simona Vetter <simona.vetter@ffwll.ch>,
        ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Subject: Re: [PATCH v2 03/11] drm/panel: Add LGD LH599QH3-EDB1 panel driver
 for Sony Xperia XZ3
Message-ID: <xqdy7sdfuptx7dyr6arhqna4pi5is6ivbuqhw7lun7j2g37xqo@iqdc2s2njjnr>
References: <20251222-drm-panels-sony-v2-0-82a87465d163@somainline.org>
 <20251222-drm-panels-sony-v2-3-82a87465d163@somainline.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251222-drm-panels-sony-v2-3-82a87465d163@somainline.org>
X-Proofpoint-ORIG-GUID: nFifJBw1hn62Lb0Fy2sBJfC-2r3C7qeu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAwOCBTYWx0ZWRfXyBcGYdgH7LmB
 pHMDSNAZAmBjNvBCfrsVoFu6PI9WmAryHkQlStICPxrFuwQN46g5BrXvQj1Dzw22vK1Ibjj3/Jr
 fvCajNp+eV6MvWjXBx0c3bItez29/IXHIANLUef+54SOxJoKx/BKqR5yTdf0S19pRsnmxe5q8jq
 jsmH1jj0MF1Wo7dJvN9CnoLgwGjWPnNZkA+EcaA3XHRH9V5FclY/R8M+T7WLIAgkx6KiNc6rEdN
 xt2knf8bPajkTW9TG0b/5CToBzc8IJrMBhYVXB6NGthI2JKWDcxtA5ArE4r1GjksWl721ef5UOY
 IiqO1/a3DIJYDVGYvd2gIO+CE0opzvpw+9/KvHuVqS+htmRNTaTdBI+mZsEHqwUwogOVp2oedfw
 /IsmICPGoabgh6yHLjcZKE1zt2wAcuX051GLhmVkgNvwjYkTnb01oRzoP4G+mxIdSxSP8M7jJJU
 MRDpsEXdGHDAfclsSfw==
X-Proofpoint-GUID: nFifJBw1hn62Lb0Fy2sBJfC-2r3C7qeu
X-Authority-Analysis: v=2.4 cv=NZDrFmD4 c=1 sm=1 tr=0 ts=694b3ded cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=tVI0ZWmoAAAA:8 a=EUspDBNiAAAA:8 a=QdKhUILdeOfo3pfzIQcA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=-BPWgnxRz2uhmvdm1NTO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 impostorscore=0 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240008

On Mon, Dec 22, 2025 at 12:32:09AM +0100, Marijn Suijten wrote:
> Sony provides an LGD LH599QH3-EDB1 panel + Atmel maXTouch assembly in
> its Xperia XZ3 (tama akatsuki) phone, with custom DCS commands to match.
> 
> The panel is 1440x2880 pixels and runs at 60Hz.  It requires Display
> Stream Compression 1.1 to be driven at that mode.
> 
> Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
> ---
>  MAINTAINERS                                     |   1 +
>  drivers/gpu/drm/panel/Kconfig                   |  16 ++
>  drivers/gpu/drm/panel/Makefile                  |   1 +
>  drivers/gpu/drm/panel/panel-lgd-lh599qh3-edb1.c | 340 ++++++++++++++++++++++++
>  4 files changed, 358 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

