Return-Path: <devicetree+bounces-199855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5004DB127A4
	for <lists+devicetree@lfdr.de>; Sat, 26 Jul 2025 01:47:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 41D2E1CE2317
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 23:47:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1203C260575;
	Fri, 25 Jul 2025 23:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Hu5O37cK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B3C723D2B5
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 23:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753487213; cv=none; b=F6og6/bxlB05JG3pmvztFHcJS8ZaCzfR/+5iBupZPiSaRmFRtmWw2hVRhzQO8wJTwnylbvk8K7vYTvzURI6APyDtQLcQuSUkImFCoTv+r2T1lu4tx3TpwAvRjJ6hMI2dXKCa+MQXiZdlMj4Gs6zUkI42YHUzqC9daODHrPdgwh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753487213; c=relaxed/simple;
	bh=3F6Vnf9P/zJNqVgu5yO6jMHWPUhKAVvQ7z//vRLRnSw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HISiEXfv96XTa1YhNES12WG23RuIVcsZG6/S66FbmLq0g+GFQArvVPoTMsbCi6peU5MBBzGzk5oaslmVNXtwosdLJZl/kftIREIvgLt0jMurT99p+g0Xm2ChS8pyUO4bARGSg1hzTUlm0EH0MX8SI739hi5fc54rC8Z848KInhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Hu5O37cK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56PId2D8026969
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 23:46:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qXBSNgzMClCengYCrY3ivBRG
	Uf8cHDHLLWL7h/aBi7U=; b=Hu5O37cKi+LOw4ou7TZht2o5Iti4N/xAEKBfdnri
	rPJ0pSuvxhfWnZzJhgd8+BsqVUCmPp5FIo4HkakQ7uvvVy8QgTc3NC2eDCGbfTkT
	OL2YhsX6sVT7pnuMTNIHT/qzvk5+vZCvWWeCiINhxYPOXHbFcplIT7T+wO9hRQG5
	GfCHWtfw6H/EMYm7ZDrOiWaLut5DhotLT/hiHUO0h153pKmRzvP/Otr/h6uIWNdS
	PPhUVTR4m9tlJPXCkv8+9x6fyyaL6ut1w7yKuN2byo/itXCPNxVK1fRfi+jkcPUC
	1pc/lZRdOcyfLERglKA3u2n5TpXCOAIw7VpHy9uVC2vnPA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2u3t9e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 23:46:50 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ab76d734acso74104081cf.0
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 16:46:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753487209; x=1754092009;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qXBSNgzMClCengYCrY3ivBRGUf8cHDHLLWL7h/aBi7U=;
        b=qNSkbIUdzGH9vbbGKyMfor0P7+6gVi8gQTLz3zmeQofMuXwIXAdNN6jmOH9YiDisES
         v3mvf2XPS4zNUecfIJ0mawEF61d+FB8cJ7ANJpl6lrWEmmuPdnyVblfAJ+63T5Z3BNIS
         jWC1Uh5jGgZV3a9YFFLGaI3HuqvgrXpZl+EGYXNQtjSYHjmVvpyejZiAszm0UFTQNdbJ
         aq+8YI8UplbMzt40mKxSY4yoFfc3UfWcGffQQI8v5TfU1cr8ZiUDkrrhHMzZoWgHkdBb
         WwT9A91bs5ufb+e8ME3bjYwuN7zco8fcnpztKaEv0Uln+iEJR7LsfJks3C4mvhMezX5K
         UI0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUEDG09z2B9k6bdFIf5zOmh7tata2MXNdFhKrRokGFh3MUfQSrBt/JrUBaJtEbpy4cw3m0VpCOjM66/@vger.kernel.org
X-Gm-Message-State: AOJu0YzblCZPZOIx0soH4LkAbazYeo9DB3xmfPSZqmFP950dyfOGGHUO
	gVcXZ6x0maMZnvMs61C/MLAY56KDxvyx9SNOqE4W1ERXW6Mhe+ZklVkzFvIVjA4FbSFBVr6AO7V
	XAk9KRvGhcnbwpLvPGlFm/HFLeqTZkfh/RqIl5MwCrKVPl2LWtYYdtsE/AM96uJvV
X-Gm-Gg: ASbGncvdStC+vEh+gEEr+cYZv5hFcpY+QFhKkIYyIfkWZPAXi8HV+s+co99R99LB1UA
	mX9PDrLA8xAkIdz0zmBbBZ3TkWSg1JiPA8YHf57j5Xm0uTSpeXYUJ6leAY6kjtNQdsHJLrRDGRm
	KgChHdrSaZwoP0U3aWfoWK05AzHrDBGXvkl6B3otWw0xiongyzHWQvkWxQxQej6XFuC/PNLId4a
	vxrVbXhaRhVi9R/1e3LROixIQpOcBnsE0B5Lzb7+cFRkEAt816eUbNaj217xIR1wFCjagQaeOJ1
	xUM7PTcOIX4qwhYW1Yy+73kkRxu/Ak2vYFLuBEDb/NgVyhx3tboZ8OEyhGijYZ73BR1dTh61Ouu
	zK1vJcgm0Y6buoUcCXRpl3MUOZpYQkMOYq7Wmk0iGhwUIQxkl4A7Y
X-Received: by 2002:ad4:5963:0:b0:702:d60b:c048 with SMTP id 6a1803df08f44-7071ff0f2cbmr58647186d6.19.1753487209084;
        Fri, 25 Jul 2025 16:46:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFy1NIdFUiy+LkfIlb0Nij2OXe6qkzDF3xYJLssxlfhKaFVl8cSqppGR61z2kIummysPqIbXA==
X-Received: by 2002:ad4:5963:0:b0:702:d60b:c048 with SMTP id 6a1803df08f44-7071ff0f2cbmr58646876d6.19.1753487208652;
        Fri, 25 Jul 2025 16:46:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-331f40b5323sm2034501fa.37.2025.07.25.16.46.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 16:46:46 -0700 (PDT)
Date: Sat, 26 Jul 2025 02:46:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, mripard@kernel.org, naoki@radxa.com,
        stephen@radxa.com, cristian.ciocaltea@collabora.com,
        neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com,
        yubing.zhang@rock-chips.com, krzk+dt@kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org, robh@kernel.org,
        sebastian.reichel@collabora.com, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v5 10/10] arm64: dts: rockchip: Enable DP2HDMI for ROCK 5
 ITX
Message-ID: <vncck2eqkvfr7tbnuffopc5pysdct3az744lnc4xesyublfwyr@jz3hyvz3kg7g>
References: <20250716100440.816351-1-andyshrk@163.com>
 <20250716100440.816351-11-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250716100440.816351-11-andyshrk@163.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDIwNCBTYWx0ZWRfX/Xetj/ZEnuw5
 7pT8SL/EM5VW79AS/YKrXAK2hvmsJhZak3pSYGBHVumC5twF8m8j0jLe7KDFymN3kAcTqOa/QB2
 Qv8VuuYKpQeEzMDedecls2P+2SdSDE1YbdXAAeNkl22LpjrPOZTuNViINKdi/gXdCf+30XyXOvX
 f/YFHMlpnPoS82MBt1+KjjAn+3y7YYww6Y1nLgJyzSHB9v02qsfbTyKzEMdNhmbGsi3AcXv9ihc
 nM/B20SNPlBJgO7dSrH9bsIhFnXP8VzyKR37qxbFuzodZVvmq5uMgKQofWMsFZyYQ5kdvrL8MEn
 wZ+yYd63R3mqbGJm/n+FlV/4J26pAunqXbrkWWz8/ymQyvVsqzFi8NGr1dmqpuFGpw17OSp8f2R
 v54BnMtZkXGia26NLg60yRGYHOXBknGpZwulXoXi7krYj13uR7CL8k/X/jLBfRQY0kHyDqfw
X-Proofpoint-ORIG-GUID: R9QRKOQbt9CqxAGdgUdBQS0USxoFsm9u
X-Authority-Analysis: v=2.4 cv=FcA3xI+6 c=1 sm=1 tr=0 ts=6884176a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=mMkY4CccI6nGLkDSWykA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: R9QRKOQbt9CqxAGdgUdBQS0USxoFsm9u
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_06,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 suspectscore=0 impostorscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 mlxlogscore=673 clxscore=1015 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250204

On Wed, Jul 16, 2025 at 06:04:37PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The HDMI0(Port next to Headphone Jack) is drived by DP1 on rk3588
> via RA620(a dp2hdmi converter).
> 
> Add related dt nodes to enable it.
> 
> Note: ROCKCHIP_VOP2_EP_DP1 is defined as 11 in dt-binding header,
> but it will trigger a dtc warning like "graph node unit address
> error, expected "b"" if we use it directly after endpoint, so we
> use "b" instead here.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> (no changes since v3)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

