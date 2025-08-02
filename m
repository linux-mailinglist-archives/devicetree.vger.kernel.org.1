Return-Path: <devicetree+bounces-201463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B98B19053
	for <lists+devicetree@lfdr.de>; Sun,  3 Aug 2025 00:24:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 057CD17AC98
	for <lists+devicetree@lfdr.de>; Sat,  2 Aug 2025 22:24:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC2CC27A935;
	Sat,  2 Aug 2025 22:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aeMnVJPp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8D51E2853
	for <devicetree@vger.kernel.org>; Sat,  2 Aug 2025 22:24:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754173443; cv=none; b=q5ER408Dn2I+BaPLpy6uyNOS76UabmByy9ep0ptOujLocQRJD5iFHg5nwhnifZcZYiRNZ0B6tuf0gkNuHjAp4Yy5UGIOPpenVB+hqFZWHPmYEyIHWcMJj8PFjzQhdXqVrtUt1mjyJR8GzuKFEduhCzoTgNcHyh3MfWAlnNriSzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754173443; c=relaxed/simple;
	bh=m0iEYRjcdnU65R3FMXTSoPGOUxzRvVQB9ercshE0cqs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dqnh5RCYUCSQ7WnPek8FUhsG92LtksCAachHWCMu2tgXNPqoy+VxaZwfYE3KeBjSA+VYiPQSD8OtEg5JPjjrUsarOh7W6CIV246sWXbEcAZn2ZRCv/ZLg1tMOUte9jraMujCD5C34a/JWaJ+OjeqeikoW6PrHk5pss+gX2yXVVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aeMnVJPp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 572KXnRp030386
	for <devicetree@vger.kernel.org>; Sat, 2 Aug 2025 22:24:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xl0OxxNA7ca072iJm6M/zPG6
	jGGT3ai/1U553419los=; b=aeMnVJPpOqTPR3I2WDmw51lqLpvUV2fYhyARPtzJ
	SBY2x5WNIE57zCPGcVper6imusSo8jxDorgVgWeJX/aCGimBRqOdNIqF+WBI6uq2
	6nHGncnFUryddtwt3fyA80U5I6LqtoW6pHJfOWSFjzspVoEbk2xGx1GPQgOxl4WY
	fvF8d7J2RFihfDNHah1LU2RCO3LBGxZVFpnZ4OB7fu6ItVyTwTZnLt17G3F5BPe0
	+rVzOdk9X/GFYA4poaOBg6Lrdk5V9Ism/2L0LX+2heAaaBLpTMa5zcFH6vKbCh3+
	GU5sp+rKsLgR8ph1MVvu97s7OnDKIPp7fR1C9fHarRMeYg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 489aw71cun-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 02 Aug 2025 22:24:01 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4aa826c9464so46970881cf.3
        for <devicetree@vger.kernel.org>; Sat, 02 Aug 2025 15:24:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754173440; x=1754778240;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xl0OxxNA7ca072iJm6M/zPG6jGGT3ai/1U553419los=;
        b=una2aQi5qNCwl2k3/eCbEEeQM5wJwkPvRRNVQw59groj0hqZH+vfykg/7QMosAy2YF
         stuFUiAGczkOkHHLCvDCUx7pHVUKT2tkv8x54+yuQDvsiQ7DJdhkjluoCWhTLsN2P9rq
         l0FB5Glc4NkiThitZ5cuMymvxglRYSd8sVcwv4aDBFfJUk60Tp+AFV6ZmXqdGxukOoun
         TBYsXv2fQWKG2URZzoGWOq6aqHvUO1sak/DCp8MuBcZFlM6Ua/bGTJ+RzFjxXa6wiiaQ
         Dqb8sY6CQH1LiZiZdLLNof61+xhaOZI+3UWfnHToGVYpc0iTa3xJQGxqo6filFcgtoId
         B28Q==
X-Forwarded-Encrypted: i=1; AJvYcCWGatrNFFF+81waK9Pu7ftSAu7Y3Om0HAbheW0NZJq4bER/LUUoTBAN8ltRYcDfz+60u3Z7xsgXg78H@vger.kernel.org
X-Gm-Message-State: AOJu0YxYLb8ivsQj1a193XHhO52mbuPMYq1GkoBXLZVtIT7deoNItgc6
	b8HMMBpI7/Qz0p4YK7vRETI3JKSOq7l7BETs7R+b25aIrh3MkkTiKLHe7RT/RlNU6ZeES5gzNOK
	/yhl//mQdUToy+Oa0WpZjDKK3sbdEJo8/M2fIPNU0XSOC5l9oxyfOHYwfOpXUR1Q9
X-Gm-Gg: ASbGncuq4sq9w5/WbD0re0tDPMB4bmjZpPDoqo+PfNiSC7halkynNIe646wFub9TF3G
	BJ+lhrmhdd6gDe8MCmSO/V+UvmI3l178zoRrZkrSy+a15wMA/tQJqXTXIeZrZ0ZLdAJMlbANJOD
	o+8dX4inwOy+dqyejv+OpiRjgwPQBcFbXN901Ru7Q1Ior9VQLRvfhQIuw7c9RYeWMqL+xfFqhxf
	HrDUj20npkou7KOA2kEVVn1RI123LjPBhtpxErOaouPFT6rtFFU10pLghe7AykHjoauHRfVb6uV
	E2KDgJh8JxHika2nC8ecchYtRw7233doNlkwvFt/MyCDndlX5R6MrEFZ/N5LQVLqgYArgRQkMwG
	XtTAIkGxA4xKxWFCZ7aS2yZx0Il0WjqmcSuFyie9pe6k0kqvPfqPS
X-Received: by 2002:a05:622a:2614:b0:4a4:2c4c:ccb3 with SMTP id d75a77b69052e-4af10a4a6f8mr71115871cf.38.1754173439766;
        Sat, 02 Aug 2025 15:23:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGrRsxcmSymm/iOQUBWA1JUQnU1xwsXzPXR9p1T+dpkt3Av38hBwrNFCZmoKC0DXjNEzzqClg==
X-Received: by 2002:a05:622a:2614:b0:4a4:2c4c:ccb3 with SMTP id d75a77b69052e-4af10a4a6f8mr71115661cf.38.1754173439390;
        Sat, 02 Aug 2025 15:23:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88ca6776sm1105446e87.141.2025.08.02.15.23.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Aug 2025 15:23:58 -0700 (PDT)
Date: Sun, 3 Aug 2025 01:23:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, matthias.bgg@gmail.com, ck.hu@mediatek.com,
        jitao.shi@mediatek.com, jie.qiu@mediatek.com, junzhi.zhao@mediatek.com,
        dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
        dmitry.baryshkov@linaro.org, lewis.liao@mediatek.com,
        ives.chenjh@mediatek.com, tommyyl.chen@mediatek.com,
        jason-jh.lin@mediatek.com
Subject: Re: [PATCH v9 00/23] Add support for MT8195/88 HDMIv2 and DDCv2
Message-ID: <2eq5je6xk4ly5lxijit3ufor7pmm7mgivbuigzr35lrbe2ryvr@3axnsyabigm7>
References: <20250415104321.51149-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250415104321.51149-1-angelogioacchino.delregno@collabora.com>
X-Proofpoint-GUID: odxlPuvWfUgQANqnykEcEmfmjVtAvqKe
X-Proofpoint-ORIG-GUID: odxlPuvWfUgQANqnykEcEmfmjVtAvqKe
X-Authority-Analysis: v=2.4 cv=MrZS63ae c=1 sm=1 tr=0 ts=688e9001 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=k3YYP44_YlkhweOvE2wA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAyMDE4MyBTYWx0ZWRfX5471L3U9nlgR
 TCWCadFgeDDGTBGhSWx4rD0vEnk/qQZ5+AYilon8/QzduOghug/wy4s9pNFc1sCJi0XRXPlfJxo
 48EbBwiiAQcwwrPUh2uCpmhP3bTzBirhTD/8YtUwWuLKKkYIkbbqyGvbcDpVw6GbGEwB0IBHPCG
 mDPA6LlDgUibewjP/DC6f7vuzdbEU/df0GAsx1ZgNT2NkPM2uvQbPj1ov8nmo/IofKf4oTuCaCI
 f/tl43Yy5BMSV6mag/aJV/aHohs/QEyMm/PfH30jN29s5w2t+G6JboICfn3tCpOI957sri4RvQI
 h4SQ61UxWZDODdDs8BHLgpc6pfVEZoxtgM8E0rBGu4O2x0c+Av9ehtQ/dYZwdNzgkz65F3WdYdY
 QxJpEbL+oSkfomAd02CvK4EYYQNKR3akgAUgdvLs57O1Zh7OYENYFw7YW6phs5obs0MWERdT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-02_01,2025-08-01_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0
 impostorscore=0 bulkscore=0 phishscore=0 mlxlogscore=665 priorityscore=1501
 malwarescore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508020183

On Tue, Apr 15, 2025 at 12:42:58PM +0200, AngeloGioacchino Del Regno wrote:
> 
> This series adds support for the HDMI-TX v2 Encoder and DDCv2, and for
> the direct connection DPI as found in MT8195, MT8188 and their variants.

Angelo, just wanted to check, what is the fate of this series? I think
it wasn't updated since April. It was a really good example of utilizing
the HDMI framework(s). Wink.

> 

-- 
With best wishes
Dmitry

