Return-Path: <devicetree+bounces-161803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B2968A7591A
	for <lists+devicetree@lfdr.de>; Sun, 30 Mar 2025 11:09:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30FF53AA456
	for <lists+devicetree@lfdr.de>; Sun, 30 Mar 2025 09:09:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B207189F36;
	Sun, 30 Mar 2025 09:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QaY/C1gl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7DE917A312
	for <devicetree@vger.kernel.org>; Sun, 30 Mar 2025 09:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743325769; cv=none; b=VVvXgw+qOtUu7mhdkiDTbCkB/SfLqbcLs2z1TDX48/OVA+zosvYspneuU+T16Z7V5SDYHXh+st/yCyegdJeLniRwCVd/dxmV5XozSHoom/tKvJPozGGJPs6roWzm52j8xC4TNQuRDdWkqPFMmDd2/UYF7nLAjHShtPKumluiRUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743325769; c=relaxed/simple;
	bh=4Qg8QUTAChbkTC2oLFDs51JoZ0Jx7J0K1KPAKJcSLUI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=huXQqHMGPPEoiIceooegZBcCI6WuCDvlZyObx7Pik2KzPwlVhxu2hcWsvLSzJqnF4UGd02l5Ww8e2lQfng/uJydLKr4bgGmHtmhH+zt7R9rc4p46IUA0leYQrbYYheBq/kKk6L/wPSv9Eqk91QvbR5Z31nDY6dKLGYoNvGcNOII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QaY/C1gl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52U85c5w000748
	for <devicetree@vger.kernel.org>; Sun, 30 Mar 2025 09:09:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5ROfLsdI7Ar/Oh7Gjy5UFGYM
	qKKc3P+3yIBuWefPMMo=; b=QaY/C1gly5J5iIBGifWvdSt0QVc2N2m6Pm6YIvLr
	m81yMZp73sEVMb2MIro/o3OHy39i6tz/VhXsaqecfyl957hVPpz9dy6eFvBBqRyr
	YF7Ki5F51eid+DK1NrSt6T7mjiQXqVdYiVAcV8I5HiQoWuKuMWa/nVKo4TcEa5zK
	Kfsl8JthU50bn6ET5YIu13f8csn9Nxsg+cFqOdckPbNBBybx2VFFKslXXe217QLf
	SLEKhjc3PqtDRYbm8B/KtOhzKzxkTnsBZ8WLHgi/7Ve+8YCRKRf1zI+sWQN3ZX5g
	Cor/furDBmtCBRDfKKgWzfN1zU6UtyvOKB0if9hgVWRS6A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45p935syje-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 30 Mar 2025 09:09:26 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c579d37eeeso577689885a.0
        for <devicetree@vger.kernel.org>; Sun, 30 Mar 2025 02:09:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743325765; x=1743930565;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5ROfLsdI7Ar/Oh7Gjy5UFGYMqKKc3P+3yIBuWefPMMo=;
        b=t/DvGN8wruAl35TTm8DEKkwKim1yewb5TxlLjfLCiPjgcwppuMebokV5C479j0m+ia
         l006SYsliKhB82kO/Xr8ekZQFPOemPwY0OCoznRYiM//3+Ql6RNO+nh7txcbb3vrf2bN
         ZM0tqu6Lkn0U1xIqTYkTH2xGQ3Iw/WeCSSoII4/ewHr8/WGGH3l22TUcOttDztjP+m/f
         gsmjCMnxciYGdJqkgCJIzuelsa5sckTXc4+jSUekw0AD0UhlTp8fHFs0JPdb58yHRB2H
         T0GZ1yjnIT3JnW5fAZdE5Zefu6MNfiNh7Rln1Qq6dVbNLMeC6tVDa15lhvsKQxGgj2pJ
         2Tzg==
X-Forwarded-Encrypted: i=1; AJvYcCWt1np0S109XHWTZqKmPYlKjHFnK8Exfy9qtGp6FytwcreMBX1GCrvIGAnOHReCoArUoiyVTrB/8qEs@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+AAIxHvc5fsjba6DIbAC5TqZR6q2xegZuHsbTVH6/jubAJ9Dg
	bcxhQKtO8mCiaF/fZK6yNpLyaP/xdo3m8ZwH3qZUsDcRHHoAT1wnZD3jH0OTgBaZeXRGxndbnIN
	U1Rpa2hdVlLUrTUG0LtZv22Z4JFIunR6TTqxJ2RbSFp1XHBuDsCBgLW/fRWctfGWOxmVa
X-Gm-Gg: ASbGncudCIY99rv+G6MYzmLKsw5YwiJrnl7De6eBTnHPDTo+bd/9w5jgN2wNxJXDbGi
	SciOdu28lDgpqVQL5QhUWTFVuH6nPF6vrW5d25Bzj3yITQSNFhBwVjQ/JtMPdAfpark8GbvG504
	RXsLiTPi9jDwe2i/xxjmA9mYDtEdW8SCJL3AVDuAHvH1oxTU8rPy46ZTsDCiBGEZK/ecCkrKAmS
	xXIug+hTURQ6kPd+Pg8vopl6l6g/VTnMrcwf5eVLLd1k7rRmD9IwKvPnh1HiI+J/obvxQ62bOqb
	Yyi/0BVqfa6yezyFwub532EQe2WqYjE5Bn8hef9HcnibBuzFb0aChQNoaa1N0k6Xr6L/ALnCVAc
	gitQ=
X-Received: by 2002:a05:620a:3192:b0:7c5:5229:2f18 with SMTP id af79cd13be357-7c6862ebae2mr677694585a.6.1743325764757;
        Sun, 30 Mar 2025 02:09:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYvzr9iDT/+Zt1EtGh/uTV36XU4kKj5LIQsgvrbRC4lpguIMbIW+SC1/aGTyb1alDzaG8FNA==
X-Received: by 2002:a05:620a:3192:b0:7c5:5229:2f18 with SMTP id af79cd13be357-7c6862ebae2mr677690885a.6.1743325764354;
        Sun, 30 Mar 2025 02:09:24 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b0959150csm829933e87.187.2025.03.30.02.09.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Mar 2025 02:09:22 -0700 (PDT)
Date: Sun, 30 Mar 2025 12:09:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca@lucaweiss.eu>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: display: panel: Add Himax HX83112B
Message-ID: <emwpl2e7zpzkm4uea22g4hayz66nk7nxylinsd2stuwlatwdc3@ixkbc2bxbz4p>
References: <20250222-fp3-display-v1-0-ccd812e16952@lucaweiss.eu>
 <20250222-fp3-display-v1-2-ccd812e16952@lucaweiss.eu>
 <20250223-tricky-saffron-rattlesnake-aaad63@krzk-bin>
 <89cbb27e-414a-472f-8664-db5b4d37ddc1@lucaweiss.eu>
 <cf3a0429-0c36-426f-b9b0-ae7749877bf3@kernel.org>
 <ad132ebd-92f2-428c-95c2-d1986b5d060f@lucaweiss.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ad132ebd-92f2-428c-95c2-d1986b5d060f@lucaweiss.eu>
X-Proofpoint-GUID: _xyv7rMiP2Ss48ZUbz8BlaqBH86iSv1Q
X-Authority-Analysis: v=2.4 cv=KOFaDEFo c=1 sm=1 tr=0 ts=67e90a46 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=gEfo2CItAAAA:8 a=dlmhaOwlAAAA:8 a=tdHwvqAQQuMQAVjc8nMA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=sptkURWiP4Gy88Gu7hUp:22 a=y4cfut4LVr_MrANMpYTh:22
X-Proofpoint-ORIG-GUID: _xyv7rMiP2Ss48ZUbz8BlaqBH86iSv1Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-30_04,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 clxscore=1015 lowpriorityscore=0 mlxscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 adultscore=0 spamscore=0
 phishscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2503300062

On Sat, Mar 29, 2025 at 02:54:27PM +0100, Luca Weiss wrote:
> Hi all,
> 
> On 2/24/25 9:16 AM, Krzysztof Kozlowski wrote:
> > On 23/02/2025 16:29, Luca Weiss wrote:
> > > Hi Krzysztof,
> > > 
> > > On 23-02-2025 12:54 p.m., Krzysztof Kozlowski wrote:
> > > > On Sat, Feb 22, 2025 at 06:58:05PM +0100, Luca Weiss wrote:
> > > > > Himax HX83112B is a display driver IC used to drive LCD DSI panels.
> > > > > Describe it and the Fairphone 3 panel from DJN using it.
> > > > > 
> > > > > Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> > > > > ---
> > > > >    .../bindings/display/panel/himax,hx83112b.yaml     | 75 ++++++++++++++++++++++
> > > > >    1 file changed, 75 insertions(+)
> > > > > 
> > > > > diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83112b.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83112b.yaml
> > > > > new file mode 100644
> > > > > index 0000000000000000000000000000000000000000..e6bd4b33d40be98e479d84617aea6d2af0df70e4
> > > > > --- /dev/null
> > > > > +++ b/Documentation/devicetree/bindings/display/panel/himax,hx83112b.yaml
> > > > > @@ -0,0 +1,75 @@
> > > > > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > > > > +%YAML 1.2
> > > > > +---
> > > > > +$id: http://devicetree.org/schemas/display/panel/himax,hx83112b.yaml#
> > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > +
> > > > > +title: Himax HX83112B-based DSI display panels
> > > > > +
> > > > > +maintainers:
> > > > > +  - Luca Weiss <luca@lucaweiss.eu>
> > > > > +
> > > > > +description:
> > > > > +  The Himax HX83112B is a generic DSI Panel IC used to control
> > > > > +  LCD panels.
> > > > > +
> > > > > +allOf:
> > > > > +  - $ref: panel-common.yaml#
> > > > > +
> > > > > +properties:
> > > > > +  compatible:
> > > > > +    contains:
> > > > > +      const: djn,fairphone-fp3-panel
> > > > 
> > > > Why no himax,hx83112b fallback?
> > > 
> > > While this is the driver IC for this panel, I don't think there's any
> > > "generic" init sequence that can successfully configure this panel, so
> > > generic hx83112b driver could work I'd say.
> > 
> > 
> > Hm, indeed usually this would mean no need for unusable fallback alone,
> > but still drivers could use it for some common pieces of code. I imagine
> > there could be a piece of init sequence which is generic. Or some piece
> > of attributes.
> > We already have examples of both approaches for panels - with generic
> > fallback (himax,hx83102) and without (himax,hx83112a).
> > 
> > @Rob
> > what is your generic advice? Which of above (himax,hx83102 vs
> > himax,hx83112a) should be used, if the fallback compatible cannot be
> > used alone?
> 
> I believe this thread is still pending of a resolution, based on the model
> number I've found, I made the compatible "djn,98-03057-6598b-i" for v2, but
> it's still a question whether himax,hx83112b should be part of the
> compatible.

My 2c (note, not a DT maintainer or anything): no, the IC driver doesn't
fully define panel programming, so it should not be used as a fallback
compat.

-- 
With best wishes
Dmitry

