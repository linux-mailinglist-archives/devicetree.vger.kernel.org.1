Return-Path: <devicetree+bounces-243070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1EDC935CD
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 02:20:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D1B424E069F
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 01:20:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F4EB1A3178;
	Sat, 29 Nov 2025 01:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QyHICbGV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="evtrxAKu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99C3319E97B
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 01:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764379248; cv=none; b=j2pio7F0kjMEPn0wKAyOEvnUuiHwsjMo90EbF1kbhuNSptXxW7Zn/NtPICZX6OraTIGsKIT95uSC4RhLUYHszYfBA5le21t6YopoGuLZ93PxQTfMwwQQ/oupOQyS4rSfLviiMoLTC2qZLbuc7Rnf+b1l23EVeAu69ug94t1NHZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764379248; c=relaxed/simple;
	bh=V8g8Ye7BpiYchokhruXJxJQ3o3KlxGYU5pAVE9dIcSA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W48JL8z0qf7+IOhTp9sVBNxcW+viffl2ItWAP7kGmxLcENrPMgwWQaJKPExvLcHyZO8izzs0gXKsBzyr509urr+NpCMOJS9YRUpPHDEHFNQhVQCouJyCaMj2f8C1VpyIosyfyADKEi5rTo/xybV+YikVyt5otdzcrLzoW46AWAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QyHICbGV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=evtrxAKu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AT13Q181799693
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 01:20:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lvklgFNQZLlZfz89XYOjAPU8
	PUVJC+ts+824a0ZSyGw=; b=QyHICbGVHFozecjVxf1gLOLAEFBgzdh47peX8XdK
	ZQm5tNE/leSLt7rbZ1OyqKvXhzGWB75DK2B3JxB6jvE7lIlK6MMQ859Q19XW136X
	ruhfSysgtg0lwowFJqPZuHF+AtIN2wNVKaFeZdKIgB3oE8YdBcXNqVCRd9WabKFb
	D7CyafENsy2YNGB2vYbGLHTfN62KgfLphLZ2F1G5alIJjJzFyp+wfWgvMyWx1eZp
	DALdPveUQHvv1puEfQRX2xe1zHggyANKMiJUQxVsUm55Qur7627FV0Y8jb6kvT7O
	1wTen01PsgQDzyx5AIIJziOh0EkdPGik6vzdVPkzkuv3Uw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aqpttr0sp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 01:20:45 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-882376d91beso63873046d6.3
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 17:20:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764379245; x=1764984045; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lvklgFNQZLlZfz89XYOjAPU8PUVJC+ts+824a0ZSyGw=;
        b=evtrxAKuEUV3HRu9VHARQyCxz2leygukcjaw0mICyVP/Nr1XCoc2F/l4s6P52KUw6a
         3B9QLGQXPWplAPLRYc9oZ8x/2HybxXQUMLQaasgkiWwcZJLrh9jfYdOHXIByAA3kbioI
         OSkoin4/f7gVK3kVM3iDSB/IZBB2QcTDm0WVboMLPGAlzAqbSvt0rfbYe8yuRucfPbba
         XvscaU+5RmuSD6Ps1Tar2TCIjOj6nmhGSUgTVqFZ2/UCv6EqL1b3ds/xBfPG97tPJetj
         KgYERmbpMkbV4Z5uwIE9kaWcjtqVmZxK8osPb05IOcQoR6xT3JjEpCkooowXzFajHE1Y
         jLYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764379245; x=1764984045;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lvklgFNQZLlZfz89XYOjAPU8PUVJC+ts+824a0ZSyGw=;
        b=wRjEmAdUPHNzECtc0izkAmlgUsjPgf2XjFqoxQ/OOs6snBhlCzlk+Sqy8zNyMndD0n
         LnoYD8/Y3gg032/8vGOnY0WoOPyL35/xcmvegSBtF0E4VB/Hv+2Z6a4k2K7nZmSMGCdg
         1giSCP5TzGFsCfBi40Pn+jBZO0X1eqfH2SyztRUKqHyYJSj3ruwWXoTeQma6mp1dbmvI
         vps7dVnOSBlV5rENcxBxphknzMVn8Gbaj/rvgFro1L6FHsc/y4m11f5cWqvicFc0qWCo
         P/Jlm2NetdvWn3O+uNXlnNRl0iahqJNZlXxlW49RGiudG+BNWFuO9Gg3MWztR9IssTit
         u0pw==
X-Forwarded-Encrypted: i=1; AJvYcCWGyLtiyXdU242Xly3PoAPeOFr4GlcqM+iahMWcJI9PPr/v1YZ13Oe/W1AUN2ADyhsKXgCUDCmQcgpT@vger.kernel.org
X-Gm-Message-State: AOJu0Yyr9kB9nSVHuMqgH4/nt7EoX7iLKiRw9VkncdICf1KrpSZanVJV
	i0YIaF2hR7bEGOvsYIXFztZ0DYimPIm4VEXuDBW7pmvwSHJBLkXJMBsegmqgxmRzeAh7vAbtk70
	3hTOuSQB4Bkfe/WLel7E+hCUV6ZYXAVuSD+hhBauKdtxDjxoZ/FJncN57IdiPocDg
X-Gm-Gg: ASbGnctWuAoan87ZQFCr+lXLTmet1ZK2yPBQFgxN7Q/KR1hFaFOIDldMH+4uX2Uikhu
	zgitrMtPcrFcUXYJ4Yx55wvlcdFsETUUvsJrfxTYrIoqKKCABpmvLsTj1PPAJBRbFQqNB2AL8ni
	3A6wbNdhTnqx1h2jmMRwf+tVJWwCKAeo9B9gP7awI5TgV2/lI9jQSP8A4OcNGKRtyfyHdbaHaIh
	2BhwJ5Hb6zX3/E+7gthTwQgDKnhhkVpGoVBK/gExM+KSSrPC+bu8VEluLgE+CA+PAR2hZgSk+k6
	po6kiictEGTJoeQfSoHmfaTxrvYjcmGwUS5vkcxyRIXJ+pJTGUOD9f+rC43wCGbL4bnDNhUm5xO
	WbtVkc5dsEWFqzyIYIsEJWsX0BMT6ladg7bjmhF9gdwDaJt99DdWZY+B+bWeFf1/BrlYzUX/YCb
	XNdSVfah/FwNPqZQNB7mK4hBQ=
X-Received: by 2002:a05:6214:3204:b0:880:57cc:7a96 with SMTP id 6a1803df08f44-8863b049bddmr259351606d6.48.1764379245001;
        Fri, 28 Nov 2025 17:20:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHgnFKXUxUYneu8X0dcuQO2AcdSGm+qZ3jZQ/QDnwx3rQYfGn1v+x53Rha/yqf2jNAmq8v0+w==
X-Received: by 2002:a05:6214:3204:b0:880:57cc:7a96 with SMTP id 6a1803df08f44-8863b049bddmr259351276d6.48.1764379244615;
        Fri, 28 Nov 2025 17:20:44 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37d236dd67bsm13256611fa.14.2025.11.28.17.20.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Nov 2025 17:20:42 -0800 (PST)
Date: Sat, 29 Nov 2025 03:20:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: longnoserob@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sdm845-xiaomi-beryllium: Add
 placeholders and sort
Message-ID: <3xg3mhkpde44yg5pu6bulmyae32pf7khua236tfeu75vf2p3ib@6jifxn5l55ox>
References: <20251126-slpi-v1-0-c101d08beaf2@gmail.com>
 <20251126-slpi-v1-2-c101d08beaf2@gmail.com>
 <f7bfaec8-cb98-4254-9779-dc48a9409bb5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f7bfaec8-cb98-4254-9779-dc48a9409bb5@oss.qualcomm.com>
X-Proofpoint-GUID: 3pgo7dRs5sSaZ28Ixz51iIRW3mXYWLX8
X-Authority-Analysis: v=2.4 cv=evjSD4pX c=1 sm=1 tr=0 ts=692a4a6d cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=sT-A7VFY-dxTl-lSRN0A:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI5MDAwOCBTYWx0ZWRfX1JKSDF+NF9b4
 GE70og+2BrRYB0733TwrJjGvWdCnWf8GSraNza37irWrf/GlGTfCt1mNdZEPsZ+Wq52AZEBmv9H
 dLlNnSExfVkjKS60BzFmLilf1sX9TFGs2QyE+6/bjHOVlgXNgsZIP1WYmSSXoCE4Na4bAep7dNi
 XzI4+/AWnB2iBiHsg8zXjYiXQGdUepLP2ZhkmqVMeTDWLV1hD1XbgC7HmNgzTmMMWUscC8VwISx
 M58s6+F1lKYOkdsrscvYfYtP/PDOMloX7AttSUbXQMVDO7m+V5SvoFdiWLScXLCKgTuXkdFTP0u
 EXI1aLL8+yAzzjjS3EennsL5s7gv809nJdHIZ9DzCxO6jOSMEHnK5qeqI3PlBeWQAans2V7Cy3w
 zGgwyigri27VCXdeL20fl6MlhD1/Fg==
X-Proofpoint-ORIG-GUID: 3pgo7dRs5sSaZ28Ixz51iIRW3mXYWLX8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 spamscore=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511290008

On Thu, Nov 27, 2025 at 11:33:40AM +0100, Konrad Dybcio wrote:
> On 11/26/25 1:08 PM, Robert Eckelmann via B4 Relay wrote:
> > From: Robert Eckelmann <longnoserob@gmail.com>
> > 
> > We know these devices are present, most of them are supported by
> > downstream and close to the mainline kernels.
> > 
> > This is very handy when rebasing the integration tree with the support.
> > 
> > No functional changes.
> > 
> > Signed-off-by: Robert Eckelmann <longnoserob@gmail.com>
> > ---
> >  .../dts/qcom/sdm845-xiaomi-beryllium-common.dtsi   | 23 +++++++++++++++-------
> >  1 file changed, 16 insertions(+), 7 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> > index 0fb1d7e724c4..0b219d0ff451 100644
> > --- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> > @@ -227,6 +227,10 @@ vreg_l26a_1p2: ldo26 {
> >  	};
> >  };
> >  
> > +&cci_i2c0 {
> > +	/* IMX363 @ 10 */
> 
> It may be useful for you to add 'status = "okay"' here, so that the busses
> are accessible, and you can poke at the device with e.g. i2c-tools

And a bus frequency then.

> 
> Konrad

-- 
With best wishes
Dmitry

