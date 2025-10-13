Return-Path: <devicetree+bounces-226025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB45BD3013
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:35:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AE51C34BAAF
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:35:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87D5B26F2A6;
	Mon, 13 Oct 2025 12:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jZ5vOFEe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4552609FD
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760358934; cv=none; b=ClUWCKu+e7B1Q9H+3bM0fRs3/GSZQSD5Yuxss0TXy3EyNNWWg7QUDrQ1QIjl/rgNpN+jwoYN6FAYji8i+Y64CfmAsrDQ9kA3fA7o/XD2Gnhaiz9R6KXq177KZHpeOUI2wpN1oz+2kuyE60AmdupSfdbUDmam+cIknyYmf4ZgZ4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760358934; c=relaxed/simple;
	bh=kXxhkCykLcnXkTZcPHSJpo7nayzyV8cdsyNMW6iYSrc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G5LdKk6FlzcQjRZxpsHLd1OyT3aoaXBHvlGQqX+oCXIolP9IvcG79a2lHM68EEix1GT3dy35Xl9E7BZnp5fmtWPyn6NwMOH1haJnZvZ4UYIkuunCrVM1VmEdEwESETVP+8VyO2D79Mue+2pxgfiEBwYdJzFxUTHAyAJcgz7hm1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jZ5vOFEe; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DAGWGS000955
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:35:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=m7L3o4Pwi86bgIe35Awo4E+H
	exJtX6srm8LE+iq3Tr8=; b=jZ5vOFEegJlPQpNfq3lTwLEnKM2Ukq9nwYbVRsfM
	XsN1rgjkcOX8zxZOxM4o45s1FEseh78LcztQ+fmeRqquEGP/39OkDCXLVDa7q5La
	+lRHXkqajUk2aR8U5D6n9Q4SmcC+curU7m0ND7GTQC5kok+JNl9UM+1kCXAcNKLS
	/M2Uhl2bsPfo6STYYZ44vvKVk8RCQ8Q7xUEN4KC9RgNujHSfHGJ34ZHFd5WyoDPs
	TgwJbgrZXjTmzbhY9RrZaO52pNzB2GdwdvioGfD5A2X6CvSBGDBZbSoKQ7KA4V06
	BgnMfkx6A4D1htxF2nQFc463c8jd4TBb1b9yxdtas3Rnog==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd8vjce-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:35:32 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-88375756116so247222985a.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:35:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760358931; x=1760963731;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m7L3o4Pwi86bgIe35Awo4E+HexJtX6srm8LE+iq3Tr8=;
        b=UEgTin97P2h4d3Fcq4UZ/5Wm0Vx2fvQa/dyRgIEx9yh0aetUYhhS2YYK/daJsG+l6K
         vnWPiw+PYt3vfiSwxpa/5KsMyEXp+/GHS9yEgpm1Yi2t2aR+Gcl5TeZfGrVKvOE1GQ5j
         a/s9g6/jQO2KCja/1qa5dGOp+gS1ZRqHqesjX1S7a92Io1Jm9ercBjTT7CQKlqxGuxjL
         D9CKx9Gec8U9L1Iqm+wmOTkwKiwYMlmJUawJDCG7C556xnWcSaPzU1GTYSPmt0+/Vi6P
         jOn+tDNqmA1xKVeVRDgyIulC3DjPxFvMN4fu+WKsA91jjk1556jvWZP3b36A8R0QV4Et
         lRNA==
X-Forwarded-Encrypted: i=1; AJvYcCXpsE35FSZ3TelIpG13MDcW5zWuIOBFhmvhJsFACqgYUpgroI48PcXgqXjFV2k99LWT+fe/dQyJc3Yp@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2weWBqpEfDWqeMu07Q7zSMlFOD+yiYd/g/iXdgtGO0odz7r5T
	Pf7c58aIP0froBh5xXrOfjYoNmnR0ciCyPAboK8njs1AN0QUZhHc5aTHX+dD0aFAGai+rDmcGoZ
	iL0E1kJ/YpCc8PkKc8XMyR2PLXb+zaQhGcJDf3TdnxY4PTBXYFK7/UhmSM/suTxB1
X-Gm-Gg: ASbGnctNV0QEnAdCQmqwamxU2tXsFxssZ/1bzmzwLgEd9OIhYuYo1NUiEjenKH5+/4U
	bCKnqdbmaKgASautao0slJ7fu7HHxShCm1s71Pvnnb7j7HziM3k5WlKZTOhcyX4Rd+PXUnMFov7
	jttywE0K82B8oshg2jad4Cd7dH97Z964d1Td3oJL690T4m65lehtYfhHLD/Slwus8ZxLMfbo9Tc
	NEWhIiT5y78nW2dyvOd0b6psd4t633PUT3N7vjmSDjpyqldTuX9ct7Eq4Z1nsxvS6JY+wLDAEEI
	39BDwKOuW7sWXpNIG7Gf401idKfRcyB1f64J14tqGL+5T0gK3OI9mCrH1gZqjuYFSoN8Cw4gs2Z
	4ZadijRtiYfkSaOLtEl6bU+Oo1V/5AgNvEQHVTkAvtXb3FN6b+CZj
X-Received: by 2002:a05:620a:4411:b0:84f:110c:b6ec with SMTP id af79cd13be357-883546e153fmr2786636385a.76.1760358931022;
        Mon, 13 Oct 2025 05:35:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtTA5MLWXtycAaJRA0YpGMVukU6FtceKKwRiGS0eYpqRLVEiT3h5hR82xs7c3USv5CsJzY1w==
X-Received: by 2002:a05:620a:4411:b0:84f:110c:b6ec with SMTP id af79cd13be357-883546e153fmr2786630085a.76.1760358930475;
        Mon, 13 Oct 2025 05:35:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881fe5besm4080369e87.50.2025.10.13.05.35.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 05:35:29 -0700 (PDT)
Date: Mon, 13 Oct 2025 15:35:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jessica.zhang@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mahap@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, mani@kernel.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        vkoul@kernel.org, kishon@kernel.org,
        cros-qcom-dts-watchers@chromium.org, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        quic_vproddut@quicinc.com
Subject: Re: [PATCH v2 2/3] dt-bindings: display/msm: qcom, sa8775p-mdss:
 update edp phy example
Message-ID: <cjweltdnffozpi5amqvrfwikw3a4plogjm6ozhbf2lqee2neby@ueoha7dmhpgq>
References: <20251013104806.6599-1-quic_riteshk@quicinc.com>
 <20251013104806.6599-3-quic_riteshk@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251013104806.6599-3-quic_riteshk@quicinc.com>
X-Proofpoint-ORIG-GUID: rmpJ3H2wYzAfeJCPNugNT1sib_Wr4TZ2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX0Zp8ZzpjJdqv
 0+Xeme2JkzeSp3P2KVdIsj038SujTII6Ag5CJRmVCoZjeXqQ2CX6tUMJQVTXajJBuyDuEZGJH42
 7XemhT6+7s+ruqZaOVG8YB45g/GtNR+eOifcg2R7nE794WM47RNOAWR/nAjKjpUx8ZqKX4ljWjO
 Jbk2izoQ5cI+qzJ9TLHdwIyAgu3uOVPVjk2ctZuxU9KvoDGUW8y6kk7Do+v70rZpP7xMfXjo3h5
 S/YpZyO4NgFXGr85v50Y0tAlh7RKkUTg9csAuBlUL3tpmXKK56LUNKX07F9KsvSEyTp4FovUfRh
 LpDLB62BTR9szuuTXl3yU5C9yTQhysFCQDvbd6eoWE36pqj1RYxYx0K4rfGGCysX8MlXhrvvJGF
 BYcJRcmBdBUvUuBRwnOMxzf+jHfjZQ==
X-Proofpoint-GUID: rmpJ3H2wYzAfeJCPNugNT1sib_Wr4TZ2
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68ecf214 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=en-7mTTXfYbHl6GqnY0A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

On Mon, Oct 13, 2025 at 04:18:05PM +0530, Ritesh Kumar wrote:
> Update clock entry in edp phy example node to add support for edp
> reference clock.

eDP, PHY.

> 
> Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>
> ---
>  .../devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml  | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 


-- 
With best wishes
Dmitry

