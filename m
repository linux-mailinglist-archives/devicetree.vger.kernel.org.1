Return-Path: <devicetree+bounces-224537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A747BC4F6E
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 14:49:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 70F65352873
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 12:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE233253B59;
	Wed,  8 Oct 2025 12:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A8En/Nhy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4969A225397
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 12:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759927776; cv=none; b=CyBYkGCxvXeKSSjXgl+J61jKHrzvp3S95hmE7It0w0lS20sTmR8zfA0TQvI5OEnWJaKyejuN8y4MQxrMRPtHfX85xkgeDPo0L+JwvkurzSPK6oIV+qO2obcTVZJ4tZn/p1QBNPGEM/4nl444YnYnPRKG2zjT8NuPX/bh+12Cd2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759927776; c=relaxed/simple;
	bh=uvY8+U4GBK6Uc4Shp69kQpaAXpdtDNGDh91kAjLxILI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oXP0hlEp1cxw97T/cJ0kDy6h3kS0vpBB4yJJx3xO12pXjCFzudAIYHkMjxLHRPA1YMseULnGP5qFPE1wxShb6yaUUYsxkQMsvDS8pcmrAsnS5UkdlwYySmE4ATt2zoTui9pN4cfHQ5S/refrGc0LR8EZir8O4FV0MFOyv8BYYG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A8En/Nhy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890NeJ014182
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 12:49:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=o2l8a/RrMPRcP4HFtypecMkn
	iIuriznY41w/vPB6cWA=; b=A8En/NhyIRh4HBUKryyFxcP6tqikwtzeowJFs/Y/
	bSMfBxwyD7jcPRkkyhOpF7d6hk+X1brXogBJ38N35TZkVAPV88ISBzcEt9z7/ZJ5
	24O7ZR35KJEQii2T1RY91FDEExU1SqmS41wD7tKKuqRSEss2+PNneeq6e6zrjm3I
	lSwJ3QDc1Fpfojoap+WJtabhSPYUoC47wCl7qwaehiBk3X1laIHv6kw1IXjJndlF
	XplTvtDIBLRVK/fis3YjZk/AvZP1Fyn1hSDB6HiUmyr2hsgHPqFELpoecUDIGIwD
	fKw6dZmWAkOdv5SaqgwYtMhhYoynotcg79GgfeENCSeMFQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mgd0p8wk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 12:49:33 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-792f273fd58so133703306d6.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 05:49:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759927772; x=1760532572;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o2l8a/RrMPRcP4HFtypecMkniIuriznY41w/vPB6cWA=;
        b=koRE0ltsZRXYf8sEmtqvJ1rX4/KTrsZ9A6xMag3W2ngrKU6fJEo6HM7u3lwMEkYSzp
         i+CqZQyT8zoeDfAXKOyDsYOLoOtWjt7bEU7eagwixozIKPKrIYk0UK/PunABguR5EmAH
         1Eau3pxM9iiWAPn0xAdEqT1nbcgBjSyuPmiZvclo7t9aqzUN71qG9VrWI1IHzyQIFt2b
         meRDUH6+sGGi1KZkEsVsBHGFUs8oFa+KFqkGjGyuCutKQyzUCkutHePRafwEnNdjsQ2m
         uSJuIACeA99/S4wEwyxZS0UTb6oUJrF5fqNbPV29TPVEjvMGSvJLA/+xR4LcEn0GfYfo
         muqw==
X-Forwarded-Encrypted: i=1; AJvYcCWg7ComKFvY5+JWllDKOz1abxlxL8LRHjTPEQ2Udg2ZbNDR9fZEqMe1i/rrtnpN1fPgBHwsTWCDZ2Ku@vger.kernel.org
X-Gm-Message-State: AOJu0YyGxYw22/8IcIipthfDaFapOQwPMqidu3jOuc1Ku66LWt4M74bK
	JdluK9ag70Jyk1c8u0jtAQO/pVvCtjFBsGSQfrV96xSL3oghG77vd6dxWAld/k562BButgn9c49
	p0Rhp9BKDwnOij6F2XYkZhIKXbItv4LyTq3wor/EdtIqbyY2QT9s13kpy45OY1rLs
X-Gm-Gg: ASbGncuCE5Mx2ef+ps+CqFPdmrzSuXJoWb+RrXWbDNTEuAIVnkzv9ZSKCblUFmnjiET
	H4nTHEhQWpyRjoYcNYp6vVn9rYiOmcV3P66OB75eVENRPGKQ2/1n6mb6ghaCUxv+Wy7vcZBSTD+
	OPuQb1QQjJYZvhRw3qkFT8dOEeoHBhD3BZyhZRsy/dSyBndaOSLZn6uGZW8mTStXPQuoySUhA+Q
	Skmk0HUi+MG6P/i7cO6NhhJ4dVS3X33PUKWInRInoD5JN66Xm7Vz4DAYpi6et9O6y4m2OAlY6uO
	iceEwFnPBRaltqwaDYIMuRoN5IzQhzhaFz9JT9nyy+ck+vQQl506+RYWFvv5hLlX44O4GyEF9HN
	iVFf1MnrDTiWBer6SzOEr4rT9uOXnI1Ajbh0h8IaOUyafQk5+HZraLXfi1Q==
X-Received: by 2002:a05:622a:1492:b0:4dd:e207:fd0 with SMTP id d75a77b69052e-4e6ead694f8mr45839201cf.74.1759927772269;
        Wed, 08 Oct 2025 05:49:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH6R45gywYeXfKfF/AAK9J8gCfjus0oEKiXMqBK9n/2HJsk3Zc+ToSrG2ZqrEHLeKIGtHha6Q==
X-Received: by 2002:a05:622a:1492:b0:4dd:e207:fd0 with SMTP id d75a77b69052e-4e6ead694f8mr45838661cf.74.1759927771781;
        Wed, 08 Oct 2025 05:49:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-375f39fcb2dsm20195561fa.22.2025.10.08.05.49.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 05:49:30 -0700 (PDT)
Date: Wed, 8 Oct 2025 15:49:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>,
        marijn.suijten@somainline.org, swboyd@chromium.org, mripard@kernel.org,
        abel.vesa@linaro.org, andersson@kernel.org, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        robin.clark@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        abhinav.kumar@linux.dev, sean@poorly.run, airlied@gmail.com,
        simona@ffwll.ch, alex.vinarskis@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_riteshk@quicnic.com, quic_amitsi@quicnic.com
Subject: Re: [PATCH 2/4] arm64: dts: qcom: lemans: add mdss1 displayPort
 device nodes
Message-ID: <6uo2w4lscjlx5mtio2xw3xgyyu6kem6kavtdxtu7cbyix6kews@h2ou2awbppzy>
References: <20250926085956.2346179-1-quic_mkuntuma@quicinc.com>
 <20250926085956.2346179-3-quic_mkuntuma@quicinc.com>
 <e3400ab5-c4ea-455a-b8ea-d4fba2ece85d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e3400ab5-c4ea-455a-b8ea-d4fba2ece85d@oss.qualcomm.com>
X-Proofpoint-GUID: Lf0ahdBWhqy5gcy8dpo52b7OM8r80Llh
X-Authority-Analysis: v=2.4 cv=T8aBjvKQ c=1 sm=1 tr=0 ts=68e65ddd cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=dL1b4mpT1AD2RcxrWJwA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: Lf0ahdBWhqy5gcy8dpo52b7OM8r80Llh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDEyMyBTYWx0ZWRfXy+0ZuIcWLAJK
 Y9V2dFXhWIknEfIBzl5GTAb+Ie9D1W6HvvOFhiUVCiTRFguoHlHXToaq/sSQneZ5id9fu9LIY5V
 InYhe+LCtnQmddLWnt8rhb2rVU3vOC+fluud3DVRDiMhAZ7wKBpo+1nJTWxFQQs9C8dAvMYt/fh
 JJPx64EMUtJWZNqYMdaN0E+ewENbwb8/u+S9DNZLmJoVPHXqwA0cVYXou7q2JiA9LPl1NizHRd6
 9Q4qI/17/7F6sJFdgT6NHkf+Hp9A5U1li1tmeUvhXt9U1bhlcQhU3Y+wV+UdLvdnqOktPmfYZ5G
 P4i2qP+IZmm+qj4uRSSU/D/M0LF/E04c3FSD6RPvcPTwsTAI5q620Ke+MUkMvV7TuTCtdpQR0cz
 S8veM8Z+GRpvOa0cKIGDsofVlK+LxA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060123

On Wed, Oct 08, 2025 at 02:40:35PM +0200, Konrad Dybcio wrote:
> On 9/26/25 10:59 AM, Mani Chandana Ballary Kuntumalla wrote:
> > Add device tree nodes for the mdss1 DPTX0 and DPTX1 controllers
> > with their corresponding PHYs.
> > 
> > Signed-off-by: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
> > ---
> 
> [...]
> 
> > +			mdss1_dp0: displayport-controller@22154000 {
> > +				compatible = "qcom,sa8775p-dp";
> > +
> > +				reg = <0x0 0x22154000 0x0 0x104>,
> 
> sz = 0x200

Hmm, why? I think the memory map specifies these sizes.

> 
> 
> > +			mdss1_dp1: displayport-controller@2215c000 {
> > +				compatible = "qcom,sa8775p-dp";
> > +
> > +				reg = <0x0 0x2215c000 0x0 0x104>,
> > +				      <0x0 0x2215c200 0x0 0x0c0>,
> > +				      <0x0 0x2215d000 0x0 0x770>,
> > +				      <0x0 0x2215e000 0x0 0x09c>,
> > +				      <0x0 0x2215f000 0x0 0x09c>,
> > +				      <0x0 0x22160000 0x0 0x09c>,
> > +				      <0x0 0x22161000 0x0 0x09c>,
> > +				      <0x0 0x22162000 0x0 0x23c>,
> > +				      <0x0 0x22163000 0x0 0x23c>;
> 
> 0x2216_2000 and _3000 don't exist, there's no MST2/3

Hmm, I will need to check this...

> 
> sizes should be changed similarly 
> 
> [...]
> 
> >  		dispcc1: clock-controller@22100000 {
> > @@ -6872,6 +7115,8 @@ dispcc1: clock-controller@22100000 {
> >  				 <&rpmhcc RPMH_CXO_CLK>,
> >  				 <&rpmhcc RPMH_CXO_CLK_A>,
> >  				 <&sleep_clk>,
> > +				 <&mdss1_dp0_phy 0>, <&mdss1_dp0_phy 1>,
> > +				 <&mdss1_dp1_phy 0>, <&mdss1_dp1_phy 1>,
> >  				 <0>, <0>, <0>, <0>,
> 
> You need to remove the same amount of zeroes that you added

Nice catch. Which means that somebody was sending untested patches.
Nice.

-- 
With best wishes
Dmitry

