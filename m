Return-Path: <devicetree+bounces-217094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BABAB56D18
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 02:03:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C94F3B8556
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 00:03:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4149B5227;
	Mon, 15 Sep 2025 00:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pANlLx+1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEBB618E3F
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:03:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757894622; cv=none; b=GCeFclHB2f1iScSEPggpRPgyxL4HVYZOe5aOyLIGLC6vf4G5TUn0CNTqBw3I97NCl9Zbeg9Z/qltDIM8pXJnMAfHGTc2ReZcW0LYK7+p7vyehbTMRBOxEJUOVX6f/Lk39vawAiIUo7Qfoy7niB9YB6VkMxkDfu/R053lWcXQdls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757894622; c=relaxed/simple;
	bh=2Ljq9TrPgOnJLOGBCkDSJsvuJeZQmaKb9drSAQUZTW8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XbqFMcIWgyeP3eP/r0HWtkbarcRyIY5BDgfKFUHpvDBcaLDbIC6TMLTgLkdFdlL2IdABBA9RWFN6aYWIeGtVjuuGwEojYsNkPqvv0GZJrLc4C6+bNze1p7H2KsTABuiuUkgA/+SOpFsHA7/widSEj557dZuOHbeUo81T6S4F3QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pANlLx+1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ENULrK015513
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:03:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=G1/nzps+RiSdN+G23dzIrLGr
	J3N7Ua8T6tj2YeHkdOw=; b=pANlLx+1g4xmrMy1/EoCSm09DRtxsj1Xh+nMO4GQ
	GnYXL1kJDM9co3FLyxH9Wp0UoXMsPe+vxCFEmb9eX+DeBpD43e/lMjA+PCa3hBnN
	sPWel+HEF5vpQRQP7/2AKkgqD89WKJpRZ1+dX/4OhZxT/mm6wXtt3PU3F/4PBTvG
	/QbPgyX3c9dwBUx8/wGD/Yte2nY1uDg5W3dVSzs6XYKg2U6IQg3uimBTer/5JLx0
	cdHG/0H87kbX1AH554MpickKh1YzcdpLAldq3RucyhuUTrHoCBUakN2GzmtN3+aM
	m6QEyXud7+jumx6pGkvu7c4ENORKd09HDa0pkeANYMwq/g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495eqpsrnp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:03:39 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-718cb6230afso68316666d6.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 17:03:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757894618; x=1758499418;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G1/nzps+RiSdN+G23dzIrLGrJ3N7Ua8T6tj2YeHkdOw=;
        b=u/B4bPXy44ChFvoHUljxtUzGPlR20d2c/S+HBIs0SZWT/Tqs9Mz8XtxRLkN4ZgAsej
         IGMeMDjfZSoDy18+61hCP38YhDbi1VaUYgczVL0kdO8+ML278HxJQxF/3GQGJFGT0lDk
         VNyGwIjOgoGKmyrH9p1uAXQm1lKUZn2acwXpvIFDaoKKURDlJGzQroeqfJeSNuQLJY9s
         9mjY7qNNf1/O+xGJLrac9O3xdpUxj65c71rmVFTFW76YBXJK+Ng3Y8noQOQAXwilaRkX
         uis/78a8KPWClKW0OXMHxblvnYv2XNbjHZxtA+zhmQ7zJfoGU9yOcKLQOJ/E/puYIohG
         abAQ==
X-Forwarded-Encrypted: i=1; AJvYcCW3+mNHNyIshVfwjmmuBc9MwAZ76aBO8l3okQB2DUgwdv1dR6Yh1zOaWKVovaDvJ643SVgjY6At2GHq@vger.kernel.org
X-Gm-Message-State: AOJu0YzfMvjlpqNXoxEqtoMZWJu5HoVNU8xabpjWQFMESYu3aT+lBkrf
	lkFGrvNwomWUCeUOI+Qj15amCNEj1jGNw/qlyI+IG34WYtmhJ5R6VwJCFZuKUe4maFtqftJBy7g
	s2C107/e4XzA10Wy4V5JIYmrBFAKyEtNzdEzX285OQ6jVoZel4yjPizK+LNNSeyHG
X-Gm-Gg: ASbGnctu+VRhOdJDRlBaXwKJM7S02okE4uiwMYMqjspoDM3Y5QDKEc8X/7G8MGgFmY6
	q1xA1fPBEqXebl/zGD+V4fLkcjBwjp2a28g/ml6D5hkC/Eb+kYAy0/BuXgZ6u0rVMIfG+rHbGgT
	Te33pEOxXefvxc+RAQCdH2qLpBXvVXQY4rK9iFAHIbFoLzD09I/TF76yOR9VynEEZ+whkzSg7Y/
	uScA/0tKNbctzk3LrfYF4SOzLEX0CyZBXtAmyMCk2KxC2cfIZMAlXBAMtcVPdeASApuf1i5nNgX
	2vBfze5hLZM/L7rh48652KF0BW4ciPwCTkakCAdei8PqkceOY1DXRkSP1y0Vl7c/DEa+pZehWuQ
	Rw7Tc2uc0E3yi9uQwQAdJx6MH44e0304XpgrD4t0y9k3aHgrAxoku
X-Received: by 2002:a05:6214:ac7:b0:77d:bc4e:e0e5 with SMTP id 6a1803df08f44-77dbc4ee296mr35056246d6.14.1757894618562;
        Sun, 14 Sep 2025 17:03:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEd9XJDUHsxXiEWsvt2wRNO48cVLBLKY5tingp0pyD38cgQv6RiAe8g3fhFzooP4xBQyxvz/g==
X-Received: by 2002:a05:6214:ac7:b0:77d:bc4e:e0e5 with SMTP id 6a1803df08f44-77dbc4ee296mr35055926d6.14.1757894618134;
        Sun, 14 Sep 2025 17:03:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1a8212d8sm23244261fa.36.2025.09.14.17.03.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 17:03:36 -0700 (PDT)
Date: Mon, 15 Sep 2025 03:03:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Antony Kurniawan Soemardi <linux@smankusors.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-gpio@vger.kernel.org, David Heidelberg <david@ixit.cz>,
        Max Shevchenko <wctrl@proton.me>, Rudraksha Gupta <guptarud@gmail.com>,
        Shinjo Park <peremen@gmail.com>
Subject: Re: [PATCH 2/6] ARM: dts: qcom: msm8960: inline
 qcom-msm8960-pins.dtsi
Message-ID: <57nmwdragh5sw55ji26v3ao6ekxvgj4y2okbarlsw3646adjq5@zmlu5dg7huhe>
References: <20250915-msm8960-reorder-v1-0-84cadcd7c6e3@smankusors.com>
 <20250915-msm8960-reorder-v1-2-84cadcd7c6e3@smankusors.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250915-msm8960-reorder-v1-2-84cadcd7c6e3@smankusors.com>
X-Proofpoint-GUID: pbYslXyJby0qKrCRXzCdUHMVPdeu4bsC
X-Proofpoint-ORIG-GUID: pbYslXyJby0qKrCRXzCdUHMVPdeu4bsC
X-Authority-Analysis: v=2.4 cv=XJIwSRhE c=1 sm=1 tr=0 ts=68c757db cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=wxLWbCv9AAAA:8 a=EUspDBNiAAAA:8
 a=kbTPNbk5bq0GMcXo2L8A:9 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=QJY96suAAestDpCc5Gi9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDE4NiBTYWx0ZWRfX01af/1baa2w3
 +B2kqkyx+cyC2mDKX/T7+ypc5iGjWZYUEhhV+iSDPgzafbjV6b2bG7ytK5GWJnSHyvON0oX699c
 qLWt/kKLiT9lPjDwb8fBUlKzmKfiDYOhADK8xdscR8DPEHXcmt+lqXYY459Pb0ZoMhQHz/VqpkU
 l/T3lOzDNm0STvH5Svw410zQRsOhRLhdsiHmzmNhDMBNKp3nI/Rhm6DAnqexAj4XOJVCViWIS47
 0Iulmqx/kEmfyBh93W2iYQV0gcqUl83OAWHc3/0pVXbfIkcDPff3VUk9B2XgzUBVi7xUiJuDG4v
 I6osF1tztfxErLNYwf1rDcuY+uDz81SJTLRJBvr9/tMeU2tcFjScFqVeUnbSTFYckrACK8Id6UY
 3nnopOOp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-14_08,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130186

On Sun, Sep 14, 2025 at 06:34:47PM +0000, Antony Kurniawan Soemardi wrote:
> Inline qcom-msm8960-pins.dtsi into the main SoC dtsi. Most Qualcomm
> SoCs embed their TLMM definitions directly, with only msm8960 and
> apq8064 using a separate pins file. After this change, only apq8064
> remains split.
> 
> This is a cosmetic change only, with no functional impact.
> 
> Tested-by: Rudraksha Gupta <guptarud@gmail.com>
> Tested-by: Shinjo Park <peremen@gmail.com>
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8960-pins.dtsi | 59 ---------------------------
>  arch/arm/boot/dts/qcom/qcom-msm8960.dtsi      | 57 +++++++++++++++++++++++++-
>  2 files changed, 56 insertions(+), 60 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

