Return-Path: <devicetree+bounces-212471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C2209B42D99
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 01:46:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 48B191BC6A81
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 23:46:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCC8E27B32B;
	Wed,  3 Sep 2025 23:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xx0yNjCW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABC212CCC5
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 23:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756943165; cv=none; b=rvr01IZtga9X+yqgzCKEoaHU/Mce8SfpBlYB/TO3xShWGTocfhqJxlfA1ULt3Zgdc+D86mv+QiJTaXu5U8/W63MaCKVxfbs+S7npdug9HwZEWZlHoFswQjshveTwRMz3PYBxSUeeR21R/xn7nvakWLyKIlqs1bXnvmfLuJitjF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756943165; c=relaxed/simple;
	bh=bKafahgtjgSdUvTRQ8tQoB1hM0RhKnBI179S/IxZw/o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hlpARzUxCHImg3j2hWWXm6LRka9LwOn7y7lpRwrTd9acxM0gwmolTvb+ywgScyV3Cgq2MAHsDnN2WFTgTDzNn01XHu72c34yAi0Bqify53sUhCaxkWM1pZJ56CgX56nfgCb5FRS9KQnXk9GRkvf61DbEZUbBl4kA+d2qcG0d8OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xx0yNjCW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583Dx3uS008906
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 23:46:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YkAb+BdBtP58KIf9+ez4rCZs
	0vp9S2izMGPKnDHcn8s=; b=Xx0yNjCWc23/jxyl1eg4ByuqjbHai1cBJFdKW3Q5
	KvdNa7vyj3JWHPxkffq/lRpP7fXMPDknOw6cGXnM/+uk9KGlm8r89byL/v9JMlUO
	QJoLrscT7vDB+w02w0XPUZ79Q9hnk7dw1AXzTZkW34JR85y6bk8kPQMLVv9MbOUP
	pxOFxEUeZYgV6bPNI+dUzwEzod8JbekD7jK/WiPbKj/3MSSy+oJqWZhmdoahRzxY
	vDMStYZ2i2Ckf5Ghux+rqoiqbg6kPdyGa/bdQ4MQgCUqh4mQ63XZXhqVmXktDw+4
	6X0kTnxdAalkzZHB0sN+ObWTIiDOqBESgoBEf845xGPr5Q==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wy9dtv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 23:46:02 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-726aec6cf9fso9283706d6.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 16:46:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756943162; x=1757547962;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YkAb+BdBtP58KIf9+ez4rCZs0vp9S2izMGPKnDHcn8s=;
        b=Fm2aKR62nY8tDaz2O9Z8RCcB5JqMTxgmw971QPBDiEctfohAMiwyJITWBE17xxDY0/
         uTXr2JF8uMs8JwodVgAdxkI3/7/j65NkGc1rz31kOmlVZNrPS/vqGjXy3fkNwYxqVxlQ
         ZG2OsWFtaBMrFhEWoJ/XRP03jq4VzYNHS8GMdMii+ho44Zgn9oIPmlbPwRtlE2jzCK4N
         oqQs0GTOU7u5Bs3X4zyV817Lkl0Pn7Kzq9GMdQ4aT+TH0E1YrXR5G6DG3inC8lEXj70I
         T8GLLMZGetnhlvIizcoJIqKkT2kqben81wPQFHZhJ1tJ/snQ5SB+pjf4JyjdPOeI6RJ6
         HzIg==
X-Forwarded-Encrypted: i=1; AJvYcCXA/54RJps7YIp+zO5URj3a5nyuTCt0KJTjdQ9NP4COiJZl+n7Ey/FJDWbiL0f00QXe+66XTLgg4i/F@vger.kernel.org
X-Gm-Message-State: AOJu0YzcxbbSCDXEsx1oS89uG8cB5q2jh3XzjNBPBh1ZXJGhhKRmilHy
	jaJcmDb69DKrwxEkayoLQBS8qL/OahrpJyz/dBUtkoiU9n3F4k7/wCCRhM+Km6ux/E0CWc8KU0F
	Bg+xO9ALMhfu09bg8JPzysGsyARSKCKTA9HBC1/7DDAXiZWZNDuCXKcU1Qc9XgVPv
X-Gm-Gg: ASbGncuwdCNu8ivmXVxtyLOUs2vw67r5m6GY3Gr4IuriaJF3U13ypkbqOBtoenOZGma
	h7vzMdxpffKf0UjEb1gLaA+6MkwLrc7ylRi8GmupLmwCD7kcui9PJg948fLYPpxFNCDvMJb5NSz
	DUI8p2FTrUl921cX6bCYg6GHFxHTU96+OrUy6oLNle+uMJJq5MfRV38ANDuKSjaLL8wf1NN5UEd
	JLVfOGv15hILY2+2I39b09hoAeAYWYx4b4bDsKVbtVr3yc1R6zgI0FMtom5XB4zeR+E5xue1Tk1
	AxDsS5uV/RvIjTjbB5ZXIsURW2xZYz+REcX/bnruOmDlMjTnVL/55JIkoWNPxNUdzlTVnFEL7bZ
	bmICnk/6FD9xHRn1vWrtImVTm5hjbuSckZSKzdlPTCDOivdvabS0y
X-Received: by 2002:a05:6214:5199:b0:718:a53c:d5ea with SMTP id 6a1803df08f44-718a53cd8b4mr134396486d6.41.1756943161705;
        Wed, 03 Sep 2025 16:46:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEeKw8/l+JU/+w+pUW5gWTeEM0B3lNbyMq4ZaRy2csjRNAmkpAtPFYULmhJ/idZ8VM17Hpkeg==
X-Received: by 2002:a05:6214:5199:b0:718:a53c:d5ea with SMTP id 6a1803df08f44-718a53cd8b4mr134396226d6.41.1756943161076;
        Wed, 03 Sep 2025 16:46:01 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608acfbb87sm827119e87.105.2025.09.03.16.45.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 16:46:00 -0700 (PDT)
Date: Thu, 4 Sep 2025 02:45:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v10 2/6] dt-bindings: display/msm: dp-controller:
 document QCS8300 compatible
Message-ID: <j7whxaqfeyz6fqwg54h2mivobbvo3plvxxzor7whmwjkhavndw@ulqfidkwwn6j>
References: <20250901-qcs8300_mdss-v10-0-87cab7e48479@oss.qualcomm.com>
 <20250901-qcs8300_mdss-v10-2-87cab7e48479@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250901-qcs8300_mdss-v10-2-87cab7e48479@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b8d33a cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=EZgLUtVhDPKl7mjbVu8A:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: oYdnPrViEGy3fzV_ZRkYF3b96puKJd57
X-Proofpoint-ORIG-GUID: oYdnPrViEGy3fzV_ZRkYF3b96puKJd57
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfXxQv8UUZuQaWI
 BLCN5Scy/XIuE6ywC/zDrKwOljkdanaCRmEOXE+MHH3yG51dxMwEToyqgtbjYNAvqIhgDsf0rgy
 spWHfapN0Ou7DmTqdsCPzLwhP5cbgU2jApzAeLaimiNPTnNu7iA8UIgaFWN2JwzbtbGhK5bh7Ws
 z40bGf4iqKr7E2L8q9/euSV3CMpPD3XG6WwWvEXUzNqk33nQ7Cbg3UJ+WGqBFHuRDFecJf6VSsR
 XYzOOCp9GYgut5Rs0YoYjKIPJ6eTgW3/pmy7mY5+QDXy9IbX36NnaDtnliHzPeXznLp3GKMhw+N
 iYXnhbLnY0RPIEcQ1UyGjoKVF6MTT7cMBGAvqaWoKHM3drRDOaLQm5Sb91P3v84+ux9ciItYmIo
 7PpwSAPn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_11,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101

On Mon, Sep 01, 2025 at 05:57:30PM +0800, Yongxing Mou wrote:
> Add compatible string for the DisplayPort controller found on the
> Qualcomm QCS8300 SoC.
> 
> The Qualcomm QCS8300 platform comes with one DisplayPort controller
> that supports 4 MST streams.
> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---
>  .../bindings/display/msm/dp-controller.yaml           | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)

I've picked up the last version of the DP MST patchset. Could you please
rebase this patchset on top of it, hopefully making it finally
mergeable.


-- 
With best wishes
Dmitry

