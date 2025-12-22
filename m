Return-Path: <devicetree+bounces-248907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DC37FCD69BD
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 16:47:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4B414305F6B1
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 15:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8A7632E151;
	Mon, 22 Dec 2025 15:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MDAqqMk5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iWY3oR+h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EEB831AAA3
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 15:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766418417; cv=none; b=qQEciAD7rsZBeafb6C5rhois4zWHMu+s4QPQaqzpQf7n8coaC9R2iWgkz0e2fWh10ooMFf3l60WmguSVFMwHoWfMMOFR+X3mWkYFkXbS3XiI4CIuvk7ixLsIJBgmBTTjekdLrISBKnwhHn+gONLPBB59Gp8pwtsn7Gwl9lsL0Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766418417; c=relaxed/simple;
	bh=gKoDiGhXT0SNCsCp6ZuvAyklCOX1Xi562CRr5DR4LoM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MVIDghNSgxIM4R98CqIwUMXWtlGXo8qx1lnfR3RCrAw6XU6+TcSLshAWylVT4eCjA1dZgtKm/lS/W2jKNJ+Tl4esI+uoyZx0IEZyzPpHoMxT6uuLpK97K132L9NUDaPuDin1CpNzMuVQhfZ6Jbfr1ZaVwAIzcDRhOHoW0VKUfWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MDAqqMk5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iWY3oR+h; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BMEC9E73287010
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 15:46:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=InXyV+JNec0b7S1997VuA92q
	dfvh3YWc70bUG/cazkw=; b=MDAqqMk5nywR+7vGyHwdUFlaBY9Y+IAiF+ml33u+
	0J47yhcFlNx4Y6JfY5DYbE3MQxwPT2Y/kqKWi2snjSNKsV3R3VeQVRM80amWOCLY
	zkkhpkJU+zZg9wBDHOG9KsnI/xmyKHT6asT+98o6U0HmAo7WooIRjji0+kWgQdNC
	gF8Bo+V3gXAbkA90sksE2LrvILIif5oUU+J/efxlCguUiPN1blP4GgataWps0mZ4
	fEBYaRmUCCcZYO4oyAXjeXDIuPQd46n673hRhCxWSz3fGrLFSVLrfRiAeRi3GBOr
	vgQ91hbmxy0cqLUSl+axoSkZWPegqjDV5Y1zkdaN2gSTdg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b702t9p99-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 15:46:36 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f4a5dba954so95741561cf.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 07:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766418396; x=1767023196; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=InXyV+JNec0b7S1997VuA92qdfvh3YWc70bUG/cazkw=;
        b=iWY3oR+hkswlZW3LXe1qj92YHcRo0BJ2mToNSYQhJ0j3vsnHuWX+iz23FpB++Il9D2
         l+zcuHUOtkw9nJnnhH8EKjMkmTJvqdzii/QWPIRWK1YOByHxjFdMV8DEWXt1sLcmcUrn
         W6DmTU+MQxXnu6RSRyl4ncFYBOAwfNocsL0F2myVoe4cWA1RgsNspXGg4u1CtLs72Gno
         UCVPGMPkqgyuinpRhKLGD3VdouYPxyHGfCOsu61v0nxVyG0SgjbvRIbXB3MwsnV/Tvrq
         ax9gK4C62/YWIH7LsyuhXgjjvi/pc0q/4ig0kKtrOu5Iw7L0LTT3eApJTWl2/iwu1kok
         VK7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766418396; x=1767023196;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=InXyV+JNec0b7S1997VuA92qdfvh3YWc70bUG/cazkw=;
        b=wbSkCQNEEiX0lK2fJGovb5aCaGnlpd95wBhmOX/xmOpXyPJ0X/LTUZU1EVWi6fYzUk
         hVGBZPtqwLcr8ZpJ8i2+N8mSE/5oe1A6VgfsBbPkG2VttW6VJUzLKFQpRRKatanVZch4
         kEusskG4Daa/h6XuSCP1CaE+5BU35Hxi63s3uoK/4f8HfS7QwPqnoAMG7Sun+iq/toc5
         ymD8uqhBxbK+dmpzF7eI6YRRQTazb5NchUhvACy2xBf+9uKaduibQlVO74Gd8dfPiQ6x
         F2od8gC18WRInNEyVujm7GW9VVc5QNprNbzfyxvpq2g5Lo5eQR00k5r/dyA9DRnyXngW
         iFGw==
X-Forwarded-Encrypted: i=1; AJvYcCWzY8yfEvkEtykLTXXiMvJ0M/faxBVqdIMffjZuPtM8hsqctbJ1MZ9VIjTT3+XqAFw+mtLtC2crdFn3@vger.kernel.org
X-Gm-Message-State: AOJu0Yy76tHAOEnoFvA76lp/rEq5Z83sbSv+0h/DOuJnFn4syniFeJw3
	8YvsmBVMYelDYQnOFut3AuaDjjjS5A5a77YjVDkc9k5K6kYIaYgzzPCtyLUINxXBNKfCzdMyj9b
	6GQzRcHDwk9/p8CXbjffGwnR49dWkKbmIwC+/jzkfALwRb7yCuvbeW2ygBg+SmPUP
X-Gm-Gg: AY/fxX6ZF5DXjBX+HnxGucMvqRs3l4BBrcH0XRFOTkuHlHXZrkTWJpDtGbiTWPAYrQf
	wV1RkHY4UdpG5VJZtuhbm1ZXfelHFIlSbeb86RdvKNSdFF6DW87wbTBlLeMwlt1f86Pmoc20zfv
	w4+VjUc1eL37gcPaLGvUaHSUhqy8ePWw5UarQsjDntkwrq9QzweKYY0N9wZcVeiok//QvlHS5AA
	TOUBAjxfWMVjYlvaK/69hYDUE2Fa0XNOEn2gSrauDbjTcXMMHr1j+zbPNpJpkBwP5r2vEBbf9WY
	x23hN1YfLvnU78doUiaVsswiOng2q2IM3LvQFofJQmE/zyw2hiWmMiiiSzGh2zRV3VWvfBkowYQ
	+zBpP5qFL8odZX22YzvwYxU7r6hVXTdOVHeQaODc6a9W4nboADSni7E9+IBjc6rn3SyhhHHrEpc
	uRUWej1WoD6v8EF+XNPMlcDRk=
X-Received: by 2002:ac8:5c8a:0:b0:4ee:ce3:6c9d with SMTP id d75a77b69052e-4f4abcf0bd7mr156435851cf.19.1766418395777;
        Mon, 22 Dec 2025 07:46:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFmmqugqQzBG5o7UjHdZltBjI4DfhSKXTIQEZmXsOFv8dArc5Ft/vGe5LQyiJmWDAE0iWQoqg==
X-Received: by 2002:ac8:5c8a:0:b0:4ee:ce3:6c9d with SMTP id d75a77b69052e-4f4abcf0bd7mr156435361cf.19.1766418395229;
        Mon, 22 Dec 2025 07:46:35 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185dd7c8sm3175345e87.26.2025.12.22.07.46.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 07:46:34 -0800 (PST)
Date: Mon, 22 Dec 2025 17:46:32 +0200
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
Subject: Re: [PATCH v4 05/11] drm/msm/mdss: Add support for Kaanapali
Message-ID: <3pgly22pfh3v3oia4svgapp2vqmckun6a5d4dyaljp6lf6ol2f@ddo5akmouzsb>
References: <20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com>
 <20251222102400.1109-6-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251222102400.1109-6-yuanjie.yang@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=SIhPlevH c=1 sm=1 tr=0 ts=694967dc cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=_XWVza19j1sFB8Qqp28A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: FJJgRAexauxK8N99KhgG20Izq8yYMmBc
X-Proofpoint-GUID: FJJgRAexauxK8N99KhgG20Izq8yYMmBc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDE0NCBTYWx0ZWRfX4l1wefUfAC5t
 MwT27SP/EhOQjpDBjonsQ9CPdnXUxWPmA8jm1RSxeZvgAZoBpj2UTZQFFeXsrJ9zQKyUthVM8CP
 H/qnHk/s7sptYl4TW8PvLtZ0yljN8Tb7CCfE3aXSZS1ziDUcQtHr/KpPJRNQwat/W1AB9VLgt+c
 LVT4wmjwT4Sa/NKyIV7asRi32ObXC87njNnMXZzDHy939osE31/MCFUR8yuVtGbqgmpSzDzOi1P
 oHGTSR+HykKis4D+rK786fvsA3CV7WHpf1wdt33jCzSDoNoSDsI3Mh7SvS2lsHMPl7HKvxDrgJ6
 m8ToIdCpkCwfnWddls5JeS3WEXvv2ojj1uUhtfKX9KdR/PKvuVdMfanQ8v1uZ/ET/Nah/XeZX9j
 +sQ7WzKFcozBn4YwXnkjxGUQZP8Zz7dgLW94nkJWAVdZY+pljCzGhE5pM87+f2nt8pn5cWeFXwT
 D0jx02qUPKWeU3GL58w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-22_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 adultscore=0 phishscore=0 spamscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220144

On Mon, Dec 22, 2025 at 06:23:54PM +0800, yuanjie yang wrote:
> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> 
> Add mdss support for the Qualcomm Kaanapali platform.
> 
> Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/msm_mdss.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

