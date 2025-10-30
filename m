Return-Path: <devicetree+bounces-233386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C9CC21B33
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 19:10:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 80C334F1DDD
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 18:05:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8424722259B;
	Thu, 30 Oct 2025 18:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gx8gZ6Hq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ikFNQUEr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0548D18626
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:05:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761847513; cv=none; b=GS2+Ch5S35PizbwYVaDhm74Bto49aNj7AKgOLi06SpYtVNxSN1iPXfddRX+pu2FtpaMgG7i4NvbZL36lvrpr+WRmYMfxEm9eQmUBqyIARxfOorg/PWujJ+vHD9RwmP8XvqZCEeh1jYJr74Vj7sdpT2EeP/InPopvrW8Zex8lZpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761847513; c=relaxed/simple;
	bh=tLKvvDXOiIjktVsG7VkBm/4wb0nODQheuhDFrUhCg2Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=siJEdrLpSs55Sc9e/VwF4h3Hh9/SzfXv83fftEWvDQ1jEb/quid++MddFbQPFXX0OZ6vgOgy6lnMYlu8QnVGNTUwMlAkMlp2K8mRr3AvWU7I6mTjpzbELxNMr2uMzOyzYi8eLWJGqRh+BG4V8EGJCBS0tdmI7M4FapzewraoD8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gx8gZ6Hq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ikFNQUEr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59UFHMTe102840
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:05:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hpNzVsUmvobA7lIT4TbTwiLz
	yOdc/tSke27DY7ldyFQ=; b=Gx8gZ6HqWOMBNy+5o5c1F/H1BM468lUL8C5s7jXF
	ddMnH/KTbqp4wovULa7lxwB/mo+gReXt79A1Me2YtHlMlFJWVAanAXOceF+xDmqD
	8Sb2JHkATKruHEvU/8q1khpclepcXCE6OCpd6Oc/ZEWH07BEdOXA8QVureLjpPaw
	c+FStGuplxeRwgK7gkcwkhma8ma6/fqDq7gl5aTyI4pyab2NkFSGq4Tn8rxwAFWO
	QgWUNHRtJZaRTbXxuLoG1C9mvrR3BmP6hMWncO38YLXqnNSJ3saA95vs3BaVitoR
	gsd1a8HxOYpjvBcLUQPi578hS/xMRDP/wMlkoCdMJ/aDqQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4ahdggcn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:05:11 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e8a89c9750so37755851cf.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761847510; x=1762452310; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hpNzVsUmvobA7lIT4TbTwiLzyOdc/tSke27DY7ldyFQ=;
        b=ikFNQUEryrPhdOouCc23WCWp29XH6cn2fAlwP3XbTMY0Va39qLD0Wb8BS00DMLZiaV
         yPLEXUAEee8ch09WCM/ogsZSALgctSCkdxIpvRFOGl9wt4gvfQHRDzbMPaOVgUSr388y
         9HfyDirsun/KsET6bSM47O58kL3GfSLrxxnLRmnzXDOyQ+eay3mKJrw3OsLXUSuleU7G
         XxjhKSNQSZldCSDujALlmbgWO7as11VMfe3nkkL9JEbH0zKKeb674LwtpuFbBXaUrWae
         SUKFDC9LpWQLIavtjUscRpNiGdG1O+bdAvG/9jflBl8isVdJzu05HMHSWgtFSWVhycor
         A9mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761847510; x=1762452310;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hpNzVsUmvobA7lIT4TbTwiLzyOdc/tSke27DY7ldyFQ=;
        b=e8l0HNpU/Xw+9EG3Ir5qTSDsFtUTSoDlUdDgSO2CNUshaM1dTZZr6xqlth/r9Fp+Oz
         ivP/FwAeKD+ymnujVf+DhqdITXnvh0JskebjpkWdwv01dZdwZgt2GffFZVj7uzYrTYjc
         iAOhp8znVLDW4JPgchdfGF+2ZFX9yXHIY0NnOnROWW/BQspz9PTfquwA35xc4tUZTvD2
         ZRkzHGGwysQ/oFC7Zs2VkP58j5igbFS9aDUaxqK3u70DV+LVBFpyvPmxNc4+XRir8ij3
         GrpqlfIEiOo050/t/fR4admZy0bI2h4EQsee6X5/6tfpR6XXfEe7hzysEaFoKBJ5Ga/j
         +1+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUT4iIUfFPlqVwD1+dieqK38n8UpzlvsvkK0Alqy4kYIow6yK48OA6onmtBBSB8Tlmweq6bFziPwqHC@vger.kernel.org
X-Gm-Message-State: AOJu0YyNr/OLBfU3RgmkeAa0woRlJwJQQ9WEqC/17R2sCFJ94OJegsre
	l/xPOIF+IZB/mHIcHyhBL9LRLADSyTBC2RhTB/bNX4hEQzFmyutqUUo5jO+B++dLtGqsxNNmFrs
	4JcLoJgnRZYZ/bu7EsTTdoovks4S5RhMJbumkeKNcwgwZPWUhxGv/7vCNKQ0+QODA
X-Gm-Gg: ASbGncsOH0qU9cv37OFx4DpJov3p/oTj68sn+VaL4j+LXaRXS1b2msfZxBYHMc2aYre
	2q0W3lOXKNrBN3laHjY0n8h4b+rsnKZm11Z9Nby7LQXhk8Bea/DpicFn+/POvuo7D7Xi5EEr1hB
	GDPcT/j6FfIA+iKLJ3TnLKYWT1oD76K2kgZbRnAU4p7+jSUW8rqMnGuggFWk2WuJW/giMNhLQWN
	Lxe573vmDjpUAf9Yhdkc7pBW87nPuTvrMOplYNFwr/W7tGYtUab7IzwISfB9zmU25z8JBiD9sIv
	dxNnaoVwQ5jvsuFgRL9WXUZuDc2ncWD/2BxebG8/qxqEPRMnAJHgp/C0nWYAmrDTuLjqC40x6Pq
	xv1Rtv6cmf1PhS7TMbVohGduv7jLe/o3fdc6/pC5hCNEV2h0Xumhb2u3T4/fSgdBQ/ACcS334Rn
	1aMnrzEYrCsZJY
X-Received: by 2002:a05:622a:1aa4:b0:4e8:9596:ee6d with SMTP id d75a77b69052e-4ed30e159f8mr7797721cf.9.1761847509998;
        Thu, 30 Oct 2025 11:05:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IElDt9l0NR9/vDPiU5LTv+UBt4T29PKNjIh11r0yOe2hphXbziVzZPIVwEal2E9S0jpWwC89Q==
X-Received: by 2002:a05:622a:1aa4:b0:4e8:9596:ee6d with SMTP id d75a77b69052e-4ed30e159f8mr7796561cf.9.1761847509253;
        Thu, 30 Oct 2025 11:05:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f50a6fsm4714062e87.35.2025.10.30.11.05.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 11:05:08 -0700 (PDT)
Date: Thu, 30 Oct 2025 20:05:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjiey <yuanjie.yang@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, robin.clark@oss.qualcomm.com,
        lumag@kernel.org, abhinav.kumar@linux.dev, sean@poorly.run,
        marijn.suijten@somainline.org, airlied@gmail.com, simona@ffwll.ch,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH 08/12] arm64: defconfig: Enable NT37801 DSI panel driver
Message-ID: <g5oia3ndlitxrquptsvalfesjujjtlfh7gvrao4vf7vqaqzxvo@5q3bwz7ubmrb>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-3-yuanjie.yang@oss.qualcomm.com>
 <wuh7agcgg6spghilnx4amqukaaydj25u7kbdiod7fl6pu2ulvm@pmosyuo43cyw>
 <aQF98RvLuOlJZlFi@yuanjiey.ap.qualcomm.com>
 <38c8e26c-08a4-42d9-8f6d-93969af90d50@kernel.org>
 <aQLOaI3ngjswi7kd@yuanjiey.ap.qualcomm.com>
 <7c1e0cb5-2483-4efa-be52-84cbe5d1a4b2@kernel.org>
 <aQMOz4P2/WyjXy1b@yuanjiey.ap.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aQMOz4P2/WyjXy1b@yuanjiey.ap.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDE1MCBTYWx0ZWRfXw/m8njoS4Vot
 roAUAXSxRscga/6RGN0XPOx+j643dKNJpKmwjYJPR+Qt1z8j3ANuWAcBUOkyEKiZwZIBc027yup
 8JpONomDVrSbvTHA55QyyeOgFf/RHK36tWGHuf5uCH0bysO3Clp/iuV1eWfawi12J/k8PcERssi
 EL87AGJPvjXCV2DLEY8K6kVczklwwL5sR1reYtiYtgEaQBSazfhiIPLF6J/oTYZ6UxijEuP+Nso
 3YWBaa8SAkYBIjqwIlhDEmoMmhZduDFJi+ujJMk7aM0xAik6f4pjC4IvewURaLeqy7XVFq9KMcX
 6cZsowjYfHD+VwUjeXXoOuUVdKu1ih3Prapsd26Gsd8l8soKMH94Y15iD1aZtrLtGNWdiv4FW+B
 W06aCOmtA0Z75JNm4ZdRiKNijGB+Ow==
X-Proofpoint-GUID: GzjYoVjdTfMJwveEh31-5GCrdOGFQMl1
X-Authority-Analysis: v=2.4 cv=TsnrRTXh c=1 sm=1 tr=0 ts=6903a8d7 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=P-IC7800AAAA:8 a=EUspDBNiAAAA:8 a=59EQD5k8VZCOn1K0OjEA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-ORIG-GUID: GzjYoVjdTfMJwveEh31-5GCrdOGFQMl1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_06,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 spamscore=0 bulkscore=0 phishscore=0 suspectscore=0 adultscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300150

On Thu, Oct 30, 2025 at 03:07:59PM +0800, yuanjiey wrote:
> On Thu, Oct 30, 2025 at 06:37:40AM +0100, Krzysztof Kozlowski wrote:
> > On 30/10/2025 03:33, yuanjiey wrote:
> > > On Wed, Oct 29, 2025 at 02:05:20PM +0100, Krzysztof Kozlowski wrote:
> > >> On 29/10/2025 03:37, yuanjiey wrote:
> > >>> On Mon, Oct 27, 2025 at 10:51:23PM -0500, Bjorn Andersson wrote:
> > >>>> On Thu, Oct 23, 2025 at 04:06:05PM +0800, yuanjie yang wrote:
> > >>>>> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > >>>>>
> > >>>>> Build the NT37801 DSI panel driver as module.
> > >>>>>
> > >>>>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > >>>>> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > >>>>
> > >>>> You (Yuanjie) authored the patch, but forgot to sign-off, then Yongxing
> > >>>> provided certificate of origin, then you provide certificate of origin
> > >>>> and send it to list?
> > >>>>
> > >>>> Please correct.
> > >>>
> > >>> All the display patches were jointly developed by Yongxing and me.
> > >>> So every patch 
> > >>
> > >>
> > >> So two people were working on this absolutely trivial defconfig change?
> > >> I have troubles believing this.
> > > I want to say these patches I am first author and yongxing give me support, so
> > > I think yongxing is second author.
> > > 
> > > I want to express my gratitude for Yongxing's support in every patch, so I included
> > > both our names in the sign-off for each one.
> > > 
> > > However, if my intention causes any trouble for maintainer, I can remove Yongxing's
> > > sign-off from this patch.
> > 
> > 
> > Please read submitting patches to understand what Signed-off-by means.
> > Otherwise I have doubts we can accept your patches - you simply do not
> > understand what you are certifying.
> Thanks for your tips, and I learn some tips from submitting patches: 
> https://elixir.bootlin.com/linux/v6.18-rc3/source/Documentation/process/submitting-patches.rst#L524
> 
> I thinks below sign should be true, if you also think it true, I will use it in next patches.
> 
>  Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>  Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>  Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Does one-liner need two engineers to co-develop it?

-- 
With best wishes
Dmitry

