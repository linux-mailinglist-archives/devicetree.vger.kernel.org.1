Return-Path: <devicetree+bounces-246759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FDDCBFA0B
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 20:59:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2E6F4301B5DD
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 19:59:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E23FF3246F1;
	Mon, 15 Dec 2025 19:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N5HhAvWl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VjjpXOv8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67903326929
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 19:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765828780; cv=none; b=s4wWPBb2p+R9TtpV51oc+uiD07olbZMk1u9ze5ckE81uDRPGJgvex61TzWCTGkjaf2dCQCRBtsgkLgq7MVQM02Vlhfwo4JFNEmJlDj5Q+ehWf9qwkfbdlGssJNy48AsHz06z10+4KgBbLBp0oxT3AIs6Kq1vDY/oVPDp0bE8T6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765828780; c=relaxed/simple;
	bh=UXC9w+i4rTgvKRCDOkIB37o5l7A0DfGO5pn0jwIutEQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jYYE3PW02fnHyGAlcy2XFtdNeBLDBA0jmugiTnwTbrpVX+2ciFdOMop/4V/z9pQQkYFdrFz6K3l5h2HNkxMKttdu0lJSHn8KelJbfyHCOVFhtkdG/XZjEcs2VO66Vp5npiHVte1OgcIP/RmYnK/kVRrSxdG3IUA2vZFdPK+k/l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N5HhAvWl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VjjpXOv8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BFC5K4G367073
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 19:59:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xUvRut4LPhcQJt6yy5jfSYri
	t1yQjmZhCtes6R+h94w=; b=N5HhAvWly81DWc1ywucHiaiDbJNdbpU4q9DwOJEZ
	D7v7QfCtRtHEB9D2lNlKd2ghF1lmxEQ1BHxuBtqPK9nrPuTKNKNpUVzSVO2z/Vay
	VeZiIQa3D4o4w8w395LsQ16cED9Qv92XHMIfzmmZ2NgK4lkTq73QtjA/iBAPghts
	Q70EFbGGa2q9nhuuF7B/ovMfPFrSymyh0RHZRUDdNh8DwH/nOc0m0yxQwEzbMp4q
	PTfN9gbU60WXYxA4edpAuCfttLD4HKbu+IJVmuYgC11VN5unja+ZkL9EJHGZLH9b
	mQgbjJYEdP5K9HbUAJsCpwz9EqoYrrIxKGlm9N56Tqc1Dg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b2j1c1dgj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 19:59:38 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f1d60f037bso73066821cf.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 11:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765828777; x=1766433577; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xUvRut4LPhcQJt6yy5jfSYrit1yQjmZhCtes6R+h94w=;
        b=VjjpXOv8UfgUGS4e6a/IKKKmEk2IudmrM12dIeFSvIhA8di60+PTG3Xm0gj3F8ExdG
         f7LySVDx7D213o0quYVVAzNf3rmKWTZKKrI2rc6xZ8mpfTpLbVhIX1Fixf9l2YvqHixn
         vmI0oFNsH9AKxJpXK5CRwmgOEBQzyKZ6cqr8/eB8dNZbIW1TwdHWEANyQjCFb8Js+Cha
         FFFi9c7SIqUEfNVsg1DtmEy3gX8aRkqNFePXS4ITSTcrKUh+qaMpK8lQE6itqB3OX+9J
         ovElS9EhsP02GHxGyHIuGhn4NPeeoSU3uXn3sfobWY8eJYYYbvOIjB6VGt1TcvhPeTVa
         vaJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765828777; x=1766433577;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xUvRut4LPhcQJt6yy5jfSYrit1yQjmZhCtes6R+h94w=;
        b=LN2KDAe5v74J+3I+s9R7LmQMkC4BCWIAaYrKr/jODO/hwD0qrWcDmUTTWPKiJ7jxPA
         aHZoIR8XW+a1o8Tk6F+dht6jOuiodV9FNrUJxXXTLxcrKp5zOMeboL5WAQcsm3/Ph9Qr
         iW5eYX5qMOLkgClx6mpJBmECGfX+CWHgueD4zZKRIo2Fk9CMUXTSPoNdXLKiuAobsvap
         VQGV47NvJKgaKm8QINvVdP8srDuNDXN/imov+jTVC+ZRnQGryMJYe0rVsfYkSrcT7zkb
         H+BY++GfZoeXChvWpOfLzoPqmwRionwYS5Wb2OEBvC2HXkOJ5pOpnr1dG2Ktar+Egvgw
         8j2A==
X-Forwarded-Encrypted: i=1; AJvYcCWoS2EVZo0CTNJb6RvXGGxbwtUpK7z9/29O2Zx0z1rRV6XHYk+P/ofhdiVz3nPbzMkW+eHPHhppriGc@vger.kernel.org
X-Gm-Message-State: AOJu0YxlK6P4AebEssWO4wLCbwYMZZtGs2CYe0+nKYIzAHKrUU6B+a2K
	9CPbHCj8e46kUJKU7VakSz9j8q4X53A1A/rb4fRyKKZwVfSmSZpl025ahgtfFgyWaLXvdzpqgN8
	B0m3RFCcwu/OJFRZWN7xyACh5pwYgeLWulozYF99r686ZO5GwTl0CrNRmXXCQKmqT
X-Gm-Gg: AY/fxX4q28C0haHlYXCyegIDlZPTR7g42QAA9m/ndubHN6opFg8XEFhBYN0e+MVJ42u
	BAi2Y0U6aUQql2GLw2VoothkUQnIb4XVVTodeGxxuqfa1qGBhWeVcBVQmzTKXyec9RvOI6GdGj1
	+Zzc5eKbevg8RrS7vfQfvNtuKdDd2edFAd9x4anNPDO9p6dMIqN+8z6q2Qqb//KxYffxJEQELf2
	F6RINfJjDRmU0SqcDxX+/UB0u7G7qdbVksOBbUF7vVINK8rr+YSLkVHkZQcwBLCv+AYN1xFMt9K
	vyxo6J+C3E6kqNbQ3ni0lXF4khvCcRBBi5600qoa66JPPmTIHRjL1SrDdDnyda+Muw3TMOslrxt
	YZVXPDem5KktCW/ifBmjuzp1yr74gejLd3N/1h7YkXappEPh9ucla97Y8TvjDEoJ4wVpZ6Ngbq1
	lsslfQtOGGMnlBEo22ybo/hLc=
X-Received: by 2002:ac8:6f1a:0:b0:4ed:b0f9:767f with SMTP id d75a77b69052e-4f1d06121ccmr170372191cf.70.1765828777590;
        Mon, 15 Dec 2025 11:59:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHqqZpdpk/LAjsUwO/CuKVnRywZ44iVAnPHYSr7pn0xdNytnHiFeJJWTaxDzbgkXOhzHtHKLQ==
X-Received: by 2002:ac8:6f1a:0:b0:4ed:b0f9:767f with SMTP id d75a77b69052e-4f1d06121ccmr170371811cf.70.1765828777171;
        Mon, 15 Dec 2025 11:59:37 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37fdebe61e2sm31399611fa.7.2025.12.15.11.59.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 11:59:36 -0800 (PST)
Date: Mon, 15 Dec 2025 21:59:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jesszhan0024@gmail.com, sean@poorly.run, marijn.suijten@somainline.org,
        airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        yongxing.mou@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com
Subject: Re: [PATCH v3 08/11] drm/msm/dpu: Add interrupt registers for DPU
 13.0.0
Message-ID: <rs6cvhftyxh6apvofabt3jgpbguqmfgaq55jue6jaddlfjpbga@sxhofz6qhw3s>
References: <20251215083854.577-1-yuanjie.yang@oss.qualcomm.com>
 <20251215083854.577-9-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215083854.577-9-yuanjie.yang@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDE3MSBTYWx0ZWRfXwXRF+iqTpIz1
 XA9xmKu0DoTiELPVYZGDSUSVRWSF+OPt5i3gqCVsoSHt0btycUZzHhQf46owAZXZX3R3gmDZUXn
 pVaIChHf+CVgP1u6C6QrhkwY8xOh6eBAAYF9TKELM7OAKiNlVoQwKkKQmEFksm15t1osuf4wt63
 P4Y8aslSoP2pizdVUjLZ72GQqbf2mpLzw/6BodP//LQ5IiWamUoGy0Q0mAkSNCQ3E9C71+/Lf8F
 qZbRU7hQUr1FFuc7tlTSEPHgT3J0oL/2ZPa/25DVyNPMO9b0cPdgQzGkEbFP34wZ01daqGYv23+
 n0kDYKdkOZrUtqI4wEWVnMpxE3JmBCTXWb8ZrIgVBUFOe3BjmH1ef8az+AVIr2uCB+e7WL7L9q6
 fK8KlDogTIiyiU2F1PeA3T1Mtn6wyw==
X-Proofpoint-GUID: g17cSzOxM3aYeGiUbLSIIpwgqtigY-5d
X-Authority-Analysis: v=2.4 cv=ceLfb3DM c=1 sm=1 tr=0 ts=694068aa cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=CTRSWpIYyOKnzFSy8hkA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: g17cSzOxM3aYeGiUbLSIIpwgqtigY-5d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_05,2025-12-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 clxscore=1015 phishscore=0 priorityscore=1501
 adultscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150171

On Mon, Dec 15, 2025 at 04:38:51PM +0800, yuanjie yang wrote:
> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> 
> DPU version 13.0.0 introduces changes to the interrupt register
> layout. Update the driver to support these modifications for
> proper interrupt handling.
> 
> Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> ---
>  .../gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c | 89 ++++++++++++++++++-
>  1 file changed, 88 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

