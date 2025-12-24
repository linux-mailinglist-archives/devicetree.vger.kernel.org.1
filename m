Return-Path: <devicetree+bounces-249338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F496CDB262
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 03:18:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E321D302BD20
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 02:18:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C95DA23EA90;
	Wed, 24 Dec 2025 02:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o8/7f4N+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Slo3u+V/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4453A1E7F
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:18:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766542719; cv=none; b=AIkmnOjM6iebMHGhUPTqMCjp3MGwScrT1Cmu6zaFxTOCAEa6Gi+byQJEGNRZAdpz0XFJY9gMMW9u0C8nfzz8qlPMjEgLlUvDfG7U+FVSWsmVpNfuNLwxxV2KmuPNpSl6n732xBL5BIg9wAblL948paK07rGYhihL/m8TxTwDOJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766542719; c=relaxed/simple;
	bh=0vAkc9zW3GcBgTqoc6KPnH0Co77VLIvOzy7FymYIOTk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hG8NeeCWs0Gjk8LqHZXgeXk8a5qmXw6E8d1Tak1EZe8nHVNuWU2Nj9n0qiKbhtzmxs0L9n5Xn9IowzwrjzMCNxWyHIBIOUOqx1I7ueocFJ9VqLKShGkRWJBiTcsuPFN7Hvi7QAeSdIhczFintMKW4VxGd6Sx876cOIlRnaRM32U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o8/7f4N+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Slo3u+V/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNGOMkN1018443
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:18:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tQh2uyWtEkYSbjZSvJtcdk3s
	4J7dVAuke1UBIGUMQ8Y=; b=o8/7f4N+27ErkkhenfoZ0tzOz0EXDlwC+7ogtcdt
	eIS/92TzYJEtVLZD3RVoziDhGaPScTu5iel4sEMlG1mSLQHWkCfSAfihwWOWOx9j
	BcoLko+UQ5MNIvAP05Rpcm030xdgdelXhnkKW//g4tzNAl1OLcXVq8W7bsVi+SzS
	kqxOFzHPAI9wFczpD2RP6j5v9vhADcqdWAZxpAdO/gcdElEVqVVndNuUQAvSGOUu
	mu8K30g00dppK+mPXMzzOV09a8EJBJuNfRdJmJzboTTntxOakFNBu2X/lb6OVWaF
	95OI7eaBZ8cDAxSPu6nV4mdYxANdsAQpZu2e+mDFRAmO/w==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7xjs9f7t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:18:36 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88233d526baso159049936d6.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 18:18:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766542716; x=1767147516; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tQh2uyWtEkYSbjZSvJtcdk3s4J7dVAuke1UBIGUMQ8Y=;
        b=Slo3u+V/Vtt+UaJNe+qofuceIV5tH5j1AQCx9j6cvwmRqtk8yFYnOuuwl3lRO9RdOR
         EEBfq0QY0B/amLmqn19GlALZiHiQMR4MCSanI41tMDt9W9H92yGnj6+cZoqX13ZANRB9
         iTDIHcbY/lxStO/Ff/vDLZ1lgyD7MIeb1f+IZhXHEQSIgwWBg55lRzjFgOtSwpaJn/OZ
         mwVQAN9TtgURq2IPl+G/FkHpfsgUT8WzlLCzobCoP7o+/dr4t/I/KlkXsbIgBPVCcB8n
         ecnT3zd77Wgeazpkgogg5kIx+AItXsNta4PGbWlPpHauiRELalpDtAJM96M1aoQZPbNL
         vibg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766542716; x=1767147516;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tQh2uyWtEkYSbjZSvJtcdk3s4J7dVAuke1UBIGUMQ8Y=;
        b=TSTIsrt9wyKPE9BnCGZRRrcpjXHBCbxacMf+/gSXykx8So6T4pR36BDVQgm07C3ElY
         XcicUelBKXQbJhIkDpBdeWzp+cs4G01GpY/WwfyVN85AogAdoAhFAHE64bJUSpgsqQW2
         uTb1DfaD5An6dnhIajdGR/ow7unymiugcM3SzMIuLjOBkumWoXJywrNuLD+Y/2IoEOuo
         18oH919o0NPsFKEfZhiQtCkT6k2dUXLG7coD2WJK96PbOwi8OdEb5ifhABG/PWunIuuz
         gMfjhPNNprGqwa/PCDcAHII6Z7LKSucqkBvDtYQHwlBc+f3BddsCR3bip3fJ39vfPzdQ
         rwhg==
X-Forwarded-Encrypted: i=1; AJvYcCW39ZMTvZ3rMYT9efN/P6nl0Nob59FA/WNjIjjGsn6UKhkvaPwIf7gH/UQ0VI+OiXz6oYTmv6zb/SAb@vger.kernel.org
X-Gm-Message-State: AOJu0Yz43DXMIy9AxAEeFiNQIENxikJWCULclajcFp1icffKKmtPYimX
	7i3q0r/IVhtGqm8+/dWZhvtDVJEWIn+LPOYZ7A+eltZwwjpjABWD5+WOb9tZFSBao5MvQSB7bRR
	KzKKwISVstGPAG0neIdXNACmjFKV50Cy5CLpTXGg+VIKnWrGh2uklWx0cJdmNSyaE
X-Gm-Gg: AY/fxX7NqTX8eq1+T0DGsvF9dWoK/ymDbSFSwcj4puFfvB0aA1O6tqLa7uj9AKVIbF0
	f7SlEt5FjSYdxguZN4FPiJUeO59gaM6lK6jMXtBAxk6li/Msy4P9U9yAujgG2xq+nEK+5z3INmj
	zHpw8Va9nQ+nSgSUneLY4ZcUY/kKpvMXhmIYb6NVZc/Mvzs4/T9dd/KrxsGLWPKQ/PSwSgTxJOe
	Z8y6Y3OLAeJMdzDCWcP/JBnwUiIeAwJ5ReqfkyNlzQVh6IqAELmAmByrcYyfFVcpys0Y4MEungU
	66DnaI2t1p7MAH+hBBVPhv3gJ/+5t2pTk5mWYFimPH1eC4HEBw/vefASFoThwGM8wiFRtP8jUl1
	UQcJZPAgx5usBG0VUa61UoZWtlzvJ606YxRECt6ta7Yc4Z/dS/CUPVqWSblAzvpOoGPBBRm8=
X-Received: by 2002:a05:6214:620b:b0:882:42e6:171a with SMTP id 6a1803df08f44-88d85e98d6fmr208913026d6.29.1766542716360;
        Tue, 23 Dec 2025 18:18:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHce/OgseXundlepJPywtUfFR71gFQZx99NpJKoPLugRkc5EhYW+YXWFPBqYlzsNAVukmJu7A==
X-Received: by 2002:a05:6214:620b:b0:882:42e6:171a with SMTP id 6a1803df08f44-88d85e98d6fmr208912696d6.29.1766542715942;
        Tue, 23 Dec 2025 18:18:35 -0800 (PST)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d997aef2esm117824486d6.32.2025.12.23.18.18.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 18:18:35 -0800 (PST)
Date: Wed, 24 Dec 2025 10:18:23 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, jesszhan0024@gmail.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH v4 09/11] drm/msm/dpu: Refactor SSPP to compatible DPU
 13.0.0
Message-ID: <aUtNb1nkpfa8hSCA@yuanjiey.ap.qualcomm.com>
References: <20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com>
 <20251222102400.1109-10-yuanjie.yang@oss.qualcomm.com>
 <bqmk32aahvxzhpzvtzpvxcbstbrozjocmx6enkry5z7owdavax@7xtgdizvjomt>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bqmk32aahvxzhpzvtzpvxcbstbrozjocmx6enkry5z7owdavax@7xtgdizvjomt>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAxNSBTYWx0ZWRfX52+HlZ1+DiEH
 u+0P8GYZH5aNsaqzztEJpN6waZuAQWwInJ2OZa0MBCKn4lh++DMs7ZJXS7Bo1jLWX9QaZhZfeEV
 WdXicoorOR7rrxSCXCDF+NSucJ9rul+Y58c5aKenLHIArleY/BbPC60GLoN0dlfS1uplJDwTF8w
 pRVDqsKhh4ZJLnll0W4Ul/6ifTIrkoJ08T94YEW3nQK9N+EzxFPZWrRj8xu7F2NMn/Fu25mB72/
 bHAklJKZpeOdrwO9ykDqn5VoT8Q/LI1IiDELWl85bgT6u0tdOQ2OrZq9lg9VCeJTs0UaC9b7Bpj
 +035CxpaRjmVTBmfu6PFEG2PL/Dq2ih3DH0ZBY6OQtYL2+UKsTuY9+ES2g3DVtamMROeuMppxkh
 hdwyM5jbwBF57wRAvo4u5hFK0qWcd0kAtkIpp89y+02WPCBuRaVrXwEZwmfvAv+JPeuJAwFRW/X
 0zlMHAZcFvRd+SJnJ/w==
X-Proofpoint-ORIG-GUID: kbp1qXIGR759lIP5fRml_jw8kM87NF-N
X-Authority-Analysis: v=2.4 cv=YcqwJgRf c=1 sm=1 tr=0 ts=694b4d7c cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=g2-dxqoBfl5MPgs3cbgA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: kbp1qXIGR759lIP5fRml_jw8kM87NF-N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_01,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 clxscore=1015 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240015

On Tue, Dec 23, 2025 at 10:26:03PM +0200, Dmitry Baryshkov wrote:
> On Mon, Dec 22, 2025 at 06:23:58PM +0800, yuanjie yang wrote:
> > From: Yuanjie Yang <yuanjiey@qti.qualcomm.com>
> > 
> > DPU version 13.0.0 introduces structural changes including
> > register additions, removals, and relocations.
> > 
> > Refactor SSPP-related code to be compatible with DPU 13.0.0
> > modifications.
> > 
> > Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > ---
> >  .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |  14 +++
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c   | 110 ++++++++++--------
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.h   |  52 +++++++++
> >  3 files changed, 130 insertions(+), 46 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h
> > index 336757103b5a..b03fea1b9cbd 100644
> > --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h
> > +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h
> > @@ -208,6 +208,18 @@ struct dpu_dsc_blk {
> >  	u32 len;
> >  };
> >  
> > +/**
> > + * struct dpu_sspp_v13_rec_blk - SSPP REC sub-blk information
> > + * @name: string name for debug purposes
> > + * @base: offset of this sub-block relative to the block offset
> > + * @len: register block length of this sub-block
> > + */
> > +struct dpu_sspp_v13_rec_blk {
> > +	char name[DPU_HW_BLK_NAME_LEN];
> > +	u32 base;
> > +	u32 len;
> > +};
> > +
> >  /**
> >   * enum dpu_qos_lut_usage - define QoS LUT use cases
> >   */
> > @@ -294,6 +306,8 @@ struct dpu_sspp_sub_blks {
> >  	u32 qseed_ver;
> >  	struct dpu_scaler_blk scaler_blk;
> >  	struct dpu_pp_blk csc_blk;
> > +	struct dpu_sspp_v13_rec_blk sspp_rec0_blk;
> > +	struct dpu_sspp_v13_rec_blk sspp_rec1_blk;
> 
> This is a refactoring patch. Don't add fields (and structs) which are
> not used inside the patch.

OK, will add in Kaanapali SSPP v13 patch in next patch.

Thanks,
Yuanjie
> >  
> >  	const u32 *format_list;
> >  	u32 num_formats;
> 
> Other than that, LGTM.
> 
> -- 
> With best wishes
> Dmitry

