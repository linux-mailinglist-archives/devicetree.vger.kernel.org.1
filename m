Return-Path: <devicetree+bounces-249301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D73CDA869
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 21:34:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 508B530421A8
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 20:32:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 513DD35F8CD;
	Tue, 23 Dec 2025 20:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C0dVQOkb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NQ/1LHAK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B37D035F8BA
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766521570; cv=none; b=RNPh1AHY7/SwqIixRWBMsdhrRSJYC7fHqFi9l4kJ0u35yyaYycio9eMbdtXO8tlVe7u6klwkQjzTQYmCEukprG26sCo2CJViAjbPA0oIZf9t/uUagiZvEJo/c+viY0PcfJUk8p2NOc8XJ8SaDncV64AacmI07/4YDChDsx+QZkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766521570; c=relaxed/simple;
	bh=CFvP5a2KfjxiURdfN0mnxnTosl7gqO+37M9yCf0UAlM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V32s3y90oXYe05lsukyMjan3ppSldZpjzQLzTDMCq4iqXKQKZwwY3As8M7Zusz9gHQ7nbhXK5nlj3/FBVZJ3R8OwjJKzOPC3zccKd7t+/COk5foyZ8iPjzRDqafFj6Q8k6r26iJ+/iMxkMyq6rEeSa4GzeN+BYtRLj2UiJj8RCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C0dVQOkb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NQ/1LHAK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNHtLDg682292
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:26:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aj42g1lbj0Ht7S6i5Ug6TnJq
	UFURBH1OBIEfCmbSvUg=; b=C0dVQOkbuUJes00BoM++kLlWZZnfRYlKkjLtIMVN
	qpe7y+5frfzjwPETP7vUesuHUH7uH1gJItJs5CAmwy1D2u3mbv4enWn4ykW/bcxN
	MxRB/wbhEGNmxHDcRienRtlBuQsXqGbrJG8V8C/uhEc6HppvbwcSsdG2dsdgpSwe
	qg5L+SgIPXHjG/0tSBB9lE59BNuGUz10lO3VsTIFeSvbccn9os+ykrCHhGVYohY4
	H4y6chTCulZNxT+uhVWgprUtw7gheAMcSUOk/PTUSDFRVqP0Z3tCPxlR2VWtQUEy
	CeYvoTQ/Gc6ZDYcoqK4ldxYpg8s2fY79uCIje5johpshJQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7yvq0fvf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:26:07 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8887c0d3074so140989046d6.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:26:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766521567; x=1767126367; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aj42g1lbj0Ht7S6i5Ug6TnJqUFURBH1OBIEfCmbSvUg=;
        b=NQ/1LHAKqhLHGP7lfh0PjnZIoRjJ2bEEIm4buxun4TSYShx2hBOIbfxkmTdXPznwlt
         hFvas4Cqi1wS/+DEhi/tzKwK8lPLQugW8mJNtYynrz/z6nilel3TYzEEBOk92HRNquAc
         /Pm5XGsKIpmBpzZjOoncgaKvOZXnOkrFLAI5pYTrhYoh1BStGPM5w/qUNTJEtqBuRr44
         4ZDzBMniHSmQs8qqn0OhqlDi2yFetq2Y/vnPMyLOD4OMvUnEEbFry7A3b2zB2H8l1ChD
         rgtUWcn5ZWwCzocXzrFhNpIt28PM89XesYvQCCmfkCvRgAhPCrjrq5lzv/7kNUbxNOj1
         flCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766521567; x=1767126367;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aj42g1lbj0Ht7S6i5Ug6TnJqUFURBH1OBIEfCmbSvUg=;
        b=Ip2fWErwTdxEpI2z45hFpo2w3Tp65e1LvlnJti3+stC4S+MtEeewxnHHx5D5r3C//q
         MWt8EO10Jwrs1nqpfclUn7r0EeElK5Uf6t0F2gaDt9tLrI91Zf2j020IN1NPqpsOv18k
         ZH8D7r/2vmyCZatuliGditilQrybAp0YY8pJYUNuBBvWfBTzKUlyhY+4TogbzIUXaHgM
         /wRXxznHRnrpnb85qbze9CgtXIDm/tijgw/4zRf5/KUHPRpnu0i7vbetChUkdeM8uKZG
         VYgfohbGnQ7S67iiXYTgYKmV7qPFGzhmnRSE3tdlIgu87jktbZDtj+FFA5qy7hpYeVNZ
         ji9A==
X-Forwarded-Encrypted: i=1; AJvYcCWHle6pBcNOYHB092Lox99KtO6zpspdT4EYiiVw9dA6DAYJdFcJBQXtrsBtqmJz94RgFKHyjV1j3o9c@vger.kernel.org
X-Gm-Message-State: AOJu0YyuCItUZ2YAyNQeUw+eRFmFcYlQasFMiJFR9UfRKx4VoWzFTSRm
	XLuBz/xeuIJYSUVlg2Hl9TrMllecRgQnvXLc2X+9q1rS+zBRcfed9+RlYZq7XbxdkqfadL3uLIs
	uqx778PsvnUeZj2LNjqq60w97Qqy1wzYaWmAt4LKQoH9Zk88lD7cl3XZntqktzUgi
X-Gm-Gg: AY/fxX5fGFK2KbzAn2ZrPsgzlDMQqIX7a8DuBstpwN9ob/JdZoA4VGA1WR2eOSrInlo
	UfcZ5oXThgn3ZRfxzmApTlmvhqgKQ2VCzpO5oEBuuEqPxDCMfKx4nUEUASeXYNPMbK5tdmwZM+Y
	SRRL7DqaOpNhuXWtUqQekjFeKsRtX8MDzIAlvlUa2m9FV2ce6/3Hw9N6hIHlKM2gmagqXujvSxw
	w7bgL4aEtebJtdFI+YS313KQW5nL4V2ty8dI75+PZk72yEDKg5f3C3nXDLxdW0NJCJSRfnviTGm
	ykUQv2M7AaIlu7nA9RL0pYAoFzYAy8IGU5PVLCvs4OipVuCtKtseetFVRQdsdLV+OKKJvvC+Hoq
	ztlAjwKyRG3RORXm1U+jYruWfxqLNRGlAdEg1RMVhfF8i9prNamE81MBtVgWrpT2aO8xlOwLyMU
	Y5icibURMfn8RAKgFvoGone4A=
X-Received: by 2002:a05:6214:1ccf:b0:880:5867:45b4 with SMTP id 6a1803df08f44-88d8166a0bbmr248859766d6.13.1766521566598;
        Tue, 23 Dec 2025 12:26:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHcP4W+FMfLAts8VrhxqLmeMDy1CfbZG1GmYVwnMftp49xkskmopobDd7HasAPIjVFzVis7Ew==
X-Received: by 2002:a05:6214:1ccf:b0:880:5867:45b4 with SMTP id 6a1803df08f44-88d8166a0bbmr248859266d6.13.1766521566133;
        Tue, 23 Dec 2025 12:26:06 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18618d4asm4430980e87.55.2025.12.23.12.26.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 12:26:05 -0800 (PST)
Date: Tue, 23 Dec 2025 22:26:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
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
Message-ID: <bqmk32aahvxzhpzvtzpvxcbstbrozjocmx6enkry5z7owdavax@7xtgdizvjomt>
References: <20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com>
 <20251222102400.1109-10-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251222102400.1109-10-yuanjie.yang@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 7gxG0Nk5sHJ_xZlfuxHWe81MVUxUf_Xs
X-Authority-Analysis: v=2.4 cv=abZsXBot c=1 sm=1 tr=0 ts=694afadf cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=kh7DVJtwBPZ15u4CcvgA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: 7gxG0Nk5sHJ_xZlfuxHWe81MVUxUf_Xs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE3MSBTYWx0ZWRfX+xoaTxl5JGN3
 Xnq0uE3HsBqCCNgm4E/xL4zAQLo+Ti9JA8BG/3Pi/usrBv00Nrc/IHIGf6y3U4ZJbKCrQgqS+9w
 9NpDjgZ5Fsx05hYVro5TKzOcWiF44Bjwmya6dNscigGYp9xBGv/yWGUBzV6+Pzso5trxjqtxJUK
 SDuRwyqm4yP+zaRpHci7fcBTHGFZtxGDfcNYIpq2SoR78qWCEn6j7gZCSGmHllvL9IulYmcB+Yh
 t5XIjIg+3hiwdrQCXI0GCZadYnPeJO6jXGjtdJZ2NpkzplVSGO7bdpDdzcTv/1/7gphqn8ZwAcH
 Pk1hGom8l4oWbkU4zILzPf1HBNgvJ+ZShzToEJf0Im6BVJSMeqfZECT8csbBIPXxTGcuJsFwICh
 Rqp/upGt4q5p1owQ/qUads2n9MsUSQ/rGRQyAfpj+NWBuT97IqkSXw9RoFv2/KgqXc12BPWCDFb
 pjHE16r4QnoVjKtjh7A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 spamscore=0
 clxscore=1015 malwarescore=0 phishscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230171

On Mon, Dec 22, 2025 at 06:23:58PM +0800, yuanjie yang wrote:
> From: Yuanjie Yang <yuanjiey@qti.qualcomm.com>
> 
> DPU version 13.0.0 introduces structural changes including
> register additions, removals, and relocations.
> 
> Refactor SSPP-related code to be compatible with DPU 13.0.0
> modifications.
> 
> Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> ---
>  .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |  14 +++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c   | 110 ++++++++++--------
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.h   |  52 +++++++++
>  3 files changed, 130 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h
> index 336757103b5a..b03fea1b9cbd 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h
> @@ -208,6 +208,18 @@ struct dpu_dsc_blk {
>  	u32 len;
>  };
>  
> +/**
> + * struct dpu_sspp_v13_rec_blk - SSPP REC sub-blk information
> + * @name: string name for debug purposes
> + * @base: offset of this sub-block relative to the block offset
> + * @len: register block length of this sub-block
> + */
> +struct dpu_sspp_v13_rec_blk {
> +	char name[DPU_HW_BLK_NAME_LEN];
> +	u32 base;
> +	u32 len;
> +};
> +
>  /**
>   * enum dpu_qos_lut_usage - define QoS LUT use cases
>   */
> @@ -294,6 +306,8 @@ struct dpu_sspp_sub_blks {
>  	u32 qseed_ver;
>  	struct dpu_scaler_blk scaler_blk;
>  	struct dpu_pp_blk csc_blk;
> +	struct dpu_sspp_v13_rec_blk sspp_rec0_blk;
> +	struct dpu_sspp_v13_rec_blk sspp_rec1_blk;

This is a refactoring patch. Don't add fields (and structs) which are
not used inside the patch.

>  
>  	const u32 *format_list;
>  	u32 num_formats;

Other than that, LGTM.

-- 
With best wishes
Dmitry

