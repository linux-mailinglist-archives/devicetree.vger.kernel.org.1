Return-Path: <devicetree+bounces-224630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9481ABC661C
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 20:58:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E6BC74EE452
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 18:58:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0052B2C028C;
	Wed,  8 Oct 2025 18:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R2GoJ7F3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2172C0F8F
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 18:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759949836; cv=none; b=RtzRZjEGdAGSmMNZfR7c+kDU/+Em0sVuP6hRbOwQ/IA0rUY0UcjJ5x17kXwkNy7M1ZFa0ThughfLuTCGNU7suvn01cp9WlnGb1ZHvc/ciyYDF4jMMkJXNzQvJCLJyFanpOBznvQXFZ0xXg/IS+KDvYxcI11OkFirhI5HeEohkWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759949836; c=relaxed/simple;
	bh=lNNabX9y//09HAmK/wCZmTMi/LX+nJSbSpB+/oKF0sw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GfHWT2u4LrtNnz8bL7geaHrpa+ubyaxODNJLhHoXTjdNqqhmMqE+EcaojrQX8/d47hIALnCovGv2XH0ZaG4FYgCk9WktURoktGkJ5L26LrrAO1bZuTgBK/8XPzThCfJKMtVWUEaD366/fBzcCWcWNNFkvA2IUK2WCXA42O/r/sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R2GoJ7F3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 598I5xCJ002709
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 18:57:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=p0aFc3N38iuPS4vCQK31JPdb
	4dpa2Mqsozy5bXu0/V4=; b=R2GoJ7F3SYGrVEq4uMK+ZL8vTobBrxcZfv/eO4ww
	6b7LbBTBAph8LzAQ47y9uDcOpdAvKlORHFG+BNBzsKIok6yKOJ+nriAgDhL5nkdM
	ZfR9b4ch6DG1XQNwrnFwuki9zTO43j5YJyasu40KJGGjBrYj3cCBSd0rYUKwqdxR
	OEEApb7RPdUkJU9DsdKLF3LyDhWUCKlmOrEzQK76gEMQAfZ4aEc6kQ2M5TxJaEJw
	tAKesKlZ3bsbj/FHFk/S587AlueDtiRWsj+E29TzK4ts6SmhBOx/3vK5S1EAu9Vf
	YLHkFDvzP5zXLroFfnllR55+PDQB+9SMOY4Zi8DcFiM+RA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4krab9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 18:57:14 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e1015c48c8so33711461cf.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 11:57:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759949833; x=1760554633;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p0aFc3N38iuPS4vCQK31JPdb4dpa2Mqsozy5bXu0/V4=;
        b=DpCM1OtXPXu4K9MnU8xj8/xdvC70ytWcfiHGpMwctnTc9KGTz/wfXU+hTMY+w41HYX
         F/LcMmjr7b/RKd4rWI0K8pQvJO4LTa/Xb59wtsskgrZorCY4T61hMgqS9zMkzUU8ovT2
         VJOqq+m3tNwufNH0ThwEQmD6s+eiPJdVu6cUYVcCZ3c4b3w85yekduJfDuwU5kIhGPdc
         jAmqKb7dJmRjdhvzIUIE0iwelWn9DUR3LnGhFmUztHnfMTk4w5K5hR44FLIhlRyS6P2J
         QZkVkb7Q5LbMmm59tc8Ow1IDHlqmOR+we0wY0jFZ4oUnDXVVWaFnGyXnlTxEG3LuVcg6
         XEag==
X-Forwarded-Encrypted: i=1; AJvYcCX17Gsu/jqnwa66Da3MVRSzIKGOtMRnrk7pgTTtM8XGJxd3gIzJfC5eBLRA+yrq8Ec85lv8l8T0rUs/@vger.kernel.org
X-Gm-Message-State: AOJu0Ywg9hl7m9imwMeTjcDKw5oZ1LpVqz2y8Rn49aTlQypoG0gPDhre
	gPO7vMDli5RIKy4cSywwWNWVB1ooTc+g0z+1HNNkuFcUL7y5GxUo9q3Ui16LUn69KGmlL41cw45
	g2wisid21yOUB83IGBqj3+XImQR4/GGXm6sNgaCd3mXu4ImWPHnG7E5aAL6bW2sJA
X-Gm-Gg: ASbGnctzUCTxmSjL88MuRxZ9+7QH9uTnX3MP5Y/9iPaPiANT8lbMEnZCKb3ZmvW+tZQ
	6kCJeZHq9FZYAazvFnnfLMe36hLXGGjZCDKa29BKmP04b1Sas/80lr9VCayxMjtk+1hPV/o5Z72
	C3juqt9NT1iYugv6GcyE6MkJhfcVyU46JtFe1uJ2ocK5wNEO3877JGozJq009YWrGFPRa8bV5+F
	MMpQum3jJ2XRrm7Qwy98Z8ss+FAPH/ssosAC6rR9YOx2eD+xkVjmrHgNIyf6yuXVphcRrWqIv60
	I2geuxvD41lYL1hZGLVJoES2Fz930XbDnIw+hNEDZEgNT9BKYsVW8qvtruwga3oDf7zRNEvvwVa
	9ARVvrQhvH/VLRjpCBjUuwXevbS9aCqymh+EkloyMiDN9nKQrkT9HCqbG9g==
X-Received: by 2002:a05:622a:190f:b0:4d5:eedd:688d with SMTP id d75a77b69052e-4e6de8a86efmr125502851cf.30.1759949833142;
        Wed, 08 Oct 2025 11:57:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFtgnvDZEe3R26wa60RX9Q/fh5xcAmGuy8cV2NOzK3jPw+TTeGR+oVDeRwF6NVJ0ITQRNBStA==
X-Received: by 2002:a05:622a:190f:b0:4d5:eedd:688d with SMTP id d75a77b69052e-4e6de8a86efmr125501911cf.30.1759949831413;
        Wed, 08 Oct 2025 11:57:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5907ac0d417sm263816e87.34.2025.10.08.11.57.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 11:57:10 -0700 (PDT)
Date: Wed, 8 Oct 2025 21:57:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 1/7] dt-bindings: panel: Add Samsung S6E3FC2X01 DDIC
 with panel
Message-ID: <7askbazrkbny5jlw6cpxcpjyw5nyiozmksoyj5b5momcc7w5hn@r3x6kddatf3u>
References: <20251008-s6e3fc2x01-v2-0-21eca1d5c289@ixit.cz>
 <20251008-s6e3fc2x01-v2-1-21eca1d5c289@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251008-s6e3fc2x01-v2-1-21eca1d5c289@ixit.cz>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfXxCP9kPKAvWmY
 G9g7v8zOlPh+7nyGfhylP89lhSBJCcx5ei+BsYXyPhAZHmpm7Xo336iqGuxae7IRQMvnFWMKG7T
 B1PhxeliwmjuAqTkWwuuIV+r8gxSmPhHeRhSETqjNZDDTo5zKh7PHegUyZcnkaAaMZxPKf8rf62
 nn3E0jtoBJp/JPHe73G5qD6lYBwkkUfCrd/btLJKgeFOlD1gZipjwAfxiHtoh6a5zLSelU1yeRe
 TtRPs81zjVBP+aGekU919uPGR3CC7lHv+25Rjtnj0rTMEP+rXDGvR7Ge+OD7hNxYILXZ2mquBMT
 ValS8JtGfy3G7Uv3Du/RJzw1SE7xRYviBNAIWlOGnQkyzWugthHSndo18qxTvTMQJMuflmcmOr/
 vdKfWDQRk71A8xuAcOWC6KOVSP5MqQ==
X-Authority-Analysis: v=2.4 cv=CbcFJbrl c=1 sm=1 tr=0 ts=68e6b40a cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=pqhIxt2ABfSOU_N1PyUA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: uRIkCNNuaJ4e8y9CKCYlSraPNFnQdVgV
X-Proofpoint-ORIG-GUID: uRIkCNNuaJ4e8y9CKCYlSraPNFnQdVgV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Wed, Oct 08, 2025 at 04:05:28PM +0200, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Basic description for S6E3FC2X01 DDIC with attached panel AMS641RW.
> 
> Samsung AMS641RW is 6.41 inch, 1080x2340 pixels, 19.5:9 ratio panel
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  .../bindings/display/panel/samsung,s6e3fc2x01.yaml | 78 ++++++++++++++++++++++
>  MAINTAINERS                                        |  5 ++
>  2 files changed, 83 insertions(+)
> 

Please also describe, why it's not enough to use defined compatible,
samsung,s6e3fc2x01. Why do we need a separate schema and can't use the
panel-simple-dsi.yaml

-- 
With best wishes
Dmitry

